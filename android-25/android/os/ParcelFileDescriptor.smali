.class public Landroid/os/ParcelFileDescriptor;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelFileDescriptor$1;,
        Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;,
        Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;,
        Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;,
        Landroid/os/ParcelFileDescriptor$OnCloseListener;,
        Landroid/os/ParcelFileDescriptor$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_STATUS:I = 0x400

.field public static final MODE_APPEND:I = 0x2000000

.field public static final MODE_CREATE:I = 0x8000000

.field public static final MODE_READ_ONLY:I = 0x10000000

.field public static final MODE_READ_WRITE:I = 0x30000000

.field public static final MODE_TRUNCATE:I = 0x4000000

.field public static final MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WRITE_ONLY:I = 0x20000000

.field private static final TAG:Ljava/lang/String; = "ParcelFileDescriptor"


# instance fields
.field private volatile mClosed:Z

.field private mCommFd:Ljava/io/FileDescriptor;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mStatus:Landroid/os/ParcelFileDescriptor$Status;

.field private mStatusBuf:[B

.field private final mWrapped:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static synthetic -wrap0(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .locals 1
    .param p0, "comm"    # Ljava/io/FileDescriptor;
    .param p1, "buf"    # [B

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 985
    new-instance v0, Landroid/os/ParcelFileDescriptor$1;

    #@2
    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$1;-><init>()V

    #@5
    .line 984
    sput-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 91
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    #@a
    .line 162
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@c
    .line 163
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@e
    .line 164
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@10
    .line 165
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@13
    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@4
    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "commChannel"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 91
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    #@a
    .line 175
    if-nez p1, :cond_0

    #@c
    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v1, "FileDescriptor must not be null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 178
    :cond_0
    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@17
    .line 179
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@19
    .line 180
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@1b
    .line 181
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    #@1d
    const-string/jumbo v1, "close"

    #@20
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@23
    .line 174
    return-void
.end method

.method public static adoptFd(I)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "fd"    # I

    #@0
    .prologue
    .line 348
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 349
    .local v0, "fdesc":Ljava/io/FileDescriptor;
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@8
    .line 351
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@a
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@d
    return-object v1
.end method

.method private closeWithStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 687
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 688
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@8
    .line 689
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    #@a
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@d
    .line 691
    invoke-direct {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    #@10
    .line 692
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@12
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@15
    .line 693
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@18
    .line 686
    return-void
.end method

.method private static createCommSocketPair()[Ljava/io/FileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 483
    .local v0, "comm1":Ljava/io/FileDescriptor;
    new-instance v1, Ljava/io/FileDescriptor;

    #@7
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    #@a
    .line 484
    .local v1, "comm2":Ljava/io/FileDescriptor;
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    #@c
    sget v4, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    #@e
    const/4 v5, 0x0

    #@f
    invoke-static {v3, v4, v5, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@12
    .line 485
    const/4 v3, 0x0

    #@13
    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@16
    .line 486
    const/4 v3, 0x0

    #@17
    invoke-static {v1, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@1a
    .line 487
    const/4 v3, 0x2

    #@1b
    new-array v3, v3, [Ljava/io/FileDescriptor;

    #@1d
    const/4 v4, 0x0

    #@1e
    aput-object v0, v3, v4

    #@20
    const/4 v4, 0x1

    #@21
    aput-object v1, v3, v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    return-object v3

    #@24
    .line 488
    .end local v1    # "comm2":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v2

    #@25
    .line 489
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@28
    move-result-object v3

    #@29
    throw v3
.end method

.method public static createPipe()[Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 392
    :try_start_0
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    #@3
    move-result-object v1

    #@4
    .line 393
    .local v1, "fds":[Ljava/io/FileDescriptor;
    const/4 v2, 0x2

    #@5
    new-array v2, v2, [Landroid/os/ParcelFileDescriptor;

    #@7
    .line 394
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    #@9
    const/4 v4, 0x0

    #@a
    aget-object v4, v1, v4

    #@c
    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@f
    const/4 v4, 0x0

    #@10
    aput-object v3, v2, v4

    #@12
    .line 395
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    #@14
    const/4 v4, 0x1

    #@15
    aget-object v4, v1, v4

    #@17
    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@1a
    const/4 v4, 0x1

    #@1b
    aput-object v3, v2, v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 393
    return-object v2

    #@1e
    .line 396
    :catch_0
    move-exception v0

    #@1f
    .line 397
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@22
    move-result-object v2

    #@23
    throw v2
.end method

.method public static createReliablePipe()[Landroid/os/ParcelFileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "comm":[Ljava/io/FileDescriptor;
    invoke-static {}, Landroid/system/Os;->pipe()[Ljava/io/FileDescriptor;

    #@7
    move-result-object v2

    #@8
    .line 415
    .local v2, "fds":[Ljava/io/FileDescriptor;
    const/4 v3, 0x2

    #@9
    new-array v3, v3, [Landroid/os/ParcelFileDescriptor;

    #@b
    .line 416
    new-instance v4, Landroid/os/ParcelFileDescriptor;

    #@d
    const/4 v5, 0x0

    #@e
    aget-object v5, v2, v5

    #@10
    const/4 v6, 0x0

    #@11
    aget-object v6, v0, v6

    #@13
    invoke-direct {v4, v5, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    .line 417
    new-instance v4, Landroid/os/ParcelFileDescriptor;

    #@1b
    const/4 v5, 0x1

    #@1c
    aget-object v5, v2, v5

    #@1e
    const/4 v6, 0x1

    #@1f
    aget-object v6, v0, v6

    #@21
    invoke-direct {v4, v5, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@24
    const/4 v5, 0x1

    #@25
    aput-object v4, v3, v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 415
    return-object v3

    #@28
    .line 418
    .end local v2    # "fds":[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    #@29
    .line 419
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2c
    move-result-object v3

    #@2d
    throw v3
.end method

.method public static createReliableSocketPair()[Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@2
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createReliableSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static createReliableSocketPair(I)[Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    #@3
    move-result-object v0

    #@4
    .line 466
    .local v0, "comm":[Ljava/io/FileDescriptor;
    new-instance v2, Ljava/io/FileDescriptor;

    #@6
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    #@9
    .line 467
    .local v2, "fd0":Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileDescriptor;

    #@b
    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    #@e
    .line 468
    .local v3, "fd1":Ljava/io/FileDescriptor;
    sget v4, Landroid/system/OsConstants;->AF_UNIX:I

    #@10
    const/4 v5, 0x0

    #@11
    invoke-static {v4, p0, v5, v2, v3}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@14
    .line 469
    const/4 v4, 0x2

    #@15
    new-array v4, v4, [Landroid/os/ParcelFileDescriptor;

    #@17
    .line 470
    new-instance v5, Landroid/os/ParcelFileDescriptor;

    #@19
    const/4 v6, 0x0

    #@1a
    aget-object v6, v0, v6

    #@1c
    invoke-direct {v5, v2, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@1f
    const/4 v6, 0x0

    #@20
    aput-object v5, v4, v6

    #@22
    .line 471
    new-instance v5, Landroid/os/ParcelFileDescriptor;

    #@24
    const/4 v6, 0x1

    #@25
    aget-object v6, v0, v6

    #@27
    invoke-direct {v5, v3, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@2a
    const/4 v6, 0x1

    #@2b
    aput-object v5, v4, v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 469
    return-object v4

    #@2e
    .line 472
    .end local v0    # "comm":[Ljava/io/FileDescriptor;
    .end local v2    # "fd0":Ljava/io/FileDescriptor;
    .end local v3    # "fd1":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    #@2f
    .line 473
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@32
    move-result-object v4

    #@33
    throw v4
.end method

.method public static createSocketPair()[Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 428
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@2
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static createSocketPair(I)[Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 437
    .local v1, "fd0":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/io/FileDescriptor;

    #@7
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    #@a
    .line 438
    .local v2, "fd1":Ljava/io/FileDescriptor;
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    #@c
    const/4 v4, 0x0

    #@d
    invoke-static {v3, p0, v4, v1, v2}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@10
    .line 439
    const/4 v3, 0x2

    #@11
    new-array v3, v3, [Landroid/os/ParcelFileDescriptor;

    #@13
    .line 440
    new-instance v4, Landroid/os/ParcelFileDescriptor;

    #@15
    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@18
    const/4 v5, 0x0

    #@19
    aput-object v4, v3, v5

    #@1b
    .line 441
    new-instance v4, Landroid/os/ParcelFileDescriptor;

    #@1d
    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@20
    const/4 v5, 0x1

    #@21
    aput-object v4, v3, v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 439
    return-object v3

    #@24
    .line 442
    .end local v1    # "fd0":Ljava/io/FileDescriptor;
    .end local v2    # "fd1":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    #@25
    .line 443
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@28
    move-result-object v3

    #@29
    throw v3
.end method

.method public static dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p0, "orig"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@3
    move-result-object v1

    #@4
    .line 295
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    return-object v2

    #@a
    .line 296
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    #@b
    .line 297
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@e
    move-result-object v2

    #@f
    throw v2
.end method

.method public static fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 505
    if-nez p0, :cond_0

    #@4
    return-object v2

    #@5
    .line 506
    :cond_0
    new-instance v1, Landroid/os/MemoryFile;

    #@7
    array-length v3, p0

    #@8
    invoke-direct {v1, p1, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    #@b
    .line 507
    .local v1, "file":Landroid/os/MemoryFile;
    array-length v3, p0

    #@c
    if-lez v3, :cond_1

    #@e
    .line 508
    array-length v3, p0

    #@f
    invoke-virtual {v1, p0, v4, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    #@12
    .line 510
    :cond_1
    invoke-virtual {v1}, Landroid/os/MemoryFile;->deactivate()V

    #@15
    .line 511
    invoke-virtual {v1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@18
    move-result-object v0

    #@19
    .line 512
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_2

    #@1b
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    #@1d
    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@20
    :cond_2
    return-object v2
.end method

.method public static fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "datagramSocket"    # Ljava/net/DatagramSocket;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 381
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@4
    move-result-object v0

    #@5
    .line 382
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@9
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@c
    :cond_0
    return-object v1
.end method

.method public static fromFd(I)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p0, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    new-instance v2, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 327
    .local v2, "original":Ljava/io/FileDescriptor;
    invoke-virtual {v2, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    #@8
    .line 330
    :try_start_0
    invoke-static {v2}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    #@b
    move-result-object v0

    #@c
    .line 331
    .local v0, "dup":Ljava/io/FileDescriptor;
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    #@e
    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return-object v3

    #@12
    .line 332
    .end local v0    # "dup":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v1

    #@13
    .line 333
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@16
    move-result-object v3

    #@17
    throw v3
.end method

.method public static fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 242
    if-nez p1, :cond_0

    #@3
    .line 243
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v4, "Handler must not be null"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 245
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "Listener must not be null"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 249
    :cond_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    #@1a
    move-result-object v0

    #@1b
    .line 250
    .local v0, "comm":[Ljava/io/FileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@1d
    const/4 v3, 0x0

    #@1e
    aget-object v3, v0, v3

    #@20
    invoke-direct {v1, p0, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    #@23
    .line 251
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@2a
    move-result-object v2

    #@2b
    .line 252
    .local v2, "queue":Landroid/os/MessageQueue;
    aget-object v3, v0, v5

    #@2d
    .line 253
    new-instance v4, Landroid/os/ParcelFileDescriptor$2;

    #@2f
    invoke-direct {v4, v2, p2}, Landroid/os/ParcelFileDescriptor$2;-><init>(Landroid/os/MessageQueue;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    #@32
    .line 252
    invoke-virtual {v2, v3, v5, v4}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    #@35
    .line 273
    return-object v1
.end method

.method public static fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 367
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    #@4
    move-result-object v0

    #@5
    .line 368
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@9
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@c
    :cond_0
    return-object v1
.end method

.method private getOrCreateStatusBuffer()[B
    .locals 1

    #@0
    .prologue
    .line 705
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 706
    const/16 v0, 0x400

    #@6
    new-array v0, v0, [B

    #@8
    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    #@a
    .line 708
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    #@c
    return-object v0
.end method

.method public static open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    #@4
    move-result-object v0

    #@5
    .line 201
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    #@7
    return-object v1

    #@8
    .line 203
    :cond_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@a
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@d
    return-object v1
.end method

.method public static open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Landroid/os/ParcelFileDescriptor$OnCloseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 226
    if-nez p2, :cond_0

    #@3
    .line 227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Handler must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 229
    :cond_0
    if-nez p3, :cond_1

    #@e
    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "Listener must not be null"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 233
    :cond_1
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    #@1a
    move-result-object v0

    #@1b
    .line 234
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-nez v0, :cond_2

    #@1d
    return-object v1

    #@1e
    .line 236
    :cond_2
    invoke-static {v0, p2, p3}, Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    #@21
    move-result-object v1

    #@22
    return-object v1
.end method

.method private static openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    const/high16 v1, 0x30000000

    #@2
    and-int/2addr v1, p1

    #@3
    if-nez v1, :cond_0

    #@5
    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    .line 279
    const-string/jumbo v2, "Must specify MODE_READ_ONLY, MODE_WRITE_ONLY, or MODE_READ_WRITE"

    #@a
    .line 278
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 282
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 283
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/Parcel;->openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    #@15
    move-result-object v1

    #@16
    return-object v1
.end method

.method public static parseMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 525
    const-string/jumbo v1, "r"

    #@3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 526
    const/high16 v0, 0x10000000

    #@b
    .line 545
    .local v0, "modeBits":I
    :goto_0
    return v0

    #@c
    .line 527
    .end local v0    # "modeBits":I
    :cond_0
    const-string/jumbo v1, "w"

    #@f
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    const-string/jumbo v1, "wt"

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 528
    :cond_1
    const/high16 v0, 0x2c000000

    #@20
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@21
    .line 531
    .end local v0    # "modeBits":I
    :cond_2
    const-string/jumbo v1, "wa"

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 532
    const/high16 v0, 0x2a000000

    #@2c
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@2d
    .line 535
    .end local v0    # "modeBits":I
    :cond_3
    const-string/jumbo v1, "rw"

    #@30
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 536
    const/high16 v0, 0x38000000

    #@38
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@39
    .line 538
    .end local v0    # "modeBits":I
    :cond_4
    const-string/jumbo v1, "rwt"

    #@3c
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_5

    #@42
    .line 539
    const/high16 v0, 0x3c000000    # 0.0078125f

    #@44
    .restart local v0    # "modeBits":I
    goto :goto_0

    #@45
    .line 543
    .end local v0    # "modeBits":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "Bad mode \'"

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    const-string/jumbo v3, "\'"

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1
.end method

.method private static readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .locals 9
    .param p0, "comm"    # Ljava/io/FileDescriptor;
    .param p1, "buf"    # [B

    #@0
    .prologue
    const/4 v8, -0x2

    #@1
    .line 767
    :try_start_0
    array-length v5, p1

    #@2
    const/4 v6, 0x0

    #@3
    invoke-static {p0, p1, v6, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@6
    move-result v3

    #@7
    .line 768
    .local v3, "n":I
    if-nez v3, :cond_0

    #@9
    .line 770
    new-instance v5, Landroid/os/ParcelFileDescriptor$Status;

    #@b
    const/4 v6, -0x2

    #@c
    invoke-direct {v5, v6}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    #@f
    return-object v5

    #@10
    .line 772
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@12
    const/4 v6, 0x0

    #@13
    invoke-static {p1, v6, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@16
    move-result v4

    #@17
    .line 773
    .local v4, "status":I
    const/4 v5, 0x1

    #@18
    if-ne v4, v5, :cond_1

    #@1a
    .line 774
    new-instance v2, Ljava/lang/String;

    #@1c
    add-int/lit8 v5, v3, -0x4

    #@1e
    const/4 v6, 0x4

    #@1f
    invoke-direct {v2, p1, v6, v5}, Ljava/lang/String;-><init>([BII)V

    #@22
    .line 775
    .local v2, "msg":Ljava/lang/String;
    new-instance v5, Landroid/os/ParcelFileDescriptor$Status;

    #@24
    invoke-direct {v5, v4, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V

    #@27
    return-object v5

    #@28
    .line 777
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/os/ParcelFileDescriptor$Status;

    #@2a
    invoke-direct {v5, v4}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    return-object v5

    #@2e
    .line 787
    .end local v3    # "n":I
    .end local v4    # "status":I
    :catch_0
    move-exception v1

    #@2f
    .line 788
    .local v1, "e":Ljava/io/InterruptedIOException;
    const-string/jumbo v5, "ParcelFileDescriptor"

    #@32
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "Failed to read status; assuming dead: "

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 789
    new-instance v5, Landroid/os/ParcelFileDescriptor$Status;

    #@4b
    invoke-direct {v5, v8}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    #@4e
    return-object v5

    #@4f
    .line 779
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    #@50
    .line 780
    .local v0, "e":Landroid/system/ErrnoException;
    iget v5, v0, Landroid/system/ErrnoException;->errno:I

    #@52
    sget v6, Landroid/system/OsConstants;->EAGAIN:I

    #@54
    if-ne v5, v6, :cond_2

    #@56
    .line 782
    const/4 v5, 0x0

    #@57
    return-object v5

    #@58
    .line 784
    :cond_2
    const-string/jumbo v5, "ParcelFileDescriptor"

    #@5b
    new-instance v6, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v7, "Failed to read status; assuming dead: "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 785
    new-instance v5, Landroid/os/ParcelFileDescriptor$Status;

    #@74
    invoke-direct {v5, v8}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    #@77
    return-object v5
.end method

.method private writeCommStatusAndClose(ILjava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 712
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@3
    if-nez v6, :cond_1

    #@5
    .line 714
    if-eqz p2, :cond_0

    #@7
    .line 715
    const-string/jumbo v6, "ParcelFileDescriptor"

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "Unable to inform peer: "

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 717
    :cond_0
    return-void

    #@22
    .line 720
    :cond_1
    const/4 v6, 0x2

    #@23
    if-ne p1, v6, :cond_2

    #@25
    .line 721
    const-string/jumbo v6, "ParcelFileDescriptor"

    #@28
    const-string/jumbo v7, "Peer expected signal when closed; unable to deliver after detach"

    #@2b
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 725
    :cond_2
    const/4 v6, -0x1

    #@2f
    if-ne p1, v6, :cond_3

    #@31
    .line 759
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@33
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@36
    .line 760
    iput-object v9, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@38
    .line 725
    return-void

    #@39
    .line 729
    :cond_3
    :try_start_0
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@3b
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    #@3e
    move-result-object v7

    #@3f
    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    #@42
    move-result-object v6

    #@43
    iput-object v6, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    #@45
    .line 732
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    if-eqz v6, :cond_4

    #@49
    .line 759
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@4b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@4e
    .line 760
    iput-object v9, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@50
    .line 732
    return-void

    #@51
    .line 735
    :cond_4
    :try_start_1
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    #@54
    move-result-object v0

    #@55
    .line 736
    .local v0, "buf":[B
    const/4 v5, 0x0

    #@56
    .line 738
    .local v5, "writePtr":I
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@58
    invoke-static {v0, v5, p1, v6}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@5b
    .line 739
    const/4 v5, 0x4

    #@5c
    .line 741
    if-eqz p2, :cond_5

    #@5e
    .line 742
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    #@61
    move-result-object v4

    #@62
    .line 743
    .local v4, "rawMsg":[B
    array-length v6, v4

    #@63
    array-length v7, v0

    #@64
    add-int/lit8 v7, v7, -0x4

    #@66
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@69
    move-result v3

    #@6a
    .line 744
    .local v3, "len":I
    const/4 v6, 0x0

    #@6b
    invoke-static {v4, v6, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6e
    .line 745
    add-int/lit8 v5, v3, 0x4

    #@70
    .line 749
    .end local v3    # "len":I
    .end local v4    # "rawMsg":[B
    :cond_5
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@72
    const/4 v7, 0x0

    #@73
    invoke-static {v6, v0, v7, v5}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .line 759
    .end local v0    # "buf":[B
    .end local v5    # "writePtr":I
    :goto_0
    iget-object v6, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@78
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@7b
    .line 760
    iput-object v9, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@7d
    .line 711
    return-void

    #@7e
    .line 753
    :catch_0
    move-exception v2

    #@7f
    .line 755
    .local v2, "e":Ljava/io/InterruptedIOException;
    :try_start_2
    const-string/jumbo v6, "ParcelFileDescriptor"

    #@82
    new-instance v7, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v8, "Failed to report status: "

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@99
    goto :goto_0

    #@9a
    .line 758
    .end local v2    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v6

    #@9b
    .line 759
    iget-object v7, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@9d
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@a0
    .line 760
    iput-object v9, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@a2
    .line 758
    throw v6

    #@a3
    .line 750
    :catch_1
    move-exception v1

    #@a4
    .line 752
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_3
    const-string/jumbo v6, "ParcelFileDescriptor"

    #@a7
    new-instance v7, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v8, "Failed to report status: "

    #@af
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v7

    #@b7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@be
    goto :goto_0
.end method


# virtual methods
.method public canDetectErrors()Z
    .locals 1

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 801
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 803
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@d
    if-eqz v0, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public checkError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 823
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 824
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    #@9
    .line 822
    return-void

    #@a
    .line 826
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    #@c
    if-nez v0, :cond_2

    #@e
    .line 827
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 828
    const-string/jumbo v0, "ParcelFileDescriptor"

    #@15
    const-string/jumbo v1, "Peer didn\'t provide a comm channel; unable to check for errors"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 829
    return-void

    #@1c
    .line 834
    :cond_1
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@1e
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    #@28
    .line 837
    :cond_2
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    #@2a
    if-eqz v0, :cond_3

    #@2c
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    #@2e
    iget v0, v0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    #@30
    if-nez v0, :cond_4

    #@32
    .line 839
    :cond_3
    return-void

    #@33
    .line 841
    :cond_4
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    #@35
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    #@38
    move-result-object v0

    #@39
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 653
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 655
    :try_start_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 657
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@d
    .line 652
    :goto_0
    return-void

    #@e
    .line 656
    :catchall_0
    move-exception v0

    #@f
    .line 657
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@12
    .line 656
    throw v0

    #@13
    .line 660
    :cond_0
    const/4 v0, 0x0

    #@14
    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    #@17
    goto :goto_0
.end method

.method public closeWithError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 676
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@c
    .line 671
    :goto_0
    return-void

    #@d
    .line 675
    :catchall_0
    move-exception v0

    #@e
    .line 676
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@11
    .line 675
    throw v0

    #@12
    .line 679
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "Message must not be null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 682
    :cond_1
    const/4 v0, 0x1

    #@1e
    invoke-direct {p0, v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    #@21
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 948
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 949
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 951
    :cond_0
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method public detachFd()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 628
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 629
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 631
    :cond_0
    iget-boolean v1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 632
    new-instance v1, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v2, "Already closed"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 634
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@1c
    move-result v0

    #@1d
    .line 635
    .local v0, "fd":I
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@1f
    invoke-static {v1}, Landroid/os/Parcel;->clearFileDescriptor(Ljava/io/FileDescriptor;)V

    #@22
    .line 636
    const/4 v1, 0x2

    #@23
    invoke-direct {p0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    #@26
    .line 637
    const/4 v1, 0x1

    #@27
    iput-boolean v1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@29
    .line 638
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    #@2b
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@2e
    .line 639
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@31
    .line 640
    return v0
.end method

.method public dup()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 309
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 932
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@7
    .line 934
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 935
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Ldalvik/system/CloseGuard;

    #@d
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@10
    .line 938
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@12
    if-nez v0, :cond_2

    #@14
    .line 939
    const/4 v0, 0x3

    #@15
    const/4 v1, 0x0

    #@16
    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 942
    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1c
    .line 930
    return-void

    #@1d
    .line 941
    :catchall_0
    move-exception v0

    #@1e
    .line 942
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@21
    .line 941
    throw v0
.end method

.method public getFd()I
    .locals 2

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 607
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 609
    :cond_0
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Already closed"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 612
    :cond_1
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@1a
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 554
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 555
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 557
    :cond_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@d
    return-object v0
.end method

.method public getStatSize()J
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    .line 566
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 567
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 570
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@f
    invoke-static {v2}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@12
    move-result-object v1

    #@13
    .line 571
    .local v1, "st":Landroid/system/StructStat;
    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    #@15
    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    #@1d
    invoke-static {v2}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 572
    :cond_1
    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    return-wide v2

    #@26
    .line 574
    :cond_2
    return-wide v6

    #@27
    .line 576
    .end local v1    # "st":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    #@28
    .line 577
    .local v0, "e":Landroid/system/ErrnoException;
    const-string/jumbo v2, "ParcelFileDescriptor"

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v4, "fstat() failed: "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 578
    return-wide v6
.end method

.method public releaseResources()V
    .locals 0

    #@0
    .prologue
    .line 701
    return-void
.end method

.method public seekTo(J)J
    .locals 5
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 590
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v1, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 593
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@d
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    #@f
    invoke-static {v1, p1, p2, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-wide v2

    #@13
    return-wide v2

    #@14
    .line 594
    :catch_0
    move-exception v0

    #@15
    .line 595
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@18
    move-result-object v1

    #@19
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 923
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 925
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "{ParcelFileDescriptor: "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "}"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 962
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 964
    :try_start_0
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    #@8
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 966
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@e
    .line 961
    :cond_0
    :goto_0
    return-void

    #@f
    .line 965
    :catchall_0
    move-exception v0

    #@10
    .line 966
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    #@13
    .line 965
    throw v0

    #@14
    .line 969
    :cond_1
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 970
    const/4 v0, 0x1

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 971
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@21
    .line 972
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@26
    .line 977
    :goto_1
    and-int/lit8 v0, p2, 0x1

    #@28
    if-eqz v0, :cond_0

    #@2a
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    #@2c
    if-nez v0, :cond_0

    #@2e
    .line 979
    const/4 v0, -0x1

    #@2f
    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    #@32
    goto :goto_0

    #@33
    .line 974
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 975
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    #@38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    #@3b
    goto :goto_1
.end method
