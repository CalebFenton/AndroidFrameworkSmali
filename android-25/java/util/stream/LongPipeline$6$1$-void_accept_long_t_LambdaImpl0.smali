.class final synthetic Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;
.super Ljava/lang/Object;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline$6$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_accept_long_t_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/stream/LongPipeline$6$1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/LongPipeline$6$1;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;->val$this:Ljava/util/stream/LongPipeline$6$1;

    #@5
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "arg0"    # J

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;->val$this:Ljava/util/stream/LongPipeline$6$1;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/stream/LongPipeline$6$1;->-java_util_stream_LongPipeline$6$1_lambda$3(J)V

    #@5
    return-void
.end method
