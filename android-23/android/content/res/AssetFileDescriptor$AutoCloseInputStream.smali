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
.field private mRemaining:J


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@7
    .line 206
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@a
    move-result-wide v0

    #@b
    invoke-super {p0, v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    #@e
    .line 207
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@11
    move-result-wide v0

    #@12
    long-to-int v0, v0

    #@13
    int-to-long v0, v0

    #@14
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@16
    .line 204
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_1

    #@8
    .line 213
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@a
    const-wide/32 v2, 0x7fffffff

    #@d
    cmp-long v0, v0, v2

    #@f
    if-gez v0, :cond_0

    #@11
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@13
    long-to-int v0, v0

    #@14
    .line 212
    :goto_0
    return v0

    #@15
    .line 213
    :cond_0
    const v0, 0x7fffffff

    #@18
    goto :goto_0

    #@19
    .line 214
    :cond_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    #@1c
    move-result v0

    #@1d
    goto :goto_0
.end method

.method public mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    #@0
    .prologue
    .line 257
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 259
    return-void

    #@9
    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    #@c
    .line 256
    return-void
.end method

.method public markSupported()Z
    .locals 4

    #@0
    .prologue
    .line 266
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 267
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 269
    :cond_0
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 219
    new-array v0, v4, [B

    #@5
    .line 220
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v3, v4}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->read([BII)I

    #@8
    move-result v1

    #@9
    .line 221
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    #@b
    :goto_0
    return v2

    #@c
    :cond_0
    aget-byte v2, v0, v3

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
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
    const-wide/16 v4, 0x0

    #@2
    .line 226
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@4
    cmp-long v1, v2, v4

    #@6
    if-ltz v1, :cond_3

    #@8
    .line 227
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@a
    cmp-long v1, v2, v4

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v1, -0x1

    #@f
    return v1

    #@10
    .line 228
    :cond_0
    int-to-long v2, p3

    #@11
    iget-wide v4, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@13
    cmp-long v1, v2, v4

    #@15
    if-lez v1, :cond_1

    #@17
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@19
    long-to-int p3, v2

    #@1a
    .line 229
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    #@1d
    move-result v0

    #@1e
    .line 230
    .local v0, "res":I
    if-ltz v0, :cond_2

    #@20
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@22
    int-to-long v4, v0

    #@23
    sub-long/2addr v2, v4

    #@24
    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@26
    .line 231
    :cond_2
    return v0

    #@27
    .line 234
    .end local v0    # "res":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    #@2a
    move-result v1

    #@2b
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 274
    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-ltz v0, :cond_0

    #@9
    monitor-exit p0

    #@a
    .line 276
    return-void

    #@b
    .line 278
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 273
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 244
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@4
    cmp-long v2, v2, v4

    #@6
    if-ltz v2, :cond_3

    #@8
    .line 245
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@a
    cmp-long v2, v2, v4

    #@c
    if-nez v2, :cond_0

    #@e
    const-wide/16 v2, -0x1

    #@10
    return-wide v2

    #@11
    .line 246
    :cond_0
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@13
    cmp-long v2, p1, v2

    #@15
    if-lez v2, :cond_1

    #@17
    iget-wide p1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@19
    .line 247
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    #@1c
    move-result-wide v0

    #@1d
    .line 248
    .local v0, "res":J
    cmp-long v2, v0, v4

    #@1f
    if-ltz v2, :cond_2

    #@21
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@23
    sub-long/2addr v2, v0

    #@24
    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    #@26
    .line 249
    :cond_2
    return-wide v0

    #@27
    .line 252
    .end local v0    # "res":J
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    #@2a
    move-result-wide v2

    #@2b
    return-wide v2
.end method
