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
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 554
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    #@6
    .line 555
    const/4 v0, 0x1

    #@7
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@9
    .line 560
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
    .line 669
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 670
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
    .line 674
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@16
    if-nez v1, :cond_1

    #@18
    .line 675
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@1a
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@1d
    .line 676
    const/16 v2, 0xc

    #@1f
    .line 675
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@22
    move-result-object v1

    #@23
    .line 677
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    #@26
    move-result v2

    #@27
    .line 675
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@35
    .line 685
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@37
    if-ne v1, v3, :cond_2

    #@39
    iget v1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@3b
    if-nez v1, :cond_2

    #@3d
    .line 686
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@3f
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelCount()I

    #@42
    move-result v1

    #@43
    .line 687
    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@45
    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@47
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    #@4a
    move-result v2

    #@4b
    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@4e
    move-result v2

    #@4f
    .line 686
    mul-int/2addr v1, v2

    #@50
    iput v1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@52
    .line 689
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    #@54
    .line 690
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@56
    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@58
    iget v3, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@5a
    iget v4, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@5c
    iget v5, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    #@5e
    .line 689
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    #@61
    .line 691
    .local v0, "track":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    #@64
    move-result v1

    #@65
    if-nez v1, :cond_3

    #@67
    .line 693
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@69
    const-string/jumbo v2, "Cannot create AudioTrack"

    #@6c
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 696
    .end local v0    # "track":Landroid/media/AudioTrack;
    :catch_0
    move-exception v6

    #@71
    .line 697
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@73
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v1

    #@7b
    .line 695
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
    .line 572
    if-nez p1, :cond_0

    #@2
    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioAttributes argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 576
    :cond_0
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@d
    .line 577
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
    .line 590
    if-nez p1, :cond_0

    #@2
    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioFormat argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 594
    :cond_0
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    #@d
    .line 595
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
    .line 615
    if-gtz p1, :cond_0

    #@2
    .line 616
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
    .line 618
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    #@1e
    .line 619
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
    .line 653
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-ge p1, v0, :cond_0

    #@5
    .line 654
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
    .line 656
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    #@21
    .line 657
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
    .line 631
    packed-switch p1, :pswitch_data_0

    #@3
    .line 637
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
    .line 634
    :pswitch_0
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    #@1f
    .line 639
    return-object p0

    #@20
    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
