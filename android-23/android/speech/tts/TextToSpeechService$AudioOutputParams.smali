.class Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioOutputParams"
.end annotation


# instance fields
.field public final mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mPan:F

.field public final mSessionId:I

.field public final mVolume:F


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 684
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    #@6
    .line 685
    const/high16 v0, 0x3f800000    # 1.0f

    #@8
    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    #@a
    .line 686
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    #@d
    .line 687
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@10
    .line 683
    return-void
.end method

.method constructor <init>(IFFLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "volume"    # F
    .param p3, "pan"    # F
    .param p4, "audioAttributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 692
    iput p1, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    #@5
    .line 693
    iput p2, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    #@7
    .line 694
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    #@9
    .line 695
    iput-object p4, p0, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@b
    .line 691
    return-void
.end method

.method static createFromV1ParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .locals 7
    .param p0, "paramsBundle"    # Landroid/os/Bundle;
    .param p1, "isSpeech"    # Z

    #@0
    .prologue
    .line 701
    if-nez p0, :cond_0

    #@2
    .line 702
    new-instance v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@4
    invoke-direct {v2}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>()V

    #@7
    return-object v2

    #@8
    .line 707
    :cond_0
    const-string/jumbo v2, "audioAttributes"

    #@b
    .line 706
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/media/AudioAttributes;

    #@11
    .line 708
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    if-nez v0, :cond_1

    #@13
    .line 710
    const-string/jumbo v2, "streamType"

    #@16
    const/4 v3, 0x3

    #@17
    .line 709
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1a
    move-result v1

    #@1b
    .line 711
    .local v1, "streamType":I
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    #@1d
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@20
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@23
    move-result-object v3

    #@24
    .line 713
    if-eqz p1, :cond_2

    #@26
    .line 714
    const/4 v2, 0x1

    #@27
    .line 711
    :goto_0
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@2e
    move-result-object v0

    #@2f
    .line 719
    .end local v1    # "streamType":I
    :cond_1
    new-instance v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@31
    .line 721
    const-string/jumbo v3, "sessionId"

    #@34
    .line 722
    const/4 v4, 0x0

    #@35
    .line 720
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@38
    move-result v3

    #@39
    .line 724
    const-string/jumbo v4, "volume"

    #@3c
    .line 725
    const/high16 v5, 0x3f800000    # 1.0f

    #@3e
    .line 723
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    #@41
    move-result v4

    #@42
    .line 727
    const-string/jumbo v5, "pan"

    #@45
    .line 728
    const/4 v6, 0x0

    #@46
    .line 726
    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    #@49
    move-result v5

    #@4a
    .line 719
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;-><init>(IFFLandroid/media/AudioAttributes;)V

    #@4d
    return-object v2

    #@4e
    .line 715
    .restart local v1    # "streamType":I
    :cond_2
    const/4 v2, 0x4

    #@4f
    goto :goto_0
.end method
