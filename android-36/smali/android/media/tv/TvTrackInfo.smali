.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$Builder;,
        Landroid/media/tv/TvTrackInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_BUNDLE_KEY_COMPONENT_TAG:Ljava/lang/String; = "component_tag"

.field public static final blacklist EXTRA_BUNDLE_KEY_PID:Ljava/lang/String; = "pid"

.field public static final whitelist TYPE_AUDIO:I = 0x0

.field public static final whitelist TYPE_SUBTITLE:I = 0x2

.field public static final whitelist TYPE_VIDEO:I = 0x1


# instance fields
.field private final greylist-max-o mAudioChannelCount:I

.field private final blacklist mAudioDescription:Z

.field private final greylist-max-o mAudioSampleRate:I

.field private final greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private final blacklist mEncoding:Ljava/lang/String;

.field private final blacklist mEncrypted:Z

.field private final greylist-max-o mExtra:Landroid/os/Bundle;

.field private final blacklist mHardOfHearing:Z

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLanguage:Ljava/lang/String;

.field private final blacklist mSpokenSubtitle:Z

.field private final greylist-max-o mType:I

.field private final greylist-max-o mVideoActiveFormatDescription:B

.field private final greylist-max-o mVideoFrameRate:F

.field private final greylist-max-o mVideoHeight:I

.field private final greylist-max-o mVideoPixelAspectRatio:F

.field private final greylist-max-o mVideoWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 437
    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V
    .registers 34
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "encoding"    # Ljava/lang/String;
    .param p6, "encrypted"    # Z
    .param p7, "audioChannelCount"    # I
    .param p8, "audioSampleRate"    # I
    .param p9, "audioDescription"    # Z
    .param p10, "hardOfHearing"    # Z
    .param p11, "spokenSubtitle"    # Z
    .param p12, "videoWidth"    # I
    .param p13, "videoHeight"    # I
    .param p14, "videoFrameRate"    # F
    .param p15, "videoPixelAspectRatio"    # F
    .param p16, "videoActiveFormatDescription"    # B
    .param p17, "extra"    # Landroid/os/Bundle;

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    move/from16 v1, p1

    iput v1, v0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 105
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 106
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 107
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 108
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    .line 109
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    .line 110
    move/from16 v7, p7

    iput v7, v0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 111
    move/from16 v8, p8

    iput v8, v0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 112
    move/from16 v9, p9

    iput-boolean v9, v0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    .line 113
    move/from16 v10, p10

    iput-boolean v10, v0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    .line 114
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    .line 115
    move/from16 v12, p12

    iput v12, v0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 116
    move/from16 v13, p13

    iput v13, v0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 117
    move/from16 v14, p14

    iput v14, v0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 118
    move/from16 v15, p15

    iput v15, v0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 119
    move/from16 v1, p16

    iput-byte v1, v0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 120
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 121
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo-IA;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZIIZZZIIFFBLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    goto :goto_43

    :cond_42
    move v0, v2

    :goto_43
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    move v0, v2

    :goto_4e
    iput-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    iput-boolean v1, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    .line 141
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 383
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 384
    return v0

    .line 387
    :cond_4
    instance-of v1, p1, Landroid/media/tv/TvTrackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 388
    return v2

    .line 391
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/tv/TvTrackInfo;

    .line 393
    .local v1, "obj":Landroid/media/tv/TvTrackInfo;
    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v3, v4, :cond_97

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    .line 394
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    .line 395
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    .line 396
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    if-eq v3, v4, :cond_42

    goto :goto_97

    .line 401
    :cond_42
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    packed-switch v3, :pswitch_data_98

    .line 420
    return v0

    .line 417
    :pswitch_48
    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne v3, v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v2

    :goto_50
    return v0

    .line 410
    :pswitch_51
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    if-ne v3, v4, :cond_74

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_74

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_74

    iget-byte v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    iget-byte v4, v1, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    if-ne v3, v4, :cond_74

    goto :goto_75

    :cond_74
    move v0, v2

    :goto_75
    return v0

    .line 403
    :pswitch_76
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    if-ne v3, v4, :cond_95

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iget v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    if-ne v3, v4, :cond_95

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    if-ne v3, v4, :cond_95

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    if-ne v3, v4, :cond_95

    iget-boolean v3, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    iget-boolean v4, v1, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    if-ne v3, v4, :cond_95

    goto :goto_96

    :cond_95
    move v0, v2

    :goto_96
    return v0

    .line 398
    :cond_97
    :goto_97
    return v2

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_76
        :pswitch_51
        :pswitch_48
    .end packed-switch
.end method

.method public final whitelist getAudioChannelCount()I
    .registers 3

    .line 205
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 208
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    return v0

    .line 206
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getAudioSampleRate()I
    .registers 3

    .line 217
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 220
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    return v0

    .line 218
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEncoding()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getExtra()Landroid/os/Bundle;
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getId()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getLanguage()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getType()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    return v0
.end method

.method public final whitelist getVideoActiveFormatDescription()B
    .registers 3

    .line 335
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 338
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    return v0

    .line 336
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoFrameRate()F
    .registers 3

    .line 306
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 309
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    return v0

    .line 307
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoHeight()I
    .registers 3

    .line 293
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 296
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    return v0

    .line 294
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoPixelAspectRatio()F
    .registers 3

    .line 319
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 322
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    return v0

    .line 320
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getVideoWidth()I
    .registers 3

    .line 280
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 283
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    return v0

    .line 281
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 425
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 427
    .local v0, "result":I
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v1, :cond_31

    .line 428
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_5a

    .line 429
    :cond_31
    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5a

    .line 430
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    .line 431
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 430
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 434
    :cond_5a
    :goto_5a
    return v0
.end method

.method public whitelist isAudioDescription()Z
    .registers 3

    .line 234
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 237
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    return v0

    .line 235
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isEncrypted()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    return v0
.end method

.method public whitelist isHardOfHearing()Z
    .registers 3

    .line 251
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_12

    .line 252
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio or a subtitle track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_12
    :goto_12
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    return v0
.end method

.method public whitelist isSpokenSubtitle()Z
    .registers 3

    .line 267
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v0, :cond_7

    .line 270
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    return v0

    .line 268
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 361
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mEncrypted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioDescription:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mHardOfHearing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-boolean v0, p0, Landroid/media/tv/TvTrackInfo;->mSpokenSubtitle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 376
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 377
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 378
    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 379
    return-void
.end method
