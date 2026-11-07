.class Ljava/util/stream/DoublePipeline$9$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$9;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$9;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$9;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$9;
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

    .line 391
    .local p0, "this":Ljava/util/stream/DoublePipeline$9$1;, "Ljava/util/stream/DoublePipeline$9$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$9$1;->this$1:Ljava/util/stream/DoublePipeline$9;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 4
    .param p1, "t"    # D

    .line 394
    .local p0, "this":Ljava/util/stream/DoublePipeline$9$1;, "Ljava/util/stream/DoublePipeline$9$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$9$1;->this$1:Ljava/util/stream/DoublePipeline$9;

    iget-object v0, v0, Ljava/util/stream/DoublePipeline$9;->val$action:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 395
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$9$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    .line 396
    return-void
.end method
