#!/bin/bash
SGX=1 ./pal_loader bash -c "/opt/jdk8/bin/java -cp \
  '/ppml/trusted-big-data-ml/work/analytics-zoo-0.12.0-SNAPSHOT/lib/analytics-zoo-bigdl_0.13.0-spark_2.4.6-0.12.0-SNAPSHOT-jar-with-dependencies.jar:/ppml/trusted-big-data-ml/work/spark-2.4.6/conf/:/ppml/trusted-big-data-ml/work/spark-2.4.6/jars/*' \
  -Xmx2g \
  org.apache.spark.deploy.SparkSubmit \
  --master 'local[4]' \
  --conf spark.driver.memory=2g \
  --conf spark.executor.extraClassPath=/ppml/trusted-big-data-ml/work/analytics-zoo-0.12.0-SNAPSHOT/lib/analytics-zoo-bigdl_0.13.0-spark_2.4.6-0.12.0-SNAPSHOT-jar-with-dependencies.jar \
  --conf spark.driver.extraClassPath=/ppml/trusted-big-data-ml/work/analytics-zoo-0.12.0-SNAPSHOT/lib/analytics-zoo-bigdl_0.13.0-spark_2.4.6-0.12.0-SNAPSHOT-jar-with-dependencies.jar \
  --properties-file /ppml/trusted-big-data-ml/work/analytics-zoo-0.12.0-SNAPSHOT/conf/spark-analytics-zoo.conf \
  --jars /ppml/trusted-big-data-ml/work/analytics-zoo-0.12.0-SNAPSHOT/lib/analytics-zoo-bigdl_0.13.0-spark_2.4.6-0.12.0-SNAPSHOT-jar-with-dependencies.jar \
  --py-files /ppml/trusted-big-data-ml/work/analytics-zoo-0.12.0-SNAPSHOT/lib/analytics-zoo-bigdl_0.13.0-spark_2.4.6-0.12.0-SNAPSHOT-python-api.zip \
  --executor-memory 2g \
  /ppml/trusted-big-data-ml/work/examples/pyzoo/orca/data/spark_pandas.py \
  -f path_of_nyc_taxi_csv" | tee test-orca-data-sgx.log
