.class Ljava/util/stream/LongPipeline$9$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongPipeline$9;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field final synthetic blacklist this$1:Ljava/util/stream/LongPipeline$9;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/LongPipeline$9;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/stream/LongPipeline$9;
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

    .line 383
    .local p0, "this":Ljava/util/stream/LongPipeline$9$1;, "Ljava/util/stream/LongPipeline$9$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/LongPipeline$9$1;->this$1:Ljava/util/stream/LongPipeline$9;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 4
    .param p1, "t"    # J

    .line 391
    .local p0, "this":Ljava/util/stream/LongPipeline$9$1;, "Ljava/util/stream/LongPipeline$9$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$9$1;->this$1:Ljava/util/stream/LongPipeline$9;

    iget-object v0, v0, Ljava/util/stream/LongPipeline$9;->val$predicate:Ljava/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 392
    iget-object v0, p0, Ljava/util/stream/LongPipeline$9$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    .line 393
    :cond_f
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 386
    .local p0, "this":Ljava/util/stream/LongPipeline$9$1;, "Ljava/util/stream/LongPipeline$9$1;"
    iget-object v0, p0, Ljava/util/stream/LongPipeline$9$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 387
    return-void
.end method
