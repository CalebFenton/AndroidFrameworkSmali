.class abstract Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field final fenceKey:Ljava/lang/Object;

.field lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 2
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
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 1712
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1714
    iget-object v0, p1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@8
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    #@e
    .line 1715
    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@10
    .line 1716
    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@12
    .line 1717
    if-nez p3, :cond_0

    #@14
    invoke-static {}, Ljava/util/TreeMap;->-get0()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    :goto_0
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    #@1a
    .line 1713
    return-void

    #@1b
    .line 1717
    :cond_0
    iget-object v0, p3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@1d
    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 1721
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@7
    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@9
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    #@b
    if-eq v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method final nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1725
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    .line 1726
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@6
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 1727
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@c
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@f
    throw v1

    #@10
    .line 1728
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@12
    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@14
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@17
    move-result v1

    #@18
    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    #@1a
    if-eq v1, v2, :cond_2

    #@1c
    .line 1729
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@1e
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@21
    throw v1

    #@22
    .line 1730
    :cond_2
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    .line 1731
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@2a
    .line 1732
    return-object v0
.end method

.method final prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1736
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@2
    .line 1737
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@4
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@6
    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 1738
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@c
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@f
    throw v1

    #@10
    .line 1739
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@12
    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@14
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@17
    move-result v1

    #@18
    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    #@1a
    if-eq v1, v2, :cond_2

    #@1c
    .line 1740
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@1e
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@21
    throw v1

    #@22
    .line 1741
    :cond_2
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    .line 1742
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@2a
    .line 1743
    return-object v0
.end method

.method final removeAscending()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1747
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1748
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1749
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@d
    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@f
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@12
    move-result v0

    #@13
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 1750
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@19
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 1752
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@1f
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@21
    if-eqz v0, :cond_2

    #@23
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@25
    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 1753
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@2b
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    #@2d
    .line 1754
    :cond_2
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2f
    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@31
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@33
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@36
    .line 1755
    iput-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@38
    .line 1756
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@3a
    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@3c
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    #@42
    .line 1746
    return-void
.end method

.method final removeDescending()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;, "Ljava/util/TreeMap<TK;TV;>.NavigableSubMap<TK;TV;>.SubMapIterator<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 1760
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1761
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 1762
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@d
    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@f
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@12
    move-result v0

    #@13
    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 1763
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@19
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 1764
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@1f
    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@21
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@23
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    #@26
    .line 1765
    iput-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    .line 1766
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    #@2a
    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    #@2c
    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    #@32
    .line 1759
    return-void
.end method
