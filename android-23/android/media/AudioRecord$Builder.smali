.class public Landroid/media/AudioRecord$Builder;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mBufferSizeInBytes:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 428
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    #@6
    .line 433
    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    .line 537
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@6
    if-nez v2, :cond_3

    #@8
    .line 538
    new-instance v2, Landroid/media/AudioFormat$Builder;

    #@a
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@d
    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@1b
    .line 555
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 556
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    #@21
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@24
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@2e
    .line 564
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    #@30
    if-nez v2, :cond_2

    #@32
    .line 565
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@34
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelCount()I

    #@37
    move-result v2

    #@38
    .line 566
    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@3a
    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@3c
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    #@3f
    move-result v3

    #@40
    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@43
    move-result v3

    #@44
    .line 565
    mul-int/2addr v2, v3

    #@45
    iput v2, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    #@47
    .line 568
    :cond_2
    new-instance v1, Landroid/media/AudioRecord;

    #@49
    .line 569
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@4b
    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@4d
    iget v4, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    #@4f
    iget v5, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    #@51
    .line 568
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    #@54
    .line 570
    .local v1, "record":Landroid/media/AudioRecord;
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    #@57
    move-result v2

    #@58
    if-nez v2, :cond_5

    #@5a
    .line 572
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@5c
    const-string/jumbo v3, "Cannot create AudioRecord"

    #@5f
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@62
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    .line 575
    .end local v1    # "record":Landroid/media/AudioRecord;
    :catch_0
    move-exception v0

    #@64
    .line 576
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@66
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v2

    #@6e
    .line 543
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@70
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    #@73
    move-result v2

    #@74
    if-nez v2, :cond_4

    #@76
    .line 544
    new-instance v2, Landroid/media/AudioFormat$Builder;

    #@78
    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@7a
    invoke-direct {v2, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    #@7d
    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@84
    move-result-object v2

    #@85
    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@87
    .line 548
    :cond_4
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@89
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@8c
    move-result v2

    #@8d
    if-nez v2, :cond_0

    #@8f
    .line 549
    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@91
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    #@94
    move-result v2

    #@95
    if-nez v2, :cond_0

    #@97
    .line 550
    new-instance v2, Landroid/media/AudioFormat$Builder;

    #@99
    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@9b
    invoke-direct {v2, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    #@9e
    invoke-virtual {v2, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@a5
    move-result-object v2

    #@a6
    iput-object v2, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@a8
    goto/16 :goto_0

    #@aa
    .line 574
    .restart local v1    # "record":Landroid/media/AudioRecord;
    :cond_5
    return-object v1
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 464
    if-nez p1, :cond_0

    #@2
    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioAttributes argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    #@e
    move-result v0

    #@f
    const/4 v1, -0x1

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    .line 469
    const-string/jumbo v1, "No valid capture preset in AudioAttributes argument"

    #@17
    .line 468
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 472
    :cond_1
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@1d
    .line 473
    return-object p0
.end method

.method public setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 483
    if-nez p1, :cond_0

    #@2
    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioFormat argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 487
    :cond_0
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    #@d
    .line 488
    return-object p0
.end method

.method public setAudioSource(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    if-ltz p1, :cond_0

    #@2
    .line 444
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid audio source "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 447
    :cond_1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@24
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@27
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    #@31
    .line 450
    return-object p0
.end method

.method public setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 504
    if-gtz p1, :cond_0

    #@2
    .line 505
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
    .line 507
    :cond_0
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    #@1e
    .line 508
    return-object p0
.end method

.method public setSessionId(I)Landroid/media/AudioRecord$Builder;
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 522
    if-gez p1, :cond_0

    #@2
    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Invalid session ID "

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
    .line 525
    :cond_0
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    #@1e
    .line 526
    return-object p0
.end method
