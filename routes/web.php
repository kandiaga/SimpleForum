<?php

use Illuminate\Support\Facades\Route;

// routes/web.php

use App\Http\Controllers\TaskController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\TopicController;
use App\Http\Controllers\AnswerController;
use App\Http\Controllers\ForumController;
use App\Http\Controllers\UserController;

use App\Http\Controllers\AdminController;

use App\Http\Controllers\AuthorController;

use App\Http\Controllers\TemporaryFileController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::group(['middleware' => 'web'], function () {
   


Route::get('/', function () {
    return view('welcome');
});


Route::get('/tasks/create', function () {
    return view('tasks/create');
});




/*
Route::get('/tasks/nka', function () {
	
	
    return view('tasks/nka');
});

*/

Route::get('/tasks/nka', [TaskController::class, 'nka']);


Route::get('/tasks', [TaskController::class, 'index']);
Route::get('/tasks/{task}', [TaskController::class, 'show']);
//Route::get('/tasks/create', [TaskController::class, 'create']);
Route::post('/tasks', [TaskController::class, 'store']);
Route::get('/tasks/{task}/edit', [TaskController::class, 'edit']);
Route::put('/tasks/{task}', [TaskController::class, 'update']);
Route::delete('/tasks/{task}', [TaskController::class, 'destroy']);



/*
 Categories Routes
*/

/*
Route::get('/categories/create', function () {
    return view('categories/create');
});

*/

Route::get('/categories/create', [CategoryController::class, 'create']);
Route::get('/categories', [CategoryController::class, 'index']);
Route::post('/categories', [CategoryController::class, 'store']);
Route::get('/categories/{category}', [CategoryController::class, 'show']);
Route::get('/categories/{category}/edit', [CategoryController::class, 'edit']);
Route::put('/categories/{category}', [CategoryController::class, 'update']);
Route::delete('/categories/{category}', [CategoryController::class, 'destroy']);



/*
 Topics Routes
*/



Route::get('/topics/create/incat/{categoryId}', [TopicController::class, 'create']);
Route::get('/topics', [TopicController::class, 'index']);
Route::post('/topics', [TopicController::class, 'store']);
Route::get('/topics/{topic}', [TopicController::class, 'show']);
Route::get('/topics/{topic}/edit', [TopicController::class, 'edit']);
Route::put('/topics/{topic}', [TopicController::class, 'update']);
Route::delete('/topics/{topic}', [TopicController::class, 'destroy']);



/*
 Answers Routes
*/

Route::post('/answers', [AnswerController::class, 'store']);
Route::get('/answers/{answer}/edit', [AnswerController::class, 'edit']);
Route::put('/answers/{answer}', [AnswerController::class, 'update']);



/*
 Index Forum Routes
*/
Route::get('/forums', [ForumController::class, 'index']);
Route::get('/forums/profile/{user}', [AuthorController::class, 'show'])->name('authors.show');

Route::get('/forums/profile/{id}-{username}/content/', [ForumController::class, 'content'])->name('content');
Route::get('/forums/online/', [ForumController::class, 'online'])->name('online');






 // Your routes
});




// Example in a route
Route::get('/admin/dashboard', function () {
    // Only users with 'admin' role can access this
})->middleware('role:admin');



Route::middleware(['auth', 'role:admin'])->group(function () {
	
	// Only users with 'admin' role can access this
	
    Route::get('/admin/dashboard', [AdminController::class, 'dashboard'])->name('admin.dashboard');
    Route::get('/admin/manage-users', [AdminController::class, 'manageUsers'])->name('admin.manage_users');
	Route::get('/admin/manage-categories', [AdminController::class, 'manageCategories'])->name('admin.manage_categories');
    // Add more routes for other AdminController methods
	
	
	
/*
 Users Routes
 // Only users with 'admin' role can access this
*/
//Route::get('/admin/users', [UserController::class, 'index'])->name('users.index');
Route::get('/admin/register', [UserController::class, 'register'])->name('users.register');
Route::post('/admin/users', [UserController::class, 'store'])->name('users.store');
Route::get('/admin/users/{user}', [UserController::class, 'show'])->name('users.show');
Route::get('/admin/users/{user}/edit', [UserController::class, 'edit'])->name('users.edit');
Route::put('/admin/users/{user}', [UserController::class, 'update'])->name('users.update');
Route::delete('/admin/users/{user}', [UserController::class, 'destroy'])->name('users.destroy');
// Authentication routes
Route::get('/admin/login', [UserController::class, 'showLoginForm'])->name('login');
Route::post('/admin/login', [UserController::class, 'login']);
Route::post('/admin/logout', [UserController::class, 'logout'])->name('logout');
Route::get('/admin/dashboard', [UserController::class, 'showDashboard'])->name('dashboard');	
	
	
// Only users with 'admin' role can access this	
	
	
});





/*
 Authors Routes
*/
//Route::middleware(['auth:author'])->group(function () {
    // Author routes go here	
Route::get('/authors', [AuthorController::class, 'index'])->name('authors.index');
Route::get('/register', [AuthorController::class, 'register'])->name('authors.register');
Route::post('/authors', [AuthorController::class, 'store'])->name('authors.store');
Route::get('/authors/{user}', [AuthorController::class, 'show'])->name('authors.show');
Route::get('/authors/{user}/edit', [AuthorController::class, 'edit'])->name('authors.edit');
Route::put('/authors/{user}', [AuthorController::class, 'update'])->name('authors.update');
Route::delete('/authors/{user}', [AuthorController::class, 'destroy'])->name('authors.destroy');
// Authentication routes
Route::get('/login', [AuthorController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthorController::class, 'login']);
Route::post('/logout', [AuthorController::class, 'logout'])->name('logout');
Route::get('/dashboard', [AuthorController::class, 'showDashboard'])->name('dashboard');
Route::post('/follow/{user}', [AuthorController::class, 'follow'])->name('follow');
Route::get('/forums/profile/{id}', [AuthorController::class, 'show'])->name('authors.show');


//});




Route::controller(TemporaryFileController::class)->group(function(){
    Route::match(['post','delete'],'temp/upload','index')->name('temporary.upload');
});


Route::get('/upload', [TemporaryFileController::class, 'upload'])->name('upload');