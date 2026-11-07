.class public Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPayload"
.end annotation


# instance fields
.field private final greylist-max-o mAudioFormat:Landroid/media/AudioFormat;

.field private final greylist-max-o mCaptureAvailable:Z

.field private final greylist-max-o mCaptureSession:I

.field private final greylist-max-o mData:[B

.field private final greylist-max-o mTriggerAvailable:Z


# direct methods
.method private constructor greylist-max-o <init>(ZZLandroid/media/AudioFormat;I[B)V
    .registers 6
    .param p1, "triggerAvailable"    # Z
    .param p2, "captureAvailable"    # Z
    .param p3, "audioFormat"    # Landroid/media/AudioFormat;
    .param p4, "captureSession"    # I
    .param p5, "data"    # [B

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-boolean p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    .line 166
    iput-boolean p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureAvailable:Z

    .line 167
    iput p4, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureSession:I

    .line 168
    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    .line 169
    iput-object p5, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    .line 170
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/media/AudioFormat;I[BLandroid/media/soundtrigger/SoundTriggerDetector-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[B)V

    return-void
.end method


# virtual methods
.method public whitelist getCaptureAudioFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 178
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public greylist-max-r getCaptureSession()Ljava/lang/Integer;
    .registers 2

    .line 238
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureAvailable:Z

    if-eqz v0, :cond_b

    .line 239
    iget v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureSession:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 241
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-r getData()[B
    .registers 2

    .line 210
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    if-nez v0, :cond_7

    .line 211
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    return-object v0

    .line 213
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTriggerAudio()[B
    .registers 2

    .line 191
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    if-eqz v0, :cond_7

    .line 192
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    return-object v0

    .line 194
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method
