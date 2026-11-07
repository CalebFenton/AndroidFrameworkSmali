.class Ljava/util/stream/DoublePipeline$3$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$3;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$3;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$3;
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

    .line 243
    .local p0, "this":Ljava/util/stream/DoublePipeline$3$1;, "Ljava/util/stream/DoublePipeline$3$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$3$1;->this$1:Ljava/util/stream/DoublePipeline$3;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 5
    .param p1, "t"    # D

    .line 246
    .local p0, "this":Ljava/util/stream/DoublePipeline$3$1;, "Ljava/util/stream/DoublePipeline$3$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$3$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$3$1;->this$1:Ljava/util/stream/DoublePipeline$3;

    iget-object v1, v1, Ljava/util/stream/DoublePipeline$3;->val$mapper:Ljava/util/function/DoubleToIntFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/DoubleToIntFunction;->applyAsInt(D)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(I)V

    .line 247
    return-void
.end method
