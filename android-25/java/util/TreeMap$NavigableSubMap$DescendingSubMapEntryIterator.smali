.class final Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;
.super Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DescendingSubMapEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>.SubMapIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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
    .line 1785
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p2, "last":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2
    .line 1787
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    #@5
    .line 1786
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1790
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1791
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 0

    #@0
    .prologue
    .line 1794
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->removeDescending()V

    #@3
    .line 1793
    return-void
.end method
