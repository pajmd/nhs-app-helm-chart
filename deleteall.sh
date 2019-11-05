#!/bin/bash

# delete all artifacts
kubectl delete statefulSet,services,pods,jobs --cascade=false -l app=solr
kubectl delete pvc -l app=solr
kubectl delete statefulSet,services,pods --cascade=false -l app=zookeeper
kubectl delete pvc -l app=zookeeper