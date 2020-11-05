<%--
  Created by IntelliJ IDEA.
  User: fiatf
  Date: 05.11.20
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <script src="./js/functions.js">
        </script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/94fe3f643e.js" crossorigin="anonymous"></script>

        <style>
            input{
                margin: 5px;
                font-size: 48px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <input class="btn-block" type="text" name="expression" id="expression">
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <input class="btn-block" type="button" value="1" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="2" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="3" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="+" onClick="add(this)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <input class="btn-block" type="button" value="4" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="5" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="6" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="-" onClick="add(this)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <input class="btn-block" type="button" value="7" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="8" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" class="btn-block" type="button" value="9" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="/" onClick="add(this)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <div class="row">
                        <div class="col-sm">
                            <input class="btn-block" type="button" value="C" onClick="clearComputation()">
                        </div>
                        <div class="col-sm">
                            <input class="btn-block" type="button" value="<" onClick="deleteLastChar()">
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="0" onClick="add(this)">
                </div>
                <div class="col-sm">
                    <div class="row">
                        <div class="col-sm">
                            <input class="btn-block" type="button" value="(" onClick="add(this)">
                        </div>
                        <div class="col-sm">
                            <input class="btn-block" type="button" value="." onClick="add(this)">
                        </div>
                        <div class="col-sm">
                            <input class="btn-block" type="button" value=")" onClick="add(this)">
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <input class="btn-block" type="button" value="*" onClick="add(this)">
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <input class="btn-block" type="submit" value="Calculate" onClick="evaluateExpression()">
                </div>
            </div>
        </div>

        <div id="result"></div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
