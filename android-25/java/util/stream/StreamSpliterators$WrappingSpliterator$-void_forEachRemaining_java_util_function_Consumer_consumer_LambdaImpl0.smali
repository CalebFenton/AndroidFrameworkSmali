.class final synthetic Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    #@2
    invoke-static {v0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->-java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-1(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    #@5
    return-void
.end method
