<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>First Step</title>
    <link href="static/first-step.css" rel="stylesheet">

<style>
body {
  background-color: blanchedalmond;
}
</style>

</head>
<body>
    <div class="sudoku">
        <form id="sudoku" name="sudoku" class="board" action="check" method="post">

            <div class="single-field" class="field00{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="{{grid[0][0]}}">
            </div><div class="single-field" class="field01{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="{{grid[0][1]}}">
            </div><div class="single-field third-column" class="field02{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="{{grid[0][2]}}">
            </div><div class="single-field" class="field03{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="6" disabled>
            </div><div class="single-field" class="field04{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="7" disabled>
            </div><div class="single-field third-column" class="field05{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[0][6]}}">
            </div><div class="single-field" class="field06{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="9" disabled>
            </div><div class="single-field" class="field07{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="{{grid[0][8]}}">
            </div><div class="single-field" class="field08{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="2" disabled>
            </div>
            <br>
            <div class="single-field" class="field10{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field10" value="6" disabled>
            </div><div class="single-field" class="field11{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field11" value="7" disabled>
            </div><div class="single-field third-column" class="field12{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field12" value="{{grid[1][2]}}">
            </div><div class="single-field" class="field13{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field13" value="{{grid[1][3]}}">
            </div><div class="single-field" class="field14{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field14" value="9" disabled>
            </div><div class="single-field third-column" class="field15{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field15" value="{{grid[1][5]}}">
            </div><div class="single-field" class="field16{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field16" value="{{grid[1][6]}}">
            </div><div class="single-field" class="field17{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field17" value="4" disabled>
            </div><div class="single-field" class="field18{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field18" value="{{grid[1][8]}}">
            </div>
             <br>
            <div class="single-field third-row" class="field20{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field20" value="1" disabled>
            </div><div class="single-field third-row" class="field21{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field11" value="9" disabled>
            </div><div class="single-field third-row third-column" class="field22{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field22" value="{{grid[2][2]}}">
            </div><div class="single-field third-row" class="field23{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field23" value="{{grid[2][3]}}">
            </div><div class="single-field third-row" class="field24{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field24" value="{{grid[2][4]}}">
            </div><div class="single-field third-row third-column" class="field25{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field25" value="2" disabled>
            </div><div class="single-field third-row" class="field26{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field26" value="5" disabled>
            </div><div class="single-field third-row" class="field27{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field27" value="{{grid[2][7]}}">
            </div><div class="single-field third-row" class="field28{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field28" value="{{grid[2][8]}}">

            </div>

             <br>
            <div class="single-field" class="field30{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field30" action="check" value="8" disabled>
            </div><div class="single-field" class="field31{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field31" value="5" disabled>
            </div><div class="single-field third-column" class="field32{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field32" value="{{grid[3][2]}}">
            </div><div class="single-field" class="field33{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field33" value="7" disabled>
            </div><div class="single-field" class="field34{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field34" value="{{grid[3][4]}}">
            </div><div class="single-field third-column" class="field35{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field35" value="{{grid[3][5]}}">
            </div><div class="single-field" class="field36{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field36" value="{{grid[3][6]}}">
            </div><div class="single-field" class="field37{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field37" value="2" disabled>
            </div><div class="single-field" class="field38{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field38" value="{{grid[3][8]}}">
            </div>
             <br>
            <div class="single-field" class="field40{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field40" value="{{grid[4][0]}}">
            </div><div class="single-field" class="field41{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field41" value="{{grid[4][1]}}">
            </div><div class="single-field third-column" class="field42{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field42" value="6" disabled>
            </div><div class="single-field" class="field43{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field43" value="8" disabled>
            </div><div class="single-field" class="field44{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field44" value="{{grid[4][4]}}">
            </div><div class="single-field third-column" class="field45{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field45" value="3" disabled>
            </div><div class="single-field" class="field46{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field46" value="7" disabled>
            </div><div class="single-field" class="field47{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field47" value="{{grid[4][7]}}">
            </div><div class="single-field" class="field48{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field48" value="{{grid[4][8]}}">
            </div>
             <br>
            <div class="single-field third-row" class="field50{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field50" value="{{grid[5][0]}}">
            </div><div class="single-field third-row" class="field51{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field51" value="1" disabled>
            </div><div class="single-field third-row third-column" class="field52{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field52" value="{{grid[5][2]}}">
            </div><div class="single-field third-row" class="field53{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field53" value="{{grid[5][3]}}">
            </div><div class="single-field third-row" class="field54{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field54" value="{{grid[5][4]}}">
            </div><div class="single-field third-row third-column" class="field55{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field55" value="4" disabled>
            </div><div class="single-field third-row" class="field56{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field56" value="{{grid[5][6]}}">
            </div><div class="single-field third-row" class="field57{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field57" value="5" disabled>
            </div><div class="single-field third-row" class="field58{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field58" value="6" disabled>
            </div>
             <br>
            <div class="single-field" class="field60{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field60" value="{{grid[6][0]}}">
            </div><div class="single-field" class="field61{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field61" value="{{grid[6][1]}}">
            </div><div class="single-field third-column" class="field62{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field62" value="1" disabled>
            </div><div class="single-field" class="field63{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field63" value="5" disabled>
            </div><div class="single-field" class="field64{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field64" value="{{grid[6][4]}}">
            </div><div class="single-field third-column" class="field65{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field65" value="{{grid[6][5]}}">
            </div><div class="single-field" class="field66{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field66" value="{{grid[6][6]}}">
            </div><div class="single-field" class="field67{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field67" value="8" disabled>
            </div><div class="single-field" class="field68{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field68" value="4" disabled>
            </div>
             <br>
            <div class="single-field" class="field70{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field70" value="{{grid[7][0]}}">
            </div><div class="single-field" class="field71{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field71" value="8" disabled>
            </div><div class="single-field third-column" class="field72{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field72" value="{{grid[7][2]}}">
            </div><div class="single-field" class="field73{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field73" value="{{grid[7][3]}}">
            </div><div class="single-field" class="field74{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field74" value="1" disabled>
            </div><div class="single-field third-column" class="field75{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field75" value="{{grid[7][5]}}">
            </div><div class="single-field" class="field76{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field76" value="{{grid[7][6]}}">
            </div><div class="single-field" class="field77{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field77" value="3" disabled>
            </div><div class="single-field" class="field78{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field78" value="5" disabled>
            </div>
             <br>
            <div class="single-field" class="field80{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field80" value="3" disabled>
            </div><div class="single-field" class="field81{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field81" value="{{grid[8][1]}}">
            </div><div class="single-field third-column" class="field82{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field82" value="5" disabled>
            </div><div class="single-field" class="field83{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field83" value="{{grid[8][3]}}">
            </div><div class="single-field" class="field84{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field84" value="8" disabled>
            </div><div class="single-field third-column" class="field85{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field85" value="6" disabled>
            </div><div class="single-field" class="field86{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field86" value="{{grid[8][6]}}">
            </div><div class="single-field" class="field87{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field87" value="{{grid[8][7]}}">
            </div><div class="single-field" class="field88{{border_color}}" tabindex="0">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field88" value="{{grid[8][8]}}">
            </div>

            <div class="action_buttons">
                <a href="/"><button name="reset_button" type="button">Reset</button></a>
                <a href="example"><button name="example_button" type="button">Load Example</button></a>
                <button name="check_button" type="submit">Check</button>
                <a href="example2"><button name="example_button" type="button">Lösung</button></a>
            </div>
        </form>
        % if "validity" in locals():
            <div class="output">
                % if validity:
                    <p style="color: green">This Sudoku has a valid status!</p>
                % else:
                    <p style="color: red">This Sudoku has an invalid status!<br>
                        Use only Xs and Os and play alternating.</p>
                % end

                % if finished:
                    <p style="color: green">This Sudoku is finished!</p>
                % else:
                    <p style="color: red">This Sudoku is not finished yet!</p>
                % end
            </div>
        % end
    </div>
</body>
</html>