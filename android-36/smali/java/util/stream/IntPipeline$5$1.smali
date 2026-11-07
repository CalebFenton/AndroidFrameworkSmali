.class Ljava/util/stream/IntPipeline$5$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$5;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/IntPipeline$5;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$5;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$5;
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

    .line 278
    .local p0, "this":Ljava/util/stream/IntPipeline$5$1;, "Ljava/util/stream/IntPipeline$5$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$5$1;->this$1:Ljava/util/stream/IntPipeline$5;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 5
    .param p1, "t"    # I

    .line 281
    .local p0, "this":Ljava/util/stream/IntPipeline$5$1;, "Ljava/util/stream/IntPipeline$5$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$5$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/IntPipeline$5$1;->this$1:Ljava/util/stream/IntPipeline$5;

    iget-object v1, v1, Ljava/util/stream/IntPipeline$5;->val$mapper:Ljava/util/function/IntToLongFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->accept(J)V

    .line 282
    return-void
.end method
