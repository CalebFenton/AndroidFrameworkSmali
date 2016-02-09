.class final Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$BoundedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$BoundedMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$BoundedMap;)V
    .locals 0

    #@0
    .prologue
    .line 1501
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    .local p1, "this$1":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    const/4 v1, 0x0

    #@1
    .line 1519
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1520
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1522
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 1523
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    invoke-static {v2, v3}, Ljava/util/TreeMap$BoundedMap;->-wrap0(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@17
    iget-object v2, v2, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@19
    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->findByEntry(Ljava/util/Map$Entry;)Ljava/util/TreeMap$Node;

    #@1c
    move-result-object v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    const/4 v1, 0x1

    #@20
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1507
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1511
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@4
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@6
    const/4 v3, 0x1

    #@7
    invoke-static {v2, v3}, Ljava/util/TreeMap$BoundedMap;->-wrap2(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet$1;-><init>(Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;Ljava/util/TreeMap$BoundedMap;Ljava/util/TreeMap$Node;)V

    #@e
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    const/4 v1, 0x0

    #@1
    .line 1527
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1528
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1530
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 1531
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    invoke-static {v2, v3}, Ljava/util/TreeMap$BoundedMap;->-wrap0(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@17
    iget-object v1, v1, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@19
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@1c
    move-result-object v1

    #@1d
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1503
    .local p0, "this":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
