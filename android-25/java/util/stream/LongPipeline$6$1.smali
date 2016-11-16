.class Ljava/util/stream/LongPipeline$6$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$6;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/LongPipeline$6;

.field final synthetic val$mapper:Ljava/util/function/LongFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/LongPipeline$6;Ljava/util/stream/Sink;Ljava/util/function/LongFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$6;

    #@0
    .prologue
    .line 279
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    .local p3, "val$mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+Ljava/util/stream/LongStream;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$6$1;->this$1:Ljava/util/stream/LongPipeline$6;

    #@2
    iput-object p3, p0, Ljava/util/stream/LongPipeline$6$1;->val$mapper:Ljava/util/function/LongFunction;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method synthetic -java_util_stream_LongPipeline$6$1_lambda$3(J)V
    .locals 1
    .param p1, "i"    # J

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    #@5
    .line 0
    return-void
.end method

.method public accept(J)V
    .locals 7
    .param p1, "t"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 287
    const/4 v1, 0x0

    #@2
    .local v1, "result":Ljava/util/stream/LongStream;
    :try_start_0
    iget-object v2, p0, Ljava/util/stream/LongPipeline$6$1;->val$mapper:Ljava/util/function/LongFunction;

    #@4
    invoke-interface {v2, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    move-object v0, v2

    #@9
    check-cast v0, Ljava/util/stream/LongStream;

    #@b
    move-object v1, v0

    #@c
    .line 289
    .local v1, "result":Ljava/util/stream/LongStream;
    if-eqz v1, :cond_0

    #@e
    .line 290
    invoke-interface {v1}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    #@11
    move-result-object v2

    #@12
    new-instance v4, Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;

    #@14
    invoke-direct {v4, p0}, Ljava/util/stream/LongPipeline$6$1$-void_accept_long_t_LambdaImpl0;-><init>(Ljava/util/stream/LongPipeline$6$1;)V

    #@17
    invoke-interface {v2, v4}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1a
    .line 291
    :cond_0
    if-eqz v1, :cond_1

    #@1c
    :try_start_1
    invoke-interface {v1}, Ljava/util/stream/LongStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@1f
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    #@21
    throw v3

    #@22
    :catch_0
    move-exception v3

    #@23
    goto :goto_0

    #@24
    .end local v1    # "result":Ljava/util/stream/LongStream;
    :catch_1
    move-exception v2

    #@25
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    :catchall_0
    move-exception v3

    #@27
    move-object v5, v3

    #@28
    move-object v3, v2

    #@29
    move-object v2, v5

    #@2a
    :goto_1
    if-eqz v1, :cond_2

    #@2c
    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/LongStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@2f
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    #@31
    throw v3

    #@32
    :catch_2
    move-exception v4

    #@33
    if-nez v3, :cond_3

    #@35
    move-object v3, v4

    #@36
    goto :goto_2

    #@37
    :cond_3
    if-eq v3, v4, :cond_2

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@3c
    goto :goto_2

    #@3d
    :cond_4
    throw v2

    #@3e
    .line 286
    .restart local v1    # "result":Ljava/util/stream/LongStream;
    :cond_5
    return-void

    #@3f
    .line 291
    .end local v1    # "result":Ljava/util/stream/LongStream;
    :catchall_1
    move-exception v2

    #@40
    goto :goto_1
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedLong;->downstream:Ljava/util/stream/Sink;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@7
    .line 281
    return-void
.end method
