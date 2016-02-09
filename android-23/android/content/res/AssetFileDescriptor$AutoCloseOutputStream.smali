.class public Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseOutputStream"
.end annotation


# instance fields
.field private mRemaining:J


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@7
    .line 293
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    #@12
    move-result-wide v0

    #@13
    const-wide/16 v2, 0x0

    #@15
    cmp-long v0, v0, v2

    #@17
    if-gez v0, :cond_0

    #@19
    .line 294
    new-instance v0, Ljava/io/IOException;

    #@1b
    const-string/jumbo v1, "Unable to seek"

    #@1e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    #@25
    move-result-wide v0

    #@26
    long-to-int v0, v0

    #@27
    int-to-long v0, v0

    #@28
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@2a
    .line 291
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 328
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_1

    #@8
    .line 329
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_0

    #@e
    return-void

    #@f
    .line 330
    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    #@12
    .line 331
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@14
    const-wide/16 v2, 0x1

    #@16
    sub-long/2addr v0, v2

    #@17
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@19
    .line 332
    return-void

    #@1a
    .line 335
    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    #@1d
    .line 327
    return-void
.end method

.method public write([B)V
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 314
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@4
    cmp-long v1, v2, v4

    #@6
    if-ltz v1, :cond_2

    #@8
    .line 315
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@a
    cmp-long v1, v2, v4

    #@c
    if-nez v1, :cond_0

    #@e
    return-void

    #@f
    .line 316
    :cond_0
    array-length v0, p1

    #@10
    .line 317
    .local v0, "count":I
    int-to-long v2, v0

    #@11
    iget-wide v4, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@13
    cmp-long v1, v2, v4

    #@15
    if-lez v1, :cond_1

    #@17
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@19
    long-to-int v0, v2

    #@1a
    .line 318
    :cond_1
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    #@1d
    .line 319
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@1f
    int-to-long v4, v0

    #@20
    sub-long/2addr v2, v4

    #@21
    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@23
    .line 320
    return-void

    #@24
    .line 323
    .end local v0    # "count":I
    :cond_2
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    #@27
    .line 313
    return-void
.end method

.method public write([BII)V
    .locals 4
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
    const-wide/16 v2, 0x0

    #@2
    .line 301
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_2

    #@8
    .line 302
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@a
    cmp-long v0, v0, v2

    #@c
    if-nez v0, :cond_0

    #@e
    return-void

    #@f
    .line 303
    :cond_0
    int-to-long v0, p3

    #@10
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-lez v0, :cond_1

    #@16
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@18
    long-to-int p3, v0

    #@19
    .line 304
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    #@1c
    .line 305
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@1e
    int-to-long v2, p3

    #@1f
    sub-long/2addr v0, v2

    #@20
    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    #@22
    .line 306
    return-void

    #@23
    .line 309
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    #@26
    .line 300
    return-void
.end method
