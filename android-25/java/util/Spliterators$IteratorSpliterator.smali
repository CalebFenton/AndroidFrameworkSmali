.class Ljava/util/Spliterators$IteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private est:J

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 1
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1710
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1711
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@5
    .line 1712
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@8
    .line 1713
    and-int/lit16 v0, p2, 0x1000

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1714
    or-int/lit8 v0, p2, 0x40

    #@e
    or-int/lit16 p2, v0, 0x4000

    #@10
    .line 1713
    .end local p2    # "characteristics":I
    :cond_0
    iput p2, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    #@12
    .line 1710
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 2
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1746
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1747
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@6
    .line 1748
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@8
    .line 1749
    const-wide v0, 0x7fffffffffffffffL

    #@d
    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@f
    .line 1750
    and-int/lit16 v0, p2, -0x4041

    #@11
    iput v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    #@13
    .line 1746
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;JI)V
    .locals 2
    .param p2, "size"    # J
    .param p4, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;JI)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1728
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1729
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@6
    .line 1730
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@8
    .line 1731
    iput-wide p2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@a
    .line 1732
    and-int/lit16 v0, p4, 0x1000

    #@c
    if-nez v0, :cond_0

    #@e
    .line 1733
    or-int/lit8 v0, p4, 0x40

    #@10
    or-int/lit16 p4, v0, 0x4000

    #@12
    .line 1732
    .end local p4    # "characteristics":I
    :cond_0
    iput p4, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    #@14
    .line 1728
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1828
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1820
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1821
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@c
    .line 1822
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@e
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@11
    move-result v0

    #@12
    int-to-long v0, v0

    #@13
    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@15
    return-wide v0

    #@16
    .line 1824
    :cond_0
    iget-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@18
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1795
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1797
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@a
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_1

    #@c
    .line 1798
    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@e
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v0

    #@12
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@14
    .line 1799
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@16
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@19
    move-result v1

    #@1a
    int-to-long v2, v1

    #@1b
    iput-wide v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@1d
    .line 1801
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@20
    .line 1794
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1832
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1833
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 1834
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@e
    throw v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1806
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1807
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1808
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@14
    .line 1809
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@16
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@19
    move-result v0

    #@1a
    int-to-long v0, v0

    #@1b
    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@1d
    .line 1811
    :cond_1
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 1812
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2e
    .line 1813
    const/4 v0, 0x1

    #@2f
    return v0

    #@30
    .line 1815
    :cond_2
    const/4 v0, 0x0

    #@31
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    const/4 v8, 0x0

    #@1
    .line 1770
    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@3
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v1, :cond_5

    #@5
    .line 1771
    iget-object v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@7
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iput-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    #@d
    .line 1772
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    #@f
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    #@12
    move-result v6

    #@13
    int-to-long v4, v6

    #@14
    iput-wide v4, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@16
    .line 1776
    .local v4, "s":J
    :goto_0
    const-wide/16 v6, 0x1

    #@18
    cmp-long v6, v4, v6

    #@1a
    if-lez v6, :cond_6

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_6

    #@22
    .line 1777
    iget v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    #@24
    add-int/lit16 v3, v6, 0x400

    #@26
    .line 1778
    .local v3, "n":I
    int-to-long v6, v3

    #@27
    cmp-long v6, v6, v4

    #@29
    if-lez v6, :cond_0

    #@2b
    .line 1779
    long-to-int v3, v4

    #@2c
    .line 1780
    :cond_0
    const/high16 v6, 0x2000000

    #@2e
    if-le v3, v6, :cond_1

    #@30
    .line 1781
    const/high16 v3, 0x2000000

    #@32
    .line 1782
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    #@34
    .line 1783
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@35
    .line 1784
    .local v2, "j":I
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v6

    #@39
    aput-object v6, v0, v2

    #@3b
    add-int/lit8 v2, v2, 0x1

    #@3d
    if-ge v2, v3, :cond_3

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v6

    #@43
    if-nez v6, :cond_2

    #@45
    .line 1785
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    #@47
    .line 1786
    iget-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@49
    const-wide v8, 0x7fffffffffffffffL

    #@4e
    cmp-long v6, v6, v8

    #@50
    if-eqz v6, :cond_4

    #@52
    .line 1787
    iget-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@54
    int-to-long v8, v2

    #@55
    sub-long/2addr v6, v8

    #@56
    iput-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@58
    .line 1788
    :cond_4
    new-instance v6, Ljava/util/Spliterators$ArraySpliterator;

    #@5a
    iget v7, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    #@5c
    const/4 v8, 0x0

    #@5d
    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    #@60
    return-object v6

    #@61
    .line 1775
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "j":I
    .end local v3    # "n":I
    .end local v4    # "s":J
    :cond_5
    iget-wide v4, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    #@63
    .restart local v4    # "s":J
    goto :goto_0

    #@64
    .line 1790
    :cond_6
    return-object v8
.end method
