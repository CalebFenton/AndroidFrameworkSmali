.class final synthetic Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;
.super Ljava/lang/Object;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/AbstractPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0"
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
.method public apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    #@0
    .prologue
    invoke-static {p1}, Ljava/util/stream/AbstractPipeline;->-java_util_stream_AbstractPipeline_lambda$3(I)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
