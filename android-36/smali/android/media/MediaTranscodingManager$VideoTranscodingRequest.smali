.class public final Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;
.super Landroid/media/MediaTranscodingManager$TranscodingRequest;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTranscodingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;
    }
.end annotation


# instance fields
.field private blacklist mAudioTrackFormat:Landroid/media/MediaFormat;

.field private blacklist mVideoTrackFormat:Landroid/media/MediaFormat;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;)V
    .registers 3

    const/4 v0, 0x0

    .line 1075
    invoke-direct {p0, p1, v0}, Landroid/media/MediaTranscodingManager$TranscodingRequest;-><init>(Landroid/media/MediaTranscodingManager$TranscodingRequest$Builder;Landroid/media/MediaTranscodingManager-IA;)V

    .line 1065
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;->mVideoTrackFormat:Landroid/media/MediaFormat;

    .line 1072
    iput-object v0, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;->mAudioTrackFormat:Landroid/media/MediaFormat;

    .line 1076
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->-$$Nest$fgetmVideoTrackFormat(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;->mVideoTrackFormat:Landroid/media/MediaFormat;

    .line 1077
    invoke-static {p1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;->-$$Nest$fgetmAudioTrackFormat(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;->mAudioTrackFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;Landroid/media/MediaTranscodingManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;-><init>(Landroid/media/MediaTranscodingManager$VideoTranscodingRequest$Builder;)V

    return-void
.end method

.method private static blacklist convertToVideoTrackFormat(Landroid/media/MediaFormat;)Landroid/media/TranscodingVideoTrackFormat;
    .registers 5

    if-eqz p0, :cond_a8

    .line 1100
    new-instance v0, Landroid/media/TranscodingVideoTrackFormat;

    invoke-direct {v0}, Landroid/media/TranscodingVideoTrackFormat;-><init>()V

    .line 1102
    const-string v1, "mime"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1103
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    const-string v2, "video/avc"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    .line 1105
    iput v1, v0, Landroid/media/TranscodingVideoTrackFormat;->codecType:I

    goto :goto_33

    .line 1106
    :cond_1f
    const-string v2, "video/hevc"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x2

    .line 1107
    iput v1, v0, Landroid/media/TranscodingVideoTrackFormat;->codecType:I

    goto :goto_33

    .line 1109
    :cond_2b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only support transcode to avc/hevc"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1113
    :cond_33
    :goto_33
    const-string v1, "bitrate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1114
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_44

    .line 1118
    iput v1, v0, Landroid/media/TranscodingVideoTrackFormat;->bitrateBps:I

    goto :goto_4c

    .line 1116
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitrate must be larger than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1121
    :cond_4c
    :goto_4c
    const-string v1, "width"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "height"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1123
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1124
    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-lez v1, :cond_6d

    if-lez v2, :cond_6d

    .line 1129
    iput v1, v0, Landroid/media/TranscodingVideoTrackFormat;->width:I

    .line 1130
    iput v2, v0, Landroid/media/TranscodingVideoTrackFormat;->height:I

    goto :goto_75

    .line 1126
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Width and height must be larger than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1133
    :cond_75
    :goto_75
    const-string v1, "profile"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 1134
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_86

    .line 1139
    iput v1, v0, Landroid/media/TranscodingVideoTrackFormat;->profile:I

    goto :goto_8e

    .line 1136
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid codec profile"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1142
    :cond_8e
    :goto_8e
    const-string v1, "level"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 1143
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_9f

    .line 1148
    iput p0, v0, Landroid/media/TranscodingVideoTrackFormat;->level:I

    return-object v0

    .line 1145
    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid codec level"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a7
    return-object v0

    .line 1097
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MediaFormat"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getVideoTrackFormat()Landroid/media/MediaFormat;
    .registers 1

    .line 1086
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;->mVideoTrackFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method blacklist writeFormatToParcel(Landroid/media/TranscodingRequestParcel;)V
    .registers 2

    .line 1091
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;->mVideoTrackFormat:Landroid/media/MediaFormat;

    invoke-static {p0}, Landroid/media/MediaTranscodingManager$VideoTranscodingRequest;->convertToVideoTrackFormat(Landroid/media/MediaFormat;)Landroid/media/TranscodingVideoTrackFormat;

    move-result-object p0

    iput-object p0, p1, Landroid/media/TranscodingRequestParcel;->requestedVideoTrackFormat:Landroid/media/TranscodingVideoTrackFormat;

    return-void
.end method
