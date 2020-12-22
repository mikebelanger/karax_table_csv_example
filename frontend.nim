import ./karax_tables/src/karax_tables
import karax/vstyles
import app_types, sugar, json, sequtils

when defined(js):
    include karax/prelude
    import karax/[kdom, kajax]

    var 
        foods: seq[Food]
        filtered_foods: seq[Food]
        search_filter = ""

    proc search_foods() =
        search_filter = $(document.querySelector("#search").value)

    proc load_food() =
        
        ajaxGet("/all_foods.json", headers = @[], proc(httpStatus: int, result: cstring) =
            for json_food in ($result).parseJson:
                foods.add(
                    json_food.to(Food)
                )
        )

    proc render(): VNode =
        result = 
            buildHtml():
                tdiv:
                    input(`type` = "text", id = "search", onkeyup = () => search_foods(), placeholder = "search table")
                    p:
                        text "Total number of unclassified foods: " & $(foods.filter((food) => food.food_group == Unclassified).len)

                    button(onclick = () => load_food()):
                        text "Load food"

                    table:
                        heading("Name", "Scientific Name", "Category")
                        tbody:
                            for index, food in foods.show(matching = search_filter):
                                readandwrite_row(food.name, food.scientific_name, food.food_group, id = $index)


    setRenderer render