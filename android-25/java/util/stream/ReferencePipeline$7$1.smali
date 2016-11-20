.class Ljava/util/stream/ReferencePipeline$7$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$7;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/stream/ReferencePipeline$7;Ljava/util/stream/Sink;Ljava/util/function/Function;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$7;

    #@0
    .prologue
    .line 260
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TR;>;"
    .local p3, "val$mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/Stream<+TR;>;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$7$1;->this$1:Ljava/util/stream/ReferencePipeline$7;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$7$1;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@7
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    const/4 v3, 0x0

    #@1
    .line 268
    const/4 v1, 0x0

    #@2
    .local v1, "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :try_start_0
    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$7$1;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    move-object v0, v2

    #@9
    check-cast v0, Ljava/util/stream/Stream;

    #@b
    move-object v1, v0

    #@c
    .line 270
    .local v1, "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    if-eqz v1, :cond_0

    #@e
    .line 271
    invoke-interface {v1}, Ljava/util/stream/Stream;->sequential()Ljava/util/stream/BaseStream;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/util/stream/Stream;

    #@14
    iget-object v4, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@16
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@19
    .line 272
    :cond_0
    if-eqz v1, :cond_1

    #@1b
    :try_start_1
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    #@20
    throw v3

    #@21
    :catch_0
    move-exception v3

    #@22
    goto :goto_0

    #@23
    .end local v1    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :catch_1
    move-exception v2

    #@24
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    :catchall_0
    move-exception v3

    #@26
    move-object v5, v3

    #@27
    move-object v3, v2

    #@28
    move-object v2, v5

    #@29
    :goto_1
    if-eqz v1, :cond_2

    #@2b
    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@2e
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    #@30
    throw v3

    #@31
    :catch_2
    move-exception v4

    #@32
    if-nez v3, :cond_3

    #@34
    move-object v3, v4

    #@35
    goto :goto_2

    #@36
    :cond_3
    if-eq v3, v4, :cond_2

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@3b
    goto :goto_2

    #@3c
    :cond_4
    throw v2

    #@3d
    .line 267
    .restart local v1    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :cond_5
    return-void

    #@3e
    .line 272
    .end local v1    # "result":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TR;>;"
    :catchall_1
    move-exception v2

    #@3f
    goto :goto_1
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@7
    .line 262
    return-void
.end method
