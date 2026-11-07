.class Ljava/util/stream/IntPipeline$3$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$3;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$3;
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

    .line 231
    .local p0, "this":Ljava/util/stream/IntPipeline$3$1;, "Ljava/util/stream/IntPipeline$3$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 5
    .param p1, "t"    # I

    .line 234
    .local p0, "this":Ljava/util/stream/IntPipeline$3$1;, "Ljava/util/stream/IntPipeline$3$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$3$1;->downstream:Ljava/util/stream/Sink;

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->accept(D)V

    .line 235
    return-void
.end method
