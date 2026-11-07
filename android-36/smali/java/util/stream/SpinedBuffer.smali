.class public Ljava/util/stream/SpinedBuffer;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SpinedBuffer$OfDouble;,
        Ljava/util/stream/SpinedBuffer$OfLong;,
        Ljava/util/stream/SpinedBuffer$OfInt;,
        Ljava/util/stream/SpinedBuffer$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        "Ljava/util/function/Consumer<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field protected greylist-max-o curChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected greylist-max-o spine:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 110
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    .line 111
    const/4 v0, 0x1

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->initialChunkPower:I

    shl-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 100
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    .line 101
    const/4 v0, 0x1

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->initialChunkPower:I

    shl-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 102
    return-void
.end method

.method private greylist-max-o inflateSpine()V
    .registers 4

    .line 125
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_15

    .line 126
    const/16 v0, 0x8

    new-array v1, v0, [[Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 127
    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    .line 128
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 130
    :cond_15
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 259
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_31

    .line 260
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    .line 261
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_20

    .line 262
    :cond_1d
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->increaseCapacity()V

    .line 263
    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    .line 264
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    .line 265
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 267
    :cond_31
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    aput-object p1, v0, v1

    .line 268
    return-void
.end method

.method public greylist-max-o asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TE;>;)[TE;"
        }
    .end annotation

    .line 215
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    move-result-wide v0

    .line 216
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 218
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 219
    .local v2, "result":[Ljava/lang/Object;, "[TE;"
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 220
    return-object v2

    .line 217
    .end local v2    # "result":[Ljava/lang/Object;, "[TE;"
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected greylist-max-o capacity()J
    .registers 5

    .line 118
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-nez v0, :cond_9

    .line 119
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_18

    .line 120
    :cond_9
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    aget-object v2, v2, v3

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 118
    :goto_18
    return-wide v0
.end method

.method public greylist-max-o clear()V
    .registers 5

    .line 225
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 226
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_19

    .line 228
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 229
    .end local v0    # "i":I
    :cond_19
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 230
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    goto :goto_2a

    .line 233
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1f
    iget v3, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    if-ge v0, v3, :cond_2a

    .line 234
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 236
    .end local v0    # "i":I
    :cond_2a
    :goto_2a
    iput v1, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    .line 237
    iput v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    .line 238
    return-void
.end method

.method public greylist-max-o copyInto([Ljava/lang/Object;I)V
    .registers 9
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    int-to-long v0, p2

    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 193
    .local v0, "finalOffset":J
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_44

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_44

    .line 197
    iget v2, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 198
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_43

    .line 201
    :cond_1e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget v4, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-ge v2, v4, :cond_38

    .line 202
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v5, v5, v2

    array-length v5, v5

    invoke-static {v4, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v4, v4, v2

    array-length v4, v4

    add-int/2addr p2, v4

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 205
    .end local v2    # "i":I
    :cond_38
    iget v2, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    if-lez v2, :cond_43

    .line 206
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_43
    :goto_43
    return-void

    .line 194
    :cond_44
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "does not fit"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic blacklist count()J
    .registers 3

    .line 58
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final greylist-max-o ensureCapacity(J)V
    .registers 12
    .param p1, "targetSize"    # J

    .line 137
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    .line 138
    .local v0, "capacity":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_51

    .line 139
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    .line 140
    iget v2, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    :goto_f
    cmp-long v3, p1, v0

    if-lez v3, :cond_51

    .line 141
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_2f

    .line 142
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    .line 143
    .local v3, "newSpineSize":I
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    iput-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    .line 144
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    .line 146
    .end local v3    # "newSpineSize":I
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/util/stream/SpinedBuffer;->chunkSize(I)I

    move-result v3

    .line 147
    .local v3, "nextChunkSize":I
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v5, v4, v2

    .line 148
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    array-length v7, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    aput-wide v5, v4, v2

    .line 149
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 140
    .end local v3    # "nextChunkSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 152
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 248
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-ge v0, v1, :cond_18

    .line 249
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    .line 250
    .local v4, "t":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 249
    .end local v4    # "t":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 248
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    .end local v0    # "j":I
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget v1, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    if-ge v0, v1, :cond_27

    .line 254
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 255
    .end local v0    # "i":I
    :cond_27
    return-void
.end method

.method public greylist-max-o get(J)Ljava/lang/Object;
    .registers 8
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 170
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-nez v0, :cond_1b

    .line 171
    iget v0, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    .line 172
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    long-to-int v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 174
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1b
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_52

    .line 180
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_24
    iget v1, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    if-gt v0, v1, :cond_48

    .line 181
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    aget-wide v1, v1, v0

    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v3, v3, v0

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_45

    .line 182
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->priorElementCount:[J

    aget-wide v2, v2, v0

    sub-long v2, p1, v2

    long-to-int v2, v2

    aget-object v1, v1, v2

    return-object v1

    .line 180
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 184
    .end local v0    # "j":I
    :cond_48
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_52
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o increaseCapacity()V
    .registers 5

    .line 158
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer;->ensureCapacity(J)V

    .line 159
    return-void
.end method

.method public bridge synthetic blacklist isEmpty()Z
    .registers 2

    .line 58
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 242
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 403
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    iget v3, p0, Ljava/util/stream/SpinedBuffer;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Ljava/util/stream/SpinedBuffer;->elementIndex:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer;IIII)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 272
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Ljava/util/stream/SpinedBuffer$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpinedBuffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
