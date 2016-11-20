.class final Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;
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
    name = "DescendingSubMapKeyIterator"
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
    .line 1839
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p2, "last":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2
    .line 1841
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    #@5
    .line 1840
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1867
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    const/16 v0, 0x11

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1864
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
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
    .line 1853
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1854
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    goto :goto_0

    #@e
    .line 1852
    :cond_0
    return-void
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
    .line 1844
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

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
    .line 1847
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->removeDescending()V

    #@3
    .line 1846
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
    .line 1857
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1858
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@d
    .line 1859
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 1861
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
    .line 1850
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapKeyIterator;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
