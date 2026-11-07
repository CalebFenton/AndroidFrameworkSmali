.class public final Landroid/media/musicrecognition/RecognitionRequest$Builder;
.super Ljava/lang/Object;
.source "RecognitionRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/RecognitionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioAttributes:Landroid/media/AudioAttributes;

.field private blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mCaptureSession:I

.field private blacklist mIgnoreBeginningFrames:I

.field private blacklist mMaxAudioLengthSeconds:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioAttributes(Landroid/media/musicrecognition/RecognitionRequest$Builder;)Landroid/media/AudioAttributes;
    .registers 1

    iget-object p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioFormat(Landroid/media/musicrecognition/RecognitionRequest$Builder;)Landroid/media/AudioFormat;
    .registers 1

    iget-object p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSession(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mCaptureSession:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoreBeginningFrames(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mIgnoreBeginningFrames:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxAudioLengthSeconds(Landroid/media/musicrecognition/RecognitionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mMaxAudioLengthSeconds:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 85
    const/16 v1, 0x3e80

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 88
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 89
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mCaptureSession:I

    .line 92
    const/16 v0, 0x18

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mMaxAudioLengthSeconds:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mIgnoreBeginningFrames:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/musicrecognition/RecognitionRequest;
    .registers 3

    .line 136
    new-instance v0, Landroid/media/musicrecognition/RecognitionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/musicrecognition/RecognitionRequest;-><init>(Landroid/media/musicrecognition/RecognitionRequest$Builder;Landroid/media/musicrecognition/RecognitionRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 98
    iput-object p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 99
    return-object p0
.end method

.method public whitelist setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;

    .line 105
    iput-object p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 106
    return-object p0
.end method

.method public whitelist setCaptureSession(I)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2
    .param p1, "captureSession"    # I

    .line 112
    iput p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mCaptureSession:I

    .line 113
    return-object p0
.end method

.method public whitelist setIgnoreBeginningFrames(I)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2
    .param p1, "ignoreBeginningFrames"    # I

    .line 129
    iput p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mIgnoreBeginningFrames:I

    .line 130
    return-object p0
.end method

.method public whitelist setMaxAudioLengthSeconds(I)Landroid/media/musicrecognition/RecognitionRequest$Builder;
    .registers 2
    .param p1, "maxAudioLengthSeconds"    # I

    .line 119
    iput p1, p0, Landroid/media/musicrecognition/RecognitionRequest$Builder;->mMaxAudioLengthSeconds:I

    .line 120
    return-object p0
.end method
