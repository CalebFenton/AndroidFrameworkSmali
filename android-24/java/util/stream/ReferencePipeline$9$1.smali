.class Ljava/util/stream/ReferencePipeline$9$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$9;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ReferencePipeline$9$1$-void__init__java_util_stream_ReferencePipeline$9_this$1_java_util_stream_Sink_$anonymous0_java_util_function_Function_val$mapper_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference",
        "<TP_OUT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field downstreamAsDouble:Ljava/util/function/DoubleConsumer;

.field final synthetic this$1:Ljava/util/stream/ReferencePipeline$9;

.field final synthetic val$mapper:Ljava/util/function/Function;


# direct methods
.method static synthetic -java_util_stream_ReferencePipeline$9$1-mthref-0(Ljava/util/stream/Sink;D)V
    .locals 1

    #@0
    .prologue
    .line 316
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/util/stream/ReferencePipeline$9;Ljava/util/stream/Sink;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$9;

    #@0
    .prologue
    .line 315
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    .local p3, "val$mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/DoubleStream;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$9$1;->this$1:Ljava/util/stream/ReferencePipeline$9;

    #@2
    iput-object p3, p0, Ljava/util/stream/ReferencePipeline$9$1;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@7
    .line 316
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    new-instance v1, Ljava/util/stream/ReferencePipeline$9$1$-void__init__java_util_stream_ReferencePipeline$9_this$1_java_util_stream_Sink_$anonymous0_java_util_function_Function_val$mapper_LambdaImpl0;

    #@e
    invoke-direct {v1, v0}, Ljava/util/stream/ReferencePipeline$9$1$-void__init__java_util_stream_ReferencePipeline$9_this$1_java_util_stream_Sink_$anonymous0_java_util_function_Function_val$mapper_LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    #@11
    iput-object v1, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    #@13
    .line 315
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
    .line 324
    const/4 v1, 0x0

    #@2
    .local v1, "result":Ljava/util/stream/DoubleStream;
    :try_start_0
    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$9$1;->val$mapper:Ljava/util/function/Function;

    #@4
    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    move-object v0, v2

    #@9
    check-cast v0, Ljava/util/stream/DoubleStream;

    #@b
    move-object v1, v0

    #@c
    .line 326
    .local v1, "result":Ljava/util/stream/DoubleStream;
    if-eqz v1, :cond_0

    #@e
    .line 327
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    #@11
    move-result-object v2

    #@12
    iget-object v4, p0, Ljava/util/stream/ReferencePipeline$9$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    #@14
    invoke-interface {v2, v4}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    .line 328
    :cond_0
    if-eqz v1, :cond_1

    #@19
    :try_start_1
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@1c
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    #@1e
    throw v3

    #@1f
    :catch_0
    move-exception v3

    #@20
    goto :goto_0

    #@21
    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catch_1
    move-exception v2

    #@22
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    :catchall_0
    move-exception v3

    #@24
    move-object v5, v3

    #@25
    move-object v3, v2

    #@26
    move-object v2, v5

    #@27
    :goto_1
    if-eqz v1, :cond_2

    #@29
    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@2c
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    #@2e
    throw v3

    #@2f
    :catch_2
    move-exception v4

    #@30
    if-nez v3, :cond_3

    #@32
    move-object v3, v4

    #@33
    goto :goto_2

    #@34
    :cond_3
    if-eq v3, v4, :cond_2

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@39
    goto :goto_2

    #@3a
    :cond_4
    throw v2

    #@3b
    .line 323
    .restart local v1    # "result":Ljava/util/stream/DoubleStream;
    :cond_5
    return-void

    #@3c
    .line 328
    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catchall_1
    move-exception v2

    #@3d
    goto :goto_1
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@7
    .line 318
    return-void
.end method
