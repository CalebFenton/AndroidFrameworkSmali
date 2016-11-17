.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final defaultBuf:[B


# instance fields
.field private buf:[B

.field private bytesRead:J

.field private bytesWritten:J

.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private len:I

.field private needDict:Z

.field private off:I

.field private final zsRef:Ljava/util/zip/ZStreamRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Ljava/util/zip/Inflater;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Ljava/util/zip/Inflater;->-assertionsDisabled:Z

    #@c
    .line 89
    new-array v0, v1, [B

    #@e
    sput-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    #@10
    .line 77
    return-void

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@4
    .line 110
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "nowrap"    # Z

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    sget-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    #@5
    iput-object v0, p0, Ljava/util/zip/Inflater;->buf:[B

    #@7
    .line 87
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@d
    .line 103
    new-instance v0, Ljava/util/zip/ZStreamRef;

    #@f
    invoke-static {p1}, Ljava/util/zip/Inflater;->init(Z)J

    #@12
    move-result-wide v2

    #@13
    invoke-direct {v0, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    #@16
    iput-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@18
    .line 104
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@1a
    const-string/jumbo v1, "end"

    #@1d
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@20
    .line 102
    return-void
.end method

.method private static native end(J)V
.end method

.method private ensureOpen()V
    .locals 4

    #@0
    .prologue
    .line 394
    sget-boolean v0, Ljava/util/zip/Inflater;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@6
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    .line 396
    :cond_0
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@14
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    #@17
    move-result-wide v0

    #@18
    const-wide/16 v2, 0x0

    #@1a
    cmp-long v0, v0, v2

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v1, "Inflater has been closed"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 393
    :cond_1
    return-void
.end method

.method private static native getAdler(J)I
.end method

.method private native inflateBytes(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private static native init(Z)J
.end method

.method private static native reset(J)V
.end method

.method private static native setDictionary(J[BII)V
.end method


# virtual methods
.method public end()V
    .locals 6

    #@0
    .prologue
    .line 370
    iget-object v3, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v3

    #@3
    .line 371
    :try_start_0
    iget-object v2, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@5
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    #@8
    .line 373
    iget-object v2, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@a
    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    #@d
    move-result-wide v0

    #@e
    .line 374
    .local v0, "addr":J
    iget-object v2, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@10
    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->clear()V

    #@13
    .line 375
    const-wide/16 v4, 0x0

    #@15
    cmp-long v2, v0, v4

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 376
    invoke-static {v0, v1}, Ljava/util/zip/Inflater;->end(J)V

    #@1c
    .line 377
    const/4 v2, 0x0

    #@1d
    iput-object v2, p0, Ljava/util/zip/Inflater;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v3

    #@20
    .line 369
    return-void

    #@21
    .line 370
    .end local v0    # "addr":J
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method ended()Z
    .locals 6

    #@0
    .prologue
    .line 401
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 402
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@5
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-wide v2

    #@9
    const-wide/16 v4, 0x0

    #@b
    cmp-long v0, v2, v4

    #@d
    if-nez v0, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    monitor-exit v1

    #@11
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0

    #@14
    .line 401
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 387
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 390
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    #@c
    .line 385
    return-void
.end method

.method public finished()Z
    .locals 2

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v0

    #@3
    .line 229
    :try_start_0
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 228
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getAdler()I
    .locals 4

    #@0
    .prologue
    .line 289
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 290
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    #@6
    .line 291
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@8
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/util/zip/Inflater;->getAdler(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 289
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getBytesRead()J
    .locals 4

    #@0
    .prologue
    .line 315
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 316
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    #@6
    .line 317
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-wide v2

    #@a
    .line 315
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getBytesWritten()J
    .locals 4

    #@0
    .prologue
    .line 341
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 342
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    #@6
    .line 343
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-wide v2

    #@a
    .line 341
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getRemaining()I
    .locals 2

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v0

    #@3
    .line 194
    :try_start_0
    iget v1, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 193
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getTotalIn()I
    .locals 2

    #@0
    .prologue
    .line 305
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public getTotalOut()I
    .locals 2

    #@0
    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesWritten()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public inflate([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 281
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public inflate([BII)I
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    if-nez p1, :cond_0

    #@2
    .line 252
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 254
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 255
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v1

    #@12
    .line 254
    :cond_2
    array-length v1, p1

    #@13
    sub-int/2addr v1, p3

    #@14
    if-gt p2, v1, :cond_1

    #@16
    .line 257
    iget-object v8, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@18
    monitor-enter v8

    #@19
    .line 258
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    #@1c
    .line 259
    iget v7, p0, Ljava/util/zip/Inflater;->len:I

    #@1e
    .line 260
    .local v7, "thisLen":I
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@20
    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    #@23
    move-result-wide v2

    #@24
    move-object v1, p0

    #@25
    move-object v4, p1

    #@26
    move v5, p2

    #@27
    move v6, p3

    #@28
    invoke-direct/range {v1 .. v6}, Ljava/util/zip/Inflater;->inflateBytes(J[BII)I

    #@2b
    move-result v0

    #@2c
    .line 261
    .local v0, "n":I
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    #@2e
    int-to-long v4, v0

    #@2f
    add-long/2addr v2, v4

    #@30
    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    #@32
    .line 262
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J

    #@34
    iget v1, p0, Ljava/util/zip/Inflater;->len:I

    #@36
    sub-int v1, v7, v1

    #@38
    int-to-long v4, v1

    #@39
    add-long/2addr v2, v4

    #@3a
    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v8

    #@3d
    .line 263
    return v0

    #@3e
    .line 257
    .end local v0    # "n":I
    .end local v7    # "thisLen":I
    :catchall_0
    move-exception v1

    #@3f
    monitor-exit v8

    #@40
    throw v1
.end method

.method public needsDictionary()Z
    .locals 2

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v0

    #@3
    .line 217
    :try_start_0
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 216
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public needsInput()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 205
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@3
    monitor-enter v1

    #@4
    .line 206
    :try_start_0
    iget v2, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-gtz v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 205
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    .line 351
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 352
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    #@6
    .line 353
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@8
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/util/zip/Inflater;->reset(J)V

    #@f
    .line 354
    sget-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    #@11
    iput-object v0, p0, Ljava/util/zip/Inflater;->buf:[B

    #@13
    .line 355
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z

    #@16
    .line 356
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needDict:Z

    #@19
    .line 357
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Ljava/util/zip/Inflater;->len:I

    #@1c
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Ljava/util/zip/Inflater;->off:I

    #@1f
    .line 358
    const-wide/16 v2, 0x0

    #@21
    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    #@23
    const-wide/16 v2, 0x0

    #@25
    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v1

    #@28
    .line 350
    return-void

    #@29
    .line 351
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit v1

    #@2b
    throw v0
.end method

.method public setDictionary([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 183
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setDictionary([BII)V

    #@5
    .line 182
    return-void
.end method

.method public setDictionary([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 160
    if-nez p1, :cond_0

    #@2
    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 163
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 164
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 163
    :cond_2
    array-length v0, p1

    #@13
    sub-int/2addr v0, p3

    #@14
    if-gt p2, v0, :cond_1

    #@16
    .line 166
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@18
    monitor-enter v1

    #@19
    .line 167
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    #@1c
    .line 168
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@1e
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    #@21
    move-result-wide v2

    #@22
    invoke-static {v2, v3, p1, p2, p3}, Ljava/util/zip/Inflater;->setDictionary(J[BII)V

    #@25
    .line 169
    const/4 v0, 0x0

    #@26
    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needDict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 159
    return-void

    #@2a
    .line 166
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method public setInput([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 145
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@5
    .line 144
    return-void
.end method

.method public setInput([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 124
    if-nez p1, :cond_0

    #@2
    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 127
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 128
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 127
    :cond_2
    array-length v0, p1

    #@13
    sub-int/2addr v0, p3

    #@14
    if-gt p2, v0, :cond_1

    #@16
    .line 130
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@18
    monitor-enter v1

    #@19
    .line 131
    :try_start_0
    iput-object p1, p0, Ljava/util/zip/Inflater;->buf:[B

    #@1b
    .line 132
    iput p2, p0, Ljava/util/zip/Inflater;->off:I

    #@1d
    .line 133
    iput p3, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 123
    return-void

    #@21
    .line 130
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
