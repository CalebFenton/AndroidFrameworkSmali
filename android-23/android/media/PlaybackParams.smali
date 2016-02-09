.class public final Landroid/media/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlaybackParams$1;
    }
.end annotation


# static fields
.field public static final AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final AUDIO_FALLBACK_MODE_MUTE:I = 0x1

.field public static final AUDIO_STRETCH_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_STRETCH_MODE_VOICE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/PlaybackParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_AUDIO_FALLBACK_MODE:I = 0x4

.field private static final SET_AUDIO_STRETCH_MODE:I = 0x8

.field private static final SET_PITCH:I = 0x2

.field private static final SET_SPEED:I = 0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mAudioStretchMode:I

.field private mPitch:F

.field private mSet:I

.field private mSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 224
    new-instance v0, Landroid/media/PlaybackParams$1;

    #@2
    invoke-direct {v0}, Landroid/media/PlaybackParams$1;-><init>()V

    #@5
    .line 223
    sput-object v0, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    const/4 v0, 0x0

    #@3
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 91
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@8
    .line 94
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    #@a
    .line 95
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    #@c
    .line 96
    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@e
    .line 97
    iput v1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    #@10
    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v0, 0x0

    #@4
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 91
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@9
    .line 94
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    #@b
    .line 95
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    #@d
    .line 96
    iput v2, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@f
    .line 97
    iput v2, p0, Landroid/media/PlaybackParams;->mSpeed:F

    #@11
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@17
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    #@1d
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    #@23
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@29
    .line 107
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@2b
    cmpg-float v0, v0, v1

    #@2d
    if-gez v0, :cond_0

    #@2f
    .line 108
    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@31
    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    #@37
    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/PlaybackParams;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/PlaybackParams;
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@2
    or-int/lit8 v0, v0, 0xf

    #@4
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@6
    .line 122
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAudioFallbackMode()I
    .locals 2

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-nez v0, :cond_0

    #@6
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "audio fallback mode not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 145
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    #@11
    return v0
.end method

.method public getAudioStretchMode()I
    .locals 2

    #@0
    .prologue
    .line 167
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    if-nez v0, :cond_0

    #@6
    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "audio stretch mode not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 170
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    #@11
    return v0
.end method

.method public getPitch()F
    .locals 2

    #@0
    .prologue
    .line 194
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-nez v0, :cond_0

    #@6
    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "pitch not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 197
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@11
    return v0
.end method

.method public getSpeed()F
    .locals 2

    #@0
    .prologue
    .line 217
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "speed not set"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 220
    :cond_0
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    #@11
    return v0
.end method

.method public setAudioFallbackMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioFallbackMode"    # I

    #@0
    .prologue
    .line 131
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    #@2
    .line 132
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@4
    or-int/lit8 v0, v0, 0x4

    #@6
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@8
    .line 133
    return-object p0
.end method

.method public setAudioStretchMode(I)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "audioStretchMode"    # I

    #@0
    .prologue
    .line 155
    iput p1, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    #@2
    .line 156
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@4
    or-int/lit8 v0, v0, 0x8

    #@6
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@8
    .line 157
    return-object p0
.end method

.method public setPitch(F)Landroid/media/PlaybackParams;
    .locals 2
    .param p1, "pitch"    # F

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p1, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "pitch must not be negative"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 183
    :cond_0
    iput p1, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@10
    .line 184
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@12
    or-int/lit8 v0, v0, 0x2

    #@14
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@16
    .line 185
    return-object p0
.end method

.method public setSpeed(F)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "speed"    # F

    #@0
    .prologue
    .line 206
    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    #@2
    .line 207
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@8
    .line 208
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 245
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 246
    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 247
    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 248
    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@19
    .line 243
    return-void
.end method
