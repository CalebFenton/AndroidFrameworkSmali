.class public Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;
.super Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager$TranscodingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoFormatResolver"
.end annotation


# static fields
.field private static final blacklist BIT_RATE:I = 0x1312d00


# instance fields
.field private blacklist mSrcAudioFormatHint:Landroid/media/MediaFormat;

.field private blacklist mSrcVideoFormatHint:Landroid/media/MediaFormat;


# direct methods
.method public constructor whitelist <init>(Landroid/media/ApplicationMediaCapabilities;Landroid/media/MediaFormat;)V
    .registers 3

    .line 892
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;-><init>(Landroid/media/ApplicationMediaCapabilities;)V

    .line 893
    iput-object p2, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcVideoFormatHint:Landroid/media/MediaFormat;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/ApplicationMediaCapabilities;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .registers 4

    .line 916
    invoke-direct {p0, p1}, Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;-><init>(Landroid/media/ApplicationMediaCapabilities;)V

    .line 917
    iput-object p2, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcVideoFormatHint:Landroid/media/MediaFormat;

    .line 918
    iput-object p3, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcAudioFormatHint:Landroid/media/MediaFormat;

    return-void
.end method

.method private static blacklist getAVCBitrate(IIF)I
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 994
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x5

    .line 997
    filled-new-array {v4, v2, v5, v3, v1}, [I

    move-result-object v2

    const/4 v3, -0x1

    move v4, v1

    move v6, v3

    :goto_12
    const/4 v7, 0x2

    if-ge v4, v7, :cond_4a

    .line 1005
    aget v8, v0, v4

    move v9, v1

    :goto_18
    if-ge v9, v5, :cond_47

    .line 1006
    aget v10, v2, v9

    .line 1008
    invoke-static {v8, v10}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v11

    if-nez v11, :cond_23

    goto :goto_44

    .line 1011
    :cond_23
    invoke-static {v8, v10}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v10

    .line 1013
    iget v11, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne p0, v11, :cond_2f

    iget v12, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq p1, v12, :cond_35

    :cond_2f
    if-ne p1, v11, :cond_44

    iget v11, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne p0, v11, :cond_44

    :cond_35
    float-to-int v11, p2

    iget v12, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-ne v11, v12, :cond_44

    iget v11, v10, Landroid/media/CamcorderProfile;->videoCodec:I

    if-ne v11, v7, :cond_44

    .line 1019
    iget v7, v10, Landroid/media/CamcorderProfile;->videoBitRate:I

    if-ge v6, v7, :cond_47

    move v6, v7

    goto :goto_47

    :cond_44
    :goto_44
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1027
    :cond_4a
    const-string v0, "MediaTranscodingManager"

    if-ne v6, v3, :cond_76

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find CamcorderProfile for w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-static {p0, p1, p2}, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->getDefaultBitrate(IIF)I

    move-result v6

    .line 1033
    :cond_76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using bitrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private static blacklist getDefaultBitrate(IIF)I
    .registers 3

    .line 0
    mul-int/2addr p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, p2

    const/high16 p1, 0x3e800000    # 0.25f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist resolveAudioFormat()Landroid/media/MediaFormat;
    .registers 1

    .line 1047
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->shouldTranscode()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist resolveVideoFormat()Landroid/media/MediaFormat;
    .registers 6

    .line 949
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->shouldTranscode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 953
    :cond_8
    new-instance v0, Landroid/media/MediaFormat;

    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcVideoFormatHint:Landroid/media/MediaFormat;

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    .line 954
    const-string v1, "mime"

    const-string v2, "video/avc"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v1, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcVideoFormatHint:Landroid/media/MediaFormat;

    const-string v2, "width"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .line 957
    iget-object v2, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcVideoFormatHint:Landroid/media/MediaFormat;

    const-string v4, "height"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    if-lez v1, :cond_54

    if-lez v2, :cond_54

    .line 963
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcVideoFormatHint:Landroid/media/MediaFormat;

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    .line 964
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "frame-rate"

    invoke-virtual {p0, v4, v3}, Landroid/media/MediaFormat;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    .line 965
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-lez v3, :cond_4c

    .line 971
    invoke-static {v1, v2, p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->getAVCBitrate(IIF)I

    move-result p0

    .line 972
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0

    .line 967
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "frameRate must be larger than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 959
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source Width and height must be larger than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist shouldTranscode()Z
    .registers 3

    .line 927
    invoke-virtual {p0}, Landroid/media/MediaTranscodingManager$TranscodingRequest$MediaFormatResolver;->getClientCapabilities()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v0

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Landroid/media/ApplicationMediaCapabilities;->isVideoMimeTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 929
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$TranscodingRequest$VideoFormatResolver;->mSrcVideoFormatHint:Landroid/media/MediaFormat;

    const-string v0, "mime"

    .line 930
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 929
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method
