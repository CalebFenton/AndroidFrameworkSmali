.class public Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$DataFormat;
    }
.end annotation


# static fields
.field public static final whitelist DATA_FORMAT_RAW:I = 0x0

.field public static final whitelist DATA_FORMAT_TRIGGER_AUDIO:I = 0x1


# instance fields
.field private final greylist-max-o mAudioFormat:Landroid/media/AudioFormat;

.field private final blacklist mAudioStream:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mCaptureAvailable:Z

.field private final greylist-max-o mCaptureSession:I

.field private final greylist-max-o mData:[B

.field private final blacklist mDataFormat:I

.field private final blacklist mHalEventReceivedMillis:J

.field private final blacklist mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

.field private final blacklist mIsRecognitionStopped:Z

.field private final blacklist mKephraseExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZ)V
    .registers 12
    .param p1, "captureAvailable"    # Z
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "captureSession"    # I
    .param p4, "dataFormat"    # I
    .param p5, "data"    # [B
    .param p6, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;
    .param p7, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p9, "halEventReceivedMillis"    # J
    .param p11, "isRecognitionStopped"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/media/AudioFormat;",
            "II[B",
            "Landroid/service/voice/HotwordDetectedResult;",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;JZ)V"
        }
    .end annotation

    .line 449
    .local p8, "keyphraseExtras":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-boolean p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureAvailable:Z

    .line 451
    iput p3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureSession:I

    .line 452
    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    .line 453
    iput p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mDataFormat:I

    .line 454
    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mData:[B

    .line 455
    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    .line 456
    iput-object p7, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    .line 457
    iput-object p8, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mKephraseExtras:Ljava/util/List;

    .line 458
    iput-wide p9, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHalEventReceivedMillis:J

    .line 459
    iput-boolean p11, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mIsRecognitionStopped:Z

    .line 460
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZLandroid/service/voice/AlwaysOnHotwordDetector-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;-><init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZ)V

    return-void
.end method


# virtual methods
.method public whitelist getAudioStream()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 572
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getCaptureAudioFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 468
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public greylist getCaptureSession()Ljava/lang/Integer;
    .registers 2

    .line 541
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureAvailable:Z

    if-eqz v0, :cond_b

    .line 542
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureSession:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 544
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mData:[B

    return-object v0
.end method

.method public whitelist getDataFormat()I
    .registers 2

    .line 498
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mDataFormat:I

    return v0
.end method

.method public whitelist getHalEventReceivedMillis()J
    .registers 3

    .line 599
    iget-wide v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHalEventReceivedMillis:J

    return-wide v0
.end method

.method public whitelist getHotwordDetectedResult()Landroid/service/voice/HotwordDetectedResult;
    .registers 2

    .line 554
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    return-object v0
.end method

.method public whitelist getKeyphraseRecognitionExtras()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mKephraseExtras:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTriggerAudio()[B
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mDataFormat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 484
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mData:[B

    return-object v0

    .line 486
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isRecognitionStopped()Z
    .registers 2

    .line 605
    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mIsRecognitionStopped:Z

    return v0
.end method
