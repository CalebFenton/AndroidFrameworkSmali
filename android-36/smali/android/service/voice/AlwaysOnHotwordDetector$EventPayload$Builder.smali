.class public final Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mAudioStream:Landroid/os/ParcelFileDescriptor;

.field private blacklist mCaptureAvailable:Z

.field private blacklist mCaptureSession:I

.field private blacklist mData:[B

.field private blacklist mDataFormat:I

.field private blacklist mHalEventReceivedMillis:J

.field private blacklist mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

.field private blacklist mIsRecognitionStopped:Z

.field private blacklist mKeyphraseExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    .line 616
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    .line 617
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 618
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    .line 620
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    .line 621
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    .line 622
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    .line 623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    .line 624
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    .line 629
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 5
    .param p1, "keyphraseRecognitionEvent"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    .line 616
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    .line 617
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 618
    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    .line 620
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    .line 621
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    .line 622
    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    .line 623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    .line 624
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    .line 627
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    .line 632
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->isCaptureAvailable()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAvailable(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 633
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureSession()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureSession(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 634
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 635
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 637
    :cond_3c
    iget-boolean v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    if-eqz v2, :cond_42

    move v0, v1

    goto :goto_43

    .line 638
    :cond_42
    nop

    .line 637
    :goto_43
    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setDataFormat(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 639
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_53

    .line 640
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setData([B)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 642
    :cond_53
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    if-eqz v0, :cond_60

    .line 643
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 644
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 643
    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setKeyphraseRecognitionExtras(Ljava/util/List;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 646
    :cond_60
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getHalEventReceivedMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHalEventReceivedMillis(J)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    .line 647
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
    .registers 14

    .line 778
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    iget v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    iget-object v5, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    iget-object v6, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    iget-object v7, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    iget-object v8, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    iget-wide v9, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    iget-boolean v11, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;-><init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZLandroid/service/voice/AlwaysOnHotwordDetector-IA;)V

    return-object v0
.end method

.method public blacklist setAudioStream(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;

    .line 734
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    .line 735
    return-object p0
.end method

.method public blacklist setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;

    .line 675
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 676
    return-object p0
.end method

.method public blacklist setCaptureAvailable(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "captureAvailable"    # Z

    .line 656
    iput-boolean p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    .line 657
    return-object p0
.end method

.method public blacklist setCaptureSession(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "captureSession"    # I

    .line 666
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    .line 667
    return-object p0
.end method

.method public blacklist setData([B)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "data"    # [B

    .line 707
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    .line 708
    return-object p0
.end method

.method public blacklist setDataFormat(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "dataFormat"    # I

    .line 687
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    .line 688
    return-object p0
.end method

.method public blacklist setHalEventReceivedMillis(J)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 3
    .param p1, "halEventReceivedMillis"    # J

    .line 759
    iput-wide p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    .line 760
    return-object p0
.end method

.method public blacklist setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;

    .line 718
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    .line 719
    return-object p0
.end method

.method public blacklist setIsRecognitionStopped(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .param p1, "isRecognitionStopped"    # Z

    .line 769
    iput-boolean p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    .line 770
    return-object p0
.end method

.method public blacklist setKeyphraseRecognitionExtras(Ljava/util/List;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)",
            "Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;"
        }
    .end annotation

    .line 745
    .local p1, "keyphraseRecognitionExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    .line 746
    return-object p0
.end method
