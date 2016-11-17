.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$1;,
        Landroid/media/tv/TvTrackInfo$Builder;
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

.field private final mVideoActiveFormatDescription:B

.field private final mVideoFrameRate:F

.field private final mVideoHeight:I

.field private final mVideoPixelAspectRatio:F

.field private final mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 293
    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    #@5
    .line 292
    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V
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
    .param p11, "videoActiveFormatDescription"    # B
    .param p12, "extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iput p1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@5
    .line 76
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@7
    .line 77
    iput-object p3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@9
    .line 78
    iput-object p4, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@b
    .line 79
    iput p5, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@d
    .line 80
    iput p6, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@f
    .line 81
    iput p7, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@11
    .line 82
    iput p8, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@13
    .line 83
    iput p9, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@15
    .line 84
    iput p10, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@17
    .line 85
    iput-byte p11, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    #@19
    .line 86
    iput-object p12, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@1b
    .line 74
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo;)V
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
    .param p11, "videoActiveFormatDescription"    # B
    .param p12, "extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p12}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@9
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@f
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@15
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@1b
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@21
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@27
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@2d
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@33
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@39
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@3f
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@42
    move-result v0

    #@43
    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    #@45
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@4b
    .line 89
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
    .line 236
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 263
    if-ne p0, p1, :cond_0

    #@4
    .line 264
    return v1

    #@5
    .line 267
    :cond_0
    instance-of v3, p1, Landroid/media/tv/TvTrackInfo;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 268
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 271
    nop

    #@c
    nop

    #@d
    .line 272
    .local v0, "obj":Landroid/media/tv/TvTrackInfo;
    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@f
    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@11
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_2

    #@17
    .line 273
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@19
    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@1b
    if-ne v3, v4, :cond_2

    #@1d
    .line 274
    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@1f
    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@21
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@24
    move-result v3

    #@25
    .line 272
    if-eqz v3, :cond_2

    #@27
    .line 275
    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@29
    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@2b
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2e
    move-result v3

    #@2f
    .line 272
    if-eqz v3, :cond_2

    #@31
    .line 276
    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@33
    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@35
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@38
    move-result v3

    #@39
    .line 272
    if-eqz v3, :cond_2

    #@3b
    .line 277
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@3d
    if-nez v3, :cond_3

    #@3f
    .line 278
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@41
    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@43
    if-ne v3, v4, :cond_2

    #@45
    .line 279
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@47
    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@49
    if-ne v3, v4, :cond_2

    #@4b
    move v2, v1

    #@4c
    .line 272
    :cond_2
    :goto_0
    return v2

    #@4d
    .line 280
    :cond_3
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@4f
    if-ne v3, v1, :cond_4

    #@51
    .line 281
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@53
    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@55
    if-ne v3, v4, :cond_2

    #@57
    .line 282
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@59
    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@5b
    if-ne v3, v4, :cond_2

    #@5d
    .line 283
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@5f
    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@61
    cmpl-float v3, v3, v4

    #@63
    if-nez v3, :cond_2

    #@65
    .line 284
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@67
    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@69
    cmpl-float v3, v3, v4

    #@6b
    if-nez v3, :cond_5

    #@6d
    :cond_4
    :goto_1
    move v2, v1

    #@6e
    goto :goto_0

    #@6f
    :cond_5
    move v1, v2

    #@70
    goto :goto_1
.end method

.method public final getAudioChannelCount()I
    .locals 2

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not an audio track"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 144
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@f
    return v0
.end method

.method public final getAudioSampleRate()I
    .locals 2

    #@0
    .prologue
    .line 153
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not an audio track"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 156
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@f
    return v0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getType()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    return v0
.end method

.method public final getVideoActiveFormatDescription()B
    .locals 2

    #@0
    .prologue
    .line 221
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 224
    :cond_0
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    #@10
    return v0
.end method

.method public final getVideoFrameRate()F
    .locals 2

    #@0
    .prologue
    .line 192
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 195
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@10
    return v0
.end method

.method public final getVideoHeight()I
    .locals 2

    #@0
    .prologue
    .line 179
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 182
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@10
    return v0
.end method

.method public final getVideoPixelAspectRatio()F
    .locals 2

    #@0
    .prologue
    .line 205
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 208
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@10
    return v0
.end method

.method public final getVideoWidth()I
    .locals 2

    #@0
    .prologue
    .line 166
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not a video track"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 169
    :cond_0
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@10
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@2
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
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
    .line 247
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    #@3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 248
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 249
    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 250
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
    .line 251
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 252
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 253
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 254
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 255
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    #@33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@36
    .line 256
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    #@38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@3b
    .line 257
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    #@3d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@40
    .line 258
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@45
    .line 246
    return-void
.end method
