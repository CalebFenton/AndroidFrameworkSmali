.class public final Landroid/media/MediaCodecInfo$EncoderCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncoderCapabilities"
.end annotation


# static fields
.field public static final BITRATE_MODE_CBR:I = 0x2

.field public static final BITRATE_MODE_CQ:I = 0x0

.field public static final BITRATE_MODE_VBR:I = 0x1

.field private static final bitrates:[Landroid/media/MediaCodecInfo$Feature;


# instance fields
.field private mBitControl:I

.field private mComplexityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultComplexity:Ljava/lang/Integer;

.field private mDefaultQuality:Ljava/lang/Integer;

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mQualityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQualityScale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 2231
    const/4 v0, 0x3

    #@4
    new-array v0, v0, [Landroid/media/MediaCodecInfo$Feature;

    #@6
    .line 2232
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@8
    const-string/jumbo v2, "VBR"

    #@b
    invoke-direct {v1, v2, v4, v4}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@e
    aput-object v1, v0, v3

    #@10
    .line 2233
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@12
    const-string/jumbo v2, "CBR"

    #@15
    invoke-direct {v1, v2, v5, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@18
    aput-object v1, v0, v4

    #@1a
    .line 2234
    new-instance v1, Landroid/media/MediaCodecInfo$Feature;

    #@1c
    const-string/jumbo v2, "CQ"

    #@1f
    invoke-direct {v1, v2, v3, v3}, Landroid/media/MediaCodecInfo$Feature;-><init>(Ljava/lang/String;IZ)V

    #@22
    aput-object v1, v0, v5

    #@24
    .line 2231
    sput-object v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    #@26
    .line 2202
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private applyLevelLimits()V
    .locals 3

    #@0
    .prologue
    .line 2286
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@2
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2287
    .local v0, "mime":Ljava/lang/String;
    const-string/jumbo v1, "audio/flac"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 2288
    const/4 v1, 0x0

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v1

    #@14
    const/16 v2, 0x8

    #@16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@20
    .line 2289
    const/4 v1, 0x1

    #@21
    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    #@23
    .line 2285
    :cond_0
    :goto_0
    return-void

    #@24
    .line 2290
    :cond_1
    const-string/jumbo v1, "audio/3gpp"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_2

    #@2d
    .line 2291
    const-string/jumbo v1, "audio/amr-wb"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@33
    move-result v1

    #@34
    .line 2290
    if-nez v1, :cond_2

    #@36
    .line 2292
    const-string/jumbo v1, "audio/g711-alaw"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3c
    move-result v1

    #@3d
    .line 2290
    if-nez v1, :cond_2

    #@3f
    .line 2293
    const-string/jumbo v1, "audio/g711-mlaw"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@45
    move-result v1

    #@46
    .line 2290
    if-nez v1, :cond_2

    #@48
    .line 2294
    const-string/jumbo v1, "audio/gsm"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4e
    move-result v1

    #@4f
    .line 2290
    if-eqz v1, :cond_0

    #@51
    .line 2295
    :cond_2
    const/4 v1, 0x4

    #@52
    iput v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    #@54
    goto :goto_0
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$EncoderCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    .line 2268
    new-instance v0, Landroid/media/MediaCodecInfo$EncoderCapabilities;

    #@2
    invoke-direct {v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;-><init>()V

    #@5
    .line 2269
    .local v0, "caps":Landroid/media/MediaCodecInfo$EncoderCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    #@8
    .line 2270
    return-object v0
.end method

.method private static parseBitrateMode(Ljava/lang/String;)I
    .locals 6
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2238
    sget-object v3, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget-object v0, v3, v1

    #@9
    .line 2239
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget-object v5, v0, Landroid/media/MediaCodecInfo$Feature;->mName:Ljava/lang/String;

    #@b
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 2240
    iget v1, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@13
    return v1

    #@14
    .line 2238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2243
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_1
    return v2
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 8
    .param p1, "info"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 2305
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v1

    #@4
    .line 2307
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "complexity-range"

    #@7
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 2309
    const-string/jumbo v3, "complexity-range"

    #@10
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@16
    .line 2308
    invoke-static {v3, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@1c
    .line 2312
    :cond_0
    const-string/jumbo v3, "quality-range"

    #@1f
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 2314
    const-string/jumbo v3, "quality-range"

    #@28
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    iget-object v4, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    #@2e
    .line 2313
    invoke-static {v3, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    #@31
    move-result-object v3

    #@32
    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    #@34
    .line 2316
    :cond_1
    const-string/jumbo v3, "feature-bitrate-control"

    #@37
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 2317
    const-string/jumbo v3, "feature-bitrate-control"

    #@40
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    const-string/jumbo v4, ","

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    const/4 v3, 0x0

    #@4c
    array-length v5, v4

    #@4d
    :goto_0
    if-ge v3, v5, :cond_2

    #@4f
    aget-object v2, v4, v3

    #@51
    .line 2318
    .local v2, "mode":Ljava/lang/String;
    iget v6, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    #@53
    invoke-static {v2}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseBitrateMode(Ljava/lang/String;)I

    #@56
    move-result v7

    #@57
    or-int/2addr v6, v7

    #@58
    iput v6, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    #@5a
    .line 2317
    add-int/lit8 v3, v3, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 2323
    .end local v2    # "mode":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string/jumbo v3, "complexity-default"

    #@60
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, Ljava/lang/String;

    #@66
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@69
    move-result v3

    #@6a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6d
    move-result-object v3

    #@6e
    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    #@70
    .line 2327
    :goto_1
    :try_start_1
    const-string/jumbo v3, "quality-default"

    #@73
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    move-result-object v3

    #@77
    check-cast v3, Ljava/lang/String;

    #@79
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7c
    move-result v3

    #@7d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v3

    #@81
    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@83
    .line 2330
    :goto_2
    const-string/jumbo v3, "quality-scale"

    #@86
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    move-result-object v3

    #@8a
    check-cast v3, Ljava/lang/String;

    #@8c
    iput-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityScale:Ljava/lang/String;

    #@8e
    .line 2304
    return-void

    #@8f
    .line 2328
    :catch_0
    move-exception v0

    #@90
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    #@91
    .line 2324
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    #@92
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 7
    .param p1, "complexity"    # Ljava/lang/Integer;
    .param p2, "quality"    # Ljava/lang/Integer;
    .param p3, "profile"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 2335
    const/4 v0, 0x1

    #@1
    .line 2336
    .local v0, "ok":Z
    if-eqz v0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 2337
    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@7
    invoke-virtual {v2, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@a
    move-result v0

    #@b
    .line 2339
    .end local v0    # "ok":Z
    :cond_0
    if-eqz v0, :cond_1

    #@d
    if-eqz p2, :cond_1

    #@f
    .line 2340
    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    #@11
    invoke-virtual {v2, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    #@14
    move-result v0

    #@15
    .line 2342
    :cond_1
    if-eqz v0, :cond_3

    #@17
    if-eqz p3, :cond_3

    #@19
    .line 2343
    iget-object v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@1b
    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    #@1d
    const/4 v2, 0x0

    #@1e
    array-length v4, v3

    #@1f
    :goto_0
    if-ge v2, v4, :cond_2

    #@21
    aget-object v1, v3, v2

    #@23
    .line 2344
    .local v1, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v5, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    #@25
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v6

    #@29
    if-ne v5, v6, :cond_4

    #@2b
    .line 2345
    const/4 p3, 0x0

    #@2c
    .line 2349
    .end local v1    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local p3    # "profile":Ljava/lang/Integer;
    :cond_2
    if-nez p3, :cond_5

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 2351
    :cond_3
    :goto_1
    return v0

    #@30
    .line 2343
    .restart local v1    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local p3    # "profile":Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0

    #@33
    .line 2349
    .end local v1    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local p3    # "profile":Ljava/lang/Integer;
    :cond_5
    const/4 v0, 0x0

    #@34
    .restart local v0    # "ok":Z
    goto :goto_1
.end method


# virtual methods
.method public getComplexityRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2221
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getQualityRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2209
    iget-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 3
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2276
    iput-object p2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@3
    .line 2277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@11
    .line 2278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v0

    #@15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    #@1f
    .line 2279
    const/4 v0, 0x2

    #@20
    iput v0, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    #@22
    .line 2281
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->applyLevelLimits()V

    #@25
    .line 2282
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    #@28
    .line 2274
    return-void
.end method

.method public isBitrateModeSupported(I)Z
    .locals 7
    .param p1, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2250
    sget-object v4, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    #@4
    array-length v5, v4

    #@5
    move v3, v2

    #@6
    :goto_0
    if-ge v3, v5, :cond_2

    #@8
    aget-object v0, v4, v3

    #@a
    .line 2251
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v6, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@c
    if-ne p1, v6, :cond_1

    #@e
    .line 2252
    iget v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    #@10
    shl-int v4, v1, p1

    #@12
    and-int/2addr v3, v4

    #@13
    if-eqz v3, :cond_0

    #@15
    :goto_1
    return v1

    #@16
    :cond_0
    move v1, v2

    #@17
    goto :goto_1

    #@18
    .line 2250
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 2255
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_2
    return v2
.end method

.method public setDefaultFormat(Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2357
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    #@3
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/lang/Integer;

    #@9
    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mQualityRange:Landroid/util/Range;

    #@b
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 2358
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 2359
    const-string/jumbo v1, "quality"

    #@1c
    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultQuality:Ljava/lang/Integer;

    #@1e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@21
    move-result v3

    #@22
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@25
    .line 2361
    :cond_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@27
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Ljava/lang/Integer;

    #@2d
    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mComplexityRange:Landroid/util/Range;

    #@2f
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_1

    #@39
    .line 2362
    iget-object v1, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 2363
    const-string/jumbo v1, "complexity"

    #@40
    iget-object v3, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mDefaultComplexity:Ljava/lang/Integer;

    #@42
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@45
    move-result v3

    #@46
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@49
    .line 2366
    :cond_1
    sget-object v3, Landroid/media/MediaCodecInfo$EncoderCapabilities;->bitrates:[Landroid/media/MediaCodecInfo$Feature;

    #@4b
    array-length v4, v3

    #@4c
    move v1, v2

    #@4d
    :goto_0
    if-ge v1, v4, :cond_2

    #@4f
    aget-object v0, v3, v1

    #@51
    .line 2367
    .local v0, "feat":Landroid/media/MediaCodecInfo$Feature;
    iget v2, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mBitControl:I

    #@53
    iget v5, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@55
    const/4 v6, 0x1

    #@56
    shl-int v5, v6, v5

    #@58
    and-int/2addr v2, v5

    #@59
    if-eqz v2, :cond_3

    #@5b
    .line 2368
    const-string/jumbo v1, "bitrate-mode"

    #@5e
    iget v2, v0, Landroid/media/MediaCodecInfo$Feature;->mValue:I

    #@60
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@63
    .line 2355
    .end local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_2
    return-void

    #@64
    .line 2366
    .restart local v0    # "feat":Landroid/media/MediaCodecInfo$Feature;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 10
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 2376
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@3
    move-result-object v3

    #@4
    .line 2377
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v8, p0, Landroid/media/MediaCodecInfo$EncoderCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    #@6
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 2379
    .local v4, "mime":Ljava/lang/String;
    const-string/jumbo v8, "bitrate-mode"

    #@d
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Ljava/lang/Integer;

    #@13
    .line 2380
    .local v5, "mode":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    #@15
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v8

    #@19
    invoke-virtual {p0, v8}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    #@1c
    move-result v8

    #@1d
    if-eqz v8, :cond_3

    #@1f
    .line 2384
    :cond_0
    const-string/jumbo v8, "complexity"

    #@22
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Ljava/lang/Integer;

    #@28
    .line 2385
    .local v1, "complexity":Ljava/lang/Integer;
    const-string/jumbo v8, "audio/flac"

    #@2b
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_1

    #@31
    .line 2387
    const-string/jumbo v8, "flac-compression-level"

    #@34
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljava/lang/Integer;

    #@3a
    .line 2388
    .local v2, "flacComplexity":Ljava/lang/Integer;
    if-nez v1, :cond_4

    #@3c
    .line 2389
    move-object v1, v2

    #@3d
    .line 2398
    .end local v2    # "flacComplexity":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v8, "profile"

    #@40
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Ljava/lang/Integer;

    #@46
    .line 2399
    .local v6, "profile":Ljava/lang/Integer;
    const-string/jumbo v8, "audio/mp4a-latm"

    #@49
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_2

    #@4f
    .line 2400
    const-string/jumbo v8, "aac-profile"

    #@52
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Ljava/lang/Integer;

    #@58
    .line 2401
    .local v0, "aacProfile":Ljava/lang/Integer;
    if-nez v6, :cond_5

    #@5a
    .line 2402
    move-object v6, v0

    #@5b
    .line 2409
    .end local v0    # "aacProfile":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v8, "quality"

    #@5e
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v7

    #@62
    check-cast v7, Ljava/lang/Integer;

    #@64
    .line 2411
    .local v7, "quality":Ljava/lang/Integer;
    invoke-direct {p0, v1, v7, v6}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    #@67
    move-result v8

    #@68
    return v8

    #@69
    .line 2381
    .end local v1    # "complexity":Ljava/lang/Integer;
    .end local v6    # "profile":Ljava/lang/Integer;
    .end local v7    # "quality":Ljava/lang/Integer;
    :cond_3
    const/4 v8, 0x0

    #@6a
    return v8

    #@6b
    .line 2390
    .restart local v1    # "complexity":Ljava/lang/Integer;
    .restart local v2    # "flacComplexity":Ljava/lang/Integer;
    :cond_4
    if-eqz v2, :cond_1

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v8

    #@71
    if-nez v8, :cond_1

    #@73
    .line 2391
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@75
    .line 2392
    const-string/jumbo v9, "conflicting values for complexity and flac-compression-level"

    #@78
    .line 2391
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v8

    #@7c
    .line 2403
    .end local v2    # "flacComplexity":Ljava/lang/Integer;
    .restart local v0    # "aacProfile":Ljava/lang/Integer;
    .restart local v6    # "profile":Ljava/lang/Integer;
    :cond_5
    if-eqz v0, :cond_2

    #@7e
    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v8

    #@82
    if-nez v8, :cond_2

    #@84
    .line 2404
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@86
    .line 2405
    const-string/jumbo v9, "conflicting values for profile and aac-profile"

    #@89
    .line 2404
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v8
.end method
