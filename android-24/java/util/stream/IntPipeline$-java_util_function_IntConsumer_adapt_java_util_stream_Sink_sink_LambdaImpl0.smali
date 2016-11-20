.class final synthetic Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;
.super Ljava/lang/Object;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/stream/Sink;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Sink;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    #@5
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "arg0"    # I

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    #@2
    invoke-static {v0, p1}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-0(Ljava/util/stream/Sink;I)V

    #@5
    return-void
.end method
