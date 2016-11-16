.class final synthetic Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0"
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
    iput-object p1, p0, Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    #@5
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "arg0"    # J

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;->val$-lambdaCtx:Ljava/util/stream/Sink;

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-0(Ljava/util/stream/Sink;J)V

    #@5
    return-void
.end method
