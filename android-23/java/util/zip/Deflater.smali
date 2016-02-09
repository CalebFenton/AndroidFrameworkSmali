.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field private static final FINISH:I = 0x4

.field public static final FULL_FLUSH:I = 0x3

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field public static final NO_FLUSH:I = 0x0

.field public static final SYNC_FLUSH:I = 0x2


# instance fields
.field private compressLevel:I

.field private finished:Z

.field private flushParm:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private inLength:I

.field private inRead:I

.field private inputBuffer:[B

.field private strategy:I

.field private streamHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 165
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@5
    .line 164
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 176
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@4
    .line 175
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "noHeader"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 139
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    #@7
    .line 143
    iput v2, p0, Ljava/util/zip/Deflater;->compressLevel:I

    #@9
    .line 145
    iput v0, p0, Ljava/util/zip/Deflater;->strategy:I

    #@b
    .line 147
    const-wide/16 v0, -0x1

    #@d
    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@f
    .line 155
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@15
    .line 187
    if-lt p1, v2, :cond_0

    #@17
    const/16 v0, 0x9

    #@19
    if-le p1, v0, :cond_1

    #@1b
    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Bad level: "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 190
    :cond_1
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I

    #@37
    .line 191
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    #@39
    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    #@3b
    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/Deflater;->createStream(IIZ)J

    #@3e
    move-result-wide v0

    #@3f
    iput-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@41
    .line 192
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@43
    const-string/jumbo v1, "end"

    #@46
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@49
    .line 186
    return-void
.end method

.method private checkOpen()V
    .locals 4

    #@0
    .prologue
    .line 475
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "attempt to use Deflater after calling end"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 474
    :cond_0
    return-void
.end method

.method private native createStream(IIZ)J
.end method

.method private declared-synchronized deflateImpl([BIII)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flush"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 236
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 237
    array-length v0, p1

    #@5
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@8
    .line 238
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    #@a
    if-nez v0, :cond_0

    #@c
    .line 239
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    #@e
    invoke-virtual {p0, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    #@11
    .line 241
    :cond_0
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@13
    move-object v0, p0

    #@14
    move-object v1, p1

    #@15
    move v2, p2

    #@16
    move v3, p3

    #@17
    move v6, p4

    #@18
    invoke-direct/range {v0 .. v6}, Ljava/util/zip/Deflater;->deflateImpl([BIIJI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v0

    #@1c
    monitor-exit p0

    #@1d
    return v0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method private native deflateImpl([BIIJI)I
.end method

.method private endImpl()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    .line 258
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 259
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@a
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->endImpl(J)V

    #@d
    .line 260
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    #@10
    .line 261
    iput-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@12
    .line 257
    :cond_0
    return-void
.end method

.method private native endImpl(J)V
.end method

.method private native getAdlerImpl(J)I
.end method

.method private native getTotalInImpl(J)J
.end method

.method private native getTotalOutImpl(J)J
.end method

.method private native resetImpl(J)V
.end method

.method private native setDictionaryImpl([BIIJ)V
.end method

.method private native setInputImpl([BIIJ)V
.end method

.method private native setLevelsImpl(IIJ)V
.end method


# virtual methods
.method public deflate([B)I
    .locals 2
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 202
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->deflate([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized deflate([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 212
    :try_start_0
    iget v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    #@3
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized deflate([BIII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .param p4, "flush"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 229
    if-eqz p4, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p4, v0, :cond_0

    #@6
    const/4 v0, 0x3

    #@7
    if-eq p4, v0, :cond_0

    #@9
    .line 230
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Bad flush value: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0

    #@26
    .line 232
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/zip/Deflater;->deflateImpl([BIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v0

    #@2a
    monitor-exit p0

    #@2b
    return v0
.end method

.method public declared-synchronized end()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 253
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@6
    .line 254
    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 252
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method protected finalize()V
    .locals 2

    #@0
    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 270
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 272
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 273
    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    #@d
    .line 274
    invoke-direct {p0}, Ljava/util/zip/Deflater;->endImpl()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@11
    .line 278
    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    #@14
    .line 267
    return-void

    #@15
    .line 272
    :catchall_0
    move-exception v1

    #@16
    :try_start_4
    monitor-exit p0

    #@17
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@18
    .line 276
    :catchall_1
    move-exception v1

    #@19
    .line 278
    :try_start_5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    #@1c
    .line 276
    throw v1

    #@1d
    .line 279
    :catch_0
    move-exception v0

    #@1e
    .line 280
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v1

    #@24
    .line 279
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@25
    .line 280
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@27
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2a
    throw v1
.end method

.method public declared-synchronized finish()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 292
    const/4 v0, 0x4

    #@2
    :try_start_0
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 291
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized finished()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 301
    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getAdler()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 308
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 309
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getAdlerImpl(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized getBytesRead()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 458
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 459
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized getBytesWritten()J
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 468
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 469
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    monitor-exit p0

    #@b
    return-wide v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized getTotalIn()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 319
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 320
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalInImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    long-to-int v0, v0

    #@b
    monitor-exit p0

    #@c
    return v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized getTotalOut()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 330
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 331
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->getTotalOutImpl(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-wide v0

    #@a
    long-to-int v0, v0

    #@b
    monitor-exit p0

    #@c
    return v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized needsInput()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 342
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v1, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 343
    return v0

    #@8
    .line 345
    :cond_0
    :try_start_1
    iget v1, p0, Ljava/util/zip/Deflater;->inRead:I

    #@a
    iget v2, p0, Ljava/util/zip/Deflater;->inLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    if-ne v1, v2, :cond_1

    #@e
    :goto_0
    monitor-exit p0

    #@f
    return v0

    #@10
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 355
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 356
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/util/zip/Deflater;->flushParm:I

    #@7
    .line 357
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    #@a
    .line 358
    iget-wide v0, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@c
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;->resetImpl(J)V

    #@f
    .line 359
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 354
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public setDictionary([B)V
    .locals 2
    .param p1, "dictionary"    # [B

    #@0
    .prologue
    .line 371
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    #@5
    .line 370
    return-void
.end method

.method public declared-synchronized setDictionary([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 381
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 382
    array-length v0, p1

    #@5
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@8
    .line 383
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setDictionaryImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 380
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public setInput([B)V
    .locals 2
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 393
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    #@5
    .line 392
    return-void
.end method

.method public declared-synchronized setInput([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 401
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->checkOpen()V

    #@4
    .line 402
    array-length v0, p1

    #@5
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@8
    .line 403
    iput p3, p0, Ljava/util/zip/Deflater;->inLength:I

    #@a
    .line 404
    const/4 v0, 0x0

    #@b
    iput v0, p0, Ljava/util/zip/Deflater;->inRead:I

    #@d
    .line 405
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    #@f
    if-nez v0, :cond_0

    #@11
    .line 406
    iget v0, p0, Ljava/util/zip/Deflater;->compressLevel:I

    #@13
    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    #@15
    iget-wide v2, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@17
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/zip/Deflater;->setLevelsImpl(IIJ)V

    #@1a
    .line 408
    :cond_0
    iput-object p1, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    #@1c
    .line 409
    iget-wide v4, p0, Ljava/util/zip/Deflater;->streamHandle:J

    #@1e
    move-object v0, p0

    #@1f
    move-object v1, p1

    #@20
    move v2, p2

    #@21
    move v3, p3

    #@22
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Deflater;->setInputImpl([BIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 400
    return-void

    #@27
    :catchall_0
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0
.end method

.method public declared-synchronized setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 424
    const/4 v0, -0x1

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x9

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 425
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Bad level: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0

    #@25
    .line 427
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2b
    const-string/jumbo v1, "setLevel cannot be called after setInput"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 430
    :cond_2
    iput p1, p0, Ljava/util/zip/Deflater;->compressLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit p0

    #@35
    .line 423
    return-void
.end method

.method public declared-synchronized setStrategy(I)V
    .locals 3
    .param p1, "strategy"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 443
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 444
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Bad strategy: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0

    #@23
    .line 446
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/util/zip/Deflater;->inputBuffer:[B

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    #@29
    const-string/jumbo v1, "setStrategy cannot be called after setInput"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 449
    :cond_2
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    monitor-exit p0

    #@33
    .line 442
    return-void
.end method
