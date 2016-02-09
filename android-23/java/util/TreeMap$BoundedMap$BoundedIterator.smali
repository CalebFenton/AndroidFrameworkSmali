.class abstract Ljava/util/TreeMap$BoundedMap$BoundedIterator;
.super Ljava/util/TreeMap$MapIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$BoundedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BoundedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap",
        "<TK;TV;>.MapIterator<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$BoundedMap;


# direct methods
.method protected constructor <init>(Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1480
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedIterator;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedIterator<TT;>;"
    .local p1, "this$1":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p2, "next":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    .line 1481
    iget-object v0, p1, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@4
    invoke-direct {p0, v0, p2}, Ljava/util/TreeMap$MapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Node;)V

    #@7
    .line 1480
    return-void
.end method


# virtual methods
.method protected stepBackward()Ljava/util/TreeMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedIterator;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedIterator<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 1493
    invoke-super {p0}, Ljava/util/TreeMap$MapIterator;->stepBackward()Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1494
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->next:Ljava/util/TreeMap$Node;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@b
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->next:Ljava/util/TreeMap$Node;

    #@d
    iget-object v2, v2, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@f
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@11
    invoke-static {v3}, Ljava/util/TreeMap$BoundedMap;->-get2(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    #@14
    move-result-object v3

    #@15
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@17
    invoke-static {v1, v2, v3, v4}, Ljava/util/TreeMap$BoundedMap;->-wrap1(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1497
    :cond_0
    :goto_0
    return-object v0

    #@1e
    .line 1495
    :cond_1
    iput-object v5, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->next:Ljava/util/TreeMap$Node;

    #@20
    goto :goto_0
.end method

.method protected stepForward()Ljava/util/TreeMap$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedIterator;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedIterator<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 1485
    invoke-super {p0}, Ljava/util/TreeMap$MapIterator;->stepForward()Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1486
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->next:Ljava/util/TreeMap$Node;

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@b
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->next:Ljava/util/TreeMap$Node;

    #@d
    iget-object v2, v2, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    #@f
    sget-object v3, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@11
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@13
    invoke-static {v4}, Ljava/util/TreeMap$BoundedMap;->-get4(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    #@16
    move-result-object v4

    #@17
    invoke-static {v1, v2, v3, v4}, Ljava/util/TreeMap$BoundedMap;->-wrap1(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1489
    :cond_0
    :goto_0
    return-object v0

    #@1e
    .line 1487
    :cond_1
    iput-object v5, p0, Ljava/util/TreeMap$BoundedMap$BoundedIterator;->next:Ljava/util/TreeMap$Node;

    #@20
    goto :goto_0
.end method
