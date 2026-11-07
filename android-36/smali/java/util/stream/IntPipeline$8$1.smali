.class Ljava/util/stream/IntPipeline$8$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$8;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/IntPipeline$8;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$8;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$8;
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

    .line 363
    .local p0, "this":Ljava/util/stream/IntPipeline$8$1;, "Ljava/util/stream/IntPipeline$8$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$8$1;->this$1:Ljava/util/stream/IntPipeline$8;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "t"    # I

    .line 373
    .local p0, "this":Ljava/util/stream/IntPipeline$8$1;, "Ljava/util/stream/IntPipeline$8$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$8$1;->this$1:Ljava/util/stream/IntPipeline$8;

    iget-object v0, v0, Ljava/util/stream/IntPipeline$8;->val$mapper:Ljava/util/stream/IntStream$IntMapMultiConsumer;

    iget-object v1, p0, Ljava/util/stream/IntPipeline$8$1;->downstream:Ljava/util/stream/Sink;

    check-cast v1, Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1, v1}, Ljava/util/stream/IntStream$IntMapMultiConsumer;->accept(ILjava/util/function/IntConsumer;)V

    .line 374
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 367
    .local p0, "this":Ljava/util/stream/IntPipeline$8$1;, "Ljava/util/stream/IntPipeline$8$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$8$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 368
    return-void
.end method
