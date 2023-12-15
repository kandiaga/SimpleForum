<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Task;

use GuzzleHttp\Client;

class TaskController extends Controller
{
    //
	
	
		public function index()
	{
		$tasks = Task::all();
		return view('tasks.index', compact('tasks'));
	}

	public function show(Task $task)
	{
		return view('tasks.show', compact('task'));
	}
	
	
	
		public function create()
	{
		return view('tasks.create');
	}

	public function store(Request $request)
	{
		$validatedData = $request->validate([
			'title' => 'required|max:255',
			'description' => 'required',
			'price' => 'required',
			'image' => 'image|mimes:jpeg,png,jpg,gif',
		]);
         
		 
		 if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('images', 'public');
            $validatedData['image'] = $imagePath;
        }


		Task::create($validatedData);

		return redirect('/tasks')->with('success', 'Task created successfully!');
	}
	
	
	

	public function edit(Task $task)
	{
		return view('tasks.edit', compact('task'));
	}

	public function update(Request $request, Task $task)
	{
		$validatedData = $request->validate([
			'title' => 'required|max:255',
			'description' => 'required',
		]);

		$task->update($validatedData);

		return redirect('/tasks')->with('success', 'Task updated successfully!');
	}
	
	
		public function destroy(Task $task)
	{
		$task->delete();

		return redirect('/tasks')->with('success', 'Task deleted successfully!');
	}
	
	
	

       public function nka()
       {
  
          // OpenAI API endpoint
        $apiUrl = 'https://api.openai.com/v1/engines/text-davinci-003/completions';

        // Your OpenAI API key
        $apiKey = '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'; // Replace with your actual API key

        // Input messages
        $messages = [
            ["role" => "system", "content" => "You are a helpful assistant."],
            ["role" => "user", "content" => "Who won the world series in 2020?"],
        ];

        // Prepare the request data
        $requestData = [
            //'model' => 'text-davinci-003',
            'messages' => $messages,
        ];

        // Set up Guzzle client
        $client = new Client([
            'headers' => [
                'Content-Type' => 'application/json',
                'Authorization' => 'Bearer ' . $apiKey,
            ],
        ]);

        // Make the API request
        $response = $client->post($apiUrl, [
            'json' => $requestData,
        ]);

        // Decode the JSON response
        $responseData = json_decode($response->getBody(), true);

        // Extract the generated text
        $generatedText = $responseData['choices'][0]['text'];

        // Output the result
	
	$data = [
        //'generatedText' =>$generatedText,
        'title' => 'Task Title',
        'description' => 'Task Description',
    ];
		
		

		
        return view('tasks.nka', $data);
		
    }

    
}
