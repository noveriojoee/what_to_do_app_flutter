class TaskModel{
	String taskDescription;
	bool isDone;

	TaskModel(this.taskDescription, this.isDone);

	void toogleIsDone(){
		this.isDone = !this.isDone;
	}

}
