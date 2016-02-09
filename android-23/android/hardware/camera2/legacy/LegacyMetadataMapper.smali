.class public Landroid/hardware/camera2/legacy/LegacyMetadataMapper;
.super Ljava/lang/Object;
.source "LegacyMetadataMapper.java"


# static fields
.field private static final APPROXIMATE_CAPTURE_DELAY_MS:J = 0xc8L

.field private static final APPROXIMATE_JPEG_ENCODE_TIME_MS:J = 0x258L

.field private static final APPROXIMATE_SENSOR_AREA_PX:J = 0x800000L

.field private static final DEBUG:Z = false

.field public static final HAL_PIXEL_FORMAT_BGRA_8888:I = 0x5

.field public static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field public static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field public static final HAL_PIXEL_FORMAT_RGBA_8888:I = 0x1

.field private static final LENS_INFO_MINIMUM_FOCUS_DISTANCE_FIXED_FOCUS:F = 0.0f

.field static final LIE_ABOUT_AE_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AE_STATE:Z = false

.field static final LIE_ABOUT_AF:Z = false

.field static final LIE_ABOUT_AF_MAX_REGIONS:Z = false

.field static final LIE_ABOUT_AWB:Z = false

.field static final LIE_ABOUT_AWB_STATE:Z = false

.field private static final NS_PER_MS:J = 0xf4240L

.field private static final PREVIEW_ASPECT_RATIO_TOLERANCE:F = 0.01f

.field private static final REQUEST_MAX_NUM_INPUT_STREAMS_COUNT:I = 0x0

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC:I = 0x3

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_PROC_STALL:I = 0x1

.field private static final REQUEST_MAX_NUM_OUTPUT_STREAMS_COUNT_RAW:I = 0x0

.field private static final REQUEST_PIPELINE_MAX_DEPTH_HAL1:I = 0x3

.field private static final REQUEST_PIPELINE_MAX_DEPTH_OURS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LegacyMetadataMapper"

.field static final UNKNOWN_MODE:I = -0x1

