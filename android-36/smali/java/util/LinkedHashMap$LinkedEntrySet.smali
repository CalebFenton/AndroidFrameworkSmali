.class final Ljava/util/LinkedHashMap$LinkedEntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/SequencedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/SequencedSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final blacklist reversed:Z

.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;Z)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;
    .param p2, "reversed"    # Z
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

    .line 944
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-boolean p2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 941
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap$LinkedEntrySet;->addFirst(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public final blacklist addFirst(Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 992
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 941
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap$LinkedEntrySet;->addLast(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public final blacklist addLast(Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 993
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api clear()V
    .registers 2

    .line 946
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 951
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 953
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 954
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v3

    .line 955
    .local v3, "candidate":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_1b

    invoke-virtual {v3, v0}, Ljava/util/HashMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 952
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "candidate":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_1c
    return v1
.end method

.method public final whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 971
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_3b

    .line 973
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 974
    .local v0, "mc":I
    iget-boolean v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    if-eqz v1, :cond_1c

    .line 976
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .local v1, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_e
    if-eqz v1, :cond_2e

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v0, v2, :cond_2e

    .line 977
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 976
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    goto :goto_e

    .line 980
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_1c
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .restart local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_20
    if-eqz v1, :cond_2e

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v0, v2, :cond_2e

    .line 981
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 980
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_20

    .line 983
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_2e
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_35

    .line 985
    return-void

    .line 984
    :cond_35
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 972
    .end local v0    # "mc":I
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2

    .line 941
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->getFirst()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getFirst()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 994
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getLast()Ljava/lang/Object;
    .registers 2

    .line 941
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->getLast()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getLast()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 995
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 948
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntryIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-boolean v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedEntryIterator;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object v0
.end method

.method final blacklist nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 987
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    .local p1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_3

    .line 990
    return-object p1

    .line 988
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 958
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 959
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 960
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 961
    .local v5, "value":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 963
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_20
    return v1
.end method

.method public bridge synthetic whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2

    .line 941
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->removeFirst()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist removeFirst()Ljava/util/Map$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 997
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    .line 998
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 999
    return-object v0
.end method

.method public bridge synthetic whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2

    .line 941
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->removeLast()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist removeLast()Ljava/util/Map$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1002
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    .line 1003
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1004
    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 941
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1007
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->reversed:Z

    if-eqz v0, :cond_b

    .line 1008
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedEntrySet()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0

    .line 1010
    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntrySet;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedEntrySet;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object v0
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 945
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 966
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    const/16 v0, 0x51

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
