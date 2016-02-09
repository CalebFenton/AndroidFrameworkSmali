.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "DrmOutputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final mClient:Landroid/drm/DrmManagerClient;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 56
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    .line 51
    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    #@6
    .line 58
    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    #@8
    .line 59
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    #@a
    .line 60
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    #@10
    .line 62
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    #@12
    invoke-virtual {v0, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    #@18
    .line 63
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    #@1a
    if-ne v0, v1, :cond_0

    #@1c
    .line 64
    new-instance v0, Ljava/net/UnknownServiceException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Failed to open DRM session for "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 86
    const-string/jumbo v0, "DrmOutputStream"

    #@8
    const-string/jumbo v1, "Closing stream without finishing"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 89
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    #@10
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    #@13
    .line 84
    return-void
.end method

.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    #@2
    iget v3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    #@4
    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    #@7
    move-result-object v1

    #@8
    .line 70
    .local v1, "status":Landroid/drm/DrmConvertedStatus;
    iget v2, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    #@a
    const/4 v3, 0x1

    #@b
    if-ne v2, v3, :cond_0

    #@d
    .line 72
    :try_start_0
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    #@f
    iget v3, v1, Landroid/drm/DrmConvertedStatus;->offset:I

    #@11
    int-to-long v4, v3

    #@12
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    #@14
    invoke-static {v2, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 76
    :goto_0
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    #@19
    iget-object v3, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@1b
    iget-object v4, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@1d
    array-length v4, v4

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-static {v2, v3, v5, v4}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@22
    .line 77
    const/4 v2, -0x1

    #@23
    iput v2, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    #@25
    .line 68
    return-void

    #@26
    .line 73
    :catch_0
    move-exception v0

    #@27
    .line 74
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2a
    goto :goto_0

    #@2b
    .line 79
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Unexpected DRM status: "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    iget v4, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@46
    throw v2
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    #@3
    .line 113
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 94
    array-length v2, p1

    #@2
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 97
    array-length v2, p1

    #@6
    if-ne p3, v2, :cond_0

    #@8
    .line 98
    move-object v0, p1

    #@9
    .line 104
    .local v0, "exactBuffer":[B
    :goto_0
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    #@b
    iget v3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    #@d
    invoke-virtual {v2, v3, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    #@10
    move-result-object v1

    #@11
    .line 105
    .local v1, "status":Landroid/drm/DrmConvertedStatus;
    iget v2, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    #@13
    const/4 v3, 0x1

    #@14
    if-ne v2, v3, :cond_1

    #@16
    .line 106
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    #@18
    iget-object v3, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@1a
    iget-object v4, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@1c
    array-length v4, v4

    #@1d
    invoke-static {v2, v3, v5, v4}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@20
    .line 93
    return-void

    #@21
    .line 100
    .end local v0    # "exactBuffer":[B
    .end local v1    # "status":Landroid/drm/DrmConvertedStatus;
    :cond_0
    new-array v0, p3, [B

    #@23
    .line 101
    .restart local v0    # "exactBuffer":[B
    invoke-static {p1, p2, v0, v5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26
    goto :goto_0

    #@27
    .line 108
    .restart local v1    # "status":Landroid/drm/DrmConvertedStatus;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "Unexpected DRM status: "

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    iget v4, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2
.end method
