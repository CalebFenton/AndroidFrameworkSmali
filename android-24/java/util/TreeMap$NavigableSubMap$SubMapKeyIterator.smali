.class final Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;
.super Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>.SubMapIterator<TK;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1801
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2
    .line 1803
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    #@5
    .line 1802
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1829
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const/16 v0, 0x15

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1826
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const-wide v0, 0x7fffffffffffffffL

    #@5
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1815
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1816
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    goto :goto_0

    #@e
    .line 1814
    :cond_0
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1833
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1806
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->nextEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@6
    return-object v0
.end method

.method public remove()V
    .locals 0

    #@0
    .prologue
    .line 1809
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->removeAscending()V

    #@3
    .line 1808
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1819
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1820
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    .line 1821
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1823
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1812
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
