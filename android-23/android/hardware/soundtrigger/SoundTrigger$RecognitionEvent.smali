.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final captureAvailable:Z

.field public final captureDelayMs:I

.field public captureFormat:Landroid/media/AudioFormat;

.field public final capturePreambleMs:I

.field public final captureSession:I

.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I

.field public final triggerInData:Z


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 523
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;-><init>()V

    #@5
    .line 522
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 484
    return-void
.end method

.method public constructor <init>(IIZIIIZLandroid/media/AudioFormat;[B)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B

    #@0
    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 511
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    #@5
    .line 512
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    #@7
    .line 513
    iput-boolean p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    #@9
    .line 514
    iput p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    #@b
    .line 515
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    #@d
    .line 516
    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    #@f
    .line 517
    iput-boolean p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    #@11
    .line 518
    iput-object p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@13
    .line 519
    iput-object p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@15
    .line 510
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .locals 14
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    .line 534
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 535
    .local v1, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 536
    .local v2, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@c
    move-result v0

    #@d
    if-ne v0, v13, :cond_1

    #@f
    const/4 v3, 0x1

    #@10
    .line 537
    .local v3, "captureAvailable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v4

    #@14
    .line 538
    .local v4, "captureSession":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v5

    #@18
    .line 539
    .local v5, "captureDelayMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v6

    #@1c
    .line 540
    .local v6, "capturePreambleMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@1f
    move-result v0

    #@20
    if-ne v0, v13, :cond_2

    #@22
    const/4 v7, 0x1

    #@23
    .line 541
    .local v7, "triggerInData":Z
    :goto_1
    const/4 v8, 0x0

    #@24
    .line 542
    .local v8, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@27
    move-result v0

    #@28
    if-ne v0, v13, :cond_0

    #@2a
    .line 543
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v12

    #@2e
    .line 544
    .local v12, "sampleRate":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v11

    #@32
    .line 545
    .local v11, "encoding":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v10

    #@36
    .line 546
    .local v10, "channelMask":I
    new-instance v0, Landroid/media/AudioFormat$Builder;

    #@38
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@3b
    invoke-virtual {v0, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v11}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0, v12}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@4a
    move-result-object v8

    #@4b
    .line 552
    .end local v8    # "captureFormat":Landroid/media/AudioFormat;
    .end local v10    # "channelMask":I
    .end local v11    # "encoding":I
    .end local v12    # "sampleRate":I
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    #@4e
    move-result-object v9

    #@4f
    .line 553
    .local v9, "data":[B
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@51
    invoke-direct/range {v0 .. v9}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    #@54
    return-object v0

    #@55
    .line 536
    .end local v3    # "captureAvailable":Z
    .end local v4    # "captureSession":I
    .end local v5    # "captureDelayMs":I
    .end local v6    # "capturePreambleMs":I
    .end local v7    # "triggerInData":Z
    .end local v9    # "data":[B
    :cond_1
    const/4 v3, 0x0

    #@56
    .restart local v3    # "captureAvailable":Z
    goto :goto_0

    #@57
    .line 540
    .restart local v4    # "captureSession":I
    .restart local v5    # "captureDelayMs":I
    .restart local v6    # "capturePreambleMs":I
    :cond_2
    const/4 v7, 0x0

    #@58
    .restart local v7    # "triggerInData":Z
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 559
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 604
    if-ne p0, p1, :cond_0

    #@4
    .line 605
    return v4

    #@5
    .line 606
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 607
    return v3

    #@8
    .line 608
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 609
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 610
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@16
    .line 611
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    #@18
    iget-boolean v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 612
    return v3

    #@1d
    .line 613
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    #@1f
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 614
    return v3

    #@24
    .line 615
    :cond_4
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    #@26
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    #@28
    if-eq v1, v2, :cond_5

    #@2a
    .line 616
    return v3

    #@2b
    .line 617
    :cond_5
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    #@2d
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    #@2f
    if-eq v1, v2, :cond_6

    #@31
    .line 618
    return v3

    #@32
    .line 619
    :cond_6
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@34
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@36
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_7

    #@3c
    .line 620
    return v3

    #@3d
    .line 621
    :cond_7
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    #@3f
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    #@41
    if-eq v1, v2, :cond_8

    #@43
    .line 622
    return v3

    #@44
    .line 623
    :cond_8
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    #@46
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    #@48
    if-eq v1, v2, :cond_9

    #@4a
    .line 624
    return v3

    #@4b
    .line 625
    :cond_9
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    #@4d
    iget-boolean v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    #@4f
    if-eq v1, v2, :cond_a

    #@51
    .line 626
    return v3

    #@52
    .line 627
    :cond_a
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@54
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    #@57
    move-result v1

    #@58
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@5a
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    #@5d
    move-result v2

    #@5e
    if-eq v1, v2, :cond_b

    #@60
    .line 628
    return v3

    #@61
    .line 629
    :cond_b
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@63
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    #@66
    move-result v1

    #@67
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@69
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    #@6c
    move-result v2

    #@6d
    if-eq v1, v2, :cond_c

    #@6f
    .line 630
    return v3

    #@70
    .line 631
    :cond_c
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@72
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelMask()I

    #@75
    move-result v1

    #@76
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@78
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@7b
    move-result v2

    #@7c
    if-eq v1, v2, :cond_d

    #@7e
    .line 632
    return v3

    #@7f
    .line 633
    :cond_d
    return v4
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    const/16 v4, 0x4d5

    #@2
    const/16 v3, 0x4cf

    #@4
    .line 584
    const/16 v0, 0x1f

    #@6
    .line 586
    .local v0, "prime":I
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    #@8
    if-eqz v2, :cond_1

    #@a
    move v2, v3

    #@b
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@d
    .line 587
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@f
    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    #@11
    add-int v1, v2, v5

    #@13
    .line 588
    mul-int/lit8 v2, v1, 0x1f

    #@15
    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    #@17
    add-int v1, v2, v5

    #@19
    .line 589
    mul-int/lit8 v2, v1, 0x1f

    #@1b
    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    #@1d
    add-int v1, v2, v5

    #@1f
    .line 590
    mul-int/lit8 v2, v1, 0x1f

    #@21
    iget-boolean v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    #@23
    if-eqz v5, :cond_2

    #@25
    :goto_1
    add-int v1, v2, v3

    #@27
    .line 591
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 592
    mul-int/lit8 v2, v1, 0x1f

    #@2d
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@2f
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    #@32
    move-result v3

    #@33
    add-int v1, v2, v3

    #@35
    .line 593
    mul-int/lit8 v2, v1, 0x1f

    #@37
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@39
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    #@3c
    move-result v3

    #@3d
    add-int v1, v2, v3

    #@3f
    .line 594
    mul-int/lit8 v2, v1, 0x1f

    #@41
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@43
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    #@46
    move-result v3

    #@47
    add-int v1, v2, v3

    #@49
    .line 596
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    #@4b
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@4d
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    #@50
    move-result v3

    #@51
    add-int v1, v2, v3

    #@53
    .line 597
    mul-int/lit8 v2, v1, 0x1f

    #@55
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    #@57
    add-int v1, v2, v3

    #@59
    .line 598
    mul-int/lit8 v2, v1, 0x1f

    #@5b
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    #@5d
    add-int v1, v2, v3

    #@5f
    .line 599
    return v1

    #@60
    .end local v1    # "result":I
    :cond_1
    move v2, v4

    #@61
    .line 586
    goto :goto_0

    #@62
    .restart local v1    # "result":I
    :cond_2
    move v3, v4

    #@63
    .line 590
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RecognitionEvent [status="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", soundModelHandle="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 639
    const-string/jumbo v1, ", captureAvailable="

    #@22
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 639
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    #@28
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 639
    const-string/jumbo v1, ", captureSession="

    #@2f
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 640
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    #@35
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 640
    const-string/jumbo v1, ", captureDelayMs="

    #@3c
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 640
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    #@42
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 641
    const-string/jumbo v1, ", capturePreambleMs="

    #@49
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 641
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    #@4f
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 642
    const-string/jumbo v1, ", triggerInData="

    #@56
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 642
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    #@5c
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    .line 643
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@62
    if-nez v0, :cond_0

    #@64
    const-string/jumbo v0, ""

    #@67
    .line 638
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    .line 645
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@6d
    if-nez v0, :cond_1

    #@6f
    const-string/jumbo v0, ""

    #@72
    .line 638
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    .line 647
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@78
    if-nez v0, :cond_2

    #@7a
    const-string/jumbo v0, ""

    #@7d
    .line 638
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 649
    const-string/jumbo v1, ", data="

    #@84
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    .line 649
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@8a
    if-nez v0, :cond_3

    #@8c
    const/4 v0, 0x0

    #@8d
    .line 638
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 649
    const-string/jumbo v1, "]"

    #@94
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    return-object v0

    #@9d
    .line 644
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v2, ", sampleRate="

    #@a5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@ab
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    #@ae
    move-result v2

    #@af
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v0

    #@b7
    goto :goto_0

    #@b8
    .line 646
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v2, ", encoding="

    #@c0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@c6
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    #@c9
    move-result v2

    #@ca
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    goto :goto_1

    #@d3
    .line 648
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v2, ", channelMask="

    #@db
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@e1
    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    #@e4
    move-result v2

    #@e5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v0

    #@ed
    goto :goto_2

    #@ee
    .line 649
    :cond_3
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@f0
    array-length v0, v0

    #@f1
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 564
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 565
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 566
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    int-to-byte v0, v0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@15
    .line 567
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 568
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 569
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 570
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    move v0, v1

    #@29
    :goto_1
    int-to-byte v0, v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@2d
    .line 571
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@2f
    if-eqz v0, :cond_2

    #@31
    .line 572
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@34
    .line 573
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@36
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    #@39
    move-result v0

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 574
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@3f
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    #@42
    move-result v0

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 575
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    #@48
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 579
    :goto_2
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    #@51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    #@54
    .line 563
    return-void

    #@55
    :cond_0
    move v0, v2

    #@56
    .line 566
    goto :goto_0

    #@57
    :cond_1
    move v0, v2

    #@58
    .line 570
    goto :goto_1

    #@59
    .line 577
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@5c
    goto :goto_2
.end method
