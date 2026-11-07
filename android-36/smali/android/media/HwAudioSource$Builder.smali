.class public final Landroid/media/HwAudioSource$Builder;
.super Ljava/lang/Object;
.source "HwAudioSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwAudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioAttributes:Landroid/media/AudioAttributes;

.field private blacklist mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/HwAudioSource;
    .registers 5

    .line 264
    iget-object v0, p0, Landroid/media/HwAudioSource$Builder;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_19

    .line 266
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 270
    :cond_19
    new-instance v0, Landroid/media/HwAudioSource;

    iget-object v1, p0, Landroid/media/HwAudioSource$Builder;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    iget-object v2, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/HwAudioSource;-><init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;Landroid/media/HwAudioSource-IA;)V

    return-object v0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/HwAudioSource$Builder;
    .registers 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 240
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iput-object p1, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 242
    return-object p0
.end method

.method public whitelist setAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/HwAudioSource$Builder;
    .registers 3
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 252
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 254
    iput-object p1, p0, Landroid/media/HwAudioSource$Builder;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 255
    return-object p0
.end method
