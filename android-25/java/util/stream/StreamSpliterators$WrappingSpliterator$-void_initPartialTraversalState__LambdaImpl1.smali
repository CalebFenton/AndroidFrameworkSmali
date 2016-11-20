.class final synthetic Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_initPartialTraversalState__LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/stream/StreamSpliterators$WrappingSpliterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/StreamSpliterators$WrappingSpliterator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;->val$this:Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    #@5
    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;->val$this:Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    #@2
    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->-java_util_stream_StreamSpliterators$WrappingSpliterator_lambda$2()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
