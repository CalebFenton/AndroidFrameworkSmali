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
        "Ljava/util/stream/Sink$ChainedReference",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field lastSeen:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field seenNull:Z

.field final synthetic this$1:Ljava/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/DistinctOps$1;

    #@0
    .prologue
    .line 125
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Ljava/util/stream/DistinctOps$1$1;->this$1:Ljava/util/stream/DistinctOps$1;

    #@2
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    #@1
    .line 145
    if-nez p1, :cond_1

    #@3
    .line 146
    iget-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 147
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    #@a
    .line 148
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@c
    iput-object v1, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    #@e
    invoke-interface {v0, v1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@11
    .line 144
    :cond_0
    :goto_0
    return-void

    #@12
    .line 150
    :cond_1
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    #@14
    if-eqz v0, :cond_2

    #@16
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 151
    :cond_2
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@20
    iput-object p1, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    #@22
    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@25
    goto :goto_0
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    #@3
    .line 132
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    #@6
    .line 133
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@8
    const-wide/16 v2, -0x1

    #@a
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@d
    .line 130
    return-void
.end method

.method public end()V
    .locals 1

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/util/stream/DistinctOps$1$1;->seenNull:Z

    #@3
    .line 139
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$1;->lastSeen:Ljava/lang/Object;

    #@6
    .line 140
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@8
    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    #@b
    .line 137
    return-void
.end method
