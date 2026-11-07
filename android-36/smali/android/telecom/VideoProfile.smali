.class public Landroid/telecom/VideoProfile;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoProfile$CameraCapabilities;,
        Landroid/telecom/VideoProfile$VideoState;,
        Landroid/telecom/VideoProfile$VideoQuality;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/VideoProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist QUALITY_DEFAULT:I = 0x4

.field public static final whitelist QUALITY_HIGH:I = 0x1

.field public static final whitelist QUALITY_LOW:I = 0x3

.field public static final whitelist QUALITY_MEDIUM:I = 0x2

.field public static final greylist-max-o QUALITY_UNKNOWN:I = 0x0

.field public static final whitelist STATE_AUDIO_ONLY:I = 0x0

.field public static final whitelist STATE_BIDIRECTIONAL:I = 0x3

.field public static final whitelist STATE_PAUSED:I = 0x4

.field public static final whitelist STATE_RX_ENABLED:I = 0x2

.field public static final whitelist STATE_TX_ENABLED:I = 0x1


# instance fields
.field private final greylist-max-o mQuality:I

.field private final greylist-max-o mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/telecom/VideoProfile$1;

    invoke-direct {v0}, Landroid/telecom/VideoProfile$1;-><init>()V

    sput-object v0, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "videoState"    # I

    .line 132
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 133
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "videoState"    # I
    .param p2, "quality"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    .line 143
    iput p2, p0, Landroid/telecom/VideoProfile;->mQuality:I

    .line 144
    return-void
.end method

.method private static greylist-max-o hasState(II)Z
    .registers 3
    .param p0, "videoState"    # I
    .param p1, "state"    # I

    .line 334
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist isAudioOnly(I)Z
    .registers 3
    .param p0, "videoState"    # I

    .line 270
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_f

    .line 271
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 270
    :goto_10
    return v0
.end method

.method public static whitelist isBidirectional(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .line 313
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist isPaused(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .line 323
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist isReceptionEnabled(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .line 303
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist isTransmissionEnabled(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .line 293
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v0

    return v0
.end method

.method public static whitelist isVideo(I)Z
    .registers 3
    .param p0, "videoState"    # I

    .line 281
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_18

    .line 282
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-nez v1, :cond_18

    .line 283
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/telecom/VideoProfile;->hasState(II)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    nop

    .line 281
    :goto_19
    return v0
.end method

.method public static whitelist videoStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "videoState"    # I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    if-nez p0, :cond_12

    .line 242
    const-string v1, " Only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 244
    :cond_12
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 245
    const-string v1, " Tx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1d
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 249
    const-string v1, " Rx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_28
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 253
    const-string v1, " Pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_33
    :goto_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getQuality()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    return v0
.end method

.method public whitelist getVideoState()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[VideoProfile videoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, " videoQuality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/telecom/VideoProfile;->mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 216
    iget v0, p0, Landroid/telecom/VideoProfile;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Landroid/telecom/VideoProfile;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    return-void
.end method
