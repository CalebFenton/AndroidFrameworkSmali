.class public Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private blacklist mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 231
    :try_start_7
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_13} :catch_35

    .line 234
    .local v0, "ss":Landroid/system/StructStat;
    nop

    .line 235
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISSOCK(I)Z

    move-result v1

    if-nez v1, :cond_2d

    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISFIFO(I)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2d

    .line 238
    :cond_25
    new-instance v1, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/content/res/AssetFileDescriptor$SeekableAutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    goto :goto_34

    .line 236
    :cond_2d
    :goto_2d
    new-instance v1, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/content/res/AssetFileDescriptor$NonSeekableAutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    iput-object v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 240
    :goto_34
    return-void

    .line 232
    .end local v0    # "ss":Landroid/system/StructStat;
    :catch_35
    move-exception v0

    .line 233
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 291
    return-void
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 269
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    .line 270
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 274
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 280
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mDelegateInputStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
