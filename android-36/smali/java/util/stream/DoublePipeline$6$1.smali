.class Ljava/util/stream/DoublePipeline$6$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$6;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$6;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$6;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$6;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 329
    .local p0, "this":Ljava/util/stream/DoublePipeline$6$1;, "Ljava/util/stream/DoublePipeline$6$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$6$1;->this$1:Ljava/util/stream/DoublePipeline$6;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 5
    .param p1, "t"    # D

    .line 339
    .local p0, "this":Ljava/util/stream/DoublePipeline$6$1;, "Ljava/util/stream/DoublePipeline$6$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$6$1;->this$1:Ljava/util/stream/DoublePipeline$6;

    iget-object v0, v0, Ljava/util/stream/DoublePipeline$6;->val$mapper:Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$6$1;->downstream:Ljava/util/stream/Sink;

    check-cast v1, Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;->accept(DLjava/util/function/DoubleConsumer;)V

    .line 340
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 333
    .local p0, "this":Ljava/util/stream/DoublePipeline$6$1;, "Ljava/util/stream/DoublePipeline$6$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$6$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 334
    return-void
.end method
