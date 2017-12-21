dReach

**dReach** takes in a hybrid system description (.drh) and unrolling bound *k*, and performs bounded model-checking.

````
dReach -k 10 -l 10 bouncing_ball.drh --visualize --precision=0.1
````

After running, **dReach**, run **dReal**:

````
dReal --visualize bouncing_ball_10_0.smt2
````

Then visualize the ODE following instructions on the **dReal** [GitHub page][github_page]
[github_page: https://github.com/dreal/dreal3/blob/master/doc/ode-visualization.md] but I have copied it below
for reference:

- Copy the generated ``.json`` file to  ``dreal/tools/ODE_visualization`` directory, renaming it to
    ``data.json``.

````
    cd ~/dreal/tools/ODE_visualization
    cp <path_to_xxx.smt2.json> data.json
````

 - Run Webserver

````
    ./run_websvr.sh
````

 - Open a URL ``http://localhost:8000`` with an web browser.

````
    google-chrome http://localhost:8000
````

Customizing Visualization
=========================

By modifying [tools/ODE_visualization/index.html](/tools/ODE_visualization/index.html) file, you can customize the visualization:

````js
var config = {
    jsonfile : 'data.json',
    animation_delay : 800,
    width : 950,
    height : 800,
    inter_chart_margin: 20,
    contextHeight : 300,
    margin : {top: 50, right: 40, bottom: 50, left: 60}
}
````
