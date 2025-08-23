--- Python Settings
require("nvim-python-repl").setup({
    execute_on_send=true, 
    vsplit=true,
    prompt_spawn=false,
    spawn_command={
        python="ipython", 
        scala="sbt console",
        lua="ilua"
    }
}) 

