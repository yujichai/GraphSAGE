CNAME=yuji_tf1_graphsage

docker kill $CNAME
docker rm $CNAME

docker run --privileged=true --gpus '"device=all"' -itd \
    -v /home/yujichai/mlrsh/yujichai/compute_graph_test:/workspace/compute_graph_test \
    -v /home/yujichai/mlrsh/yuezha01/latency_data_gnn:/workspace/latency_data_gnn \
    -v /home/yujichai/mlrsh/yujichai/GraphSAGE:/workspace/GraphSAGE \
    -w /workspace \
    --name $CNAME \
    tf1_graphsage \
    bash

docker attach $CNAME
