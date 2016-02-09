.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$Builder;,
        Landroid/media/tv/TvTrackInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_SUBTITLE:I = 0x2

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private final mAudioChannelCount:I

.field private final mAudioSampleRate:I

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mExtra:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

.field private final mType:I

.field private final mVideoFrameRate:F

.field private final mVideoHeight:I

.field private final mVideoPixelAspectRatio:F

.field private final mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 215
    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    #@5
    .line 214
    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFLandroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "audioChannelCount"    # I
    .param p6, "audioSampleRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "videoFrameRate"    # F
    .param p10, "videoPixelAspectRatio"    # F
    .param p11, "extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput p1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@5
    .line 61
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@7
    .line 62
    iput-object p3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@9
    .line 63
    iput-object p4, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@b
    .line 64
    iput p5, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@d
    .line 65
    iput p6, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@f
    .line 66
    iput p7, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@11
    .line 67
    iput p8, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@13
    .line 68
    iput p9, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@15
    .line 69
    iput p10, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@17
    .line 70
    iput-object p11, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@19
    .line 59
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "audioChannelCount"    # I
    .param p6, "audioSampleRate"    # I
    .param p7, "videoWidth"    # I
    .param p8, "videoHeight"    # I
    .param p9, "videoFrameRate"    # F
    .param p10, "videoPixelAspectRatio"    # F
    .param p11, "extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p11}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFLandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@9
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@f
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@15
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@1b
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@21
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@27
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@2d
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@33
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@39
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@3f
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@45
    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 190
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getAudioChannelCount()I
    .locals 2

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not an audio track"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 124
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@f
    return v0
.end method

.method public final getAudioSampleRate()I
    .locals 2

    #@0
    .prologue
    .line 131
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not an audio track"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 134
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@f
    return v0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getType()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    return v0
.end method

.method public final getVideoFrameRate()F
    .locals 2

    #@0
    .prologue
    .line 164
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 167
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@10
    return v0
.end method

.method public final getVideoHeight()I
    .locals 2

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 156
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@10
    return v0
.end method

.method public final getVideoPixelAspectRatio()F
    .locals 2

    #@0
    .prologue
    .line 175
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 178
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@10
    return v0
.end method

.method public final getVideoWidth()I
    .locals 2

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 145
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@10
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 201
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 202
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 203
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 204
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@12
    if-eqz v1, :cond_0

    #@14
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@16
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 205
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 206
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 207
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 208
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 209
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@36
    .line 210
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@3b
    .line 211
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@3d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@40
    .line 200
    return-void
.end method
