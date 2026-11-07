.class Ljava/util/stream/DoublePipeline$1$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$1;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$1;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$1;
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

    .line 182
    .local p0, "this":Ljava/util/stream/DoublePipeline$1$1;, "Ljava/util/stream/DoublePipeline$1$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TU;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$1$1;->this$1:Ljava/util/stream/DoublePipeline$1;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 5
    .param p1, "t"    # D

    .line 185
    .local p0, "this":Ljava/util/stream/DoublePipeline$1$1;, "Ljava/util/stream/DoublePipeline$1$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$1$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$1$1;->this$1:Ljava/util/stream/DoublePipeline$1;

    iget-object v1, v1, Ljava/util/stream/DoublePipeline$1;->val$mapper:Ljava/util/function/DoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 186
    return-void
.end method
