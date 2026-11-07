.class Lsun/nio/fs/UnixNativeDispatcher;
.super Ljava/lang/Object;
.source "UnixNativeDispatcher.java"


# static fields
.field private static final blacklist SUPPORTS_BIRTHTIME:I = 0x10000

.field private static final blacklist SUPPORTS_FUTIMES:I = 0x4

.field private static final blacklist SUPPORTS_OPENAT:I = 0x2

.field private static final blacklist capabilities:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 612
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->init()I

    move-result v0

    sput v0, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    .line 613
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist access(Lsun/nio/fs/UnixPath;I)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "amode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 464
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 466
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->access0(JI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 468
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 469
    nop

    .line 470
    return-void

    .line 468
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 469
    throw v1
.end method

.method private static native blacklist access0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist birthtimeSupported()Z
    .registers 2

    .line 599
    sget v0, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist chmod(Lsun/nio/fs/UnixPath;I)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 383
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 385
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->chmod0(JI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 387
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 388
    throw v1
.end method

.method private static native blacklist chmod0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist chown(Lsun/nio/fs/UnixPath;II)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 350
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 352
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->chown0(JII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 354
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 355
    nop

    .line 356
    return-void

    .line 354
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 355
    throw v1
.end method

.method private static native blacklist chown0(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist close(I)V
.end method

.method static native blacklist closedir(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static blacklist copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;

    .line 40
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v0

    .line 41
    .local v0, "cstr":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 42
    .local v1, "size":I
    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v2

    .line 43
    .local v2, "buffer":Lsun/nio/fs/NativeBuffer;
    if-nez v2, :cond_12

    .line 44
    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v2

    goto :goto_19

    .line 47
    :cond_12
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->owner()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_19

    .line 48
    return-object v2

    .line 50
    :cond_19
    :goto_19
    invoke-static {v0, v2}, Lsun/nio/fs/NativeBuffers;->copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V

    .line 51
    invoke-virtual {v2, p0}, Lsun/nio/fs/NativeBuffer;->setOwner(Ljava/lang/Object;)V

    .line 52
    return-object v2
.end method

.method static native blacklist dup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist exists(Lsun/nio/fs/UnixPath;)Z
    .registers 4
    .param p0, "path"    # Lsun/nio/fs/UnixPath;

    .line 479
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 481
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->exists0(J)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 483
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 481
    return v1

    .line 483
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 484
    throw v1
.end method

.method private static native blacklist exists0(J)Z
.end method

.method static native blacklist fchmod(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist fchown(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist fclose(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist fdopendir(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist fopen(Lsun/nio/fs/UnixPath;Ljava/lang/String;)J
    .registers 8
    .param p0, "filename"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 103
    .local v0, "pathBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 105
    .local v1, "modeBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_c
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fopen0(JJ)J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1f

    .line 107
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 108
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 105
    return-wide v2

    .line 107
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 108
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 109
    throw v2
.end method

.method private static native blacklist fopen0(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist fpathconf(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist fstat(ILsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist fstatat(I[BILsun/nio/fs/UnixFileAttributes;)V
    .registers 7
    .param p0, "dfd"    # I
    .param p1, "path"    # [B
    .param p2, "flag"    # I
    .param p3, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 336
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 338
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {p0, v1, v2, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->fstatat0(IJILsun/nio/fs/UnixFileAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 340
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 341
    nop

    .line 342
    return-void

    .line 340
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 341
    throw v1
.end method

.method private static native blacklist fstatat0(IJILsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist futimes(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist futimesSupported()Z
    .registers 1

    .line 592
    sget v0, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static native blacklist getcwd()[B
.end method

.method static native blacklist getgrgid(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist getgrnam(Ljava/lang/String;)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 524
    invoke-static {p0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 526
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->getgrnam0(J)I

    move-result v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 528
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 526
    return v1

    .line 528
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 529
    throw v1
.end method

.method private static native blacklist getgrnam0(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist getpwnam(Ljava/lang/String;)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 509
    invoke-static {p0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 511
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->getpwnam0(J)I

    move-result v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 513
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 511
    return v1

    .line 513
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 514
    throw v1
.end method

.method private static native blacklist getpwnam0(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist getpwuid(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist init()I
.end method

.method static blacklist lchown(Lsun/nio/fs/UnixPath;II)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 364
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 366
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->lchown0(JII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 368
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 369
    nop

    .line 370
    return-void

    .line 368
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 369
    throw v1
.end method

.method private static native blacklist lchown0(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist link(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .registers 8
    .param p0, "existing"    # Lsun/nio/fs/UnixPath;
    .param p1, "newfile"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 123
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 124
    .local v0, "existingBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 126
    .local v1, "newBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->link0(JJ)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1b

    .line 128
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 129
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catchall_1b
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 129
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 130
    throw v2
.end method

.method private static native blacklist link0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist lstat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 315
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 317
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->lstat0(JLsun/nio/fs/UnixFileAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 319
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 320
    nop

    .line 321
    return-void

    .line 319
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 320
    throw v1
.end method

.method private static native blacklist lstat0(JLsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist mkdir(Lsun/nio/fs/UnixPath;I)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 212
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 214
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir0(JI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 216
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 217
    nop

    .line 218
    return-void

    .line 216
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 217
    throw v1
.end method

.method private static native blacklist mkdir0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist mknod(Lsun/nio/fs/UnixPath;IJ)V
    .registers 7
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # I
    .param p2, "dev"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 168
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->mknod0(JIJ)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 170
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 171
    throw v1
.end method

.method private static native blacklist mknod0(JIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist open(Lsun/nio/fs/UnixPath;II)I
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "flags"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 71
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->open0(JII)I

    move-result v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 73
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 71
    return v1

    .line 73
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 74
    throw v1
.end method

.method private static native blacklist open0(JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist openat(I[BII)I
    .registers 7
    .param p0, "dfd"    # I
    .param p1, "path"    # [B
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 85
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {p0, v1, v2, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->openat0(IJII)I

    move-result v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 87
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 85
    return v1

    .line 87
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 88
    throw v1
.end method

.method private static native blacklist openat0(IJII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist openatSupported()Z
    .registers 1

    .line 585
    sget v0, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static blacklist opendir(Lsun/nio/fs/UnixPath;)J
    .registers 4
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 423
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 425
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->opendir0(J)J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 427
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 425
    return-wide v1

    .line 427
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 428
    throw v1
.end method

.method private static native blacklist opendir0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist pathconf(Lsun/nio/fs/UnixPath;I)J
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "name"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 553
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 555
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->pathconf0(JI)J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 557
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 555
    return-wide v1

    .line 557
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 558
    throw v1
.end method

.method private static native blacklist pathconf0(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist read(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist readdir(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist readlink(Lsun/nio/fs/UnixPath;)[B
    .registers 4
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 240
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 242
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->readlink0(J)[B

    move-result-object v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 244
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 242
    return-object v1

    .line 244
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 245
    throw v1
.end method

.method private static native blacklist readlink0(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist realpath(Lsun/nio/fs/UnixPath;)[B
    .registers 4
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 255
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 257
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->realpath0(J)[B

    move-result-object v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 259
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 257
    return-object v1

    .line 259
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 260
    throw v1
.end method

.method private static native blacklist realpath0(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .registers 8
    .param p0, "from"    # Lsun/nio/fs/UnixPath;
    .param p1, "to"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 181
    .local v0, "fromBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 183
    .local v1, "toBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->rename0(JJ)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1b

    .line 185
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 186
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 187
    nop

    .line 188
    return-void

    .line 185
    :catchall_1b
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 186
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 187
    throw v2
.end method

.method private static native blacklist rename0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist renameat(I[BI[B)V
    .registers 13
    .param p0, "fromfd"    # I
    .param p1, "from"    # [B
    .param p2, "tofd"    # I
    .param p3, "to"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 197
    .local v1, "fromBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p3}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v2

    .line 199
    .local v2, "toBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v7
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_20

    move v3, p0

    move v6, p2

    .end local p0    # "fromfd":I
    .end local p2    # "tofd":I
    .local v3, "fromfd":I
    .local v6, "tofd":I
    :try_start_12
    invoke-static/range {v3 .. v8}, Lsun/nio/fs/UnixNativeDispatcher;->renameat0(IJIJ)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1d

    .line 201
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 202
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 203
    nop

    .line 204
    return-void

    .line 201
    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto :goto_24

    .end local v3    # "fromfd":I
    .end local v6    # "tofd":I
    .restart local p0    # "fromfd":I
    .restart local p2    # "tofd":I
    :catchall_20
    move-exception v0

    move v3, p0

    move v6, p2

    move-object p0, v0

    .end local p0    # "fromfd":I
    .end local p2    # "tofd":I
    .restart local v3    # "fromfd":I
    .restart local v6    # "tofd":I
    :goto_24
    invoke-virtual {v2}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 202
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 203
    throw p0
.end method

.method private static native blacklist renameat0(IJIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist rmdir(Lsun/nio/fs/UnixPath;)V
    .registers 4
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 225
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 227
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir0(J)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 229
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 230
    nop

    .line 231
    return-void

    .line 229
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 230
    throw v1
.end method

.method private static native blacklist rmdir0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist stat(Lsun/nio/fs/UnixPath;)I
    .registers 4
    .param p0, "path"    # Lsun/nio/fs/UnixPath;

    .line 301
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 303
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->stat1(J)I

    move-result v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 305
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 303
    return v1

    .line 305
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 306
    throw v1
.end method

.method static blacklist stat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 284
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 286
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->stat0(JLsun/nio/fs/UnixFileAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 288
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 289
    nop

    .line 290
    return-void

    .line 288
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 289
    throw v1
.end method

.method private static native blacklist stat0(JLsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist stat1(J)I
.end method

.method static blacklist statvfs(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileStoreAttributes;)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileStoreAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 539
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 541
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lsun/nio/fs/UnixNativeDispatcher;->statvfs0(JLsun/nio/fs/UnixFileStoreAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 543
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 544
    throw v1
.end method

.method private static native blacklist statvfs0(JLsun/nio/fs/UnixFileStoreAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist strerror(I)[B
.end method

.method static blacklist symlink([BLsun/nio/fs/UnixPath;)V
    .registers 8
    .param p0, "name1"    # [B
    .param p1, "name2"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 268
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 269
    .local v0, "targetBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 271
    .local v1, "linkBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->symlink0(JJ)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1b

    .line 273
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 274
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 275
    nop

    .line 276
    return-void

    .line 273
    :catchall_1b
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 274
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 275
    throw v2
.end method

.method private static native blacklist symlink0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist unlink(Lsun/nio/fs/UnixPath;)V
    .registers 4
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 139
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 141
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink0(J)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 143
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 144
    throw v1
.end method

.method private static native blacklist unlink0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist unlinkat(I[BI)V
    .registers 6
    .param p0, "dfd"    # I
    .param p1, "path"    # [B
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 152
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 154
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {p0, v1, v2, p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat0(IJI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 156
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 157
    throw v1
.end method

.method private static native blacklist unlinkat0(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist utimes(Lsun/nio/fs/UnixPath;JJ)V
    .registers 13
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "times0"    # J
    .param p3, "times1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 404
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 406
    .local v1, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_15

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "times0":J
    .end local p3    # "times1":J
    .local v4, "times0":J
    .local v6, "times1":J
    :try_start_a
    invoke-static/range {v2 .. v7}, Lsun/nio/fs/UnixNativeDispatcher;->utimes0(JJJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 408
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_12
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v4    # "times0":J
    .end local v6    # "times1":J
    .restart local p1    # "times0":J
    .restart local p3    # "times1":J
    :catchall_15
    move-exception v0

    move-wide v4, p1

    move-wide v6, p3

    move-object p1, v0

    .end local p1    # "times0":J
    .end local p3    # "times1":J
    .restart local v4    # "times0":J
    .restart local v6    # "times1":J
    :goto_19
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 409
    throw p1
.end method

.method private static native blacklist utimes0(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist write(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
