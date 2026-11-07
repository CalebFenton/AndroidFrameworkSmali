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
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private greylist-max-o est:J

.field private final greylist-max-o it:Ljava/util/PrimitiveIterator$OfInt;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfInt;I)V
    .registers 5
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p2, "characteristics"    # I

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    iput-object p1, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    .line 2018
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2019
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    .line 2020
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfInt;JI)V
    .registers 6
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfInt;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    iput-object p1, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    .line 2001
    iput-wide p2, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2002
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_10

    .line 2003
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_11

    .line 2004
    :cond_10
    move v0, p4

    :goto_11
    iput v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    .line 2005
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 2067
    iget v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 2063
    iget-wide v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1981
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 2047
    if-eqz p1, :cond_8

    .line 2048
    iget-object v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    .line 2049
    return-void

    .line 2047
    :cond_8
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
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2071
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IntIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2072
    const/4 v0, 0x0

    return-object v0

    .line 2073
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1981
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$IntIteratorSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 2053
    if-eqz p1, :cond_17

    .line 2054
    iget-object v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2055
    iget-object v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 2056
    const/4 v0, 0x1

    return v0

    .line 2058
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 2053
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 13

    .line 2024
    iget-object v0, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfInt;

    .line 2025
    .local v0, "i":Ljava/util/PrimitiveIterator$OfInt;
    iget-wide v1, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2026
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_61

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2027
    iget v3, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 2028
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1a

    .line 2029
    long-to-int v3, v1

    .line 2030
    :cond_1a
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_20

    .line 2031
    const/high16 v3, 0x2000000

    .line 2032
    :cond_20
    new-array v5, v3, [I

    .line 2033
    .local v5, "a":[I
    const/4 v4, 0x0

    .line 2034
    .local v4, "j":I
    :goto_23
    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "j":I
    .local v7, "j":I
    if-ge v7, v3, :cond_36

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_36

    :cond_34
    move v4, v7

    goto :goto_23

    .line 2035
    :cond_36
    :goto_36
    iput v7, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->batch:I

    .line 2036
    iget-wide v8, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v8, v10

    if-eqz v4, :cond_52

    .line 2037
    iget-wide v8, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    int-to-long v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->est:J

    .line 2038
    new-instance v4, Ljava/util/Spliterators$IntArraySpliterator;

    const/4 v6, 0x0

    iget v8, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v4

    .line 2040
    :cond_52
    new-instance v4, Ljava/util/Spliterators$IntArraySpliterator;

    iget v8, p0, Ljava/util/Spliterators$IntIteratorSpliterator;->characteristics:I

    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIIIJLjava/util/Spliterators-IA;)V

    return-object v4

    .line 2042
    .end local v3    # "n":I
    .end local v5    # "a":[I
    .end local v7    # "j":I
    :cond_61
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1981
    invoke-virtual {p0}, Ljava/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1981
    invoke-virtual {p0}, Ljava/util/Spliterators$IntIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
