.class public Landroid/telecom/VideoProfile;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoProfile$1;,
        Landroid/telecom/VideoProfile$CameraCapabilities;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/VideoProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_DEFAULT:I = 0x4

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_LOW:I = 0x3

.field public static final QUALITY_MEDIUM:I = 0x2

.field public static final QUALITY_UNKNOWN:I = 0x0

.field public static final STATE_AUDIO_ONLY:I = 0x0

.field public static final STATE_BIDIRECTIONAL:I = 0x3

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_RX_ENABLED:I = 0x2

.field public static final STATE_TX_ENABLED:I = 0x1


# instance fields
.field private final mQuality:I

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 170
    new-instance v0, Landroid/telecom/VideoProfile$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/VideoProfile$1;-><init>()V

    #@5
    .line 169
    sput-object v0, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 129
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    #@4
    .line 128
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "videoState"    # I
    .param p2, "quality"    # I

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 139
    iput p1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    #@5
    .line 140
    iput p2, p0, Landroid/telecom/VideoProfile;->mQuality:I

    #@7
    .line 138
    return-void
.end method

.method private static hasState(II)Z
    .locals 1
    .param p0, "videoState"    # I
    .param p1, "state"    # I

    #@0
    .prologue
    .line 328
    and-int v0, p0, p1

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static isAudioOnly(I)Z
    .locals 3
    .param p0, "videoState"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 264
    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 265
    const/4 v2, 0x2

    #@9
    invoke-static {p0, v2}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 264
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    move v0, v1

    #@11
    .line 265
    goto :goto_0
.end method

.method public static isBidirectional(I)Z
    .locals 1
    .param p0, "videoState"    # I

    #@0
    .prologue
    .line 307
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isPaused(I)Z
    .locals 1
    .param p0, "videoState"    # I

    #@0
    .prologue
    .line 317
    const/4 v0, 0x4

    #@1
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isReceptionEnabled(I)Z
    .locals 1
    .param p0, "videoState"    # I

    #@0
    .prologue
    .line 297
    const/4 v0, 0x2

    #@1
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isTransmissionEnabled(I)Z
    .locals 1
    .param p0, "videoState"    # I

    #@0
    .prologue
    .line 287
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isVideo(I)Z
    .locals 2
    .param p0, "videoState"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 275
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 276
    const/4 v1, 0x2

    #@8
    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@b
    move-result v1

    #@c
    .line 275
    if-nez v1, :cond_0

    #@e
    .line 277
    const/4 v0, 0x3

    #@f
    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    #@12
    move-result v0

    #@13
    .line 275
    :cond_0
    return v0
.end method

.method public static videoStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "videoState"    # I

    #@0
    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 236
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Audio"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 238
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 239
    const-string/jumbo v1, " Only"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 254
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 241
    :cond_1
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 242
    const-string/jumbo v1, " Tx"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 245
    :cond_2
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_3

    #@2e
    .line 246
    const-string/jumbo v1, " Rx"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 249
    :cond_3
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 250
    const-string/jumbo v1, " Pause"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getQuality()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    #@2
    return v0
.end method

.method public getVideoState()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 220
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[VideoProfile videoState = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 221
    iget v1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    #@d
    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 222
    const-string/jumbo v1, " videoQuality = "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 223
    iget v1, p0, Landroid/telecom/VideoProfile;->mQuality:I

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 224
    const-string/jumbo v1, "]"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 213
    iget v0, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 214
    iget v0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 212
    return-void
.end method
