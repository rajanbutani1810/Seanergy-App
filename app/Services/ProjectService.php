<?php

namespace App\Services;

use App\Models\Project;

class ProjectService
{
    public function create(array $data)
    {
        return Project::create($data);
    }

    public function update(Project $project, array $data)
    {
        $project->update($data);
        return $project;
    }

    public function delete(Project $project)
    {
        return $project->delete();
    }

    public function listByUser($userId)
    {
        return Project::where('user_id', $userId)->with('tasks')->get();
    }
}
