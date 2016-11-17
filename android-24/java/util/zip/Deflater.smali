.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field public static final FULL_FLUSH:I = 0x3

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field public static final NO_FLUSH:I = 0x0

.field public static final SYNC_FLUSH:I = 0x2


# instance fields
.field private buf:[B

.field private bytesRead:J

.field private bytesWritten:J

.field private finish:Z

.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private len:I

.field private level:I

.field private off:I

.field private setParams:Z

.field private strategy:I

.field private final zsRef:Ljava/util/zip/ZStreamRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/zip/Deflater;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/zip/Deflater;->-assertionsDisabled:Z

    #@b
    .line 76
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 188
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@5
    .line 187
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@4
    .line 179
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "nowrap"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    new-array v0, v1, [B

    #@6
    iput-object v0, p0, Ljava/util/zip/Deflater;->buf:[B

    #@8
    .line 87
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@e
    .line 168
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    #@10
    .line 169
    iput v1, p0, Ljava/util/zip/Deflater;->strategy:I

    #@12
    .line 170
    new-instance v0, Ljava/util/zip/ZStreamRef;

    #@14
    invoke-static {p1, v1, p2}, Ljava/util/zip/Deflater;->init(IIZ)J

    #@17
    move-result-wide v2

    #@18
    invoke-direct {v0, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    #@1b
    iput-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@1d
    .line 171
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@1f
    const-string/jumbo v1, "end"

    #@22
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@25
    .line 167
    return-void
.end method

.method private native deflateBytes(J[BIII)I
.end method

.method private static native end(J)V
.end method

.method private ensureOpen()V
    .locals 4

    #@0
    .prologue
    .line 549
    sget-boolean v0, Ljava/util/zip/Deflater;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

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
    .line 550
    :cond_0
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

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
    .line 551
    new-instance v0, Ljava/lang/NullPointerException;

    #@20
    const-string/jumbo v1, "Deflater has been closed"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 548
    :cond_1
    return-void
.end method

.method private static native getAdler(J)I
.end method

.method private static native init(IIZ)J
.end method

.method private static native reset(J)V
.end method

.method private static native setDictionary(J[BII)V
.end method


# virtual methods
.method public deflate([B)I
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 371
    array-length v0, p1

    #@2
    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BIII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public deflate([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 352
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflate([BIII)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public deflate([BIII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "flush"    # I

    #@0
    .prologue
    .line 419
    if-nez p1, :cond_0

    #@2
    .line 420
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 422
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 423
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v1

    #@12
    .line 422
    :cond_2
    array-length v1, p1

    #@13
    sub-int/2addr v1, p3

    #@14
    if-gt p2, v1, :cond_1

    #@16
    .line 425
    iget-object v9, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@18
    monitor-enter v9

    #@19
    .line 426
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    #@1c
    .line 427
    if-eqz p4, :cond_3

    #@1e
    const/4 v1, 0x2

    #@1f
    if-ne p4, v1, :cond_4

    #@21
    .line 429
    :cond_3
    iget v8, p0, Ljava/util/zip/Deflater;->len:I

    #@23
    .line 430
    .local v8, "thisLen":I
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@25
    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    #@28
    move-result-wide v2

    #@29
    move-object v1, p0

    #@2a
    move-object v4, p1

    #@2b
    move v5, p2

    #@2c
    move v6, p3

    #@2d
    move v7, p4

    #@2e
    invoke-direct/range {v1 .. v7}, Ljava/util/zip/Deflater;->deflateBytes(J[BIII)I

    #@31
    move-result v0

    #@32
    .line 431
    .local v0, "n":I
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    #@34
    int-to-long v4, v0

    #@35
    add-long/2addr v2, v4

    #@36
    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    #@38
    .line 432
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J

    #@3a
    iget v1, p0, Ljava/util/zip/Deflater;->len:I

    #@3c
    sub-int v1, v8, v1

    #@3e
    int-to-long v4, v1

    #@3f
    add-long/2addr v2, v4

    #@40
    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v9

    #@43
    .line 433
    return v0

    #@44
    .line 428
    .end local v0    # "n":I
    .end local v8    # "thisLen":I
    :cond_4
    const/4 v1, 0x3

    #@45
    if-eq p4, v1, :cond_3

    #@47
    .line 435
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@49
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@4c
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 425
    :catchall_0
    move-exception v1

    #@4e
    monitor-exit v9

    #@4f
    throw v1
.end method

.method public end()V
    .locals 6

    #@0
    .prologue
    .line 525
    iget-object v3, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v3

    #@3
    .line 526
    :try_start_0
    iget-object v2, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@5
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    #@8
    .line 528
    iget-object v2, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@a
    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    #@d
    move-result-wide v0

    #@e
    .line 529
    .local v0, "addr":J
    iget-object v2, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@10
    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->clear()V

    #@13
    .line 530
    const-wide/16 v4, 0x0

    #@15
    cmp-long v2, v0, v4

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 531
    invoke-static {v0, v1}, Ljava/util/zip/Deflater;->end(J)V

    #@1c
    .line 532
    const/4 v2, 0x0

    #@1d
    iput-object v2, p0, Ljava/util/zip/Deflater;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit v3

    #@20
    .line 524
    return-void

    #@21
    .line 525
    .end local v0    # "addr":J
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 542
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 545
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    #@c
    .line 540
    return-void
.end method

.method public finish()V
    .locals 2

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v0

    #@3
    .line 318
    const/4 v1, 0x1

    #@4
    :try_start_0
    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 316
    return-void

    #@8
    .line 317
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public finished()Z
    .locals 2

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v0

    #@3
    .line 330
    :try_start_0
    iget-boolean v1, p0, Ljava/util/zip/Deflater;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 329
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
    .line 444
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 445
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    #@6
    .line 446
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@8
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/util/zip/Deflater;->getAdler(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 444
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
    .line 470
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 471
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    #@6
    .line 472
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-wide v2

    #@a
    .line 470
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
    .line 496
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 497
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    #@6
    .line 498
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-wide v2

    #@a
    .line 496
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public getTotalIn()I
    .locals 2

    #@0
    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesRead()J

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
    .line 486
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesWritten()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public needsInput()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 309
    iget v1, p0, Ljava/util/zip/Deflater;->len:I

    #@3
    if-gtz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    .line 507
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@2
    monitor-enter v1

    #@3
    .line 508
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    #@6
    .line 509
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@8
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/util/zip/Deflater;->reset(J)V

    #@f
    .line 510
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finish:Z

    #@12
    .line 511
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    #@15
    .line 512
    const/4 v0, 0x0

    #@16
    iput v0, p0, Ljava/util/zip/Deflater;->len:I

    #@18
    const/4 v0, 0x0

    #@19
    iput v0, p0, Ljava/util/zip/Deflater;->off:I

    #@1b
    .line 513
    const-wide/16 v2, 0x0

    #@1d
    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    #@1f
    const-wide/16 v2, 0x0

    #@21
    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v1

    #@24
    .line 506
    return-void

    #@25
    .line 507
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public setDictionary([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 259
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    #@5
    .line 258
    return-void
.end method

.method public setDictionary([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 236
    if-nez p1, :cond_0

    #@2
    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 239
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 240
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 239
    :cond_2
    array-length v0, p1

    #@13
    sub-int/2addr v0, p3

    #@14
    if-gt p2, v0, :cond_1

    #@16
    .line 242
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@18
    monitor-enter v1

    #@19
    .line 243
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    #@1c
    .line 244
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@1e
    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    #@21
    move-result-wide v2

    #@22
    invoke-static {v2, v3, p1, p2, p3}, Ljava/util/zip/Deflater;->setDictionary(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 235
    return-void

    #@27
    .line 242
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method public setInput([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    .line 220
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    #@5
    .line 219
    return-void
.end method

.method public setInput([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 200
    if-nez p1, :cond_0

    #@2
    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 203
    :cond_0
    if-ltz p2, :cond_1

    #@a
    if-gez p3, :cond_2

    #@c
    .line 204
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 203
    :cond_2
    array-length v0, p1

    #@13
    sub-int/2addr v0, p3

    #@14
    if-gt p2, v0, :cond_1

    #@16
    .line 206
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@18
    monitor-enter v1

    #@19
    .line 207
    :try_start_0
    iput-object p1, p0, Ljava/util/zip/Deflater;->buf:[B

    #@1b
    .line 208
    iput p2, p0, Ljava/util/zip/Deflater;->off:I

    #@1d
    .line 209
    iput p3, p0, Ljava/util/zip/Deflater;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 199
    return-void

    #@21
    .line 206
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public setLevel(I)V
    .locals 2
    .param p1, "level"    # I

    #@0
    .prologue
    .line 291
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x9

    #@4
    if-le p1, v0, :cond_1

    #@6
    :cond_0
    const/4 v0, -0x1

    #@7
    if-eq p1, v0, :cond_1

    #@9
    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "invalid compression level"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 294
    :cond_1
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@14
    monitor-enter v1

    #@15
    .line 295
    :try_start_0
    iget v0, p0, Ljava/util/zip/Deflater;->level:I

    #@17
    if-eq v0, p1, :cond_2

    #@19
    .line 296
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    #@1b
    .line 297
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Ljava/util/zip/Deflater;->setParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_2
    monitor-exit v1

    #@1f
    .line 290
    return-void

    #@20
    .line 294
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public setStrategy(I)V
    .locals 2
    .param p1, "strategy"    # I

    #@0
    .prologue
    .line 269
    packed-switch p1, :pswitch_data_0

    #@3
    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v0

    #@9
    .line 277
    :pswitch_0
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    #@b
    monitor-enter v1

    #@c
    .line 278
    :try_start_0
    iget v0, p0, Ljava/util/zip/Deflater;->strategy:I

    #@e
    if-eq v0, p1, :cond_0

    #@10
    .line 279
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I

    #@12
    .line 280
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Ljava/util/zip/Deflater;->setParams:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 268
    return-void

    #@17
    .line 277
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0

    #@1a
    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
