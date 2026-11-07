.class public final Landroid/media/internal/exo/Format;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/Format$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/media/internal/exo/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/exo/Bundleable$Creator<",
            "Landroid/media/internal/exo/Format;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT:Landroid/media/internal/exo/Format;


# instance fields
.field public final blacklist accessibilityChannel:I

.field public final blacklist averageBitrate:I

.field public final blacklist bitrate:I

.field public final blacklist channelCount:I

.field public final blacklist codecs:Ljava/lang/String;

.field public final blacklist colorInfo:Landroid/media/internal/exo/video/ColorInfo;

.field public final blacklist containerMimeType:Ljava/lang/String;

.field public final blacklist cryptoType:I

.field public final blacklist drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

.field public final blacklist encoderDelay:I

.field public final blacklist encoderPadding:I

.field public final blacklist frameRate:F

.field private blacklist hashCode:I

.field public final blacklist height:I

.field public final blacklist id:Ljava/lang/String;

.field public final blacklist initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final blacklist label:Ljava/lang/String;

.field public final blacklist language:Ljava/lang/String;

.field public final blacklist maxInputSize:I

.field public final blacklist metadata:Landroid/media/internal/exo/metadata/Metadata;

.field public final blacklist pcmEncoding:I

.field public final blacklist peakBitrate:I

.field public final blacklist pixelWidthHeightRatio:F

