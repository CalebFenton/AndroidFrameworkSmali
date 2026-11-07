.class Ljava/util/stream/LongPipeline$10$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$10;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic blacklist this$1:Ljava/util/stream/LongPipeline$10;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline$10;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$10;
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

    .line 407
    .local p0, "this":Ljava/util/stream/LongPipeline$10$1;, "Ljava/util/stream/LongPipeline$10$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$10$1;->this$1:Ljava/util/stream/LongPipeline$10;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 410
    .local p0, "this":Ljava/util/stream/LongPipeline$10$1;, "Ljava/util/stream/LongPipeline$10$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$10$1;->this$1:Ljava/util/stream/LongPipeline$10;

    iget-object v0, v0, Ljava/util/stream/LongPipeline$10;->val$action:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 411
    iget-object v0, p0, Ljava/util/stream/LongPipeline$10$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    .line 412
    return-void
.end method
