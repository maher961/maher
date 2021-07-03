from bottle import run, route, template, static_file, request

@route("/")
def sudoku():
    return template("sudoku.tpl",
                    grid=[["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""]],
                    border_color="")

@route("/check", method="POST")
def check():
    try:
        grid = get_grid_from_forms(request.forms)
        validity = check_validity(grid)
        finished = check_finished(grid)
        if validity:
            border_color = ""
        else:
            border_color = " red_border"

    except ValueError:
        return error("Do not mess with the grid!")

    return template("sudoku.tpl",
                    grid=grid,
                    validity=validity,
                    finished=finished,
                    border_color=border_color)

@route("/example")
def example():
    return template("sudoku.tpl",
                    grid=[["5", "3", "4", "", "", "", "", "", ""],
                          ["", "", "2", "", "", "", "", "", ""],
                          ["", "", "8", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""],
                          ["", "", "", "", "", "", "", "", ""]],
                    validity=True,
                    finished=False,
                    border_color="")

@route("/example2")
def example_2():
    return template("sudoku.tpl",
                    grid=[["5", "3", "4", "6", "7", "8", "9", "1", "1"],
                          ["6", "7", "2", "1", "9", "5", "3", "4", "8"],
                          ["1", "9", "8", "3", "4", "2", "5", "6", "7"],
                          ["8", "5", "9", "7", "6", "1", "4", "2", "3"],
                          ["4", "2", "6", "8", "5", "3", "7", "9", "1"],
                          ["7", "1", "3", "9", "2", "4", "8", "5", "6"],
                          ["9", "6", "1", "5", "3", "7", "2", "8", "4"],
                          ["2", "8", "7", "4", "1", "9", "6", "3", "5"],
                          ["3", "4", "5", "2", "8", "6", "1", "7", "9"]],

                    validity=True,
                    finished=False,
                    border_color="")

@route("/static/<filename>")
def server_sudoku(filename):
    return static_file(filename, root="static/")


def error(text: str):
    return template("error.tpl", text=text)


def get_grid_from_forms(forms):

    grid = [[], [], [], [], [], [], [], [], []]
    grid[0].append(forms.get("field00"))
    grid[0].append(forms.get("field01"))
    grid[0].append(forms.get("field02"))
    grid[0].append(forms.get("field03"))
    grid[0].append(forms.get("field04"))
    grid[0].append(forms.get("field05"))
    grid[0].append(forms.get("field06"))
    grid[0].append(forms.get("field07"))
    grid[0].append(forms.get("field08"))

    grid[1].append(forms.get("field10"))
    grid[1].append(forms.get("field11"))
    grid[1].append(forms.get("field12"))
    grid[1].append(forms.get("field13"))
    grid[1].append(forms.get("field14"))
    grid[1].append(forms.get("field15"))
    grid[1].append(forms.get("field16"))
    grid[1].append(forms.get("field17"))
    grid[1].append(forms.get("field18"))

    grid[2].append(forms.get("field20"))
    grid[2].append(forms.get("field21"))
    grid[2].append(forms.get("field22"))
    grid[2].append(forms.get("field23"))
    grid[2].append(forms.get("field24"))
    grid[2].append(forms.get("field25"))
    grid[2].append(forms.get("field26"))
    grid[2].append(forms.get("field27"))
    grid[2].append(forms.get("field28"))

    grid[3].append(forms.get("field30"))
    grid[3].append(forms.get("field31"))
    grid[3].append(forms.get("field32"))
    grid[3].append(forms.get("field33"))
    grid[3].append(forms.get("field34"))
    grid[3].append(forms.get("field35"))
    grid[3].append(forms.get("field36"))
    grid[3].append(forms.get("field37"))
    grid[3].append(forms.get("field38"))

    grid[4].append(forms.get("field40"))
    grid[4].append(forms.get("field41"))
    grid[4].append(forms.get("field42"))
    grid[4].append(forms.get("field43"))
    grid[4].append(forms.get("field44"))
    grid[4].append(forms.get("field45"))
    grid[4].append(forms.get("field46"))
    grid[4].append(forms.get("field47"))
    grid[4].append(forms.get("field48"))

    grid[5].append(forms.get("field50"))
    grid[5].append(forms.get("field51"))
    grid[5].append(forms.get("field52"))
    grid[5].append(forms.get("field53"))
    grid[5].append(forms.get("field54"))
    grid[5].append(forms.get("field55"))
    grid[5].append(forms.get("field56"))
    grid[5].append(forms.get("field57"))
    grid[5].append(forms.get("field58"))

    grid[6].append(forms.get("field60"))
    grid[6].append(forms.get("field61"))
    grid[6].append(forms.get("field62"))
    grid[6].append(forms.get("field63"))
    grid[6].append(forms.get("field64"))
    grid[6].append(forms.get("field65"))
    grid[6].append(forms.get("field66"))
    grid[6].append(forms.get("field67"))
    grid[6].append(forms.get("field68"))

    grid[7].append(forms.get("field70"))
    grid[7].append(forms.get("field71"))
    grid[7].append(forms.get("field72"))
    grid[7].append(forms.get("field73"))
    grid[7].append(forms.get("field74"))
    grid[7].append(forms.get("field75"))
    grid[7].append(forms.get("field76"))
    grid[7].append(forms.get("field77"))
    grid[7].append(forms.get("field78"))

    grid[8].append(forms.get("field80"))
    grid[8].append(forms.get("field81"))
    grid[8].append(forms.get("field82"))
    grid[8].append(forms.get("field83"))
    grid[8].append(forms.get("field84"))
    grid[8].append(forms.get("field85"))
    grid[8].append(forms.get("field86"))
    grid[8].append(forms.get("field87"))
    grid[8].append(forms.get("field88"))
    for row in grid:
        if None in row:
            raise ValueError("Das Raster muss alle Felder enthalten")
    return grid





def check_validity(grid):
    for i in grid:
        for x in i:
            if x == "":
                return False

def check_finished(grid):
    # TODO
    return grid == ""  # always false


if __name__ == "__main__":

    run(debug=True, reloader=True)
