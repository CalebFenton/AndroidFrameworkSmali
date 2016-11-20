.class final synthetic Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$DistinctSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$action:Ljava/util/function/Consumer;

.field private synthetic val$this:Ljava/util/stream/StreamSpliterators$DistinctSpliterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/StreamSpliterators$DistinctSpliterator;Ljava/util/function/Consumer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;->val$this:Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    #@5
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;->val$action:Ljava/util/function/Consumer;

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;->val$this:Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    #@2
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;->val$action:Ljava/util/function/Consumer;

    #@4
    invoke-virtual {v0, v1, p1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->-java_util_stream_StreamSpliterators$DistinctSpliterator_lambda$18(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    #@7
    return-void
.end method
