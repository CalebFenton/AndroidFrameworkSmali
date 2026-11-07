.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o CMD_CLOSE:I = 0x3

.field private static final greylist-max-o CMD_FSYNC:I = 0x2

.field private static final greylist-max-o CMD_WRITE:I = 0x1

.field private static final greylist-max-o MSG_LENGTH:I = 0x8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private blacklist mClient:Landroid/os/ParcelFileDescriptor;

.field private volatile greylist-max-o mClosed:Z

.field private blacklist mServer:Landroid/os/ParcelFileDescriptor;

.field private blacklist mTarget:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    :try_start_3
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 72
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    .line 73
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_15

    .line 76
    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    nop

    .line 77
    return-void

    .line 74
    :catch_15
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o forceClose()V
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 85
    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 87
    return-void
.end method

.method public blacklist getClientSocket()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public greylist-max-o isClosed()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public whitelist test-api run()V
    .registers 9

    .line 99
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 100
    .local v1, "tempBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_13

    :cond_11
    new-array v0, v0, [B

    .line 102
    .local v0, "temp":[B
    :goto_13
    :try_start_13
    iget-object v2, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    if-ne v2, v3, :cond_a6

    .line 104
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v4, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    .line 105
    .local v2, "cmd":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_71

    .line 107
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x4

    invoke-static {v0, v5, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v3

    .line 108
    .local v3, "len":I
    :goto_32
    if-lez v3, :cond_70

    .line 109
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    array-length v6, v0

    .line 110
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 109
    invoke-static {v5, v0, v4, v6}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 111
    .local v5, "n":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_51

    .line 115
    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v0, v4, v5}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 116
    sub-int/2addr v3, v5

    .line 117
    .end local v5    # "n":I
    goto :goto_32

    .line 112
    .restart local v5    # "n":I
    :cond_51
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected EOF; still expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "temp":[B
    .end local v1    # "tempBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Landroid/os/FileBridge;
    throw v4

    .line 119
    .end local v3    # "len":I
    .end local v5    # "n":I
    .restart local v0    # "temp":[B
    .restart local v1    # "tempBuffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Landroid/os/FileBridge;
    :cond_70
    goto :goto_a4

    :cond_71
    const/4 v6, 0x2

    if-ne v2, v6, :cond_87

    .line 121
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 122
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v0, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_a4

    .line 124
    :cond_87
    const/4 v6, 0x3

    if-ne v2, v6, :cond_a4

    .line 126
    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 127
    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 128
    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    .line 129
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v0, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_a3
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_a3} :catch_ad
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_a3} :catch_ad
    .catchall {:try_start_13 .. :try_end_a3} :catchall_ab

    .line 130
    goto :goto_a6

    .line 132
    .end local v2    # "cmd":I
    :cond_a4
    :goto_a4
    goto/16 :goto_13

    .line 137
    :cond_a6
    :goto_a6
    nop

    :goto_a7
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 138
    goto :goto_b7

    .line 137
    :catchall_ab
    move-exception v2

    goto :goto_b8

    .line 134
    :catch_ad
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    :try_start_ae
    const-string v3, "FileBridge"

    const-string v4, "Failed during bridge"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_ab

    .line 137
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_a7

    .line 139
    :goto_b7
    return-void

    .line 137
    :goto_b8
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    .line 138
    throw v2
.end method

.method public blacklist setTargetFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "target"    # Landroid/os/ParcelFileDescriptor;

    .line 90
    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    .line 91
    return-void
.end method
