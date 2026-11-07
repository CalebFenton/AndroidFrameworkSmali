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
        "Ljava/util/TreeMap$NavigableSubMap<",
        "TK;TV;>.SubMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/TreeMap$NavigableSubMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2115
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    .local p2, "last":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 2116
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 2112
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2119
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 1

    .line 2122
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.DescendingSubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapEntryIterator;->removeDescending()V

    .line 2123
    return-void
.end method
