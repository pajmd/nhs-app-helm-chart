#!/bin/bash

# delete all artifacts
kubectl delete statefulSet,services,pods,jobs -l app=solr
kubectl delete pvc -l app=solr
kubectl delete statefulSet,services,pods -l app=zookeeper
kubectl delete pvc -l app=zookeeper