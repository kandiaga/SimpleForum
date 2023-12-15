<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Settings</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <div class="row">
        <div class="col-md-3">
            <!-- Sidebar -->
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                    Dashboard
                </a>
                <a href="#" class="list-group-item list-group-item-action">Manage Users</a>
				<a href="#" class="list-group-item list-group-item-action">Manage Categories</a>
                <!-- Add more sidebar items as needed -->
            </div>
        </div>

        <div class="col-md-9">
            <!-- Main Content -->
            <h2>Welcome to the Admin Dashboard</h2>
            <!-- Add more content based on your requirements -->
			
			    <div class="container mt-4">
        <div class="row">
            <div class="col-md-3">                
				ok
            </div>
            <div class="col-md-9">			
                <h2>Categories</h2>
				<a href="/categories/create">Add New Category</a>    
				
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Description</th>
								<th>Action</th>
								<th></th>
                            </tr>
                        </thead>
                        <tbody>
						    @foreach($categories as $category)
	                           <tr>
                                <td>{{ $category->id_category }}></td>
                                <td>{{ $category->title }}</td>
                                <td>{{ $category->description }}</td>
								<td> <a  href="categories/{{ $category->id_category }}/edit">Edit </a></td>
								<td> <a  href="categories/{{ $category->id_category }}/delete">Delete </a></td>
                            </tr>
                             @endforeach
                            
                            <!-- Add more category rows here -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
			
        </div>
    </div>
</div>


@include('layouts.footer_rights')
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
