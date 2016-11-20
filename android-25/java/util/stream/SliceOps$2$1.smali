.class Ljava/util/stream/SliceOps$2$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps$2;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field m:J

.field n:J

.field final synthetic this$1:Ljava/util/stream/SliceOps$2;

.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava/util/stream/SliceOps$2;Ljava/util/stream/Sink;JJ)V
    .locals 5
    .param p1, "this$1"    # Ljava/util/stream/SliceOps$2;
    .param p3, "val$skip"    # J
    .param p5, "val$limit"    # J

    #@0
    .prologue
    .line 299
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/SliceOps$2$1;->this$1:Ljava/util/stream/SliceOps$2;

    #@2
    iput-wide p3, p0, Ljava/util/stream/SliceOps$2$1;->val$skip:J

    #@4
    iput-wide p5, p0, Ljava/util/stream/SliceOps$2$1;->val$limit:J

    #@6
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    #@9
    .line 300
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->val$skip:J

    #@b
    iput-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->n:J

    #@d
    .line 301
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->val$limit:J

    #@f
    const-wide/16 v2, 0x0

    #@11
    cmp-long v0, v0, v2

    #@13
    if-ltz v0, :cond_0

    #@15
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->val$limit:J

    #@17
    :goto_0
    iput-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->m:J

    #@19
    .line 299
    return-void

    #@1a
    .line 301
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    #@1f
    goto :goto_0
.end method


# virtual methods
.method public accept(I)V
    .locals 6
    .param p1, "t"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    const-wide/16 v2, 0x0

    #@4
    .line 310
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->n:J

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_1

    #@a
    .line 311
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->m:J

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_0

    #@10
    .line 312
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->m:J

    #@12
    sub-long/2addr v0, v4

    #@13
    iput-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->m:J

    #@15
    .line 313
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@17
    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    #@1a
    .line 309
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 317
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->n:J

    #@1d
    sub-long/2addr v0, v4

    #@1e
    iput-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->n:J

    #@20
    goto :goto_0
.end method

.method public begin(J)V
    .locals 7
    .param p1, "size"    # J

    #@0
    .prologue
    .line 305
    iget-object v6, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@2
    iget-wide v2, p0, Ljava/util/stream/SliceOps$2$1;->val$skip:J

    #@4
    iget-wide v4, p0, Ljava/util/stream/SliceOps$2$1;->m:J

    #@6
    move-wide v0, p1

    #@7
    invoke-static/range {v0 .. v5}, Ljava/util/stream/SliceOps;->-wrap2(JJJ)J

    #@a
    move-result-wide v0

    #@b
    invoke-interface {v6, v0, v1}, Ljava/util/stream/Sink;->begin(J)V

    #@e
    .line 304
    return-void
.end method

.method public cancellationRequested()Z
    .locals 4

    #@0
    .prologue
    .line 323
    iget-wide v0, p0, Ljava/util/stream/SliceOps$2$1;->m:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedInt;->downstream:Ljava/util/stream/Sink;

    #@a
    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method