.field private static final sAllowedTemplates:[I

.field private static final sEffectModes:[I

.field private static final sLegacyEffectMode:[Ljava/lang/String;

.field private static final sLegacySceneModes:[Ljava/lang/String;

.field private static final sSceneModes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/16 v6, 0x9

    #@3
    const/4 v5, 0x3

    #@4
    const/4 v4, 0x2

    #@5
    const/4 v3, 0x1

    #@6
    .line 1028
    const/16 v0, 0x11

    #@8
    new-array v0, v0, [Ljava/lang/String;

    #@a
    .line 1029
    const-string/jumbo v1, "auto"

    #@d
    aput-object v1, v0, v7

    #@f
    .line 1030
    const-string/jumbo v1, "action"

    #@12
    aput-object v1, v0, v3

    #@14
    .line 1031
    const-string/jumbo v1, "portrait"

    #@17
    aput-object v1, v0, v4

    #@19
    .line 1032
    const-string/jumbo v1, "landscape"

    #@1c
    aput-object v1, v0, v5

    #@1e
    .line 1033
    const-string/jumbo v1, "night"

    #@21
    const/4 v2, 0x4

    #@22
    aput-object v1, v0, v2

    #@24
    .line 1034
    const-string/jumbo v1, "night-portrait"

    #@27
    const/4 v2, 0x5

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 1035
    const-string/jumbo v1, "theatre"

    #@2d
    const/4 v2, 0x6

    #@2e
    aput-object v1, v0, v2

    #@30
    .line 1036
    const-string/jumbo v1, "beach"

    #@33
    const/4 v2, 0x7

    #@34
    aput-object v1, v0, v2

    #@36
    .line 1037
    const-string/jumbo v1, "snow"

    #@39
    const/16 v2, 0x8

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 1038
    const-string/jumbo v1, "sunset"

    #@40
    aput-object v1, v0, v6

    #@42
    .line 1039
    const-string/jumbo v1, "steadyphoto"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 1040
    const-string/jumbo v1, "fireworks"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 1041
    const-string/jumbo v1, "sports"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 1042
    const-string/jumbo v1, "party"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 1043
    const-string/jumbo v1, "candlelight"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 1044
    const-string/jumbo v1, "barcode"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 1045
    const-string/jumbo v1, "hdr"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 1028
    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    #@75
    .line 1048
    const/16 v0, 0x11

    #@77
    new-array v0, v0, [I

    #@79
    fill-array-data v0, :array_0

    #@7c
    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    #@7e
    .line 1092
    new-array v0, v6, [Ljava/lang/String;

    #@80
    .line 1093
    const-string/jumbo v1, "none"

    #@83
    aput-object v1, v0, v7

    #@85
    .line 1094
    const-string/jumbo v1, "mono"

    #@88
    aput-object v1, v0, v3

    #@8a
    .line 1095
    const-string/jumbo v1, "negative"

    #@8d
    aput-object v1, v0, v4

    #@8f
    .line 1096
    const-string/jumbo v1, "solarize"

    #@92
    aput-object v1, v0, v5

    #@94
    .line 1097
    const-string/jumbo v1, "sepia"

    #@97
    const/4 v2, 0x4

    #@98
    aput-object v1, v0, v2

    #@9a
    .line 1098
    const-string/jumbo v1, "posterize"

    #@9d
    const/4 v2, 0x5

    #@9e
    aput-object v1, v0, v2

    #@a0
    .line 1099
    const-string/jumbo v1, "whiteboard"

    #@a3
    const/4 v2, 0x6

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 1100
    const-string/jumbo v1, "blackboard"

    #@a9
    const/4 v2, 0x7

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 1101
    const-string/jumbo v1, "aqua"

    #@af
    const/16 v2, 0x8

    #@b1
    aput-object v1, v0, v2

    #@b3
    .line 1092
    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    #@b5
    .line 1104
    new-array v0, v6, [I

    #@b7
    fill-array-data v0, :array_1

    #@ba
    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    #@bc
    .line 1215
    filled-new-array {v3, v4, v5}, [I

    #@bf
    move-result-object v0

    #@c0
    sput-object v0, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    #@c2
    .line 56
    return-void

    #@c3
    .line 1048
    nop

    #@c4
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x12
    .end array-data

    #@ea
    .line 1104
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V
    .locals 6
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1021
    .local p0, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v2

    #@4
    .local v2, "size$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/hardware/Camera$Size;

    #@10
    .line 1023
    .local v1, "size":Landroid/hardware/Camera$Size;
    new-instance v0, Landroid/hardware/camera2/params/StreamConfiguration;

    #@12
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    #@14
    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    #@16
    const/4 v5, 0x0

    #@17
    invoke-direct {v0, p1, v3, v4, v5}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    #@1a
    .line 1024
    .local v0, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_0

    #@1e
    .line 1020
    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    return-void
.end method

.method private static calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J
    .locals 6
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    #@0
    .prologue
    .line 1197
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    #@2
    int-to-long v2, v2

    #@3
    iget v4, p0, Landroid/hardware/Camera$Size;->height:I

    #@5
    int-to-long v4, v4

    #@6
    mul-long v0, v2, v4

    #@8
    .line 1198
    .local v0, "area":J
    const-wide/16 v2, 0x47

    #@a
    .line 1200
    mul-long/2addr v2, v0

    #@b
    .line 1196
    const-wide/32 v4, 0xbebc200

    #@e
    .line 1200
    add-long/2addr v2, v4

    #@f
    return-wide v2
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 1184
    .local p0, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [I

    #@3
    .line 1185
    .local v0, "legacyFps":[I
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/lang/Integer;

    #@9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    aput v1, v0, v2

    #@10
    .line 1186
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/Integer;

    #@16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v1

    #@1a
    const/4 v2, 0x1

    #@1b
    aput v1, v0, v2

    #@1d
    .line 1187
    return-object v0
.end method

.method static convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1452
    if-eqz p1, :cond_0

    #@4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 1453
    :cond_0
    const-string/jumbo v2, "LegacyMetadataMapper"

    #@d
    const-string/jumbo v3, "No focus modes supported; API1 bug"

    #@10
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 1454
    return-object v4

    #@14
    .line 1457
    :cond_1
    const/4 v1, 0x0

    #@15
    .line 1458
    .local v1, "param":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    #@18
    .line 1482
    .end local v1    # "param":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_2

    #@1e
    .line 1484
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/lang/String;

    #@24
    .line 1485
    .local v0, "defaultMode":Ljava/lang/String;
    const-string/jumbo v2, "LegacyMetadataMapper"

    #@27
    .line 1487
    const-string/jumbo v3, "convertAfModeToLegacy - ignoring unsupported mode %d, defaulting to %s"

    #@2a
    .line 1486
    const/4 v4, 0x2

    #@2b
    new-array v4, v4, [Ljava/lang/Object;

    #@2d
    .line 1488
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v5

    #@31
    aput-object v5, v4, v6

    #@33
    const/4 v5, 0x1

    #@34
    aput-object v0, v4, v5

    #@36
    .line 1486
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 1485
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 1489
    move-object v1, v0

    #@3e
    .line 1492
    .end local v0    # "defaultMode":Ljava/lang/String;
    :cond_2
    return-object v1

    #@3f
    .line 1460
    .restart local v1    # "param":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v1, "auto"

    #@42
    .local v1, "param":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 1463
    .local v1, "param":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "continuous-picture"

    #@46
    .local v1, "param":Ljava/lang/String;
    goto :goto_0

    #@47
    .line 1466
    .local v1, "param":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "continuous-video"

    #@4a
    .local v1, "param":Ljava/lang/String;
    goto :goto_0

    #@4b
    .line 1469
    .local v1, "param":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v1, "edof"

    #@4e
    .local v1, "param":Ljava/lang/String;
    goto :goto_0

    #@4f
    .line 1472
    .local v1, "param":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v1, "macro"

    #@52
    .local v1, "param":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 1475
    .local v1, "param":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v2, "fixed"

    #@56
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_3

    #@5c
    .line 1476
    const-string/jumbo v1, "fixed"

    #@5f
    .local v1, "param":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 1478
    .local v1, "param":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "infinity"

    #@63
    .local v1, "param":Ljava/lang/String;
    goto :goto_0

    #@64
    .line 1458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static convertAntiBandingMode(Ljava/lang/String;)I
    .locals 4
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1143
    if-nez p0, :cond_0

    #@3
    .line 1144
    return v3

    #@4
    .line 1147
    :cond_0
    const-string/jumbo v0, "off"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1149
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 1147
    :cond_1
    const-string/jumbo v0, "50hz"

    #@12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 1152
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    .line 1147
    :cond_2
    const-string/jumbo v0, "60hz"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 1155
    const/4 v0, 0x2

    #@24
    return v0

    #@25
    .line 1147
    :cond_3
    const-string/jumbo v0, "auto"

    #@28
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_4

    #@2e
    .line 1158
    const/4 v0, 0x3

    #@2f
    return v0

    #@30
    .line 1161
    :cond_4
    const-string/jumbo v0, "LegacyMetadataMapper"

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "convertAntiBandingMode - Unknown antibanding mode "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 1162
    return v3
.end method

.method static convertAntiBandingModeOrDefault(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1175
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 1176
    .local v0, "antiBandingMode":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 1177
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 1180
    :cond_0
    return v0
.end method

.method static convertEffectModeFromLegacy(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1117
    if-nez p0, :cond_0

    #@3
    .line 1118
    return v1

    #@4
    .line 1120
    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    #@6
    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    .line 1121
    .local v0, "index":I
    if-gez v0, :cond_1

    #@c
    .line 1122
    const/4 v1, -0x1

    #@d
    return v1

    #@e
    .line 1124
    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    #@10
    aget v1, v1, v0

    #@12
    return v1
.end method

.method static convertEffectModeToLegacy(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 1128
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    #@2
    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    #@5
    move-result v0

    #@6
    .line 1129
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 1130
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 1132
    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    #@c
    aget-object v1, v1, v0

    #@e
    return-object v1
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 0
    .param p0, "request"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    #@0
    .prologue
    .line 1212
    invoke-static {p0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    #@3
    .line 1211
    return-void
.end method

.method static convertSceneModeFromLegacy(Ljava/lang/String;)I
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1069
    if-nez p0, :cond_0

    #@3
    .line 1070
    return v1

    #@4
    .line 1072
    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    #@6
    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    .line 1073
    .local v0, "index":I
    if-gez v0, :cond_1

    #@c
    .line 1074
    const/4 v1, -0x1

    #@d
    return v1

    #@e
    .line 1076
    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    #@10
    aget v1, v1, v0

    #@12
    return v1
.end method

.method static convertSceneModeToLegacy(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 1080
    const/4 v1, 0x1

    #@1
    if-ne p0, v1, :cond_0

    #@3
    .line 1082
    const-string/jumbo v1, "auto"

    #@6
    return-object v1

    #@7
    .line 1085
    :cond_0
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    #@9
    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([II)I

    #@c
    move-result v0

    #@d
    .line 1086
    .local v0, "index":I
    if-gez v0, :cond_1

    #@f
    .line 1087
    const/4 v1, 0x0

    #@10
    return-object v1

    #@11
    .line 1089
    :cond_1
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    #@13
    aget-object v1, v1, v0

    #@15
    return-object v1
.end method

.method public static createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "info"    # Landroid/hardware/Camera$CameraInfo;

    #@0
    .prologue
    .line 121
    const-string/jumbo v2, "parameters must not be null"

    #@3
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 122
    const-string/jumbo v2, "info must not be null"

    #@9
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 124
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 125
    .local v1, "paramStr":Ljava/lang/String;
    new-instance v0, Landroid/hardware/CameraInfo;

    #@12
    invoke-direct {v0}, Landroid/hardware/CameraInfo;-><init>()V

    #@15
    .line 126
    .local v0, "outerInfo":Landroid/hardware/CameraInfo;
    iput-object p1, v0, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@17
    .line 128
    invoke-static {v1, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public static createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 4
    .param p0, "parameters"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/hardware/CameraInfo;

    #@0
    .prologue
    .line 143
    const-string/jumbo v2, "parameters must not be null"

    #@3
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 144
    const-string/jumbo v2, "info must not be null"

    #@9
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 145
    iget-object v2, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@e
    const-string/jumbo v3, "info.info must not be null"

    #@11
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 147
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@16
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@19
    .line 149
    .local v0, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v2, p1, Landroid/hardware/CameraInfo;->info:Landroid/hardware/Camera$CameraInfo;

    #@1b
    invoke-static {v0, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V

    #@1e
    .line 151
    invoke-static {}, Landroid/hardware/Camera;->getEmptyParameters()Landroid/hardware/Camera$Parameters;

    #@21
    move-result-object v1

    #@22
    .line 152
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    #@25
    .line 153
    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@28
    .line 162
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    #@2a
    invoke-direct {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@2d
    return-object v2
.end method

.method public static createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 17
    .param p0, "c"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p1, "templateId"    # I

    #@0
    .prologue
    .line 1239
    sget-object v1, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sAllowedTemplates:[I

    #@2
    move/from16 v0, p1

    #@4
    invoke-static {v1, v0}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "templateId out of range"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 1243
    :cond_0
    new-instance v13, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@15
    invoke-direct {v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@18
    .line 1256
    .local v13, "m":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1a
    const/4 v2, 0x1

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@22
    .line 1260
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@24
    const/4 v2, 0x3

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@2c
    .line 1263
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2e
    const/4 v2, 0x0

    #@2f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@36
    .line 1266
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@38
    const/4 v2, 0x0

    #@39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@40
    .line 1269
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    #@42
    const/4 v2, 0x0

    #@43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@4a
    .line 1272
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4c
    const/4 v2, 0x0

    #@4d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@54
    .line 1275
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@56
    const/4 v2, 0x1

    #@57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@5e
    .line 1278
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@60
    const/4 v2, 0x0

    #@61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@68
    .line 1282
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@6a
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Landroid/graphics/Rect;

    #@72
    .line 1283
    .local v7, "activeArray":Landroid/graphics/Rect;
    const/4 v1, 0x1

    #@73
    new-array v8, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@75
    .line 1284
    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    #@77
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@7a
    move-result v2

    #@7b
    add-int/lit8 v4, v2, -0x1

    #@7d
    .line 1285
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@80
    move-result v2

    #@81
    add-int/lit8 v5, v2, -0x1

    #@83
    .line 1284
    const/4 v2, 0x0

    #@84
    const/4 v3, 0x0

    #@85
    .line 1285
    const/4 v6, 0x0

    #@86
    .line 1284
    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    #@89
    const/4 v2, 0x0

    #@8a
    aput-object v1, v8, v2

    #@8c
    .line 1286
    .local v8, "activeRegions":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@8e
    invoke-virtual {v13, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@91
    .line 1287
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@93
    invoke-virtual {v13, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@96
    .line 1288
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@98
    invoke-virtual {v13, v1, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@9b
    .line 1294
    packed-switch p1, :pswitch_data_0

    #@9e
    .line 1306
    new-instance v1, Ljava/lang/AssertionError;

    #@a0
    const-string/jumbo v2, "Impossible; keep in sync with sAllowedTemplates"

    #@a3
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@a6
    throw v1

    #@a7
    .line 1296
    :pswitch_0
    const/4 v12, 0x1

    #@a8
    .line 1308
    .local v12, "captureIntent":I
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@aa
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@b1
    .line 1312
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@b3
    const/4 v2, 0x1

    #@b4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@bb
    .line 1316
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@bd
    const/4 v2, 0x1

    #@be
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@c5
    .line 1320
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@c7
    move-object/from16 v0, p0

    #@c9
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@cc
    move-result-object v14

    #@cd
    check-cast v14, Ljava/lang/Float;

    #@cf
    .line 1323
    .local v14, "minimumFocusDistance":Ljava/lang/Float;
    if-eqz v14, :cond_3

    #@d1
    .line 1324
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    #@d4
    move-result v1

    #@d5
    const/4 v2, 0x0

    #@d6
    cmpl-float v1, v1, v2

    #@d8
    if-nez v1, :cond_3

    #@da
    .line 1326
    const/4 v9, 0x0

    #@db
    .line 1351
    .local v9, "afMode":I
    :cond_1
    :goto_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@dd
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e0
    move-result-object v2

    #@e1
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@e4
    .line 1357
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@e6
    .line 1356
    move-object/from16 v0, p0

    #@e8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@eb
    move-result-object v10

    #@ec
    check-cast v10, [Landroid/util/Range;

    #@ee
    .line 1360
    .local v10, "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    #@ef
    aget-object v11, v10, v1

    #@f1
    .line 1361
    .local v11, "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    #@f2
    array-length v3, v10

    #@f3
    move v2, v1

    #@f4
    :goto_2
    if-ge v2, v3, :cond_8

    #@f6
    aget-object v15, v10, v2

    #@f8
    .line 1362
    .local v15, "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@fb
    move-result-object v1

    #@fc
    check-cast v1, Ljava/lang/Integer;

    #@fe
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@101
    move-result v4

    #@102
    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@105
    move-result-object v1

    #@106
    check-cast v1, Ljava/lang/Integer;

    #@108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@10b
    move-result v1

    #@10c
    if-ge v4, v1, :cond_7

    #@10e
    .line 1363
    move-object v11, v15

    #@10f
    .line 1361
    :cond_2
    :goto_3
    add-int/lit8 v1, v2, 0x1

    #@111
    move v2, v1

    #@112
    goto :goto_2

    #@113
    .line 1299
    .end local v9    # "afMode":I
    .end local v10    # "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v11    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v12    # "captureIntent":I
    .end local v14    # "minimumFocusDistance":Ljava/lang/Float;
    .end local v15    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :pswitch_1
    const/4 v12, 0x2

    #@114
    .line 1300
    .restart local v12    # "captureIntent":I
    goto :goto_0

    #@115
    .line 1302
    .end local v12    # "captureIntent":I
    :pswitch_2
    const/4 v12, 0x3

    #@116
    .line 1303
    .restart local v12    # "captureIntent":I
    goto :goto_0

    #@117
    .line 1329
    .restart local v14    # "minimumFocusDistance":Ljava/lang/Float;
    :cond_3
    const/4 v9, 0x1

    #@118
    .line 1331
    .restart local v9    # "afMode":I
    const/4 v1, 0x3

    #@119
    move/from16 v0, p1

    #@11b
    if-eq v0, v1, :cond_4

    #@11d
    .line 1332
    const/4 v1, 0x4

    #@11e
    move/from16 v0, p1

    #@120
    if-ne v0, v1, :cond_5

    #@122
    .line 1333
    :cond_4
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@124
    move-object/from16 v0, p0

    #@126
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@129
    move-result-object v1

    #@12a
    check-cast v1, [I

    #@12c
    .line 1334
    const/4 v2, 0x3

    #@12d
    .line 1333
    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    #@130
    move-result v1

    #@131
    if-eqz v1, :cond_1

    #@133
    .line 1335
    const/4 v9, 0x3

    #@134
    goto :goto_1

    #@135
    .line 1337
    :cond_5
    const/4 v1, 0x1

    #@136
    move/from16 v0, p1

    #@138
    if-eq v0, v1, :cond_6

    #@13a
    .line 1338
    const/4 v1, 0x2

    #@13b
    move/from16 v0, p1

    #@13d
    if-ne v0, v1, :cond_1

    #@13f
    .line 1339
    :cond_6
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@141
    move-object/from16 v0, p0

    #@143
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@146
    move-result-object v1

    #@147
    check-cast v1, [I

    #@149
    .line 1340
    const/4 v2, 0x4

    #@14a
    .line 1339
    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    #@14d
    move-result v1

    #@14e
    if-eqz v1, :cond_1

    #@150
    .line 1341
    const/4 v9, 0x4

    #@151
    goto :goto_1

    #@152
    .line 1364
    .restart local v10    # "availableFpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v11    # "bestRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v15    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_7
    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@155
    move-result-object v1

    #@156
    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@159
    move-result-object v4

    #@15a
    if-ne v1, v4, :cond_2

    #@15c
    .line 1365
    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@15f
    move-result-object v1

    #@160
    check-cast v1, Ljava/lang/Integer;

    #@162
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@165
    move-result v4

    #@166
    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@169
    move-result-object v1

    #@16a
    check-cast v1, Ljava/lang/Integer;

    #@16c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@16f
    move-result v1

    #@170
    if-ge v4, v1, :cond_2

    #@172
    .line 1366
    move-object v11, v15

    #@173
    goto :goto_3

    #@174
    .line 1369
    .end local v15    # "r":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@176
    invoke-virtual {v13, v1, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@179
    .line 1373
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@17b
    const/4 v2, 0x0

    #@17c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17f
    move-result-object v2

    #@180
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@183
    .line 1380
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@185
    const/4 v2, 0x0

    #@186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@189
    move-result-object v2

    #@18a
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@18d
    .line 1387
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@18f
    const/4 v2, 0x0

    #@190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@193
    move-result-object v2

    #@194
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@197
    .line 1392
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@199
    const/4 v2, 0x1

    #@19a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19d
    move-result-object v2

    #@19e
    invoke-virtual {v13, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@1a1
    .line 1399
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1a3
    .line 1400
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@1aa
    move-result-object v1

    #@1ab
    check-cast v1, [F

    #@1ad
    const/4 v3, 0x0

    #@1ae
    aget v1, v1, v3

    #@1b0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1b3
    move-result-object v1

    #@1b4
    .line 1399
    invoke-virtual {v13, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@1b7
    .line 1407
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@1be
    move-result-object v16

    #@1bf
    check-cast v16, [Landroid/util/Size;

    #@1c1
    .line 1408
    .local v16, "sizes":[Landroid/util/Size;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1c3
    move-object/from16 v0, v16

    #@1c5
    array-length v1, v0

    #@1c6
    const/4 v3, 0x1

    #@1c7
    if-le v1, v3, :cond_9

    #@1c9
    const/4 v1, 0x1

    #@1ca
    aget-object v1, v16, v1

    #@1cc
    :goto_4
    invoke-virtual {v13, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@1cf
    .line 1411
    return-object v13

    #@1d0
    .line 1408
    :cond_9
    const/4 v1, 0x0

    #@1d1
    aget-object v1, v16, v1

    #@1d3
    goto :goto_4

    #@1d4
    .line 1294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<*>;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 1415
    .local p0, "keys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    array-length v2, p0

    #@1
    new-array v1, v2, [I

    #@3
    .line 1417
    .local v1, "tags":[I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1418
    aget-object v2, p0, v0

    #@9
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    #@10
    move-result v2

    #@11
    aput v2, v1, v0

    #@13
    .line 1417
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1421
    :cond_0
    return-object v1
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 1425
    .local p0, "keys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    array-length v2, p0

    #@1
    new-array v1, v2, [I

    #@3
    .line 1427
    .local v1, "tags":[I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1428
    aget-object v2, p0, v0

    #@9
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    #@10
    move-result v2

    #@11
    aput v2, v1, v0

    #@13
    .line 1427
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1431
    :cond_0
    return-object v1
.end method

.method private static getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 1435
    .local p0, "keys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    array-length v2, p0

    #@1
    new-array v1, v2, [I

    #@3
    .line 1437
    .local v1, "tags":[I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1438
    aget-object v2, p0, v0

    #@9
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    #@10
    move-result v2

    #@11
    aput v2, v1, v0

    #@13
    .line 1437
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1441
    :cond_0
    return-object v1
.end method

.method private static mapCharacteristicsFromInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$CameraInfo;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "i"    # Landroid/hardware/Camera$CameraInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 166
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@3
    iget v2, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    #@5
    if-nez v2, :cond_0

    #@7
    .line 167
    const/4 v0, 0x1

    #@8
    .line 166
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@f
    .line 168
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@11
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@1a
    .line 165
    return-void
.end method

.method private static mapCharacteristicsFromParameters(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 177
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@4
    .line 178
    new-array v1, v2, [I

    #@6
    aput v2, v1, v3

    #@8
    .line 177
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@b
    .line 182
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@e
    .line 186
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@11
    .line 190
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@14
    .line 195
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@17
    .line 199
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@1a
    .line 203
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@1d
    .line 207
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@20
    .line 212
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@22
    .line 213
    new-array v1, v2, [I

    #@24
    aput v2, v1, v3

    #@26
    .line 212
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@29
    .line 218
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@2c
    .line 223
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@2f
    .line 228
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@32
    .line 233
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@35
    .line 238
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@37
    const/4 v1, 0x2

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@3f
    .line 243
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@42
    .line 250
    invoke-static {p0, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    #@45
    .line 172
    return-void
.end method

.method private static mapControlAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 32
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    #@3
    move-result-object v6

    #@4
    .line 386
    .local v6, "antiBandingModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    #@6
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@9
    move-result v26

    #@a
    if-lez v26, :cond_1

    #@c
    .line 387
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@f
    move-result v26

    #@10
    move/from16 v0, v26

    #@12
    new-array v0, v0, [I

    #@14
    move-object/from16 v20, v0

    #@16
    .line 388
    .local v20, "modes":[I
    const/4 v14, 0x0

    #@17
    .line 389
    .local v14, "j":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v19

    #@1b
    .local v19, "mode$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v26

    #@1f
    if-eqz v26, :cond_0

    #@21
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v18

    #@25
    check-cast v18, Ljava/lang/String;

    #@27
    .line 390
    .local v18, "mode":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingMode(Ljava/lang/String;)I

    #@2a
    move-result v7

    #@2b
    .line 395
    .local v7, "convertedMode":I
    add-int/lit8 v15, v14, 0x1

    #@2d
    .end local v14    # "j":I
    .local v15, "j":I
    aput v7, v20, v14

    #@2f
    move v14, v15

    #@30
    .end local v15    # "j":I
    .restart local v14    # "j":I
    goto :goto_0

    #@31
    .line 398
    .end local v7    # "convertedMode":I
    .end local v18    # "mode":Ljava/lang/String;
    :cond_0
    sget-object v26, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@33
    move-object/from16 v0, v20

    #@35
    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([II)[I

    #@38
    move-result-object v27

    #@39
    move-object/from16 v0, p0

    #@3b
    move-object/from16 v1, v26

    #@3d
    move-object/from16 v2, v27

    #@3f
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@42
    .line 407
    .end local v14    # "j":I
    .end local v19    # "mode$iterator":Ljava/util/Iterator;
    .end local v20    # "modes":[I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    #@45
    move-result-object v11

    #@46
    .line 408
    .local v11, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v11, :cond_2

    #@48
    .line 409
    new-instance v26, Ljava/lang/AssertionError;

    #@4a
    const-string/jumbo v27, "Supported FPS ranges cannot be null."

    #@4d
    invoke-direct/range {v26 .. v27}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@50
    throw v26

    #@51
    .line 400
    .end local v11    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_1
    sget-object v26, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@53
    const/16 v27, 0x0

    #@55
    move/from16 v0, v27

    #@57
    new-array v0, v0, [I

    #@59
    move-object/from16 v27, v0

    #@5b
    move-object/from16 v0, p0

    #@5d
    move-object/from16 v1, v26

    #@5f
    move-object/from16 v2, v27

    #@61
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@64
    goto :goto_1

    #@65
    .line 411
    .restart local v11    # "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@68
    move-result v24

    #@69
    .line 412
    .local v24, "rangesSize":I
    if-gtz v24, :cond_3

    #@6b
    .line 413
    new-instance v26, Ljava/lang/AssertionError;

    #@6d
    const-string/jumbo v27, "At least one FPS range must be supported."

    #@70
    invoke-direct/range {v26 .. v27}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@73
    throw v26

    #@74
    .line 415
    :cond_3
    move/from16 v0, v24

    #@76
    new-array v0, v0, [Landroid/util/Range;

    #@78
    move-object/from16 v23, v0

    #@7a
    .line 416
    .local v23, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    #@7b
    .line 417
    .local v12, "i":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v22

    #@7f
    .local v22, "r$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result v26

    #@83
    if-eqz v26, :cond_4

    #@85
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object v21

    #@89
    check-cast v21, [I

    #@8b
    .line 418
    .local v21, "r":[I
    add-int/lit8 v13, v12, 0x1

    #@8d
    .line 419
    .end local v12    # "i":I
    .local v13, "i":I
    const/16 v26, 0x0

    #@8f
    aget v26, v21, v26

    #@91
    move/from16 v0, v26

    #@93
    int-to-double v0, v0

    #@94
    move-wide/from16 v26, v0

    #@96
    const-wide v28, 0x408f400000000000L    # 1000.0

    #@9b
    div-double v26, v26, v28

    #@9d
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    #@a0
    move-result-wide v26

    #@a1
    move-wide/from16 v0, v26

    #@a3
    double-to-int v0, v0

    #@a4
    move/from16 v26, v0

    #@a6
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v26

    #@aa
    .line 420
    const/16 v27, 0x1

    #@ac
    aget v27, v21, v27

    #@ae
    move/from16 v0, v27

    #@b0
    int-to-double v0, v0

    #@b1
    move-wide/from16 v28, v0

    #@b3
    const-wide v30, 0x408f400000000000L    # 1000.0

    #@b8
    div-double v28, v28, v30

    #@ba
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    #@bd
    move-result-wide v28

    #@be
    move-wide/from16 v0, v28

    #@c0
    double-to-int v0, v0

    #@c1
    move/from16 v27, v0

    #@c3
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c6
    move-result-object v27

    #@c7
    .line 418
    invoke-static/range {v26 .. v27}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@ca
    move-result-object v26

    #@cb
    aput-object v26, v23, v12

    #@cd
    move v12, v13

    #@ce
    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_2

    #@cf
    .line 422
    .end local v21    # "r":[I
    :cond_4
    sget-object v26, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@d1
    move-object/from16 v0, p0

    #@d3
    move-object/from16 v1, v26

    #@d5
    move-object/from16 v2, v23

    #@d7
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@da
    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    #@dd
    move-result-object v10

    #@de
    .line 431
    .local v10, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x5

    #@e0
    move/from16 v0, v26

    #@e2
    new-array v9, v0, [Ljava/lang/String;

    #@e4
    .line 432
    const-string/jumbo v26, "off"

    #@e7
    const/16 v27, 0x0

    #@e9
    aput-object v26, v9, v27

    #@eb
    .line 433
    const-string/jumbo v26, "auto"

    #@ee
    const/16 v27, 0x1

    #@f0
    aput-object v26, v9, v27

    #@f2
    .line 434
    const-string/jumbo v26, "on"

    #@f5
    const/16 v27, 0x2

    #@f7
    aput-object v26, v9, v27

    #@f9
    .line 435
    const-string/jumbo v26, "red-eye"

    #@fc
    const/16 v27, 0x3

    #@fe
    aput-object v26, v9, v27

    #@100
    .line 437
    const-string/jumbo v26, "torch"

    #@103
    const/16 v27, 0x4

    #@105
    aput-object v26, v9, v27

    #@107
    .line 440
    .local v9, "flashModeStrings":[Ljava/lang/String;
    const/16 v26, 0x1

    #@109
    .line 441
    const/16 v27, 0x2

    #@10b
    .line 442
    const/16 v28, 0x3

    #@10d
    .line 443
    const/16 v29, 0x4

    #@10f
    .line 439
    filled-new-array/range {v26 .. v29}, [I

    #@112
    move-result-object v8

    #@113
    .line 445
    .local v8, "flashModeInts":[I
    invoke-static {v10, v9, v8}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    #@116
    move-result-object v4

    #@117
    .line 449
    .local v4, "aeAvail":[I
    if-eqz v4, :cond_5

    #@119
    array-length v0, v4

    #@11a
    move/from16 v26, v0

    #@11c
    if-nez v26, :cond_6

    #@11e
    .line 450
    :cond_5
    const/16 v26, 0x1

    #@120
    move/from16 v0, v26

    #@122
    new-array v4, v0, [I

    #@124
    .line 451
    .end local v4    # "aeAvail":[I
    const/16 v26, 0x1

    #@126
    const/16 v27, 0x0

    #@128
    aput v26, v4, v27

    #@12a
    .line 456
    .restart local v4    # "aeAvail":[I
    :cond_6
    sget-object v26, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@12c
    move-object/from16 v0, p0

    #@12e
    move-object/from16 v1, v26

    #@130
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@133
    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    #@136
    move-result v17

    #@137
    .line 464
    .local v17, "min":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    #@13a
    move-result v16

    #@13b
    .line 466
    .local v16, "max":I
    sget-object v26, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@13d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@140
    move-result-object v27

    #@141
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@144
    move-result-object v28

    #@145
    invoke-static/range {v27 .. v28}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    #@148
    move-result-object v27

    #@149
    move-object/from16 v0, p0

    #@14b
    move-object/from16 v1, v26

    #@14d
    move-object/from16 v2, v27

    #@14f
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@152
    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    #@155
    move-result v25

    #@156
    .line 475
    .local v25, "step":F
    sget-object v26, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@158
    invoke-static/range {v25 .. v25}, Landroid/hardware/camera2/utils/ParamsUtils;->createRational(F)Landroid/util/Rational;

    #@15b
    move-result-object v27

    #@15c
    move-object/from16 v0, p0

    #@15e
    move-object/from16 v1, v26

    #@160
    move-object/from16 v2, v27

    #@162
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@165
    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    #@168
    move-result v5

    #@169
    .line 484
    .local v5, "aeLockAvailable":Z
    sget-object v26, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@16b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16e
    move-result-object v27

    #@16f
    move-object/from16 v0, p0

    #@171
    move-object/from16 v1, v26

    #@173
    move-object/from16 v2, v27

    #@175
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@178
    .line 381
    return-void
.end method

.method private static mapControlAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v8, 0x7

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 495
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    #@6
    move-result-object v3

    #@7
    .line 497
    .local v3, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v8, [Ljava/lang/String;

    #@9
    .line 498
    const-string/jumbo v4, "auto"

    #@c
    aput-object v4, v2, v6

    #@e
    .line 499
    const-string/jumbo v4, "continuous-picture"

    #@11
    aput-object v4, v2, v7

    #@13
    .line 500
    const-string/jumbo v4, "continuous-video"

    #@16
    const/4 v5, 0x2

    #@17
    aput-object v4, v2, v5

    #@19
    .line 501
    const-string/jumbo v4, "edof"

    #@1c
    const/4 v5, 0x3

    #@1d
    aput-object v4, v2, v5

    #@1f
    .line 502
    const-string/jumbo v4, "infinity"

    #@22
    const/4 v5, 0x4

    #@23
    aput-object v4, v2, v5

    #@25
    .line 503
    const-string/jumbo v4, "macro"

    #@28
    const/4 v5, 0x5

    #@29
    aput-object v4, v2, v5

    #@2b
    .line 504
    const-string/jumbo v4, "fixed"

    #@2e
    const/4 v5, 0x6

    #@2f
    aput-object v4, v2, v5

    #@31
    .line 507
    .local v2, "focusModeStrings":[Ljava/lang/String;
    new-array v1, v8, [I

    #@33
    .local v1, "focusModeInts":[I
    fill-array-data v1, :array_0

    #@36
    .line 517
    invoke-static {v3, v2, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    #@39
    move-result-object v0

    #@3a
    .line 521
    .local v0, "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    #@3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@3f
    move-result v4

    #@40
    if-nez v4, :cond_1

    #@42
    .line 522
    :cond_0
    const-string/jumbo v4, "LegacyMetadataMapper"

    #@45
    const-string/jumbo v5, "No AF modes supported (HAL bug); defaulting to AF_MODE_OFF only"

    #@48
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 523
    new-instance v0, Ljava/util/ArrayList;

    #@4d
    .end local v0    # "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@50
    .line 524
    .restart local v0    # "afAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v4

    #@54
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@57
    .line 527
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@59
    invoke-static {v0}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@60
    .line 490
    return-void

    #@61
    .line 507
    nop

    #@62
    :array_0
    .array-data 4
        0x1
        0x4
        0x3
        0x5
        0x0
        0x2
        0x0
    .end array-data
.end method

.method private static mapControlAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v7, 0x1

    #@4
    .line 542
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    .line 544
    .local v4, "wbModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v3, v8, [Ljava/lang/String;

    #@a
    .line 545
    const-string/jumbo v5, "auto"

    #@d
    aput-object v5, v3, v6

    #@f
    .line 546
    const-string/jumbo v5, "incandescent"

    #@12
    aput-object v5, v3, v7

    #@14
    .line 547
    const-string/jumbo v5, "fluorescent"

    #@17
    const/4 v6, 0x2

    #@18
    aput-object v5, v3, v6

    #@1a
    .line 548
    const-string/jumbo v5, "warm-fluorescent"

    #@1d
    const/4 v6, 0x3

    #@1e
    aput-object v5, v3, v6

    #@20
    .line 549
    const-string/jumbo v5, "daylight"

    #@23
    const/4 v6, 0x4

    #@24
    aput-object v5, v3, v6

    #@26
    .line 550
    const-string/jumbo v5, "cloudy-daylight"

    #@29
    const/4 v6, 0x5

    #@2a
    aput-object v5, v3, v6

    #@2c
    .line 551
    const-string/jumbo v5, "twilight"

    #@2f
    const/4 v6, 0x6

    #@30
    aput-object v5, v3, v6

    #@32
    .line 552
    const-string/jumbo v5, "shade"

    #@35
    const/4 v6, 0x7

    #@36
    aput-object v5, v3, v6

    #@38
    .line 555
    .local v3, "wbModeStrings":[Ljava/lang/String;
    new-array v2, v8, [I

    #@3a
    .local v2, "wbModeInts":[I
    fill-array-data v2, :array_0

    #@3d
    .line 567
    invoke-static {v4, v3, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    #@40
    move-result-object v0

    #@41
    .line 571
    .local v0, "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    #@43
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@46
    move-result v5

    #@47
    if-nez v5, :cond_1

    #@49
    .line 572
    :cond_0
    const-string/jumbo v5, "LegacyMetadataMapper"

    #@4c
    const-string/jumbo v6, "No AWB modes supported (HAL bug); defaulting to AWB_MODE_AUTO only"

    #@4f
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 573
    new-instance v0, Ljava/util/ArrayList;

    #@54
    .end local v0    # "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@57
    .line 574
    .restart local v0    # "awbAvail":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5a
    move-result-object v5

    #@5b
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5e
    .line 577
    :cond_1
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@60
    invoke-static {v0}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    #@63
    move-result-object v6

    #@64
    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@67
    .line 589
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    #@6a
    move-result v1

    #@6b
    .line 591
    .local v1, "awbLockAvailable":Z
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@6d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@74
    .line 536
    return-void

    #@75
    .line 555
    nop

    #@76
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private static mapControlOther(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 15
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    #@3
    move-result v11

    #@4
    if-eqz v11, :cond_6

    #@6
    .line 602
    const/4 v11, 0x0

    #@7
    .line 603
    const/4 v12, 0x1

    #@8
    .line 602
    filled-new-array {v11, v12}, [I

    #@b
    move-result-object v8

    #@c
    .line 606
    .local v8, "stabModes":[I
    :goto_0
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@e
    invoke-virtual {p0, v11, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@11
    .line 612
    const/4 v0, 0x0

    #@12
    .local v0, "AE":I
    const/4 v2, 0x1

    #@13
    .local v2, "AWB":I
    const/4 v1, 0x2

    #@14
    .line 614
    .local v1, "AF":I
    const/4 v11, 0x3

    #@15
    new-array v5, v11, [I

    #@17
    .line 615
    .local v5, "maxRegions":[I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    #@1a
    move-result v11

    #@1b
    const/4 v12, 0x0

    #@1c
    aput v11, v5, v12

    #@1e
    .line 616
    const/4 v11, 0x0

    #@1f
    const/4 v12, 0x1

    #@20
    aput v11, v5, v12

    #@22
    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    #@25
    move-result v11

    #@26
    const/4 v12, 0x2

    #@27
    aput v11, v5, v12

    #@29
    .line 626
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2b
    invoke-virtual {p0, v11, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@2e
    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    #@31
    move-result-object v3

    #@32
    .line 632
    .local v3, "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_7

    #@34
    const/4 v11, 0x0

    #@35
    new-array v9, v11, [I

    #@37
    .line 635
    .local v9, "supportedEffectModes":[I
    :goto_1
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@39
    invoke-virtual {p0, v11, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@3c
    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    #@3f
    move-result v4

    #@40
    .line 641
    .local v4, "maxNumDetectedFaces":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    #@43
    move-result-object v7

    #@44
    .line 643
    .local v7, "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v11, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacySceneModes:[Ljava/lang/String;

    #@46
    sget-object v12, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sSceneModes:[I

    #@48
    invoke-static {v7, v11, v12}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntList(Ljava/util/List;[Ljava/lang/String;[I)Ljava/util/List;

    #@4b
    move-result-object v10

    #@4c
    .line 646
    .local v10, "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_0

    #@4e
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@51
    move-result v11

    #@52
    const/4 v12, 0x1

    #@53
    if-ne v11, v12, :cond_0

    #@55
    .line 647
    const/4 v11, 0x0

    #@56
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v11

    #@5a
    const-string/jumbo v12, "auto"

    #@5d
    if-ne v11, v12, :cond_0

    #@5f
    .line 648
    const/4 v10, 0x0

    #@60
    .line 651
    .end local v10    # "supportedSceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v6, 0x1

    #@61
    .line 652
    .local v6, "sceneModeSupported":Z
    if-nez v10, :cond_1

    #@63
    if-nez v4, :cond_1

    #@65
    .line 653
    const/4 v6, 0x0

    #@66
    .line 656
    :cond_1
    if-eqz v6, :cond_8

    #@68
    .line 657
    if-nez v10, :cond_2

    #@6a
    .line 658
    new-instance v10, Ljava/util/ArrayList;

    #@6c
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@6f
    .line 660
    :cond_2
    if-lez v4, :cond_3

    #@71
    .line 661
    const/4 v11, 0x1

    #@72
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v11

    #@76
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@79
    .line 664
    :cond_3
    const/4 v11, 0x0

    #@7a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v11

    #@7e
    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@81
    move-result v11

    #@82
    if-eqz v11, :cond_5

    #@84
    .line 665
    :cond_4
    new-instance v11, Ljava/lang/Integer;

    #@86
    const/4 v12, 0x0

    #@87
    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    #@8a
    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@8d
    move-result v11

    #@8e
    if-nez v11, :cond_4

    #@90
    .line 667
    :cond_5
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@92
    invoke-static {v10}, Landroid/hardware/camera2/utils/ArrayUtils;->toIntArray(Ljava/util/List;)[I

    #@95
    move-result-object v12

    #@96
    invoke-virtual {p0, v11, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@99
    .line 675
    :goto_2
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@9b
    if-eqz v6, :cond_9

    #@9d
    .line 676
    const/4 v11, 0x1

    #@9e
    const/4 v13, 0x2

    #@9f
    filled-new-array {v11, v13}, [I

    #@a2
    move-result-object v11

    #@a3
    .line 675
    :goto_3
    invoke-virtual {p0, v12, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@a6
    .line 596
    return-void

    #@a7
    .line 604
    .end local v0    # "AE":I
    .end local v1    # "AF":I
    .end local v2    # "AWB":I
    .end local v3    # "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "maxNumDetectedFaces":I
    .end local v5    # "maxRegions":[I
    .end local v6    # "sceneModeSupported":Z
    .end local v7    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "stabModes":[I
    .end local v9    # "supportedEffectModes":[I
    :cond_6
    const/4 v11, 0x1

    #@a8
    new-array v8, v11, [I

    #@aa
    const/4 v11, 0x0

    #@ab
    const/4 v12, 0x0

    #@ac
    aput v11, v8, v12

    #@ae
    .restart local v8    # "stabModes":[I
    goto/16 :goto_0

    #@b0
    .line 633
    .restart local v0    # "AE":I
    .restart local v1    # "AF":I
    .restart local v2    # "AWB":I
    .restart local v3    # "effectModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "maxRegions":[I
    :cond_7
    sget-object v11, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sLegacyEffectMode:[Ljava/lang/String;

    #@b2
    .line 634
    sget-object v12, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->sEffectModes:[I

    #@b4
    .line 633
    invoke-static {v3, v11, v12}, Landroid/hardware/camera2/utils/ArrayUtils;->convertStringListToIntArray(Ljava/util/List;[Ljava/lang/String;[I)[I

    #@b7
    move-result-object v9

    #@b8
    .restart local v9    # "supportedEffectModes":[I
    goto/16 :goto_1

    #@ba
    .line 669
    .restart local v4    # "maxNumDetectedFaces":I
    .restart local v6    # "sceneModeSupported":Z
    .restart local v7    # "sceneModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@bc
    const/4 v12, 0x1

    #@bd
    new-array v12, v12, [I

    #@bf
    const/4 v13, 0x0

    #@c0
    const/4 v14, 0x0

    #@c1
    aput v13, v12, v14

    #@c3
    invoke-virtual {p0, v11, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@c6
    goto :goto_2

    #@c7
    .line 677
    :cond_9
    const/4 v11, 0x1

    #@c8
    new-array v11, v11, [I

    #@ca
    const/4 v13, 0x1

    #@cb
    const/4 v14, 0x0

    #@cc
    aput v13, v11, v14

    #@ce
    goto :goto_3
.end method

.method private static mapFlash(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 709
    const/4 v0, 0x0

    #@1
    .line 710
    .local v0, "flashAvailable":Z
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    #@4
    move-result-object v1

    #@5
    .line 712
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    #@7
    .line 715
    const-string/jumbo v2, "off"

    #@a
    .line 714
    invoke-static {v1, v2}, Landroid/hardware/camera2/utils/ListUtils;->listElementsEqualTo(Ljava/util/List;Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    const/4 v0, 0x0

    #@11
    .line 721
    :cond_0
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@1a
    .line 708
    return-void

    #@1b
    .line 714
    :cond_1
    const/4 v0, 0x1

    #@1c
    goto :goto_0
.end method

.method private static mapJpeg(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    .line 727
    .local v1, "thumbnailSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    #@6
    .line 728
    invoke-static {v1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSizeListToArray(Ljava/util/List;)[Landroid/util/Size;

    #@9
    move-result-object v0

    #@a
    .line 729
    .local v0, "sizes":[Landroid/util/Size;
    new-instance v2, Landroid/hardware/camera2/utils/SizeAreaComparator;

    #@c
    invoke-direct {v2}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    #@f
    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@12
    .line 730
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@14
    invoke-virtual {p0, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@17
    .line 724
    .end local v0    # "sizes":[Landroid/util/Size;
    :cond_0
    return-void
.end method

.method private static mapLens(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 689
    const-string/jumbo v1, "fixed"

    #@3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 693
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@17
    .line 704
    :cond_0
    const/4 v1, 0x1

    #@18
    new-array v0, v1, [F

    #@1a
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x0

    #@1f
    aput v1, v0, v2

    #@21
    .line 705
    .local v0, "focalLengths":[F
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@23
    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@26
    .line 680
    return-void
.end method

.method private static mapRequest(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 13
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 738
    const/4 v10, 0x1

    #@1
    new-array v5, v10, [I

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v11, 0x0

    #@5
    aput v10, v5, v11

    #@7
    .line 739
    .local v5, "capabilities":[I
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@9
    invoke-virtual {p0, v10, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@c
    .line 749
    const/16 v10, 0x24

    #@e
    new-array v2, v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@10
    .line 750
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@12
    const/4 v11, 0x0

    #@13
    aput-object v10, v2, v11

    #@15
    .line 751
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@17
    const/4 v11, 0x1

    #@18
    aput-object v10, v2, v11

    #@1a
    .line 752
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1c
    const/4 v11, 0x2

    #@1d
    aput-object v10, v2, v11

    #@1f
    .line 753
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@21
    const/4 v11, 0x3

    #@22
    aput-object v10, v2, v11

    #@24
    .line 754
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@26
    const/4 v11, 0x4

    #@27
    aput-object v10, v2, v11

    #@29
    .line 755
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2b
    const/4 v11, 0x5

    #@2c
    aput-object v10, v2, v11

    #@2e
    .line 756
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@30
    const/4 v11, 0x6

    #@31
    aput-object v10, v2, v11

    #@33
    .line 757
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@35
    const/4 v11, 0x7

    #@36
    aput-object v10, v2, v11

    #@38
    .line 758
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@3a
    const/16 v11, 0x8

    #@3c
    aput-object v10, v2, v11

    #@3e
    .line 759
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@40
    const/16 v11, 0x9

    #@42
    aput-object v10, v2, v11

    #@44
    .line 760
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@46
    const/16 v11, 0xa

    #@48
    aput-object v10, v2, v11

    #@4a
    .line 761
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@4c
    const/16 v11, 0xb

    #@4e
    aput-object v10, v2, v11

    #@50
    .line 762
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@52
    const/16 v11, 0xc

    #@54
    aput-object v10, v2, v11

    #@56
    .line 763
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@58
    const/16 v11, 0xd

    #@5a
    aput-object v10, v2, v11

    #@5c
    .line 764
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@5e
    const/16 v11, 0xe

    #@60
    aput-object v10, v2, v11

    #@62
    .line 765
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@64
    const/16 v11, 0xf

    #@66
    aput-object v10, v2, v11

    #@68
    .line 766
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@6a
    const/16 v11, 0x10

    #@6c
    aput-object v10, v2, v11

    #@6e
    .line 767
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@70
    const/16 v11, 0x11

    #@72
    aput-object v10, v2, v11

    #@74
    .line 768
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@76
    const/16 v11, 0x12

    #@78
    aput-object v10, v2, v11

    #@7a
    .line 769
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@7c
    const/16 v11, 0x13

    #@7e
    aput-object v10, v2, v11

    #@80
    .line 770
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@82
    const/16 v11, 0x14

    #@84
    aput-object v10, v2, v11

    #@86
    .line 771
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@88
    const/16 v11, 0x15

    #@8a
    aput-object v10, v2, v11

    #@8c
    .line 772
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@8e
    const/16 v11, 0x16

    #@90
    aput-object v10, v2, v11

    #@92
    .line 773
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@94
    const/16 v11, 0x17

    #@96
    aput-object v10, v2, v11

    #@98
    .line 774
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@9a
    const/16 v11, 0x18

    #@9c
    aput-object v10, v2, v11

    #@9e
    .line 775
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@a0
    const/16 v11, 0x19

    #@a2
    aput-object v10, v2, v11

    #@a4
    .line 777
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@a6
    const/16 v11, 0x1a

    #@a8
    aput-object v10, v2, v11

    #@aa
    .line 778
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@ac
    const/16 v11, 0x1b

    #@ae
    aput-object v10, v2, v11

    #@b0
    .line 779
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@b2
    const/16 v11, 0x1c

    #@b4
    aput-object v10, v2, v11

    #@b6
    .line 780
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@b8
    const/16 v11, 0x1d

    #@ba
    aput-object v10, v2, v11

    #@bc
    .line 781
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@be
    const/16 v11, 0x1e

    #@c0
    aput-object v10, v2, v11

    #@c2
    .line 782
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@c4
    const/16 v11, 0x1f

    #@c6
    aput-object v10, v2, v11

    #@c8
    .line 783
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@ca
    const/16 v11, 0x20

    #@cc
    aput-object v10, v2, v11

    #@ce
    .line 784
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@d0
    const/16 v11, 0x21

    #@d2
    aput-object v10, v2, v11

    #@d4
    .line 785
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@d6
    const/16 v11, 0x22

    #@d8
    aput-object v10, v2, v11

    #@da
    .line 786
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@dc
    const/16 v11, 0x23

    #@de
    aput-object v10, v2, v11

    #@e0
    .line 788
    .local v2, "availableKeys":[Landroid/hardware/camera2/CameraCharacteristics$Key;, "[Landroid/hardware/camera2/CameraCharacteristics$Key<*>;"
    new-instance v6, Ljava/util/ArrayList;

    #@e2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@e5
    move-result-object v10

    #@e6
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@e9
    .line 793
    .local v6, "characteristicsKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CameraCharacteristics$Key<*>;>;"
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@eb
    invoke-virtual {p0, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@ee
    move-result-object v10

    #@ef
    if-eqz v10, :cond_0

    #@f1
    .line 794
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@f3
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f6
    .line 797
    :cond_0
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@f8
    .line 798
    const/4 v10, 0x0

    #@f9
    new-array v10, v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@fb
    invoke-interface {v6, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@fe
    move-result-object v10

    #@ff
    check-cast v10, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@101
    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    #@104
    move-result-object v10

    #@105
    .line 797
    invoke-virtual {p0, v11, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@108
    .line 805
    const/16 v10, 0x1b

    #@10a
    new-array v7, v10, [Landroid/hardware/camera2/CaptureRequest$Key;

    #@10c
    .line 806
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@10e
    const/4 v11, 0x0

    #@10f
    aput-object v10, v7, v11

    #@111
    .line 807
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@113
    const/4 v11, 0x1

    #@114
    aput-object v10, v7, v11

    #@116
    .line 808
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@118
    const/4 v11, 0x2

    #@119
    aput-object v10, v7, v11

    #@11b
    .line 809
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@11d
    const/4 v11, 0x3

    #@11e
    aput-object v10, v7, v11

    #@120
    .line 810
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@122
    const/4 v11, 0x4

    #@123
    aput-object v10, v7, v11

    #@125
    .line 811
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@127
    const/4 v11, 0x5

    #@128
    aput-object v10, v7, v11

    #@12a
    .line 812
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@12c
    const/4 v11, 0x6

    #@12d
    aput-object v10, v7, v11

    #@12f
    .line 813
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    #@131
    const/4 v11, 0x7

    #@132
    aput-object v10, v7, v11

    #@134
    .line 814
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@136
    const/16 v11, 0x8

    #@138
    aput-object v10, v7, v11

    #@13a
    .line 815
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@13c
    const/16 v11, 0x9

    #@13e
    aput-object v10, v7, v11

    #@140
    .line 816
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@142
    const/16 v11, 0xa

    #@144
    aput-object v10, v7, v11

    #@146
    .line 817
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@148
    const/16 v11, 0xb

    #@14a
    aput-object v10, v7, v11

    #@14c
    .line 818
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@14e
    const/16 v11, 0xc

    #@150
    aput-object v10, v7, v11

    #@152
    .line 819
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@154
    const/16 v11, 0xd

    #@156
    aput-object v10, v7, v11

    #@158
    .line 820
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@15a
    const/16 v11, 0xe

    #@15c
    aput-object v10, v7, v11

    #@15e
    .line 821
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@160
    const/16 v11, 0xf

    #@162
    aput-object v10, v7, v11

    #@164
    .line 822
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    #@166
    const/16 v11, 0x10

    #@168
    aput-object v10, v7, v11

    #@16a
    .line 823
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    #@16c
    const/16 v11, 0x11

    #@16e
    aput-object v10, v7, v11

    #@170
    .line 824
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    #@172
    const/16 v11, 0x12

    #@174
    aput-object v10, v7, v11

    #@176
    .line 825
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@178
    const/16 v11, 0x13

    #@17a
    aput-object v10, v7, v11

    #@17c
    .line 826
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@17e
    const/16 v11, 0x14

    #@180
    aput-object v10, v7, v11

    #@182
    .line 827
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@184
    const/16 v11, 0x15

    #@186
    aput-object v10, v7, v11

    #@188
    .line 828
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@18a
    const/16 v11, 0x16

    #@18c
    aput-object v10, v7, v11

    #@18e
    .line 829
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    #@190
    const/16 v11, 0x17

    #@192
    aput-object v10, v7, v11

    #@194
    .line 830
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@196
    const/16 v11, 0x18

    #@198
    aput-object v10, v7, v11

    #@19a
    .line 831
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@19c
    const/16 v11, 0x19

    #@19e
    aput-object v10, v7, v11

    #@1a0
    .line 832
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1a2
    const/16 v11, 0x1a

    #@1a4
    aput-object v10, v7, v11

    #@1a6
    .line 835
    .local v7, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    new-instance v0, Ljava/util/ArrayList;

    #@1a8
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1ab
    move-result-object v10

    #@1ac
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1af
    .line 837
    .local v0, "availableKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    #@1b2
    move-result v10

    #@1b3
    if-lez v10, :cond_1

    #@1b5
    .line 838
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1b7
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ba
    .line 840
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    #@1bd
    move-result v10

    #@1be
    if-lez v10, :cond_2

    #@1c0
    .line 841
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1c2
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c5
    .line 845
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1c8
    move-result v10

    #@1c9
    new-array v3, v10, [Landroid/hardware/camera2/CaptureRequest$Key;

    #@1cb
    .line 846
    .local v3, "availableRequestKeys":[Landroid/hardware/camera2/CaptureRequest$Key;, "[Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1ce
    .line 847
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1d0
    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureRequest$Key;)[I

    #@1d3
    move-result-object v11

    #@1d4
    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@1d7
    .line 854
    const/16 v10, 0x17

    #@1d9
    new-array v8, v10, [Landroid/hardware/camera2/CaptureResult$Key;

    #@1db
    .line 855
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1dd
    const/4 v11, 0x0

    #@1de
    aput-object v10, v8, v11

    #@1e0
    .line 856
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1e2
    const/4 v11, 0x1

    #@1e3
    aput-object v10, v8, v11

    #@1e5
    .line 857
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@1e7
    const/4 v11, 0x2

    #@1e8
    aput-object v10, v8, v11

    #@1ea
    .line 858
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    #@1ec
    const/4 v11, 0x3

    #@1ed
    aput-object v10, v8, v11

    #@1ef
    .line 859
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1f1
    const/4 v11, 0x4

    #@1f2
    aput-object v10, v8, v11

    #@1f4
    .line 860
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1f6
    const/4 v11, 0x5

    #@1f7
    aput-object v10, v8, v11

    #@1f9
    .line 861
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    #@1fb
    const/4 v11, 0x6

    #@1fc
    aput-object v10, v8, v11

    #@1fe
    .line 862
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@200
    const/4 v11, 0x7

    #@201
    aput-object v10, v8, v11

    #@203
    .line 863
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    #@205
    const/16 v11, 0x8

    #@207
    aput-object v10, v8, v11

    #@209
    .line 864
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@20b
    const/16 v11, 0x9

    #@20d
    aput-object v10, v8, v11

    #@20f
    .line 865
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@211
    const/16 v11, 0xa

    #@213
    aput-object v10, v8, v11

    #@215
    .line 866
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    #@217
    const/16 v11, 0xb

    #@219
    aput-object v10, v8, v11

    #@21b
    .line 867
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    #@21d
    const/16 v11, 0xc

    #@21f
    aput-object v10, v8, v11

    #@221
    .line 868
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    #@223
    const/16 v11, 0xd

    #@225
    aput-object v10, v8, v11

    #@227
    .line 869
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@229
    const/16 v11, 0xe

    #@22b
    aput-object v10, v8, v11

    #@22d
    .line 870
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    #@22f
    const/16 v11, 0xf

    #@231
    aput-object v10, v8, v11

    #@233
    .line 871
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    #@235
    const/16 v11, 0x10

    #@237
    aput-object v10, v8, v11

    #@239
    .line 872
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    #@23b
    const/16 v11, 0x11

    #@23d
    aput-object v10, v8, v11

    #@23f
    .line 873
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@241
    const/16 v11, 0x12

    #@243
    aput-object v10, v8, v11

    #@245
    .line 874
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    #@247
    const/16 v11, 0x13

    #@249
    aput-object v10, v8, v11

    #@24b
    .line 875
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    #@24d
    const/16 v11, 0x14

    #@24f
    aput-object v10, v8, v11

    #@251
    .line 876
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    #@253
    const/16 v11, 0x15

    #@255
    aput-object v10, v8, v11

    #@257
    .line 877
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@259
    const/16 v11, 0x16

    #@25b
    aput-object v10, v8, v11

    #@25d
    .line 881
    .local v8, "defaultAvailableKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    new-instance v1, Ljava/util/ArrayList;

    #@25f
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@262
    move-result-object v10

    #@263
    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@266
    .line 883
    .local v1, "availableKeys":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    #@269
    move-result v10

    #@26a
    if-lez v10, :cond_3

    #@26c
    .line 884
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    #@26e
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@271
    .line 886
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    #@274
    move-result v10

    #@275
    if-lez v10, :cond_4

    #@277
    .line 887
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    #@279
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27c
    .line 891
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@27f
    move-result v10

    #@280
    new-array v4, v10, [Landroid/hardware/camera2/CaptureResult$Key;

    #@282
    .line 892
    .local v4, "availableResultKeys":[Landroid/hardware/camera2/CaptureResult$Key;, "[Landroid/hardware/camera2/CaptureResult$Key<*>;"
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@285
    .line 893
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@287
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->getTagsForKeys([Landroid/hardware/camera2/CaptureResult$Key;)[I

    #@28a
    move-result-object v11

    #@28b
    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@28e
    .line 901
    const/4 v10, 0x0

    #@28f
    .line 903
    const/4 v11, 0x3

    #@290
    .line 905
    const/4 v12, 0x1

    #@291
    .line 899
    filled-new-array {v10, v11, v12}, [I

    #@294
    move-result-object v9

    #@295
    .line 907
    .local v9, "outputStreams":[I
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@297
    invoke-virtual {p0, v10, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@29a
    .line 912
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_INPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@29c
    const/4 v11, 0x0

    #@29d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a0
    move-result-object v11

    #@2a1
    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@2a4
    .line 917
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2a6
    const/4 v11, 0x1

    #@2a7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2aa
    move-result-object v11

    #@2ab
    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@2ae
    .line 922
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2b0
    .line 923
    const/4 v11, 0x6

    #@2b1
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@2b4
    move-result-object v11

    #@2b5
    .line 922
    invoke-virtual {p0, v10, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@2b8
    .line 734
    return-void
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 930
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2
    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getMaxZoomRatio(Landroid/hardware/Camera$Parameters;)F

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@d
    .line 935
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_CROPPING_TYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@17
    .line 926
    return-void
.end method

.method private static mapScalerStreamConfigs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 26
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 256
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 266
    .local v9, "availableStreamConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    #@8
    move-result-object v22

    #@9
    .line 267
    .local v22, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    #@c
    move-result-object v16

    #@d
    .line 279
    .local v16, "jpegSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v8, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    #@f
    invoke-direct {v8}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    #@12
    .line 282
    .local v8, "areaComparator":Landroid/hardware/camera2/legacy/SizeAreaComparator;
    move-object/from16 v0, v22

    #@14
    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@17
    .line 284
    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;

    #@1a
    move-result-object v20

    #@1b
    .line 285
    .local v20, "maxJpegSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v20

    #@1d
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    #@1f
    int-to-float v2, v2

    #@20
    const/high16 v3, 0x3f800000    # 1.0f

    #@22
    mul-float/2addr v2, v3

    #@23
    move-object/from16 v0, v20

    #@25
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    #@27
    int-to-float v3, v3

    #@28
    div-float v15, v2, v3

    #@2a
    .line 293
    .local v15, "jpegAspectRatio":F
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    #@2d
    move-result v2

    #@2e
    if-nez v2, :cond_0

    #@30
    .line 294
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@33
    move-result v2

    #@34
    add-int/lit8 v14, v2, -0x1

    #@36
    .line 295
    .local v14, "index":I
    move-object/from16 v0, v22

    #@38
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v25

    #@3c
    check-cast v25, Landroid/hardware/Camera$Size;

    #@3e
    .line 297
    .local v25, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v25

    #@40
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    #@42
    int-to-float v2, v2

    #@43
    const/high16 v3, 0x3f800000    # 1.0f

    #@45
    mul-float/2addr v2, v3

    #@46
    move-object/from16 v0, v25

    #@48
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    #@4a
    int-to-float v3, v3

    #@4b
    div-float v21, v2, v3

    #@4d
    .line 299
    .local v21, "previewAspectRatio":F
    sub-float v2, v15, v21

    #@4f
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@52
    move-result v2

    #@53
    .line 300
    const v3, 0x3c23d70a    # 0.01f

    #@56
    .line 299
    cmpl-float v2, v2, v3

    #@58
    if-ltz v2, :cond_0

    #@5a
    .line 301
    move-object/from16 v0, v22

    #@5c
    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5f
    goto :goto_0

    #@60
    .line 314
    .end local v14    # "index":I
    .end local v21    # "previewAspectRatio":F
    .end local v25    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    #@63
    move-result v2

    #@64
    if-eqz v2, :cond_1

    #@66
    .line 316
    const-string/jumbo v2, "LegacyMetadataMapper"

    #@69
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v4, "mapScalerStreamConfigs - failed to find any preview size matching JPEG aspect ratio "

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    #@83
    move-result-object v22

    #@84
    .line 322
    :cond_1
    invoke-static {v8}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@87
    move-result-object v2

    #@88
    move-object/from16 v0, v22

    #@8a
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@8d
    .line 326
    const/16 v2, 0x22

    #@8f
    .line 325
    move-object/from16 v0, v22

    #@91
    invoke-static {v9, v2, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    #@94
    .line 328
    const/16 v2, 0x23

    #@96
    .line 327
    move-object/from16 v0, v22

    #@98
    invoke-static {v9, v2, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    #@9b
    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    #@9e
    move-result-object v2

    #@9f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a2
    move-result-object v11

    #@a3
    .local v11, "format$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_3

    #@a9
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ac
    move-result-object v2

    #@ad
    check-cast v2, Ljava/lang/Integer;

    #@af
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@b2
    move-result v10

    #@b3
    .line 330
    .local v10, "format":I
    invoke-static {v10}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    #@b6
    move-result v2

    #@b7
    if-eqz v2, :cond_2

    #@b9
    const/16 v2, 0x11

    #@bb
    if-eq v10, v2, :cond_2

    #@bd
    .line 331
    move-object/from16 v0, v22

    #@bf
    invoke-static {v9, v10, v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    #@c2
    goto :goto_1

    #@c3
    .line 343
    .end local v10    # "format":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    #@c6
    move-result-object v2

    #@c7
    const/16 v3, 0x21

    #@c9
    .line 342
    invoke-static {v9, v3, v2}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->appendStreamConfig(Ljava/util/ArrayList;ILjava/util/List;)V

    #@cc
    .line 347
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@ce
    .line 348
    const/4 v2, 0x0

    #@cf
    new-array v2, v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@d1
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d4
    move-result-object v2

    #@d5
    check-cast v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@d7
    .line 347
    move-object/from16 v0, p0

    #@d9
    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@dc
    .line 354
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@de
    const/4 v3, 0x0

    #@df
    new-array v3, v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@e1
    move-object/from16 v0, p0

    #@e3
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@e6
    .line 357
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@e9
    move-result v2

    #@ea
    new-array v0, v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@ec
    move-object/from16 v17, v0

    #@ee
    .line 358
    .local v17, "jpegStalls":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v12, 0x0

    #@ef
    .line 359
    .local v12, "i":I
    const-wide/16 v18, -0x1

    #@f1
    .line 360
    .local v18, "longestStallDuration":J
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f4
    move-result-object v24

    #@f5
    .local v24, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@f8
    move-result v2

    #@f9
    if-eqz v2, :cond_5

    #@fb
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@fe
    move-result-object v23

    #@ff
    check-cast v23, Landroid/hardware/Camera$Size;

    #@101
    .line 361
    .local v23, "s":Landroid/hardware/Camera$Size;
    invoke-static/range {v23 .. v23}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->calculateJpegStallDuration(Landroid/hardware/Camera$Size;)J

    #@104
    move-result-wide v6

    #@105
    .line 362
    .local v6, "stallDuration":J
    add-int/lit8 v13, v12, 0x1

    #@107
    .end local v12    # "i":I
    .local v13, "i":I
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@109
    move-object/from16 v0, v23

    #@10b
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    #@10d
    .line 363
    move-object/from16 v0, v23

    #@10f
    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    #@111
    .line 362
    const/16 v3, 0x21

    #@113
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    #@116
    aput-object v2, v17, v12

    #@118
    .line 364
    cmp-long v2, v18, v6

    #@11a
    if-gez v2, :cond_4

    #@11c
    .line 365
    move-wide/from16 v18, v6

    #@11e
    :cond_4
    move v12, v13

    #@11f
    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_2

    #@120
    .line 372
    .end local v6    # "stallDuration":J
    .end local v23    # "s":Landroid/hardware/Camera$Size;
    :cond_5
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@122
    move-object/from16 v0, p0

    #@124
    move-object/from16 v1, v17

    #@126
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@129
    .line 377
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@12b
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12e
    move-result-object v3

    #@12f
    move-object/from16 v0, p0

    #@131
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@134
    .line 254
    return-void
.end method

.method private static mapSensor(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 14
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 940
    invoke-static {p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->getLargestSupportedJpegSizeByArea(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    #@3
    move-result-object v7

    #@4
    .line 945
    .local v7, "largestJpegSize":Landroid/util/Size;
    invoke-static {v7}, Landroid/hardware/camera2/utils/ParamsUtils;->createRect(Landroid/util/Size;)Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 946
    .local v0, "activeArrayRect":Landroid/graphics/Rect;
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@a
    invoke-virtual {p0, v9, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@d
    .line 954
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_AVAILABLE_TEST_PATTERN_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@f
    const/4 v10, 0x1

    #@10
    new-array v10, v10, [I

    #@12
    const/4 v11, 0x0

    #@13
    const/4 v12, 0x0

    #@14
    aput v11, v10, v12

    #@16
    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@19
    .line 960
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1b
    invoke-virtual {p0, v9, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@1e
    .line 969
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    #@21
    move-result v1

    #@22
    .line 970
    .local v1, "focalLength":F
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    #@25
    move-result v9

    #@26
    float-to-double v10, v9

    #@27
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    #@2c
    mul-double/2addr v10, v12

    #@2d
    const-wide v12, 0x4066800000000000L    # 180.0

    #@32
    div-double v2, v10, v12

    #@34
    .line 971
    .local v2, "angleHor":D
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    #@37
    move-result v9

    #@38
    float-to-double v10, v9

    #@39
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    #@3e
    mul-double/2addr v10, v12

    #@3f
    const-wide v12, 0x4066800000000000L    # 180.0

    #@44
    div-double v4, v10, v12

    #@46
    .line 973
    .local v4, "angleVer":D
    const/high16 v9, 0x40000000    # 2.0f

    #@48
    mul-float/2addr v9, v1

    #@49
    float-to-double v10, v9

    #@4a
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@4c
    div-double v12, v4, v12

    #@4e
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    #@51
    move-result-wide v12

    #@52
    mul-double/2addr v10, v12

    #@53
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    #@56
    move-result-wide v10

    #@57
    double-to-float v6, v10

    #@58
    .line 974
    .local v6, "height":F
    const/high16 v9, 0x40000000    # 2.0f

    #@5a
    mul-float/2addr v9, v1

    #@5b
    float-to-double v10, v9

    #@5c
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@5e
    div-double v12, v2, v12

    #@60
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    #@63
    move-result-wide v12

    #@64
    mul-double/2addr v10, v12

    #@65
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    #@68
    move-result-wide v10

    #@69
    double-to-float v8, v10

    #@6a
    .line 976
    .local v8, "width":F
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@6c
    new-instance v10, Landroid/util/SizeF;

    #@6e
    invoke-direct {v10, v8, v6}, Landroid/util/SizeF;-><init>(FF)V

    #@71
    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@74
    .line 983
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@76
    const/4 v10, 0x0

    #@77
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v10

    #@7b
    invoke-virtual {p0, v9, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@7e
    .line 938
    return-void
.end method

.method private static mapStatistics(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 993
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    #@5
    move-result v1

    #@6
    if-lez v1, :cond_0

    #@8
    .line 994
    filled-new-array {v2, v3}, [I

    #@b
    move-result-object v0

    #@c
    .line 1004
    .local v0, "fdModes":[I
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@e
    invoke-virtual {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@11
    .line 1009
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@13
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    #@16
    move-result v2

    #@17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@1e
    .line 987
    return-void

    #@1f
    .line 1000
    .end local v0    # "fdModes":[I
    :cond_0
    new-array v0, v3, [I

    #@21
    .line 1001
    aput v2, v0, v2

    #@23
    .line 1000
    .restart local v0    # "fdModes":[I
    goto :goto_0
.end method

.method private static mapSync(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 1016
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SYNC_MAX_LATENCY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@a
    .line 1012
    return-void
.end method
