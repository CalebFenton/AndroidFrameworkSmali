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
.field private greylist-max-o mRemaining:J


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 665
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_22

    .line 668
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 669
    return-void

    .line 666
    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    .line 701
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    return-void

    .line 702
    :cond_f
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    .line 703
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 704
    return-void

    .line 707
    :cond_1a
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write(I)V

    .line 708
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 7
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 687
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    return-void

    .line 688
    :cond_f
    array-length v0, p1

    .line 689
    .local v0, "count":I
    int-to-long v1, v0

    iget-wide v3, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1a

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    long-to-int v0, v1

    .line 690
    :cond_1a
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    .line 691
    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 692
    return-void

    .line 695
    .end local v0    # "count":I
    :cond_24
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    .line 696
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    .line 674
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    return-void

    .line 675
    :cond_f
    int-to-long v0, p3

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    long-to-int p3, v0

    .line 676
    :cond_19
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    .line 677
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->mRemaining:J

    .line 678
    return-void

    .line 681
    :cond_23
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([BII)V

    .line 682
    return-void
.end method
