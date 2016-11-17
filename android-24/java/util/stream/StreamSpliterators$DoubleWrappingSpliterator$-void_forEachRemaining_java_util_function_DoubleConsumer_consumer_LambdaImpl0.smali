.class final synthetic Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$-void_forEachRemaining_java_util_function_DoubleConsumer_consumer_LambdaImpl0;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_forEachRemaining_java_util_function_DoubleConsumer_consumer_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/function/DoubleConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$-void_forEachRemaining_java_util_function_DoubleConsumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/DoubleConsumer;

    #@5
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "arg0"    # D

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$-void_forEachRemaining_java_util_function_DoubleConsumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/DoubleConsumer;

    #@2
    invoke-static {v0, p1, p2}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->-java_util_stream_StreamSpliterators$DoubleWrappingSpliterator-mthref-1(Ljava/util/function/DoubleConsumer;D)V

    #@5
    return-void
.end method
