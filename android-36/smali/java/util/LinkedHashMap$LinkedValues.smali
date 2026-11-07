.class final Ljava/util/LinkedHashMap$LinkedValues;
.super Ljava/util/AbstractCollection;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/SequencedCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;",
        "Ljava/util/SequencedCollection<",
        "TV;>;"
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

    .line 836
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-boolean p2, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 872
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 873
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api clear()V
    .registers 2

    .line 838
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 842
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 857
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_3f

    .line 859
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 860
    .local v0, "mc":I
    iget-boolean v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    if-eqz v1, :cond_1e

    .line 862
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .local v1, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_e
    if-eqz v1, :cond_32

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_32

    .line 863
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 862
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    goto :goto_e

    .line 866
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_1e
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .restart local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_22
    if-eqz v1, :cond_32

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_32

    .line 867
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 866
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_22

    .line 869
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_32
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_39

    .line 871
    return-void

    .line 870
    :cond_39
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 858
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
            "()TV;"
        }
    .end annotation

    .line 874
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 875
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 840
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedValueIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-boolean v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedValueIterator;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object v0
.end method

.method public final whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 877
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    .line 878
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 879
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public final whitelist test-api removeLast()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 882
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_d

    :cond_9
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    :goto_d
    invoke-static {v0}, Ljava/util/LinkedHashMap;->nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    .line 883
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v0, Ljava/util/HashMap$Node;->hash:I

    iget-object v3, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 884
    iget-object v1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedCollection<",
            "TV;>;"
        }
    .end annotation

    .line 887
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-boolean v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    if-eqz v0, :cond_b

    .line 888
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedValues()Ljava/util/SequencedCollection;

    move-result-object v0

    return-object v0

    .line 890
    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap$LinkedValues;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap$LinkedValues;-><init>(Ljava/util/LinkedHashMap;Z)V

    return-object v0
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 837
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 844
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    const/16 v0, 0x50

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 4

    .line 849
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->size:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->valuesToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;

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

    .line 853
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->prepareArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->reversed:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->valuesToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
