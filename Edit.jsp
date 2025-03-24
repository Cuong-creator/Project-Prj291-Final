<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img {
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Wines</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <!-- Nút mở modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editEmployeeModal">
                                Open Modal
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div id="editEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="edit" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Wine</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input name="wine_id" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Category_ID</label>
                                    <input name="category_id" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input name="name" type="text" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Country</label>
                                    <input name="country" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Year</label>
                                    <input name="year" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input name="price" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Stock</label>
                                    <input name="stock_quantity" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input name="image_url" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Supplier_ID</label>
                                    <select name="supplier_id" required>
                                        <option value="1">Vintage Wines Ltd.</option>
                                        <option value="2">Fine Grapes Distributors</option>
                                        <option value="3">Global Wine Merchants</option>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>

        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>