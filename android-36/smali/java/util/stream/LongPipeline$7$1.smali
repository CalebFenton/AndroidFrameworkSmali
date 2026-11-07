.class Ljava/util/stream/LongPipeline$7$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/stream/LongPipeline$7;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline$7;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$7;
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

    .line 345
    .local p0, "this":Ljava/util/stream/LongPipeline$7$1;, "Ljava/util/stream/LongPipeline$7$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$7$1;->this$1:Ljava/util/stream/LongPipeline$7;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 5
    .param p1, "t"    # J

    .line 355
    .local p0, "this":Ljava/util/stream/LongPipeline$7$1;, "Ljava/util/stream/LongPipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$7$1;->this$1:Ljava/util/stream/LongPipeline$7;

    iget-object v0, v0, Ljava/util/stream/LongPipeline$7;->val$mapper:Ljava/util/stream/LongStream$LongMapMultiConsumer;

    iget-object v1, p0, Ljava/util/stream/LongPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    check-cast v1, Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/stream/LongStream$LongMapMultiConsumer;->accept(JLjava/util/function/LongConsumer;)V

    .line 356
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 349
    .local p0, "this":Ljava/util/stream/LongPipeline$7$1;, "Ljava/util/stream/LongPipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 350
    return-void
.end method
