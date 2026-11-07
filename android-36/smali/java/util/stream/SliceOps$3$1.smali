.class Ljava/util/stream/SliceOps$3$1;
.super Ljava/util/stream/Sink$ChainedLong;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps$3;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
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
.field blacklist m:J

.field blacklist n:J

.field final synthetic blacklist this$0:Ljava/util/stream/SliceOps$3;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/SliceOps$3;Ljava/util/stream/Sink;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/stream/SliceOps$3;
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

    .line 425
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/SliceOps$3$1;->this$0:Ljava/util/stream/SliceOps$3;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedLong;-><init>(Ljava/util/stream/Sink;)V

    .line 426
    iget-object v0, p0, Ljava/util/stream/SliceOps$3$1;->this$0:Ljava/util/stream/SliceOps$3;

    iget-wide v0, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    .line 427
    iget-object v0, p0, Ljava/util/stream/SliceOps$3$1;->this$0:Ljava/util/stream/SliceOps$3;

    iget-wide v0, v0, Ljava/util/stream/SliceOps$3;->val$normalizedLimit:J

    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 9
    .param p1, "t"    # J

    .line 436
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x1

    if-nez v0, :cond_1b

    .line 437
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 438
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    .line 439
    iget-object v0, p0, Ljava/util/stream/SliceOps$3$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    goto :goto_20

    .line 443
    :cond_1b
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->n:J

    .line 445
    :cond_20
    :goto_20
    return-void
.end method

.method public blacklist begin(J)V
    .registers 11
    .param p1, "size"    # J

    .line 431
    iget-object v0, p0, Ljava/util/stream/SliceOps$3$1;->downstream:Ljava/util/stream/Sink;

    iget-object v1, p0, Ljava/util/stream/SliceOps$3$1;->this$0:Ljava/util/stream/SliceOps$3;

    iget-wide v4, v1, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v6, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    move-wide v2, p1

    .end local p1    # "size":J
    .local v2, "size":J
    invoke-static/range {v2 .. v7}, Ljava/util/stream/SliceOps;->-$$Nest$smcalcSize(JJJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->begin(J)V

    .line 432
    return-void
.end method

.method public blacklist cancellationRequested()Z
    .registers 5

    .line 449
    iget-wide v0, p0, Ljava/util/stream/SliceOps$3$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/util/stream/SliceOps$3$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
