.class public final Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioCapabilities:I

.field private blacklist mCaptureRequested:Z

.field private blacklist mData:[B

.field private blacklist mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

.field private blacklist mMultipleTriggersAllowed:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1714
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .registers 8

    .line 1780
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mCaptureRequested:Z

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mMultipleTriggersAllowed:Z

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mData:[B

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mAudioCapabilities:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BILandroid/hardware/soundtrigger/SoundTrigger-IA;)V

    .line 1786
    .local v0, "config":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    return-object v0
.end method

.method public blacklist setAudioCapabilities(I)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .registers 2
    .param p1, "audioCapabilities"    # I

    .line 1770
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mAudioCapabilities:I

    .line 1771
    return-object p0
.end method

.method public blacklist setCaptureRequested(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .registers 2
    .param p1, "captureRequested"    # Z

    .line 1722
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mCaptureRequested:Z

    .line 1723
    return-object p0
.end method

.method public blacklist setData([B)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .registers 3
    .param p1, "data"    # [B

    .line 1757
    const-string v0, "Data must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mData:[B

    .line 1758
    return-object p0
.end method

.method public blacklist setKeyphrases(Ljava/util/Collection;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;"
        }
    .end annotation

    .line 1745
    .local p1, "keyphrases":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mKeyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1746
    return-object p0
.end method

.method public blacklist setMultipleTriggersAllowed(Z)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;
    .registers 2
    .param p1, "multipleTriggersAllowed"    # Z

    .line 1733
    iput-boolean p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig$Builder;->mMultipleTriggersAllowed:Z

    .line 1734
    return-object p0
.end method
