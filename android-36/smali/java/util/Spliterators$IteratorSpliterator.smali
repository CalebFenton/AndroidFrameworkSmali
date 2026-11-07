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
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private final greylist-max-o collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o est:J

.field private greylist-max-o it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/Collection;I)V
    .registers 4
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1846
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1847
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1848
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1849
    and-int/lit16 v0, p2, 0x1000

    if-nez v0, :cond_11

    .line 1850
    or-int/lit8 v0, p2, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_12

    .line 1851
    :cond_11
    move v0, p2

    :goto_12
    iput v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1852
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Iterator;I)V
    .registers 5
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1882
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1883
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1884
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1885
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1886
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1887
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Iterator;JI)V
    .registers 6
    .param p2, "size"    # J
    .param p4, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)V"
        }
    .end annotation

    .line 1864
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1866
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1867
    iput-wide p2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1868
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_13

    .line 1869
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_14

    .line 1870
    :cond_13
    move v0, p4

    :goto_14
    iput v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1871
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1966
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1958
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_16

    .line 1959
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1960
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0

    .line 1962
    :cond_16
    iget-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1933
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_1d

    .line 1935
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_19

    .line 1936
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .line 1937
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1939
    :cond_19
    invoke-interface {v1, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1940
    return-void

    .line 1933
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1970
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1971
    const/4 v0, 0x0

    return-object v0

    .line 1972
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1944
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz p1, :cond_2c

    .line 1945
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_17

    .line 1946
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1947
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1949
    :cond_17
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1950
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1951
    const/4 v0, 0x1

    return v0

    .line 1953
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 1944
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1906
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_18

    .line 1907
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    .line 1908
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .local v2, "s":J
    goto :goto_1a

    .line 1911
    .end local v2    # "s":J
    :cond_18
    iget-wide v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1912
    .restart local v2    # "s":J
    :goto_1a
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1913
    iget v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    add-int/lit16 v0, v0, 0x400

    .line 1914
    .local v0, "n":I
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_30

    .line 1915
    long-to-int v0, v2

    .line 1916
    :cond_30
    const/high16 v4, 0x2000000

    if-le v0, v4, :cond_36

    .line 1917
    const/high16 v0, 0x2000000

    .line 1918
    :cond_36
    new-array v5, v0, [Ljava/lang/Object;

    .line 1919
    .local v5, "a":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1920
    .local v4, "j":I
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "j":I
    .local v7, "j":I
    if-ge v7, v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_4c

    :cond_4a
    move v4, v7

    goto :goto_39

    .line 1921
    :cond_4c
    :goto_4c
    iput v7, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    .line 1922
    iget-wide v8, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v8, v10

    if-eqz v4, :cond_68

    .line 1923
    iget-wide v8, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    int-to-long v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1924
    new-instance v4, Ljava/util/Spliterators$ArraySpliterator;

    const/4 v6, 0x0

    iget v8, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v4

    .line 1926
    :cond_68
    new-instance v4, Ljava/util/Spliterators$ArraySpliterator;

    iget v8, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;IIIJLjava/util/Spliterators-IA;)V

    return-object v4

    .line 1928
    .end local v0    # "n":I
    .end local v5    # "a":[Ljava/lang/Object;
    .end local v7    # "j":I
    :cond_77
    const/4 v0, 0x0

    return-object v0
.end method
