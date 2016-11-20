.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 61
    new-instance v1, Ljava/io/FileDescriptor;

    #@5
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    #@8
    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    #@a
    .line 62
    new-instance v1, Ljava/io/FileDescriptor;

    #@c
    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    #@f
    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    #@11
    .line 68
    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_UNIX:I

    #@13
    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    #@15
    iget-object v3, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    #@17
    iget-object v4, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-static {v1, v2, v5, v3, v4}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 66
    return-void

    #@1e
    .line 69
    :catch_0
    move-exception v0

    #@1f
    .line 70
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@21
    const-string/jumbo v2, "Failed to create bridge"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1
.end method


# virtual methods
.method public forceClose()V
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@5
    .line 80
    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    #@7
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@a
    .line 81
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    #@c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@f
    .line 82
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    #@12
    .line 78
    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    #@2
    return v0
.end method

.method public run()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/16 v8, 0x8

    #@3
    .line 95
    const/16 v5, 0x2000

    #@5
    new-array v4, v5, [B

    #@7
    .line 97
    .local v4, "temp":[B
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    #@9
    const/4 v6, 0x0

    #@a
    const/16 v7, 0x8

    #@c
    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@f
    move-result v5

    #@10
    if-ne v5, v8, :cond_4

    #@12
    .line 98
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@14
    const/4 v6, 0x0

    #@15
    invoke-static {v4, v6, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@18
    move-result v0

    #@19
    .line 99
    .local v0, "cmd":I
    if-ne v0, v9, :cond_2

    #@1b
    .line 101
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@1d
    const/4 v6, 0x4

    #@1e
    invoke-static {v4, v6, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@21
    move-result v2

    #@22
    .line 102
    .local v2, "len":I
    :goto_1
    if-lez v2, :cond_0

    #@24
    .line 103
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    #@26
    array-length v6, v4

    #@27
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v6

    #@2b
    const/4 v7, 0x0

    #@2c
    invoke-static {v5, v4, v7, v6}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@2f
    move-result v3

    #@30
    .line 104
    .local v3, "n":I
    const/4 v5, -0x1

    #@31
    if-ne v3, v5, :cond_1

    #@33
    .line 105
    new-instance v5, Ljava/io/IOException;

    #@35
    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v7, "Unexpected EOF; still expected "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    const-string/jumbo v7, " bytes"

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    .line 105
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v5
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 127
    .end local v0    # "cmd":I
    .end local v2    # "len":I
    .end local v3    # "n":I
    :catch_0
    move-exception v1

    #@55
    .line 128
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v5, "FileBridge"

    #@58
    const-string/jumbo v6, "Failed during bridge"

    #@5b
    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    .line 130
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    #@61
    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    #@62
    .line 108
    .restart local v0    # "cmd":I
    .restart local v2    # "len":I
    .restart local v3    # "n":I
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    #@64
    const/4 v6, 0x0

    #@65
    invoke-static {v5, v4, v6, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@68
    .line 109
    sub-int/2addr v2, v3

    #@69
    goto :goto_1

    #@6a
    .line 112
    .end local v2    # "len":I
    .end local v3    # "n":I
    :cond_2
    const/4 v5, 0x2

    #@6b
    if-ne v0, v5, :cond_3

    #@6d
    .line 114
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    #@6f
    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    #@72
    .line 115
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    #@74
    const/4 v6, 0x0

    #@75
    const/16 v7, 0x8

    #@77
    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    goto :goto_0

    #@7b
    .line 129
    .end local v0    # "cmd":I
    :catchall_0
    move-exception v5

    #@7c
    .line 130
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    #@7f
    .line 129
    throw v5

    #@80
    .line 117
    .restart local v0    # "cmd":I
    :cond_3
    const/4 v5, 0x3

    #@81
    if-ne v0, v5, :cond_0

    #@83
    .line 119
    :try_start_3
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    #@85
    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    #@88
    .line 120
    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    #@8a
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    #@8d
    .line 121
    const/4 v5, 0x1

    #@8e
    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    #@90
    .line 122
    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    #@92
    const/4 v6, 0x0

    #@93
    const/16 v7, 0x8

    #@95
    invoke-static {v5, v4, v6, v7}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    .line 130
    .end local v0    # "cmd":I
    :cond_4
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    #@9b
    goto :goto_2
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "target"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    #@2
    .line 85
    return-void
.end method
