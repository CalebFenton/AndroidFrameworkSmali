.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "DrmOutputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final greylist-max-o mClient:Landroid/drm/DrmManagerClient;

.field private final greylist-max-o mFd:Ljava/io/FileDescriptor;

.field private final greylist-max-o mPfd:Landroid/os/ParcelFileDescriptor;

.field private greylist-max-o mSessionId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/drm/DrmManagerClient;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 7
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 61
    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    .line 62
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 63
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    .line 65
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 66
    iget v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    if-eq v1, v0, :cond_1d

    .line 69
    return-void

    .line 67
    :cond_1d
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open DRM session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 89
    const-string v0, "DrmOutputStream"

    const-string v1, "Closing stream without finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_c
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 93
    return-void
.end method

.method public greylist-max-o finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    .line 73
    .local v0, "status":Landroid/drm/DrmConvertedStatus;
    iget v1, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 75
    :try_start_d
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget v2, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v2, v2

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_17} :catch_18

    .line 78
    goto :goto_1c

    .line 76
    :catch_18
    move-exception v1

    .line 77
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 79
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_1c
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object v2, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    iget-object v3, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 84
    return-void

    .line 82
    :cond_2b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected DRM status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api write(I)V
    .registers 2
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 118
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_a

    .line 101
    move-object v0, p1

    .local v0, "exactBuffer":[B
    goto :goto_f

    .line 103
    .end local v0    # "exactBuffer":[B
    :cond_a
    new-array v0, p3, [B

    .line 104
    .restart local v0    # "exactBuffer":[B
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :goto_f
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v2, v3, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v2

    .line 108
    .local v2, "status":Landroid/drm/DrmConvertedStatus;
    iget v3, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    .line 109
    iget-object v3, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object v4, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    iget-object v5, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length v5, v5

    invoke-static {v3, v4, v1, v5}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 113
    return-void

    .line 111
    :cond_27
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected DRM status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
