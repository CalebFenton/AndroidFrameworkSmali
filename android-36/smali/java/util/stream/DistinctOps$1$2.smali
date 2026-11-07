.class Ljava/util/stream/DistinctOps$1$2;
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
.field blacklist seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


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

    .line 159
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 176
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 177
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 179
    :cond_d
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    .line 165
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 166
    return-void
.end method

.method public blacklist end()V
    .registers 2

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    .line 171
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    .line 172
    return-void
.end method
