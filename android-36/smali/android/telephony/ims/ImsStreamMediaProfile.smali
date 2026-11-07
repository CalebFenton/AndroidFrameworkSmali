.class public final Landroid/telephony/ims/ImsStreamMediaProfile;
.super Ljava/lang/Object;
.source "ImsStreamMediaProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist AUDIO_QUALITY_AMR:I = 0x1

.field public static final whitelist AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final whitelist AUDIO_QUALITY_EVRC:I = 0x4

.field public static final whitelist AUDIO_QUALITY_EVRC_B:I = 0x5

.field public static final whitelist AUDIO_QUALITY_EVRC_NW:I = 0x7

.field public static final whitelist AUDIO_QUALITY_EVRC_WB:I = 0x6

.field public static final whitelist AUDIO_QUALITY_EVS_FB:I = 0x14

.field public static final whitelist AUDIO_QUALITY_EVS_NB:I = 0x11

.field public static final whitelist AUDIO_QUALITY_EVS_SWB:I = 0x13

.field public static final whitelist AUDIO_QUALITY_EVS_WB:I = 0x12

.field public static final whitelist AUDIO_QUALITY_G711A:I = 0xd

.field public static final whitelist AUDIO_QUALITY_G711AB:I = 0xf

.field public static final whitelist AUDIO_QUALITY_G711U:I = 0xb

.field public static final whitelist AUDIO_QUALITY_G722:I = 0xe

.field public static final whitelist AUDIO_QUALITY_G723:I = 0xc

.field public static final whitelist AUDIO_QUALITY_G729:I = 0x10

.field public static final whitelist AUDIO_QUALITY_GSM_EFR:I = 0x8

.field public static final whitelist AUDIO_QUALITY_GSM_FR:I = 0x9

.field public static final whitelist AUDIO_QUALITY_GSM_HR:I = 0xa

.field public static final whitelist AUDIO_QUALITY_NONE:I = 0x0

.field public static final whitelist AUDIO_QUALITY_QCELP13K:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsStreamMediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIRECTION_INACTIVE:I = 0x0

.field public static final whitelist DIRECTION_INVALID:I = -0x1

.field public static final whitelist DIRECTION_RECEIVE:I = 0x1

.field public static final whitelist DIRECTION_SEND:I = 0x2

.field public static final whitelist DIRECTION_SEND_RECEIVE:I = 0x3

.field public static final whitelist RTT_MODE_DISABLED:I = 0x0

.field public static final whitelist RTT_MODE_FULL:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsStreamMediaProfile"

.field public static final whitelist VIDEO_QUALITY_NONE:I = 0x0

.field public static final whitelist VIDEO_QUALITY_QCIF:I = 0x1

.field public static final whitelist VIDEO_QUALITY_QVGA_LANDSCAPE:I = 0x2

.field public static final whitelist VIDEO_QUALITY_QVGA_PORTRAIT:I = 0x4

.field public static final whitelist VIDEO_QUALITY_VGA_LANDSCAPE:I = 0x8

.field public static final whitelist VIDEO_QUALITY_VGA_PORTRAIT:I = 0x10


# instance fields
.field private blacklist mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

.field public greylist-max-r mAudioDirection:I

.field public greylist-max-r mAudioQuality:I

.field public blacklist mIsReceivingRttAudio:Z

.field public greylist-max-o mRttMode:I

.field public greylist-max-r mVideoDirection:I

.field public greylist-max-o mVideoQuality:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 242
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    .line 174
    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 175
    const/4 v1, 0x3

    iput v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 176
    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 178
    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 179
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "rttMode"    # I

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    .line 192
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 193
    return-void
.end method

.method public constructor greylist-max-o <init>(IIII)V
    .registers 6
    .param p1, "audioQuality"    # I
    .param p2, "audioDirection"    # I
    .param p3, "videoQuality"    # I
    .param p4, "videoDirection"    # I

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    .line 184
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 185
    iput p2, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 186
    iput p3, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 187
    iput p4, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 7
    .param p1, "audioQuality"    # I
    .param p2, "audioDirection"    # I
    .param p3, "videoQuality"    # I
    .param p4, "videoDirection"    # I
    .param p5, "rttMode"    # I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    .line 164
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 165
    iput p2, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 166
    iput p3, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 167
    iput p4, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 168
    iput p5, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 169
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    .line 112
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 113
    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 235
    sget-object v0, Landroid/telephony/ims/AudioCodecAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/AudioCodecAttributes;

    iput-object v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    .line 240
    return-void
.end method


# virtual methods
.method public whitelist copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 196
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 197
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 198
    iget-object v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

    iput-object v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

    .line 199
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 200
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 201
    iget v0, p1, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    iput v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 202
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioCodecAttributes()Landroid/telephony/ims/AudioCodecAttributes;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

    return-object v0
.end method

.method public whitelist getAudioDirection()I
    .registers 2

    .line 283
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    return v0
.end method

.method public whitelist getAudioQuality()I
    .registers 2

    .line 279
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    return v0
.end method

.method public whitelist getRttMode()I
    .registers 2

    .line 312
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    return v0
.end method

.method public whitelist getVideoDirection()I
    .registers 2

    .line 308
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    return v0
.end method

.method public whitelist getVideoQuality()I
    .registers 2

    .line 304
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    return v0
.end method

.method public whitelist isReceivingRttAudio()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    return v0
.end method

.method public whitelist isRttCall()Z
    .registers 3

    .line 260
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist setAudioCodecAttributes(Landroid/telephony/ims/AudioCodecAttributes;)V
    .registers 2
    .param p1, "audioCodecAttributes"    # Landroid/telephony/ims/AudioCodecAttributes;

    .line 300
    iput-object p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

    .line 301
    return-void
.end method

.method public whitelist setReceivingRttAudio(Z)V
    .registers 2
    .param p1, "audioOn"    # Z

    .line 275
    iput-boolean p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    .line 276
    return-void
.end method

.method public whitelist setRttMode(I)V
    .registers 2
    .param p1, "rttMode"    # I

    .line 267
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 268
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ audioQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCodecAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rttMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasRttAudioSpeech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 223
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioCodecAttributes:Landroid/telephony/ims/AudioCodecAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 226
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-boolean v0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mIsReceivingRttAudio:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    return-void
.end method