.field public final blacklist projectionData:[B

.field public final blacklist roleFlags:I

.field public final blacklist rotationDegrees:I

.field public final blacklist sampleMimeType:Ljava/lang/String;

.field public final blacklist sampleRate:I

.field public final blacklist selectionFlags:I

.field public final blacklist stereoMode:I

.field public final blacklist subsampleOffsetUs:J

.field public final blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 614
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/Format;->DEFAULT:Landroid/media/internal/exo/Format;

    .line 1515
    new-instance v0, Landroid/media/internal/exo/Format$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/Format;->CREATOR:Landroid/media/internal/exo/Bundleable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/internal/exo/Format$Builder;)V
    .registers 7

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    # getter for: Landroid/media/internal/exo/Format$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$100(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->id:Ljava/lang/String;

    .line 931
    # getter for: Landroid/media/internal/exo/Format$Builder;->label:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$200(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->label:Ljava/lang/String;

    .line 932
    # getter for: Landroid/media/internal/exo/Format$Builder;->language:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$300(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    .line 933
    # getter for: Landroid/media/internal/exo/Format$Builder;->selectionFlags:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$400(Landroid/media/internal/exo/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/Format;->selectionFlags:I

    .line 934
    # getter for: Landroid/media/internal/exo/Format$Builder;->roleFlags:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$500(Landroid/media/internal/exo/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/Format;->roleFlags:I

    .line 935
    # getter for: Landroid/media/internal/exo/Format$Builder;->averageBitrate:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$600(Landroid/media/internal/exo/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/Format;->averageBitrate:I

    .line 936
    # getter for: Landroid/media/internal/exo/Format$Builder;->peakBitrate:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$700(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->peakBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    move v0, v1

    .line 937
    :cond_35
    iput v0, p0, Landroid/media/internal/exo/Format;->bitrate:I

    .line 938
    # getter for: Landroid/media/internal/exo/Format$Builder;->codecs:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$800(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    .line 939
    # getter for: Landroid/media/internal/exo/Format$Builder;->metadata:Landroid/media/internal/exo/metadata/Metadata;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$900(Landroid/media/internal/exo/Format$Builder;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    .line 941
    # getter for: Landroid/media/internal/exo/Format$Builder;->containerMimeType:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1000(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->containerMimeType:Ljava/lang/String;

    .line 943
    # getter for: Landroid/media/internal/exo/Format$Builder;->sampleMimeType:Ljava/lang/String;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1100(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    .line 944
    # getter for: Landroid/media/internal/exo/Format$Builder;->maxInputSize:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1200(Landroid/media/internal/exo/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/Format;->maxInputSize:I

    .line 946
    # getter for: Landroid/media/internal/exo/Format$Builder;->initializationData:Ljava/util/List;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1300(Landroid/media/internal/exo/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5e

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_62

    :cond_5e
    # getter for: Landroid/media/internal/exo/Format$Builder;->initializationData:Ljava/util/List;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1300(Landroid/media/internal/exo/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_62
    iput-object v0, p0, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    .line 947
    # getter for: Landroid/media/internal/exo/Format$Builder;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1400(Landroid/media/internal/exo/Format$Builder;)Landroid/media/internal/exo/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/Format;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    .line 948
    # getter for: Landroid/media/internal/exo/Format$Builder;->subsampleOffsetUs:J
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1500(Landroid/media/internal/exo/Format$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/internal/exo/Format;->subsampleOffsetUs:J

    .line 950
    # getter for: Landroid/media/internal/exo/Format$Builder;->width:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1600(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->width:I

    .line 951
    # getter for: Landroid/media/internal/exo/Format$Builder;->height:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1700(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->height:I

    .line 952
    # getter for: Landroid/media/internal/exo/Format$Builder;->frameRate:F
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1800(Landroid/media/internal/exo/Format$Builder;)F

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->frameRate:F

    .line 953
    # getter for: Landroid/media/internal/exo/Format$Builder;->rotationDegrees:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1900(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8b

    move v1, v3

    goto :goto_8f

    :cond_8b
    # getter for: Landroid/media/internal/exo/Format$Builder;->rotationDegrees:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$1900(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    :goto_8f
    iput v1, p0, Landroid/media/internal/exo/Format;->rotationDegrees:I

    .line 955
    # getter for: Landroid/media/internal/exo/Format$Builder;->pixelWidthHeightRatio:F
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2000(Landroid/media/internal/exo/Format$Builder;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_9e

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a2

    :cond_9e
    # getter for: Landroid/media/internal/exo/Format$Builder;->pixelWidthHeightRatio:F
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2000(Landroid/media/internal/exo/Format$Builder;)F

    move-result v1

    :goto_a2
    iput v1, p0, Landroid/media/internal/exo/Format;->pixelWidthHeightRatio:F

    .line 956
    # getter for: Landroid/media/internal/exo/Format$Builder;->projectionData:[B
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2100(Landroid/media/internal/exo/Format$Builder;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/exo/Format;->projectionData:[B

    .line 957
    # getter for: Landroid/media/internal/exo/Format$Builder;->stereoMode:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2200(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->stereoMode:I

    .line 958
    # getter for: Landroid/media/internal/exo/Format$Builder;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2300(Landroid/media/internal/exo/Format$Builder;)Landroid/media/internal/exo/video/ColorInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/exo/Format;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    .line 960
    # getter for: Landroid/media/internal/exo/Format$Builder;->channelCount:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2400(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->channelCount:I

    .line 961
    # getter for: Landroid/media/internal/exo/Format$Builder;->sampleRate:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2500(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->sampleRate:I

    .line 962
    # getter for: Landroid/media/internal/exo/Format$Builder;->pcmEncoding:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2600(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->pcmEncoding:I

    .line 963
    # getter for: Landroid/media/internal/exo/Format$Builder;->encoderDelay:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2700(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_d0

    move v1, v3

    goto :goto_d4

    :cond_d0
    # getter for: Landroid/media/internal/exo/Format$Builder;->encoderDelay:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2700(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    :goto_d4
    iput v1, p0, Landroid/media/internal/exo/Format;->encoderDelay:I

    .line 964
    # getter for: Landroid/media/internal/exo/Format$Builder;->encoderPadding:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2800(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_dd

    goto :goto_e1

    :cond_dd
    # getter for: Landroid/media/internal/exo/Format$Builder;->encoderPadding:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2800(Landroid/media/internal/exo/Format$Builder;)I

    move-result v3

    :goto_e1
    iput v3, p0, Landroid/media/internal/exo/Format;->encoderPadding:I

    .line 966
    # getter for: Landroid/media/internal/exo/Format$Builder;->accessibilityChannel:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$2900(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroid/media/internal/exo/Format;->accessibilityChannel:I

    .line 968
    # getter for: Landroid/media/internal/exo/Format$Builder;->cryptoType:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$3000(Landroid/media/internal/exo/Format$Builder;)I

    move-result v1

    if-nez v1, :cond_f5

    if-eqz v0, :cond_f5

    const/4 p1, 0x1

    .line 970
    iput p1, p0, Landroid/media/internal/exo/Format;->cryptoType:I

    return-void

    .line 972
    :cond_f5
    # getter for: Landroid/media/internal/exo/Format$Builder;->cryptoType:I
    invoke-static {p1}, Landroid/media/internal/exo/Format$Builder;->access$3000(Landroid/media/internal/exo/Format$Builder;)I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/Format;->cryptoType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/Format$Builder;Landroid/media/internal/exo/Format$1;)V
    .registers 3

    .line 115
    invoke-direct {p0, p1}, Landroid/media/internal/exo/Format;-><init>(Landroid/media/internal/exo/Format$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/media/internal/exo/Format$Builder;
    .registers 3

    .line 978
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/internal/exo/Format$Builder;-><init>(Landroid/media/internal/exo/Format;Landroid/media/internal/exo/Format$1;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_105

    .line 1211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/media/internal/exo/Format;

    if-eq v3, v2, :cond_11

    goto/16 :goto_105

    .line 1214
    :cond_11
    check-cast p1, Landroid/media/internal/exo/Format;

    .line 1215
    iget v2, p0, Landroid/media/internal/exo/Format;->hashCode:I

    if-eqz v2, :cond_1e

    iget v3, p1, Landroid/media/internal/exo/Format;->hashCode:I

    if-eqz v3, :cond_1e

    if-eq v2, v3, :cond_1e

    return v1

    .line 1219
    :cond_1e
    iget v2, p0, Landroid/media/internal/exo/Format;->selectionFlags:I

    iget v3, p1, Landroid/media/internal/exo/Format;->selectionFlags:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->roleFlags:I

    iget v3, p1, Landroid/media/internal/exo/Format;->roleFlags:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->averageBitrate:I

    iget v3, p1, Landroid/media/internal/exo/Format;->averageBitrate:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->peakBitrate:I

    iget v3, p1, Landroid/media/internal/exo/Format;->peakBitrate:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->maxInputSize:I

    iget v3, p1, Landroid/media/internal/exo/Format;->maxInputSize:I

    if-ne v2, v3, :cond_105

    iget-wide v2, p0, Landroid/media/internal/exo/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Landroid/media/internal/exo/Format;->subsampleOffsetUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->width:I

    iget v3, p1, Landroid/media/internal/exo/Format;->width:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->height:I

    iget v3, p1, Landroid/media/internal/exo/Format;->height:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->rotationDegrees:I

    iget v3, p1, Landroid/media/internal/exo/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->stereoMode:I

    iget v3, p1, Landroid/media/internal/exo/Format;->stereoMode:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->channelCount:I

    iget v3, p1, Landroid/media/internal/exo/Format;->channelCount:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->sampleRate:I

    iget v3, p1, Landroid/media/internal/exo/Format;->sampleRate:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->pcmEncoding:I

    iget v3, p1, Landroid/media/internal/exo/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->encoderDelay:I

    iget v3, p1, Landroid/media/internal/exo/Format;->encoderDelay:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->encoderPadding:I

    iget v3, p1, Landroid/media/internal/exo/Format;->encoderPadding:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->accessibilityChannel:I

    iget v3, p1, Landroid/media/internal/exo/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->cryptoType:I

    iget v3, p1, Landroid/media/internal/exo/Format;->cryptoType:I

    if-ne v2, v3, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->frameRate:F

    iget v3, p1, Landroid/media/internal/exo/Format;->frameRate:F

    .line 1236
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_105

    iget v2, p0, Landroid/media/internal/exo/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Landroid/media/internal/exo/Format;->pixelWidthHeightRatio:F

    .line 1237
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->id:Ljava/lang/String;

    .line 1238
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->label:Ljava/lang/String;

    .line 1239
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    .line 1240
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->containerMimeType:Ljava/lang/String;

    .line 1241
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    .line 1242
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    .line 1243
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->projectionData:[B

    iget-object v3, p1, Landroid/media/internal/exo/Format;->projectionData:[B

    .line 1244
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    .line 1245
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    .line 1246
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Landroid/media/internal/exo/Format;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    iget-object v3, p1, Landroid/media/internal/exo/Format;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    .line 1247
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 1248
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/Format;->initializationDataEquals(Landroid/media/internal/exo/Format;)Z

    move-result p0

    if-eqz p0, :cond_105

    return v0

    :cond_105
    :goto_105
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1162
    iget v0, p0, Landroid/media/internal/exo/Format;->hashCode:I

    if-nez v0, :cond_c9

    .line 1165
    iget-object v0, p0, Landroid/media/internal/exo/Format;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1166
    iget-object v0, p0, Landroid/media/internal/exo/Format;->label:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1167
    iget-object v0, p0, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    if-nez v0, :cond_27

    move v0, v1

    goto :goto_2b

    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2b
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1168
    iget v0, p0, Landroid/media/internal/exo/Format;->selectionFlags:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1169
    iget v0, p0, Landroid/media/internal/exo/Format;->roleFlags:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1170
    iget v0, p0, Landroid/media/internal/exo/Format;->averageBitrate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1171
    iget v0, p0, Landroid/media/internal/exo/Format;->peakBitrate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1172
    iget-object v0, p0, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    if-nez v0, :cond_48

    move v0, v1

    goto :goto_4c

    :cond_48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4c
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1173
    iget-object v0, p0, Landroid/media/internal/exo/Format;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    if-nez v0, :cond_55

    move v0, v1

    goto :goto_59

    :cond_55
    invoke-virtual {v0}, Landroid/media/internal/exo/metadata/Metadata;->hashCode()I

    move-result v0

    :goto_59
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1175
    iget-object v0, p0, Landroid/media/internal/exo/Format;->containerMimeType:Ljava/lang/String;

    if-nez v0, :cond_62

    move v0, v1

    goto :goto_66

    :cond_62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_66
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1177
    iget-object v0, p0, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_6e

    goto :goto_72

    :cond_6e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_72
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 1178
    iget v0, p0, Landroid/media/internal/exo/Format;->maxInputSize:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1181
    iget-wide v0, p0, Landroid/media/internal/exo/Format;->subsampleOffsetUs:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1183
    iget v0, p0, Landroid/media/internal/exo/Format;->width:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1184
    iget v0, p0, Landroid/media/internal/exo/Format;->height:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1185
    iget v0, p0, Landroid/media/internal/exo/Format;->frameRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1186
    iget v0, p0, Landroid/media/internal/exo/Format;->rotationDegrees:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1187
    iget v0, p0, Landroid/media/internal/exo/Format;->pixelWidthHeightRatio:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1189
    iget v0, p0, Landroid/media/internal/exo/Format;->stereoMode:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1192
    iget v0, p0, Landroid/media/internal/exo/Format;->channelCount:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1193
    iget v0, p0, Landroid/media/internal/exo/Format;->sampleRate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1194
    iget v0, p0, Landroid/media/internal/exo/Format;->pcmEncoding:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1195
    iget v0, p0, Landroid/media/internal/exo/Format;->encoderDelay:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1196
    iget v0, p0, Landroid/media/internal/exo/Format;->encoderPadding:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1198
    iget v0, p0, Landroid/media/internal/exo/Format;->accessibilityChannel:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1200
    iget v0, p0, Landroid/media/internal/exo/Format;->cryptoType:I

    add-int/2addr v2, v0

    .line 1201
    iput v2, p0, Landroid/media/internal/exo/Format;->hashCode:I

    .line 1203
    :cond_c9
    iget p0, p0, Landroid/media/internal/exo/Format;->hashCode:I

    return p0
.end method

.method public blacklist initializationDataEquals(Landroid/media/internal/exo/Format;)Z
    .registers 6

    .line 1260
    iget-object v0, p0, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    move v0, v2

    .line 1263
    :goto_11
    iget-object v1, p0, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1264
    iget-object v1, p0, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/internal/exo/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/internal/exo/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/internal/exo/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/internal/exo/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/internal/exo/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/internal/exo/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/internal/exo/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/internal/exo/Format;->sampleRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
