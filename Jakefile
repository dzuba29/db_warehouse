task('refresh', function (params) {
	cmds = [
		'del -f data.db',
		"echo .read SQL/tables.sql | sqlite3 data.db"
	];
	jake.exec(cmds, {printStdout: true}, ()=>{
		console.log('БД пересоздана');
    	complete();
	});
});

task('demo', function (params) {
	cmds = [
		"echo .read SQL/demo.sql | sqlite3 data.db"
	];
	jake.exec(cmds, {printStdout: true}, ()=>{
		console.log('БД заполнена');
    	complete();
	});
});

task('run', (params)=> {
	cmds = [
		'set DEBUG=myapp:* & npm start'
	];
	jake.exec(cmds, {printStdout: true}, ()=>{
    	complete();
	});
});