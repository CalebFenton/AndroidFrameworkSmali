.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$downstreamAccumulator:Ljava/util/function/BiConsumer;

.field private synthetic val$predicate:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl0;->val$downstreamAccumulator:Ljava/util/function/BiConsumer;

    #@5
    iput-object p2, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl0;->val$predicate:Ljava/util/function/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl0;->val$downstreamAccumulator:Ljava/util/function/BiConsumer;

    #@2
    iget-object v1, p0, Ljava/util/stream/Collectors$-java_util_stream_Collector_partitioningBy_java_util_function_Predicate_predicate_java_util_stream_Collector_downstream_LambdaImpl0;->val$predicate:Ljava/util/function/Predicate;

    #@4
    check-cast p1, Ljava/util/stream/Collectors$Partition;

    #@6
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, v1, p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors_lambda$71(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Ljava/util/stream/Collectors$Partition;Ljava/lang/Object;)V

    #@9
    return-void
.end method
