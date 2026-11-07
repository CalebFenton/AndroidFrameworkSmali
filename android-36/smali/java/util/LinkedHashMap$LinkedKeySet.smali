.class final Ljava/util/LinkedHashMap$LinkedKeySet;
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
    name = "LinkedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;",
        "Ljava/util/SequencedSet<",
        "TK;>;"
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

    .line 726
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-boolean p2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 766
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 767
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api clear()V
    .registers 2

    .line 728
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 732
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 751
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_3f

    .line 753
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 754
    .local v0, "mc":I
    iget-boolean v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    if-eqz v1, :cond_1e

    .line 756
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .local v1, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_e
    if-eqz v1, :cond_32

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_32

    .line 757
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 756
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    goto :goto_e

    .line 760
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_1e
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .restart local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_22
    if-eqz v1, :cond_32

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_32

    .line 761
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 760
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_22

    .line 763
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_32
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_39

    .line 765
    return-void

    .line 764
    :cond_39
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 752
    .end local v0    # "mc":I
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 768
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 769
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 730
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedKeyIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-boolean v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedKeyIterator;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object v0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;

    .line 734
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 771
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    .line 772
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 773
    iget-object v1, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public final whitelist test-api removeLast()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 776
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    .line 777
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 778
    iget-object v1, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    return-object v1
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 724
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TK;>;"
        }
    .end annotation

    .line 781
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    if-eqz v0, :cond_b

    .line 782
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0

    .line 784
    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap$LinkedKeySet;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedKeySet;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object v0
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 727
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 737
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    const/16 v0, 0x51

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 4

    .line 743
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->size:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->keysToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 747
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->prepareArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->reversed:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->keysToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
