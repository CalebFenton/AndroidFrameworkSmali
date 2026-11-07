.class Ljava/util/stream/DistinctOps$1$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DistinctOps$1;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field blacklist lastSeen:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist seenNull:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/stream/DistinctOps$1;
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

    .line 128
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 148
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_12

    .line 149
    iget-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    if-nez v0, :cond_25

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 151
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->downstream:Ljava/util/stream/Sink;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_25

    .line 153
    :cond_12
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 154
    :cond_1e
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->downstream:Ljava/util/stream/Sink;

    iput-object p1, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 156
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 137
    return-void
.end method

.method public blacklist end()V
    .registers 2

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 144
    return-void
.end method
