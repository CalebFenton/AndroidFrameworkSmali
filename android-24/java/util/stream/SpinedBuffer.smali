.class public Ljava/util/stream/SpinedBuffer;
.super Ljava/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;,
        Ljava/util/stream/SpinedBuffer$OfDouble;,
        Ljava/util/stream/SpinedBuffer$OfInt;,
        Ljava/util/stream/SpinedBuffer$OfLong;,
        Ljava/util/stream/SpinedBuffer$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractSpinedBuffer;",
        "Ljava/util/function/Consumer",
        "<TE;>;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final SPLITERATOR_CHARACTERISTICS:I = 0x4050


# instance fields
.field protected curChunk:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected spine:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TE;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_SpinedBuffer-mthref-0(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    #@0
    .prologue
    .line 270
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 107
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0}, Ljava/util/stream/AbstractSpinedBuffer;-><init>()V

    #@3
    .line 108
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@5
    const/4 v1, 0x1

    #@6
    shl-int v0, v1, v0

    #@8
    new-array v0, v0, [Ljava/lang/Object;

    #@a
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@c
    .line 106
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 98
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/stream/AbstractSpinedBuffer;-><init>(I)V

    #@3
    .line 99
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->initialChunkPower:I

    #@5
    const/4 v1, 0x1

    #@6
    shl-int v0, v1, v0

    #@8
    new-array v0, v0, [Ljava/lang/Object;

    #@a
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@c
    .line 97
    return-void
.end method

.method private inflateSpine()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    const/16 v1, 0x8

    #@2
    .line 122
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 123
    new-array v0, v1, [[Ljava/lang/Object;

    #@8
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@a
    .line 124
    new-array v0, v1, [J

    #@c
    iput-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@e
    .line 125
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@10
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@12
    const/4 v2, 0x0

    #@13
    aput-object v1, v0, v2

    #@15
    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@2
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-ne v0, v1, :cond_2

    #@7
    .line 257
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    #@a
    .line 258
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@10
    array-length v1, v1

    #@11
    if-ge v0, v1, :cond_0

    #@13
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@15
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    aget-object v0, v0, v1

    #@1b
    if-nez v0, :cond_1

    #@1d
    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->increaseCapacity()V

    #@20
    .line 260
    :cond_1
    const/4 v0, 0x0

    #@21
    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@23
    .line 261
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@29
    .line 262
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@2b
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2d
    aget-object v0, v0, v1

    #@2f
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@31
    .line 264
    :cond_2
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@33
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@35
    add-int/lit8 v2, v1, 0x1

    #@37
    iput v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@39
    aput-object p1, v0, v1

    #@3b
    .line 255
    return-void
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TE;>;)[TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 212
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    #@3
    move-result-wide v2

    #@4
    .line 213
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@7
    cmp-long v1, v2, v4

    #@9
    if-ltz v1, :cond_0

    #@b
    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@10
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 215
    :cond_0
    long-to-int v1, v2

    #@15
    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [Ljava/lang/Object;

    #@1b
    .line 216
    .local v0, "result":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    #@1c
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    #@1f
    .line 217
    return-object v0
.end method

.method protected capacity()J
    .locals 4

    #@0
    .prologue
    .line 115
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@6
    array-length v0, v0

    #@7
    int-to-long v0, v0

    #@8
    .line 115
    :goto_0
    return-wide v0

    #@9
    .line 117
    :cond_0
    iget-object v0, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@b
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@d
    aget-wide v0, v0, v1

    #@f
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@11
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@13
    aget-object v2, v2, v3

    #@15
    array-length v2, v2

    #@16
    int-to-long v2, v2

    #@17
    add-long/2addr v0, v2

    #@18
    goto :goto_0
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 222
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 223
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@8
    aget-object v1, v1, v3

    #@a
    iput-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@c
    .line 224
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@f
    array-length v1, v1

    #@10
    if-ge v0, v1, :cond_0

    #@12
    .line 225
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@14
    aput-object v2, v1, v0

    #@16
    .line 224
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 226
    :cond_0
    iput-object v2, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@1b
    .line 227
    iput-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@1d
    .line 233
    :cond_1
    iput v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@1f
    .line 234
    iput v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@21
    .line 221
    return-void

    #@22
    .line 230
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    #@23
    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@25
    if-ge v0, v1, :cond_1

    #@27
    .line 231
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@29
    aput-object v2, v1, v0

    #@2b
    .line 230
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 9
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    const/4 v8, 0x0

    #@1
    .line 189
    int-to-long v4, p2

    #@2
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    #@5
    move-result-wide v6

    #@6
    add-long v0, v4, v6

    #@8
    .line 190
    .local v0, "finalOffset":J
    array-length v3, p1

    #@9
    int-to-long v4, v3

    #@a
    cmp-long v3, v0, v4

    #@c
    if-gtz v3, :cond_0

    #@e
    int-to-long v4, p2

    #@f
    cmp-long v3, v0, v4

    #@11
    if-gez v3, :cond_1

    #@13
    .line 191
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@15
    const-string/jumbo v4, "does not fit"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 194
    :cond_1
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@1e
    if-nez v3, :cond_3

    #@20
    .line 195
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@22
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@24
    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@27
    .line 188
    :cond_2
    :goto_0
    return-void

    #@28
    .line 198
    :cond_3
    const/4 v2, 0x0

    #@29
    .local v2, "i":I
    :goto_1
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2b
    if-ge v2, v3, :cond_4

    #@2d
    .line 199
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@2f
    aget-object v3, v3, v2

    #@31
    iget-object v4, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@33
    aget-object v4, v4, v2

    #@35
    array-length v4, v4

    #@36
    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@39
    .line 200
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@3b
    aget-object v3, v3, v2

    #@3d
    array-length v3, v3

    #@3e
    add-int/2addr p2, v3

    #@3f
    .line 198
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_1

    #@42
    .line 202
    :cond_4
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@44
    if-lez v3, :cond_2

    #@46
    .line 203
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@48
    iget v4, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@4a
    invoke-static {v3, v8, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4d
    goto :goto_0
.end method

.method public bridge synthetic count()J
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->count()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method protected final ensureCapacity(J)V
    .locals 11
    .param p1, "targetSize"    # J

    #@0
    .prologue
    .line 134
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    #@3
    move-result-wide v0

    #@4
    .line 135
    .local v0, "capacity":J
    cmp-long v5, p1, v0

    #@6
    if-lez v5, :cond_1

    #@8
    .line 136
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;->inflateSpine()V

    #@b
    .line 137
    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@d
    add-int/lit8 v2, v5, 0x1

    #@f
    .local v2, "i":I
    :goto_0
    cmp-long v5, p1, v0

    #@11
    if-lez v5, :cond_1

    #@13
    .line 138
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@15
    array-length v5, v5

    #@16
    if-lt v2, v5, :cond_0

    #@18
    .line 139
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@1a
    array-length v5, v5

    #@1b
    mul-int/lit8 v3, v5, 0x2

    #@1d
    .line 140
    .local v3, "newSpineSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@1f
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, [[Ljava/lang/Object;

    #@25
    iput-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@27
    .line 141
    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@29
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    #@2c
    move-result-object v5

    #@2d
    iput-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@2f
    .line 143
    .end local v3    # "newSpineSize":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/stream/AbstractSpinedBuffer;->chunkSize(I)I

    #@32
    move-result v4

    #@33
    .line 144
    .local v4, "nextChunkSize":I
    iget-object v5, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@35
    new-array v6, v4, [Ljava/lang/Object;

    #@37
    aput-object v6, v5, v2

    #@39
    .line 145
    iget-object v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@3b
    iget-object v6, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@3d
    add-int/lit8 v7, v2, -0x1

    #@3f
    aget-wide v6, v6, v7

    #@41
    iget-object v8, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@43
    add-int/lit8 v9, v2, -0x1

    #@45
    aget-object v8, v8, v9

    #@47
    array-length v8, v8

    #@48
    int-to-long v8, v8

    #@49
    add-long/2addr v6, v8

    #@4a
    aput-wide v6, v5, v2

    #@4c
    .line 146
    int-to-long v6, v4

    #@4d
    add-long/2addr v0, v6

    #@4e
    .line 137
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 133
    .end local v2    # "i":I
    .end local v4    # "nextChunkSize":I
    :cond_1
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v1, 0x0

    #@1
    .local v1, "j":I
    :goto_0
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@3
    if-ge v1, v3, :cond_1

    #@5
    .line 246
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@7
    aget-object v4, v3, v1

    #@9
    const/4 v3, 0x0

    #@a
    array-length v5, v4

    #@b
    :goto_1
    if-ge v3, v5, :cond_0

    #@d
    aget-object v2, v4, v3

    #@f
    .line 247
    .local v2, "t":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@12
    .line 246
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_1

    #@15
    .line 245
    .end local v2    # "t":Ljava/lang/Object;, "TE;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 250
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_2
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@1b
    if-ge v0, v3, :cond_2

    #@1d
    .line 251
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@1f
    aget-object v3, v3, v0

    #@21
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@24
    .line 250
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_2

    #@27
    .line 243
    :cond_2
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@2
    if-nez v1, :cond_1

    #@4
    .line 168
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@6
    int-to-long v2, v1

    #@7
    cmp-long v1, p1, v2

    #@9
    if-gez v1, :cond_0

    #@b
    .line 169
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    #@d
    long-to-int v2, p1

    #@e
    aget-object v1, v1, v2

    #@10
    return-object v1

    #@11
    .line 171
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@13
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 174
    :cond_1
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->count()J

    #@1e
    move-result-wide v2

    #@1f
    cmp-long v1, p1, v2

    #@21
    if-ltz v1, :cond_2

    #@23
    .line 175
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@25
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 177
    :cond_2
    const/4 v0, 0x0

    #@2e
    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@30
    if-gt v0, v1, :cond_4

    #@32
    .line 178
    iget-object v1, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@34
    aget-wide v2, v1, v0

    #@36
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@38
    aget-object v1, v1, v0

    #@3a
    array-length v1, v1

    #@3b
    int-to-long v4, v1

    #@3c
    add-long/2addr v2, v4

    #@3d
    cmp-long v1, p1, v2

    #@3f
    if-gez v1, :cond_3

    #@41
    .line 179
    iget-object v1, p0, Ljava/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    #@43
    aget-object v1, v1, v0

    #@45
    iget-object v2, p0, Ljava/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    #@47
    aget-wide v2, v2, v0

    #@49
    sub-long v2, p1, v2

    #@4b
    long-to-int v2, v2

    #@4c
    aget-object v1, v1, v2

    #@4e
    return-object v1

    #@4f
    .line 177
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_0

    #@52
    .line 181
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@54
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v1
.end method

.method protected increaseCapacity()V
    .locals 4

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->capacity()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x1

    #@6
    add-long/2addr v0, v2

    #@7
    invoke-virtual {p0, v0, v1}, Ljava/util/stream/SpinedBuffer;->ensureCapacity(J)V

    #@a
    .line 154
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractSpinedBuffer;->isEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 239
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 400
    new-instance v0, Ljava/util/stream/SpinedBuffer$1Splitr;

    #@3
    iget v3, p0, Ljava/util/stream/AbstractSpinedBuffer;->spineIndex:I

    #@5
    iget v5, p0, Ljava/util/stream/AbstractSpinedBuffer;->elementIndex:I

    #@7
    move-object v1, p0

    #@8
    move v4, v2

    #@9
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/SpinedBuffer$1Splitr;-><init>(Ljava/util/stream/SpinedBuffer;IIII)V

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 269
    .local p0, "this":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 270
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;

    #@a
    invoke-direct {v1, v0}, Ljava/util/stream/SpinedBuffer$-java_lang_String_toString__LambdaImpl0;-><init>(Ljava/util/List;)V

    #@d
    invoke-virtual {p0, v1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    #@10
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "SpinedBuffer:"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method
