.class final Ljava/util/Spliterators$IntIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava/util/PrimitiveIterator$OfInt;


# direct methods
.method public constructor <init>(Ljava/util/PrimitiveIterator$OfInt;I)V
    .locals 2
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p2, "characteristics"    # I

    #@0
    .prologue
    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1879
    iput-object p1, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    #@5
    .line 1880
    const-wide v0, 0x7fffffffffffffffL

    #@a
    iput-wide v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    #@c
    .line 1881
    and-int/lit16 v0, p2, -0x4041

    #@e
    iput v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    #@10
    .line 1878
    return-void
.end method

.method public constructor <init>(Ljava/util/PrimitiveIterator$OfInt;JI)V
    .locals 2
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    #@0
    .prologue
    .line 1861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1862
    iput-object p1, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    #@5
    .line 1863
    iput-wide p2, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    #@7
    .line 1864
    and-int/lit16 v0, p4, 0x1000

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1865
    or-int/lit8 v0, p4, 0x40

    #@d
    or-int/lit16 p4, v0, 0x4000

    #@f
    .line 1864
    .end local p4    # "characteristics":I
    :cond_0
    iput p4, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    #@11
    .line 1861
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1927
    iget v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1923
    iget-wide v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    #@2
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1906
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 1907
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1908
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    #@a
    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@d
    .line 1906
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1931
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IntIteratorSpliterator;->hasCharacteristics(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1932
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 1933
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@e
    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1912
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 1913
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1914
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    #@a
    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1915
    iget-object v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    #@12
    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    #@15
    move-result v0

    #@16
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@19
    .line 1916
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 1918
    :cond_1
    const/4 v0, 0x0

    #@1c
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 10

    #@0
    .prologue
    .line 1886
    iget-object v1, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    #@2
    .line 1887
    .local v1, "i":Ljava/util/PrimitiveIterator$OfInt;
    iget-wide v4, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    #@4
    .line 1888
    .local v4, "s":J
    const-wide/16 v6, 0x1

    #@6
    cmp-long v6, v4, v6

    #@8
    if-lez v6, :cond_5

    #@a
    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_5

    #@10
    .line 1889
    iget v6, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->batch:I

    #@12
    add-int/lit16 v3, v6, 0x400

    #@14
    .line 1890
    .local v3, "n":I
    int-to-long v6, v3

    #@15
    cmp-long v6, v6, v4

    #@17
    if-lez v6, :cond_0

    #@19
    .line 1891
    long-to-int v3, v4

    #@1a
    .line 1892
    :cond_0
    const/high16 v6, 0x2000000

    #@1c
    if-le v3, v6, :cond_1

    #@1e
    .line 1893
    const/high16 v3, 0x2000000

    #@20
    .line 1894
    :cond_1
    new-array v0, v3, [I

    #@22
    .line 1895
    .local v0, "a":[I
    const/4 v2, 0x0

    #@23
    .line 1896
    .local v2, "j":I
    :cond_2
    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    #@26
    move-result v6

    #@27
    aput v6, v0, v2

    #@29
    add-int/lit8 v2, v2, 0x1

    #@2b
    if-ge v2, v3, :cond_3

    #@2d
    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    #@30
    move-result v6

    #@31
    if-nez v6, :cond_2

    #@33
    .line 1897
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->batch:I

    #@35
    .line 1898
    iget-wide v6, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    #@37
    const-wide v8, 0x7fffffffffffffffL

    #@3c
    cmp-long v6, v6, v8

    #@3e
    if-eqz v6, :cond_4

    #@40
    .line 1899
    iget-wide v6, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    #@42
    int-to-long v8, v2

    #@43
    sub-long/2addr v6, v8

    #@44
    iput-wide v6, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    #@46
    .line 1900
    :cond_4
    new-instance v6, Ljava/util/Spliterators$IntArraySpliterator;

    #@48
    iget v7, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    #@4a
    const/4 v8, 0x0

    #@4b
    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    #@4e
    return-object v6

    #@4f
    .line 1902
    .end local v0    # "a":[I
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_5
    const/4 v6, 0x0

    #@50
    return-object v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1885
    invoke-virtual {p0}, Ljava/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1885
    invoke-virtual {p0}, Ljava/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
