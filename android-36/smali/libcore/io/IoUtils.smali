.class public final Llibcore/io/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/IoUtils$FileReader;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static blacklist test-api acquireRawFd(Ljava/io/FileDescriptor;)I
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 68
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->release$()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 73
    .local v1, "copy":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v6

    .line 74
    .local v6, "rawFd":I
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getOwnerId$()J

    move-result-wide v2

    .line 75
    .local v2, "previousOwnerId":J
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1f

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    .line 77
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->android_fdsan_exchange_owner_tag(Ljava/io/FileDescriptor;JJ)V

    .line 80
    :cond_1f
    return v6
.end method

.method public static blacklist canOpenReadOnly(Ljava/lang/String;)Z
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-interface {v1, p0, v2, v0}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 332
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_e} :catch_10

    .line 333
    const/4 v0, 0x1

    return v0

    .line 334
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_10
    move-exception v1

    .line 335
    .local v1, "errnoException":Landroid/system/ErrnoException;
    return v0
.end method

.method public static blacklist test-api close(Ljava/io/FileDescriptor;)V
    .registers 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 181
    return-void
.end method

.method public static greylist test-api closeQuietly(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 214
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 216
    goto :goto_5

    .line 215
    :catch_4
    move-exception v0

    .line 217
    :goto_5
    return-void
.end method

.method public static greylist test-api closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 193
    if-eqz p0, :cond_a

    .line 195
    :try_start_2
    invoke-static {p0}, Llibcore/io/IoUtils$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 199
    goto :goto_a

    .line 198
    :catch_6
    move-exception v0

    goto :goto_a

    .line 196
    :catch_8
    move-exception v0

    .line 197
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 201
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static greylist test-api closeQuietly(Ljava/net/Socket;)V
    .registers 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 229
    if-eqz p0, :cond_a

    .line 231
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 235
    goto :goto_a

    .line 234
    :catch_6
    move-exception v0

    goto :goto_a

    .line 232
    :catch_8
    move-exception v0

    .line 233
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 237
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist deleteContents(Ljava/io/File;)V
    .registers 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 307
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1b

    .line 308
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 309
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 310
    invoke-static {v3}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V

    .line 312
    :cond_15
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 308
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 315
    :cond_1b
    return-void
.end method

.method private static blacklist generateFdOwnerId(Ljava/lang/Object;)J
    .registers 9
    .param p0, "owner"    # Ljava/lang/Object;

    .line 98
    if-nez p0, :cond_5

    .line 99
    const-wide/16 v0, 0x0

    return-wide v0

    .line 104
    :cond_5
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_c

    .line 105
    const-wide/16 v0, 0x5

    .local v0, "tagType":J
    goto :goto_33

    .line 106
    .end local v0    # "tagType":J
    :cond_c
    instance-of v0, p0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_13

    .line 107
    const-wide/16 v0, 0x6

    .restart local v0    # "tagType":J
    goto :goto_33

    .line 108
    .end local v0    # "tagType":J
    :cond_13
    instance-of v0, p0, Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1a

    .line 109
    const-wide/16 v0, 0x7

    .restart local v0    # "tagType":J
    goto :goto_33

    .line 110
    .end local v0    # "tagType":J
    :cond_1a
    instance-of v0, p0, Ljava/net/DatagramSocketImpl;

    if-eqz v0, :cond_21

    .line 111
    const-wide/16 v0, 0xa

    .restart local v0    # "tagType":J
    goto :goto_33

    .line 112
    .end local v0    # "tagType":J
    :cond_21
    instance-of v0, p0, Ljava/net/SocketImpl;

    if-eqz v0, :cond_28

    .line 113
    const-wide/16 v0, 0xb

    .restart local v0    # "tagType":J
    goto :goto_33

    .line 114
    .end local v0    # "tagType":J
    :cond_28
    invoke-static {p0}, Llibcore/io/IoUtils;->isParcelFileDescriptor(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 115
    const-wide/16 v0, 0x8

    .restart local v0    # "tagType":J
    goto :goto_33

    .line 118
    .end local v0    # "tagType":J
    :cond_31
    const-wide/16 v0, 0xff

    .line 129
    .restart local v0    # "tagType":J
    :goto_33
    const-wide v2, 0xffffffffL

    .line 130
    .local v2, "mask":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 131
    .local v4, "tagValue":J
    const/16 v6, 0x38

    shl-long v6, v0, v6

    or-long/2addr v6, v4

    return-wide v6
.end method

.method private static blacklist isParcelFileDescriptor(Ljava/lang/Object;)Z
    .registers 4
    .param p0, "object"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.ParcelFileDescriptor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "pfdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_b} :catch_10

    if-eqz v2, :cond_f

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_f
    return v0

    .line 92
    .end local v1    # "pfdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_10
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    return v0
.end method

.method public static greylist test-api readFileAsByteArray(Ljava/lang/String;)[B
    .registers 2
    .param p0, "absolutePath"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    new-instance v0, Llibcore/io/IoUtils$FileReader;

    invoke-direct {v0, p0}, Llibcore/io/IoUtils$FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->readFully()Llibcore/io/IoUtils$FileReader;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist test-api readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "absolutePath"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    new-instance v0, Llibcore/io/IoUtils$FileReader;

    invoke-direct {v0, p0}, Llibcore/io/IoUtils$FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Llibcore/io/IoUtils$FileReader;->readFully()Llibcore/io/IoUtils$FileReader;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Llibcore/io/IoUtils$FileReader;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist test-api setBlocking(Ljava/io/FileDescriptor;Z)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "blocking"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->F_GETFL:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 253
    .local v0, "flags":I
    if-nez p1, :cond_e

    .line 254
    sget v1, Landroid/system/OsConstants;->O_NONBLOCK:I

    or-int/2addr v0, v1

    goto :goto_12

    .line 256
    :cond_e
    sget v1, Landroid/system/OsConstants;->O_NONBLOCK:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 258
    :goto_12
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->F_SETFL:I

    invoke-interface {v1, p0, v2, v0}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 261
    nop

    .line 262
    .end local v0    # "flags":I
    return-void

    .line 259
    :catch_1b
    move-exception v0

    .line 260
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist test-api setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V
    .registers 8
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 153
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getOwnerId$()J

    move-result-wide v2

    .line 157
    .local v2, "previousOwnerId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1e

    .line 162
    invoke-static {p1}, Llibcore/io/IoUtils;->generateFdOwnerId(Ljava/lang/Object;)J

    move-result-wide v4

    .line 163
    .local v4, "ownerId":J
    invoke-virtual {p0, v4, v5}, Ljava/io/FileDescriptor;->setOwnerId$(J)V

    .line 166
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->android_fdsan_exchange_owner_tag(Ljava/io/FileDescriptor;JJ)V

    .line 167
    return-void

    .line 158
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "ownerId":J
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    :cond_1e
    move-object v1, p0

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to take ownership of already-owned FileDescriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist throwInterruptedIoException()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 346
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 348
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
