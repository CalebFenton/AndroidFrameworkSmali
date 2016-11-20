.class final synthetic Ljava/util/stream/DistinctOps$1$-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2;
.super Ljava/lang/Object;
.source "DistinctOps.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DistinctOps$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Node_reduce_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl2"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, Ljava/util/LinkedHashSet;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/LinkedHashSet;

    #@4
    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/stream/DistinctOps$1;->-java_util_stream_DistinctOps$1-mthref-2(Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;)V

    #@7
    return-void
.end method
