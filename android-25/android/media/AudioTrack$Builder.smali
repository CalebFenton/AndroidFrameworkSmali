.class public Landroid/media/AudioTrack$Builder;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mBufferSizeInBytes:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mMode:I

.field private mSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 638
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    #@6
    .line 639
    const/4 v0, 0x1

    #@7
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@9
    .line 644
    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioTrack;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 752
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 753
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    #@7
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@a
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@14
    .line 757
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@16
    if-nez v1, :cond_1

    #@18
    .line 758
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@1a
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@1d
    .line 759
    const/16 v2, 0xc

    #@1f
    .line 758
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@2d
    .line 768
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@2f
    if-ne v1, v3, :cond_2

    #@31
    iget v1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@33
    if-nez v1, :cond_2

    #@35
    .line 769
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@37
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelCount()I

    #@3a
    move-result v1

    #@3b
    .line 770
    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@3d
    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@3f
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    #@42
    move-result v2

    #@43
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@46
    move-result v2

    #@47
    .line 769
    mul-int/2addr v1, v2

    #@48
    iput v1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@4a
    .line 772
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    #@4c
    .line 773
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@4e
    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@50
    iget v3, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@52
    iget v4, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@54
    iget v5, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    #@56
    .line 772
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    #@59
    .line 774
    .local v0, "track":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_3

    #@5f
    .line 776
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@61
    const-string/jumbo v2, "Cannot create AudioTrack"

    #@64
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@67
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    .line 779
    .end local v0    # "track":Landroid/media/AudioTrack;
    :catch_0
    move-exception v6

    #@69
    .line 780
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@6b
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@72
    throw v1

    #@73
    .line 778
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "track":Landroid/media/AudioTrack;
    :cond_3
    return-object v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 656
    if-nez p1, :cond_0

    #@2
    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioAttributes argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 660
    :cond_0
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@d
    .line 661
    return-object p0
.end method

.method public setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 674
    if-nez p1, :cond_0

    #@2
    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioFormat argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 678
    :cond_0
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@d
    .line 679
    return-object p0
.end method

.method public setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 698
    if-gtz p1, :cond_0

    #@2
    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Invalid buffer size "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 701
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@1e
    .line 702
    return-object p0
.end method

.method public setSessionId(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 736
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-ge p1, v0, :cond_0

    #@5
    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Invalid audio session ID "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 739
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    #@21
    .line 740
    return-object p0
.end method

.method public setTransferMode(I)Landroid/media/AudioTrack$Builder;
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    packed-switch p1, :pswitch_data_0

    #@3
    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid transfer mode "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 717
    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@1f
    .line 722
    return-object p0

    #@20
    .line 714
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
