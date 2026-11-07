.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# static fields
.field private static greylist-max-o unused:B


# instance fields
.field private final greylist-max-o fd:Ljava/io/FileDescriptor;

.field private final blacklist isSync:Z


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .registers 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/MappedByteBuffer;->isSync:Z

    .line 126
    return-void
.end method

.method constructor blacklist <init>(IIIILjava/io/FileDescriptor;Z)V
    .registers 7
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "fd"    # Ljava/io/FileDescriptor;
    .param p6, "isSync"    # Z

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    .line 102
    iput-object p5, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    .line 103
    iput-boolean p6, p0, Ljava/nio/MappedByteBuffer;->isSync:Z

    .line 104
    return-void
.end method

.method constructor blacklist <init>(IIIIZ)V
    .registers 7
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "isSync"    # Z

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    .line 118
    iput-boolean p5, p0, Ljava/nio/MappedByteBuffer;->isSync:Z

    .line 119
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[BI)V
    .registers 9
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "buf"    # [B
    .param p6, "offset"    # I

    .line 108
    invoke-direct/range {p0 .. p6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 109
    move v0, p6

    move-object p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "mark":I
    .local v0, "offset":I
    .local p2, "mark":I
    .local p3, "pos":I
    .local p4, "lim":I
    .local p5, "cap":I
    .local p6, "buf":[B
    const/4 v1, 0x0

    iput-object v1, p1, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    .line 110
    const/4 v1, 0x0

    iput-boolean v1, p1, Ljava/nio/MappedByteBuffer;->isSync:Z

    .line 111
    return-void
.end method

.method private greylist-max-o checkMapped()V
    .registers 2

    .line 187
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 190
    return-void

    .line 189
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private native greylist-max-o force0(Ljava/io/FileDescriptor;JJ)V
.end method

.method private native blacklist isLoaded0(JJJ)Z
.end method

.method private native greylist-max-o load0(JJ)V
.end method

.method private greylist-max-o mappingAddress(J)J
    .registers 5
    .param p1, "mappingOffset"    # J

    .line 206
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static blacklist mappingAddress(JJ)J
    .registers 6
    .param p0, "addr"    # J
    .param p2, "mappingOffset"    # J

    .line 210
    sub-long v0, p0, p2

    return-wide v0
.end method

.method private greylist-max-o mappingLength(J)J
    .registers 5
    .param p1, "mappingOffset"    # J

    .line 214
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/MappedByteBuffer;->mappingLength(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist mappingLength(JJ)J
    .registers 7
    .param p1, "length"    # J
    .param p3, "mappingOffset"    # J

    .line 218
    add-long v0, p1, p3

    return-wide v0
.end method

.method private greylist-max-o mappingOffset()J
    .registers 3

    .line 196
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    invoke-static {v0, v1}, Ljava/nio/MappedByteBuffer;->mappingOffset(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist mappingOffset(J)J
    .registers 7
    .param p0, "addr"    # J

    .line 200
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v0

    .line 201
    .local v0, "ps":I
    int-to-long v1, v0

    rem-long v1, p0, v1

    .line 202
    .local v1, "offset":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_f

    move-wide v3, v1

    goto :goto_11

    :cond_f
    int-to-long v3, v0

    add-long/2addr v3, v1

    :goto_11
    return-wide v3
.end method


# virtual methods
.method public final whitelist test-api clear()Ljava/nio/Buffer;
    .registers 1

    .line 465
    invoke-super {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 466
    return-object p0
.end method

.method public final bridge synthetic whitelist clear()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final bridge synthetic whitelist clear()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic whitelist compact()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->compact()Ljava/nio/ByteBuffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/Buffer;
    .registers 2

    .line 73
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api duplicate()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic whitelist duplicate()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->duplicate()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method final blacklist fileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 180
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public final whitelist test-api flip()Ljava/nio/Buffer;
    .registers 1

    .line 477
    invoke-super {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 478
    return-object p0
.end method

.method public final bridge synthetic whitelist flip()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final bridge synthetic whitelist flip()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public final whitelist test-api force()Ljava/nio/MappedByteBuffer;
    .registers 6

    .line 335
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    .line 336
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    .line 337
    .local v0, "capacity":I
    iget-boolean v1, p0, Ljava/nio/MappedByteBuffer;->isSync:Z

    if-nez v1, :cond_17

    iget-wide v1, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    goto :goto_17

    .line 340
    :cond_16
    return-object p0

    .line 338
    :cond_17
    :goto_17
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/nio/MappedByteBuffer;->force(II)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api force(II)Ljava/nio/MappedByteBuffer;
    .registers 14
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 391
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_5

    .line 392
    return-object p0

    .line 394
    :cond_5
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    .line 395
    .local v0, "capacity":I
    iget-wide v1, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2e

    .line 397
    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 400
    iget-wide v1, p0, Ljava/nio/MappedByteBuffer;->address:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 401
    .local v1, "firstByteAddress":J
    invoke-static {v1, v2}, Ljava/nio/MappedByteBuffer;->mappingOffset(J)J

    move-result-wide v3

    .line 402
    .local v3, "offset":J
    iget-object v6, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v2, v3, v4}, Ljava/nio/MappedByteBuffer;->mappingAddress(JJ)J

    move-result-wide v7

    int-to-long v9, p2

    invoke-direct {p0, v9, v10, v3, v4}, Ljava/nio/MappedByteBuffer;->mappingLength(JJ)J

    move-result-wide v9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Ljava/nio/MappedByteBuffer;->force0(Ljava/io/FileDescriptor;JJ)V

    goto :goto_2f

    .line 395
    .end local v1    # "firstByteAddress":J
    .end local v3    # "offset":J
    :cond_2e
    move-object v5, p0

    .line 404
    :goto_2f
    return-object v5
.end method

.method public final whitelist test-api isLoaded()Z
    .registers 10

    .line 246
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    .line 249
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_28

    .line 251
    :cond_12
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v0

    .line 252
    .local v0, "offset":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v5

    .line 253
    .local v5, "length":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v3

    invoke-static {v5, v6}, Ljava/nio/Bits;->pageCount(J)J

    move-result-wide v7

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Ljava/nio/MappedByteBuffer;->isLoaded0(JJJ)Z

    move-result v3

    return v3

    .line 250
    .end local v0    # "offset":J
    .end local v5    # "length":J
    :cond_28
    :goto_28
    const/4 v0, 0x1

    return v0
.end method

.method final blacklist isSync()Z
    .registers 2

    .line 170
    iget-boolean v0, p0, Ljava/nio/MappedByteBuffer;->isSync:Z

    return v0
.end method

.method public final whitelist test-api limit(I)Ljava/nio/Buffer;
    .registers 2
    .param p1, "newLimit"    # I

    .line 429
    invoke-super {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 430
    return-object p0
.end method

.method public final bridge synthetic whitelist limit(I)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final bridge synthetic whitelist limit(I)Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/MappedByteBuffer;

    return-object p1
.end method

.method public final whitelist test-api load()Ljava/nio/MappedByteBuffer;
    .registers 15

    .line 271
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    .line 280
    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_4a

    .line 282
    :cond_12
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v0

    .line 283
    .local v0, "offset":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v2

    .line 284
    .local v2, "length":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v2, v3}, Ljava/nio/MappedByteBuffer;->load0(JJ)V

    .line 289
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v4

    .line 290
    .local v4, "unsafe":Ljdk/internal/misc/Unsafe;
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v5

    .line 291
    .local v5, "ps":I
    invoke-static {v2, v3}, Ljava/nio/Bits;->pageCount(J)J

    move-result-wide v6

    .line 292
    .local v6, "count":J
    invoke-direct {p0, v0, v1}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v8

    .line 293
    .local v8, "a":J
    const/4 v10, 0x0

    .line 294
    .local v10, "x":B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_33
    int-to-long v12, v11

    cmp-long v12, v12, v6

    if-gez v12, :cond_43

    .line 295
    invoke-virtual {v4, v8, v9}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v12

    xor-int/2addr v12, v10

    int-to-byte v10, v12

    .line 296
    int-to-long v12, v5

    add-long/2addr v8, v12

    .line 294
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 298
    .end local v11    # "i":I
    :cond_43
    sget-byte v11, Ljava/nio/MappedByteBuffer;->unused:B

    if-eqz v11, :cond_49

    .line 299
    sput-byte v10, Ljava/nio/MappedByteBuffer;->unused:B

    .line 301
    :cond_49
    return-object p0

    .line 281
    .end local v0    # "offset":J
    .end local v2    # "length":J
    .end local v4    # "unsafe":Ljdk/internal/misc/Unsafe;
    .end local v5    # "ps":I
    .end local v6    # "count":J
    .end local v8    # "a":J
    .end local v10    # "x":B
    :cond_4a
    :goto_4a
    return-object p0
.end method

.method public final whitelist test-api mark()Ljava/nio/Buffer;
    .registers 1

    .line 441
    invoke-super {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 442
    return-object p0
.end method

.method public final bridge synthetic whitelist mark()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final bridge synthetic whitelist mark()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public final whitelist test-api position(I)Ljava/nio/Buffer;
    .registers 2
    .param p1, "newPosition"    # I

    .line 417
    invoke-super {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 418
    return-object p0
.end method

.method public final bridge synthetic whitelist position(I)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final bridge synthetic whitelist position(I)Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/MappedByteBuffer;

    return-object p1
.end method

.method public final whitelist test-api reset()Ljava/nio/Buffer;
    .registers 1

    .line 453
    invoke-super {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 454
    return-object p0
.end method

.method public final bridge synthetic whitelist reset()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final bridge synthetic whitelist reset()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public final whitelist test-api rewind()Ljava/nio/Buffer;
    .registers 1

    .line 489
    invoke-super {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 490
    return-object p0
.end method

.method public final bridge synthetic whitelist rewind()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final bridge synthetic whitelist rewind()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 73
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api slice(II)Ljava/nio/Buffer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Ljava/nio/MappedByteBuffer;->slice(II)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api slice()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic whitelist test-api slice(II)Ljava/nio/ByteBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Ljava/nio/MappedByteBuffer;->slice(II)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist slice()Ljava/nio/MappedByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->slice()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api slice(II)Ljava/nio/MappedByteBuffer;
.end method
