.class public final Landroid/media/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlaybackParams$AudioStretchMode;,
        Landroid/media/PlaybackParams$AudioFallbackMode;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final whitelist AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final whitelist AUDIO_FALLBACK_MODE_MUTE:I = 0x1

.field public static final greylist-max-o AUDIO_STRETCH_MODE_DEFAULT:I = 0x0

.field public static final greylist-max-o AUDIO_STRETCH_MODE_VOICE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/PlaybackParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-r SET_AUDIO_FALLBACK_MODE:I = 0x4

.field private static final greylist-max-r SET_AUDIO_STRETCH_MODE:I = 0x8

.field private static final greylist-max-r SET_PITCH:I = 0x2

.field private static final greylist-max-r SET_SPEED:I = 0x1


# instance fields
.field private greylist-max-r mAudioFallbackMode:I

.field private greylist-max-r mAudioStretchMode:I

.field private greylist-max-r mPitch:F

.field private greylist-max-p mSet:I

.field private greylist-max-p mSpeed:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Landroid/media/PlaybackParams$1;

    invoke-direct {v0}, Landroid/media/PlaybackParams$1;-><init>()V

    sput-object v0, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 102
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 104
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 108
    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 112
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 102
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 104
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 108
    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 119
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_31

    .line 120
    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 122
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/PlaybackParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist allowDefaults()Landroid/media/PlaybackParams;
    .registers 2

    .line 133
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 134
    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioFallbackMode()I
    .registers 3

    .line 154
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    .line 157
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    return v0

    .line 155
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio fallback mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAudioStretchMode()I
    .registers 3

    .line 181
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    .line 184
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    return v0

    .line 182
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio stretch mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPitch()F
    .registers 3

    .line 208
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 211
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    return v0

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pitch not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSpeed()F
    .registers 3

    .line 231
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 234
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return v0

    .line 232
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "speed not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioFallbackMode(I)Landroid/media/PlaybackParams;
    .registers 3
    .param p1, "audioFallbackMode"    # I

    .line 143
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    .line 144
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 145
    return-object p0
.end method

.method public blacklist setAudioStretchMode(I)Landroid/media/PlaybackParams;
    .registers 3
    .param p1, "audioStretchMode"    # I

    .line 168
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    .line 169
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 170
    return-object p0
.end method

.method public whitelist setPitch(F)Landroid/media/PlaybackParams;
    .registers 4
    .param p1, "pitch"    # F

    .line 194
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_e

    .line 197
    iput p1, p0, Landroid/media/PlaybackParams;->mPitch:F

    .line 198
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 199
    return-object p0

    .line 195
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pitch must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSpeed(F)Landroid/media/PlaybackParams;
    .registers 3
    .param p1, "speed"    # F

    .line 220
    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    .line 221
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    .line 222
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 258
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 262
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 263
    return-void
.end method
