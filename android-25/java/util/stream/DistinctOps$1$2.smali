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
        "Ljava/util/stream/Sink$ChainedReference",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Ljava/util/stream/DistinctOps$1;Ljava/util/stream/Sink;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/DistinctOps$1;

    #@0
    .prologue
    .line 156
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-TT;>;"
    iput-object p1, p0, Ljava/util/stream/DistinctOps$1$2;->this$1:Ljava/util/stream/DistinctOps$1;

    #@2
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 174
    iget-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    .line 175
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@f
    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(Ljava/lang/Object;)V

    #@12
    .line 172
    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    #@0
    .prologue
    .line 161
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    #@7
    .line 162
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@9
    const-wide/16 v2, -0x1

    #@b
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@e
    .line 160
    return-void
.end method

.method public end()V
    .locals 1

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    #@3
    .line 168
    iget-object v0, p0, Ljava/util/stream/Sink$ChainedReference;->downstream:Ljava/util/stream/Sink;

    #@5
    invoke-interface {v0}, Ljava/util/stream/Sink;->end()V

    #@8
    .line 166
    return-void
.end method
