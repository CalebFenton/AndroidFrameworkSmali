.class final Ljava/util/Spliterators$LongIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongIteratorSpliterator"
.end annotation


# static fields
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private greylist-max-o est:J

.field private final greylist-max-o it:Ljava/util/PrimitiveIterator$OfLong;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfLong;I)V
    .registers 5
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p2, "characteristics"    # I

    .line 2112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2113
    iput-object p1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 2114
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2115
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 2116
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/PrimitiveIterator$OfLong;JI)V
    .registers 6
    .param p1, "iterator"    # Ljava/util/PrimitiveIterator$OfLong;
    .param p2, "size"    # J
    .param p4, "characteristics"    # I

    .line 2095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    iput-object p1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 2097
    iput-wide p2, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2098
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_10

    .line 2099
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_11

    .line 2100
    :cond_10
    move v0, p4

    :goto_11
    iput v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    .line 2101
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 2163
    iget v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 2159
    iget-wide v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

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

    .line 2077
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 2143
    if-eqz p1, :cond_8

    .line 2144
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 2145
    return-void

    .line 2143
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2167
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$LongIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2168
    const/4 v0, 0x0

    return-object v0

    .line 2169
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

    .line 2077
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongIteratorSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 2149
    if-eqz p1, :cond_17

    .line 2150
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2151
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 2152
    const/4 v0, 0x1

    return v0

    .line 2154
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 2149
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 13

    .line 2120
    iget-object v0, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->it:Ljava/util/PrimitiveIterator$OfLong;

    .line 2121
    .local v0, "i":Ljava/util/PrimitiveIterator$OfLong;
    iget-wide v1, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2122
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_61

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2123
    iget v3, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 2124
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1a

    .line 2125
    long-to-int v3, v1

    .line 2126
    :cond_1a
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_20

    .line 2127
    const/high16 v3, 0x2000000

    .line 2128
    :cond_20
    new-array v5, v3, [J

    .line 2129
    .local v5, "a":[J
    const/4 v4, 0x0

    .line 2130
    .local v4, "j":I
    :goto_23
    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "j":I
    .local v7, "j":I
    if-ge v7, v3, :cond_36

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_36

    :cond_34
    move v4, v7

    goto :goto_23

    .line 2131
    :cond_36
    :goto_36
    iput v7, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->batch:I

    .line 2132
    iget-wide v8, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v8, v10

    if-eqz v4, :cond_52

    .line 2133
    iget-wide v8, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    int-to-long v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 2134
    new-instance v4, Ljava/util/Spliterators$LongArraySpliterator;

    const/4 v6, 0x0

    iget v8, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v4

    .line 2136
    :cond_52
    new-instance v4, Ljava/util/Spliterators$LongArraySpliterator;

    iget v8, p0, Ljava/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIIIJLjava/util/Spliterators-IA;)V

    return-object v4

    .line 2138
    .end local v3    # "n":I
    .end local v5    # "a":[J
    .end local v7    # "j":I
    :cond_61
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 2077
    invoke-virtual {p0}, Ljava/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 2077
    invoke-virtual {p0}, Ljava/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
