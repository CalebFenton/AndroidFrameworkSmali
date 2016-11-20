.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingBy_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_groupingBy_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$downstreamFinisher:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingBy_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$downstreamFinisher:Ljava/util/function/Function;

    #@5
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_groupingBy_java_util_function_Function_classifier_java_util_function_Supplier_mapFactory_java_util_stream_Collector_downstream_LambdaImpl1;->val$downstreamFinisher:Ljava/util/function/Function;

    #@2
    check-cast p1, Ljava/util/Map;

    #@4
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$61(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
