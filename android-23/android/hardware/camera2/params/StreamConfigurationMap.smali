.class public final Landroid/hardware/camera2/params/StreamConfigurationMap;
.super Ljava/lang/Object;
.source "StreamConfigurationMap.java"


# static fields
.field private static final DURATION_20FPS_NS:J = 0x2faf080L

.field private static final DURATION_MIN_FRAME:I = 0x0

.field private static final DURATION_STALL:I = 0x1

.field private static final HAL_DATASPACE_DEPTH:I = 0x1000

.field private static final HAL_DATASPACE_JFIF:I = 0x101

.field private static final HAL_DATASPACE_UNKNOWN:I = 0x0

.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final HAL_PIXEL_FORMAT_IMPLEMENTATION_DEFINED:I = 0x22

.field private static final HAL_PIXEL_FORMAT_RAW10:I = 0x25

.field private static final HAL_PIXEL_FORMAT_RAW12:I = 0x26

.field private static final HAL_PIXEL_FORMAT_RAW16:I = 0x20

.field private static final HAL_PIXEL_FORMAT_RAW_OPAQUE:I = 0x24

.field private static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final HAL_PIXEL_FORMAT_YCbCr_420_888:I = 0x23

.field private static final TAG:Ljava/lang/String; = "StreamConfigurationMap"


# instance fields
.field private final mAllOutputFormats:Landroid/util/SparseIntArray;

.field private final mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

.field private final mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mDepthOutputFormats:Landroid/util/SparseIntArray;

.field private final mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mHighResOutputFormats:Landroid/util/SparseIntArray;

.field private final mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

.field private final mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighSpeedVideoSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputFormats:Landroid/util/SparseIntArray;

.field private final mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

.field private final mListHighResolution:Z

.field private final mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field private final mOutputFormats:Landroid/util/SparseIntArray;

.field private final mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;


# direct methods
.method public constructor <init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V
    .locals 21
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p2, "minFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p3, "stallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p4, "depthConfigurations"    # [Landroid/hardware/camera2/params/StreamConfiguration;
    .param p5, "depthMinFrameDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p6, "depthStallDurations"    # [Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .param p7, "highSpeedVideoConfigurations"    # [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .param p8, "inputOutputFormatsMap"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p9, "listHighResolution"    # Z

    #@0
    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1656
    new-instance v13, Landroid/util/SparseIntArray;

    #@5
    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    #@c
    .line 1659
    new-instance v13, Landroid/util/SparseIntArray;

    #@e
    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    #@11
    move-object/from16 v0, p0

    #@13
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    #@15
    .line 1661
    new-instance v13, Landroid/util/SparseIntArray;

    #@17
    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    #@1e
    .line 1663
    new-instance v13, Landroid/util/SparseIntArray;

    #@20
    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    #@27
    .line 1665
    new-instance v13, Landroid/util/SparseIntArray;

    #@29
    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@30
    .line 1668
    new-instance v13, Ljava/util/HashMap;

    #@32
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    #@35
    .line 1667
    move-object/from16 v0, p0

    #@37
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    #@39
    .line 1671
    new-instance v13, Ljava/util/HashMap;

    #@3b
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    #@3e
    move-object/from16 v0, p0

    #@40
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    #@42
    .line 102
    if-nez p1, :cond_1

    #@44
    .line 104
    const-string/jumbo v13, "depthConfigurations"

    #@47
    move-object/from16 v0, p4

    #@49
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@4c
    .line 105
    const/4 v13, 0x0

    #@4d
    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@4f
    move-object/from16 v0, p0

    #@51
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@53
    .line 106
    const/4 v13, 0x0

    #@54
    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@56
    move-object/from16 v0, p0

    #@58
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@5a
    .line 107
    const/4 v13, 0x0

    #@5b
    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@5d
    move-object/from16 v0, p0

    #@5f
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@61
    .line 114
    :goto_0
    move/from16 v0, p9

    #@63
    move-object/from16 v1, p0

    #@65
    iput-boolean v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    #@67
    .line 116
    if-nez p4, :cond_2

    #@69
    .line 117
    const/4 v13, 0x0

    #@6a
    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@70
    .line 118
    const/4 v13, 0x0

    #@71
    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@73
    move-object/from16 v0, p0

    #@75
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@77
    .line 119
    const/4 v13, 0x0

    #@78
    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@7a
    move-object/from16 v0, p0

    #@7c
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@7e
    .line 129
    :goto_1
    if-nez p7, :cond_3

    #@80
    .line 130
    const/4 v13, 0x0

    #@81
    new-array v13, v13, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@83
    move-object/from16 v0, p0

    #@85
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@87
    .line 137
    :goto_2
    move-object/from16 v0, p0

    #@89
    iget-object v15, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@8b
    const/4 v13, 0x0

    #@8c
    array-length v0, v15

    #@8d
    move/from16 v16, v0

    #@8f
    move v14, v13

    #@90
    :goto_3
    move/from16 v0, v16

    #@92
    if-ge v14, v0, :cond_7

    #@94
    aget-object v3, v15, v14

    #@96
    .line 138
    .local v3, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    #@99
    move-result v5

    #@9a
    .line 139
    .local v5, "fmt":I
    const/4 v10, 0x0

    #@9b
    .line 140
    .local v10, "map":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    #@9e
    move-result v13

    #@9f
    if-eqz v13, :cond_6

    #@a1
    .line 141
    move-object/from16 v0, p0

    #@a3
    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    #@a5
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    #@a9
    move-object/from16 v17, v0

    #@ab
    move-object/from16 v0, v17

    #@ad
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    #@b0
    move-result v17

    #@b1
    add-int/lit8 v17, v17, 0x1

    #@b3
    move/from16 v0, v17

    #@b5
    invoke-virtual {v13, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@b8
    .line 142
    const-wide/16 v6, 0x0

    #@ba
    .line 143
    .local v6, "duration":J
    move-object/from16 v0, p0

    #@bc
    iget-boolean v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    #@be
    if-eqz v13, :cond_0

    #@c0
    .line 144
    move-object/from16 v0, p0

    #@c2
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@c4
    move-object/from16 v17, v0

    #@c6
    const/4 v13, 0x0

    #@c7
    move-object/from16 v0, v17

    #@c9
    array-length v0, v0

    #@ca
    move/from16 v18, v0

    #@cc
    :goto_4
    move/from16 v0, v18

    #@ce
    if-ge v13, v0, :cond_0

    #@d0
    aget-object v4, v17, v13

    #@d2
    .line 145
    .local v4, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    #@d5
    move-result v19

    #@d6
    move/from16 v0, v19

    #@d8
    if-ne v0, v5, :cond_4

    #@da
    .line 146
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    #@dd
    move-result v19

    #@de
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@e1
    move-result-object v20

    #@e2
    invoke-virtual/range {v20 .. v20}, Landroid/util/Size;->getWidth()I

    #@e5
    move-result v20

    #@e6
    move/from16 v0, v19

    #@e8
    move/from16 v1, v20

    #@ea
    if-ne v0, v1, :cond_4

    #@ec
    .line 147
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    #@ef
    move-result v19

    #@f0
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@f3
    move-result-object v20

    #@f4
    invoke-virtual/range {v20 .. v20}, Landroid/util/Size;->getHeight()I

    #@f7
    move-result v20

    #@f8
    move/from16 v0, v19

    #@fa
    move/from16 v1, v20

    #@fc
    if-ne v0, v1, :cond_4

    #@fe
    .line 148
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    #@101
    move-result-wide v6

    #@102
    .line 153
    .end local v4    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_0
    const-wide/32 v18, 0x2faf080

    #@105
    cmp-long v13, v6, v18

    #@107
    if-gtz v13, :cond_5

    #@109
    .line 154
    move-object/from16 v0, p0

    #@10b
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    #@10d
    .line 158
    .end local v6    # "duration":J
    .local v10, "map":Landroid/util/SparseIntArray;
    :goto_5
    invoke-virtual {v10, v5}, Landroid/util/SparseIntArray;->get(I)I

    #@110
    move-result v13

    #@111
    add-int/lit8 v13, v13, 0x1

    #@113
    invoke-virtual {v10, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    #@116
    .line 137
    add-int/lit8 v13, v14, 0x1

    #@118
    move v14, v13

    #@119
    goto/16 :goto_3

    #@11b
    .line 109
    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v10    # "map":Landroid/util/SparseIntArray;
    :cond_1
    const-string/jumbo v13, "configurations"

    #@11e
    move-object/from16 v0, p1

    #@120
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@123
    move-result-object v13

    #@124
    check-cast v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@126
    move-object/from16 v0, p0

    #@128
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@12a
    .line 110
    const-string/jumbo v13, "minFrameDurations"

    #@12d
    move-object/from16 v0, p2

    #@12f
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@132
    move-result-object v13

    #@133
    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@135
    move-object/from16 v0, p0

    #@137
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@139
    .line 111
    const-string/jumbo v13, "stallDurations"

    #@13c
    move-object/from16 v0, p3

    #@13e
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@141
    move-result-object v13

    #@142
    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@144
    move-object/from16 v0, p0

    #@146
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@148
    goto/16 :goto_0

    #@14a
    .line 122
    :cond_2
    const-string/jumbo v13, "depthConfigurations"

    #@14d
    .line 121
    move-object/from16 v0, p4

    #@14f
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@152
    move-result-object v13

    #@153
    check-cast v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@155
    move-object/from16 v0, p0

    #@157
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@159
    .line 124
    const-string/jumbo v13, "depthMinFrameDurations"

    #@15c
    .line 123
    move-object/from16 v0, p5

    #@15e
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@161
    move-result-object v13

    #@162
    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@164
    move-object/from16 v0, p0

    #@166
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@168
    .line 126
    const-string/jumbo v13, "depthStallDurations"

    #@16b
    .line 125
    move-object/from16 v0, p6

    #@16d
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@170
    move-result-object v13

    #@171
    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@173
    move-object/from16 v0, p0

    #@175
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@177
    goto/16 :goto_1

    #@179
    .line 133
    :cond_3
    const-string/jumbo v13, "highSpeedVideoConfigurations"

    #@17c
    .line 132
    move-object/from16 v0, p7

    #@17e
    invoke-static {v0, v13}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    #@181
    move-result-object v13

    #@182
    check-cast v13, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@184
    move-object/from16 v0, p0

    #@186
    iput-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@188
    goto/16 :goto_2

    #@18a
    .line 144
    .restart local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v4    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v5    # "fmt":I
    .restart local v6    # "duration":J
    .local v10, "map":Landroid/util/SparseIntArray;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    #@18c
    goto/16 :goto_4

    #@18e
    .line 154
    .end local v4    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_5
    move-object/from16 v0, p0

    #@190
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    #@192
    .local v10, "map":Landroid/util/SparseIntArray;
    goto/16 :goto_5

    #@194
    .line 156
    .end local v6    # "duration":J
    .local v10, "map":Landroid/util/SparseIntArray;
    :cond_6
    move-object/from16 v0, p0

    #@196
    iget-object v10, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    #@198
    .local v10, "map":Landroid/util/SparseIntArray;
    goto/16 :goto_5

    #@19a
    .line 162
    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v10    # "map":Landroid/util/SparseIntArray;
    :cond_7
    move-object/from16 v0, p0

    #@19c
    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@19e
    const/4 v13, 0x0

    #@19f
    array-length v15, v14

    #@1a0
    :goto_6
    if-ge v13, v15, :cond_9

    #@1a2
    aget-object v3, v14, v13

    #@1a4
    .line 163
    .restart local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    #@1a7
    move-result v16

    #@1a8
    if-nez v16, :cond_8

    #@1aa
    .line 162
    :goto_7
    add-int/lit8 v13, v13, 0x1

    #@1ac
    goto :goto_6

    #@1ad
    .line 168
    :cond_8
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@1b1
    move-object/from16 v16, v0

    #@1b3
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    #@1b6
    move-result v17

    #@1b7
    .line 169
    move-object/from16 v0, p0

    #@1b9
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@1bb
    move-object/from16 v18, v0

    #@1bd
    invoke-virtual {v3}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    #@1c0
    move-result v19

    #@1c1
    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseIntArray;->get(I)I

    #@1c4
    move-result v18

    #@1c5
    add-int/lit8 v18, v18, 0x1

    #@1c7
    .line 168
    invoke-virtual/range {v16 .. v18}, Landroid/util/SparseIntArray;->put(II)V

    #@1ca
    goto :goto_7

    #@1cb
    .line 172
    .end local v3    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_9
    if-eqz p1, :cond_a

    #@1cd
    .line 173
    move-object/from16 v0, p0

    #@1cf
    iget-object v13, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    #@1d1
    const/16 v14, 0x22

    #@1d3
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@1d6
    move-result v13

    #@1d7
    if-gez v13, :cond_a

    #@1d9
    .line 174
    new-instance v13, Ljava/lang/AssertionError;

    #@1db
    .line 175
    const-string/jumbo v14, "At least one stream configuration for IMPLEMENTATION_DEFINED must exist"

    #@1de
    .line 174
    invoke-direct {v13, v14}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1e1
    throw v13

    #@1e2
    .line 179
    :cond_a
    move-object/from16 v0, p0

    #@1e4
    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@1e6
    const/4 v13, 0x0

    #@1e7
    array-length v15, v14

    #@1e8
    :goto_8
    if-ge v13, v15, :cond_d

    #@1ea
    aget-object v2, v14, v13

    #@1ec
    .line 180
    .local v2, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    #@1ef
    move-result-object v11

    #@1f0
    .line 181
    .local v11, "size":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    #@1f3
    move-result-object v8

    #@1f4
    .line 182
    .local v8, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    #@1f8
    move-object/from16 v16, v0

    #@1fa
    move-object/from16 v0, v16

    #@1fc
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ff
    move-result-object v9

    #@200
    check-cast v9, Ljava/lang/Integer;

    #@202
    .line 183
    .local v9, "fpsRangeCount":Ljava/lang/Integer;
    if-nez v9, :cond_b

    #@204
    .line 184
    const/16 v16, 0x0

    #@206
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@209
    move-result-object v9

    #@20a
    .line 186
    :cond_b
    move-object/from16 v0, p0

    #@20c
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    #@20e
    move-object/from16 v16, v0

    #@210
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@213
    move-result v17

    #@214
    add-int/lit8 v17, v17, 0x1

    #@216
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@219
    move-result-object v17

    #@21a
    move-object/from16 v0, v16

    #@21c
    move-object/from16 v1, v17

    #@21e
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@221
    .line 187
    move-object/from16 v0, p0

    #@223
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    #@225
    move-object/from16 v16, v0

    #@227
    move-object/from16 v0, v16

    #@229
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22c
    move-result-object v12

    #@22d
    check-cast v12, Ljava/lang/Integer;

    #@22f
    .line 188
    .local v12, "sizeCount":Ljava/lang/Integer;
    if-nez v12, :cond_c

    #@231
    .line 189
    const/16 v16, 0x0

    #@233
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@236
    move-result-object v12

    #@237
    .line 191
    :cond_c
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    #@23b
    move-object/from16 v16, v0

    #@23d
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@240
    move-result v17

    #@241
    add-int/lit8 v17, v17, 0x1

    #@243
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@246
    move-result-object v17

    #@247
    move-object/from16 v0, v16

    #@249
    move-object/from16 v1, v17

    #@24b
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24e
    .line 179
    add-int/lit8 v13, v13, 0x1

    #@250
    goto :goto_8

    #@251
    .line 194
    .end local v2    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v8    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "fpsRangeCount":Ljava/lang/Integer;
    .end local v11    # "size":Landroid/util/Size;
    .end local v12    # "sizeCount":Ljava/lang/Integer;
    :cond_d
    move-object/from16 v0, p8

    #@253
    move-object/from16 v1, p0

    #@255
    iput-object v0, v1, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@257
    .line 100
    return-void
.end method

.method private appendHighResOutputsString(Ljava/lang/StringBuilder;)V
    .locals 18
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1502
    const-string/jumbo v10, "HighResolutionOutputs("

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 1503
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    #@b
    move-result-object v3

    #@c
    .line 1504
    .local v3, "formats":[I
    const/4 v10, 0x0

    #@d
    array-length v12, v3

    #@e
    move v11, v10

    #@f
    :goto_0
    if-ge v11, v12, :cond_2

    #@11
    aget v2, v3, v11

    #@13
    .line 1505
    .local v2, "format":I
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    #@18
    move-result-object v7

    #@19
    .line 1506
    .local v7, "sizes":[Landroid/util/Size;
    if-nez v7, :cond_1

    #@1b
    .line 1504
    :cond_0
    add-int/lit8 v10, v11, 0x1

    #@1d
    move v11, v10

    #@1e
    goto :goto_0

    #@1f
    .line 1507
    :cond_1
    const/4 v10, 0x0

    #@20
    array-length v13, v7

    #@21
    :goto_1
    if-ge v10, v13, :cond_0

    #@23
    aget-object v6, v7, v10

    #@25
    .line 1508
    .local v6, "size":Landroid/util/Size;
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    #@2a
    move-result-wide v4

    #@2b
    .line 1509
    .local v4, "minFrameDuration":J
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    #@30
    move-result-wide v8

    #@31
    .line 1510
    .local v8, "stallDuration":J
    const-string/jumbo v14, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    #@34
    const/4 v15, 0x6

    #@35
    new-array v15, v15, [Ljava/lang/Object;

    #@37
    .line 1511
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    #@3a
    move-result v16

    #@3b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v16

    #@3f
    const/16 v17, 0x0

    #@41
    aput-object v16, v15, v17

    #@43
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    #@46
    move-result v16

    #@47
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v16

    #@4b
    const/16 v17, 0x1

    #@4d
    aput-object v16, v15, v17

    #@4f
    move-object/from16 v0, p0

    #@51
    invoke-direct {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    #@54
    move-result-object v16

    #@55
    const/16 v17, 0x2

    #@57
    aput-object v16, v15, v17

    #@59
    .line 1512
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v16

    #@5d
    const/16 v17, 0x3

    #@5f
    aput-object v16, v15, v17

    #@61
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@64
    move-result-object v16

    #@65
    const/16 v17, 0x4

    #@67
    aput-object v16, v15, v17

    #@69
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6c
    move-result-object v16

    #@6d
    const/16 v17, 0x5

    #@6f
    aput-object v16, v15, v17

    #@71
    .line 1510
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object v14

    #@75
    move-object/from16 v0, p1

    #@77
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 1507
    add-int/lit8 v10, v10, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 1516
    .end local v2    # "format":I
    .end local v4    # "minFrameDuration":J
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "sizes":[Landroid/util/Size;
    .end local v8    # "stallDuration":J
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@80
    move-result v10

    #@81
    add-int/lit8 v10, v10, -0x1

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    #@88
    move-result v10

    #@89
    const/16 v11, 0x20

    #@8b
    if-ne v10, v11, :cond_3

    #@8d
    .line 1517
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@90
    move-result v10

    #@91
    add-int/lit8 v10, v10, -0x2

    #@93
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@96
    move-result v11

    #@97
    move-object/from16 v0, p1

    #@99
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@9c
    .line 1519
    :cond_3
    const-string/jumbo v10, ")"

    #@9f
    move-object/from16 v0, p1

    #@a1
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    .line 1501
    return-void
.end method

.method private appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V
    .locals 13
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1562
    const-string/jumbo v4, "HighSpeedVideoConfigurations("

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 1563
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    #@a
    move-result-object v3

    #@b
    .line 1564
    .local v3, "sizes":[Landroid/util/Size;
    array-length v7, v3

    #@c
    move v6, v5

    #@d
    :goto_0
    if-ge v6, v7, :cond_1

    #@f
    aget-object v2, v3, v6

    #@11
    .line 1565
    .local v2, "size":Landroid/util/Size;
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    #@14
    move-result-object v1

    #@15
    .line 1566
    .local v1, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v8, v1

    #@16
    move v4, v5

    #@17
    :goto_1
    if-ge v4, v8, :cond_0

    #@19
    aget-object v0, v1, v4

    #@1b
    .line 1567
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string/jumbo v9, "[w:%d, h:%d, min_fps:%d, max_fps:%d], "

    #@1e
    const/4 v10, 0x4

    #@1f
    new-array v10, v10, [Ljava/lang/Object;

    #@21
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@24
    move-result v11

    #@25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v11

    #@29
    aput-object v11, v10, v5

    #@2b
    .line 1568
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@2e
    move-result v11

    #@2f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v11

    #@33
    const/4 v12, 0x1

    #@34
    aput-object v11, v10, v12

    #@36
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@39
    move-result-object v11

    #@3a
    const/4 v12, 0x2

    #@3b
    aput-object v11, v10, v12

    #@3d
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@40
    move-result-object v11

    #@41
    const/4 v12, 0x3

    #@42
    aput-object v11, v10, v12

    #@44
    .line 1567
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 1566
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 1564
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v4, v6, 0x1

    #@50
    move v6, v4

    #@51
    goto :goto_0

    #@52
    .line 1572
    .end local v1    # "ranges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "size":Landroid/util/Size;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@55
    move-result v4

    #@56
    add-int/lit8 v4, v4, -0x1

    #@58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    #@5b
    move-result v4

    #@5c
    const/16 v5, 0x20

    #@5e
    if-ne v4, v5, :cond_2

    #@60
    .line 1573
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@63
    move-result v4

    #@64
    add-int/lit8 v4, v4, -0x2

    #@66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@69
    move-result v5

    #@6a
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@6d
    .line 1575
    :cond_2
    const-string/jumbo v4, ")"

    #@70
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 1561
    return-void
.end method

.method private appendInputsString(Ljava/lang/StringBuilder;)V
    .locals 13
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1523
    const-string/jumbo v4, "Inputs("

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 1524
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    #@a
    move-result-object v1

    #@b
    .line 1525
    .local v1, "formats":[I
    array-length v7, v1

    #@c
    move v6, v5

    #@d
    :goto_0
    if-ge v6, v7, :cond_1

    #@f
    aget v0, v1, v6

    #@11
    .line 1526
    .local v0, "format":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    #@14
    move-result-object v3

    #@15
    .line 1527
    .local v3, "sizes":[Landroid/util/Size;
    array-length v8, v3

    #@16
    move v4, v5

    #@17
    :goto_1
    if-ge v4, v8, :cond_0

    #@19
    aget-object v2, v3, v4

    #@1b
    .line 1528
    .local v2, "size":Landroid/util/Size;
    const-string/jumbo v9, "[w:%d, h:%d, format:%s(%d)], "

    #@1e
    const/4 v10, 0x4

    #@1f
    new-array v10, v10, [Ljava/lang/Object;

    #@21
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@24
    move-result v11

    #@25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v11

    #@29
    aput-object v11, v10, v5

    #@2b
    .line 1529
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@2e
    move-result v11

    #@2f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v11

    #@33
    const/4 v12, 0x1

    #@34
    aput-object v11, v10, v12

    #@36
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    #@39
    move-result-object v11

    #@3a
    const/4 v12, 0x2

    #@3b
    aput-object v11, v10, v12

    #@3d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v11

    #@41
    const/4 v12, 0x3

    #@42
    aput-object v11, v10, v12

    #@44
    .line 1528
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 1527
    add-int/lit8 v4, v4, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 1525
    .end local v2    # "size":Landroid/util/Size;
    :cond_0
    add-int/lit8 v4, v6, 0x1

    #@50
    move v6, v4

    #@51
    goto :goto_0

    #@52
    .line 1533
    .end local v0    # "format":I
    .end local v3    # "sizes":[Landroid/util/Size;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@55
    move-result v4

    #@56
    add-int/lit8 v4, v4, -0x1

    #@58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    #@5b
    move-result v4

    #@5c
    const/16 v5, 0x20

    #@5e
    if-ne v4, v5, :cond_2

    #@60
    .line 1534
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@63
    move-result v4

    #@64
    add-int/lit8 v4, v4, -0x2

    #@66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@69
    move-result v5

    #@6a
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@6d
    .line 1536
    :cond_2
    const-string/jumbo v4, ")"

    #@70
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 1522
    return-void
.end method

.method private appendOutputsString(Ljava/lang/StringBuilder;)V
    .locals 18
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1482
    const-string/jumbo v10, "Outputs("

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 1483
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    #@b
    move-result-object v3

    #@c
    .line 1484
    .local v3, "formats":[I
    const/4 v10, 0x0

    #@d
    array-length v12, v3

    #@e
    move v11, v10

    #@f
    :goto_0
    if-ge v11, v12, :cond_1

    #@11
    aget v2, v3, v11

    #@13
    .line 1485
    .local v2, "format":I
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    #@18
    move-result-object v7

    #@19
    .line 1486
    .local v7, "sizes":[Landroid/util/Size;
    const/4 v10, 0x0

    #@1a
    array-length v13, v7

    #@1b
    :goto_1
    if-ge v10, v13, :cond_0

    #@1d
    aget-object v6, v7, v10

    #@1f
    .line 1487
    .local v6, "size":Landroid/util/Size;
    move-object/from16 v0, p0

    #@21
    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    #@24
    move-result-wide v4

    #@25
    .line 1488
    .local v4, "minFrameDuration":J
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    #@2a
    move-result-wide v8

    #@2b
    .line 1489
    .local v8, "stallDuration":J
    const-string/jumbo v14, "[w:%d, h:%d, format:%s(%d), min_duration:%d, stall:%d], "

    #@2e
    const/4 v15, 0x6

    #@2f
    new-array v15, v15, [Ljava/lang/Object;

    #@31
    .line 1490
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    #@34
    move-result v16

    #@35
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v16

    #@39
    const/16 v17, 0x0

    #@3b
    aput-object v16, v15, v17

    #@3d
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    #@40
    move-result v16

    #@41
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v16

    #@45
    const/16 v17, 0x1

    #@47
    aput-object v16, v15, v17

    #@49
    move-object/from16 v0, p0

    #@4b
    invoke-direct {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    #@4e
    move-result-object v16

    #@4f
    const/16 v17, 0x2

    #@51
    aput-object v16, v15, v17

    #@53
    .line 1491
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v16

    #@57
    const/16 v17, 0x3

    #@59
    aput-object v16, v15, v17

    #@5b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5e
    move-result-object v16

    #@5f
    const/16 v17, 0x4

    #@61
    aput-object v16, v15, v17

    #@63
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@66
    move-result-object v16

    #@67
    const/16 v17, 0x5

    #@69
    aput-object v16, v15, v17

    #@6b
    .line 1489
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6e
    move-result-object v14

    #@6f
    move-object/from16 v0, p1

    #@71
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 1486
    add-int/lit8 v10, v10, 0x1

    #@76
    goto :goto_1

    #@77
    .line 1484
    .end local v4    # "minFrameDuration":J
    .end local v6    # "size":Landroid/util/Size;
    .end local v8    # "stallDuration":J
    :cond_0
    add-int/lit8 v10, v11, 0x1

    #@79
    move v11, v10

    #@7a
    goto :goto_0

    #@7b
    .line 1495
    .end local v2    # "format":I
    .end local v7    # "sizes":[Landroid/util/Size;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@7e
    move-result v10

    #@7f
    add-int/lit8 v10, v10, -0x1

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    #@86
    move-result v10

    #@87
    const/16 v11, 0x20

    #@89
    if-ne v10, v11, :cond_2

    #@8b
    .line 1496
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@8e
    move-result v10

    #@8f
    add-int/lit8 v10, v10, -0x2

    #@91
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    #@94
    move-result v11

    #@95
    move-object/from16 v0, p1

    #@97
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@9a
    .line 1498
    :cond_2
    const-string/jumbo v10, ")"

    #@9d
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 1481
    return-void
.end method

.method private appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V
    .locals 12
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 1540
    const-string/jumbo v4, "ValidOutputFormatsForInput("

    #@6
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 1541
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    #@c
    move-result-object v2

    #@d
    .line 1542
    .local v2, "inputFormats":[I
    array-length v6, v2

    #@e
    move v4, v5

    #@f
    :goto_0
    if-ge v4, v6, :cond_2

    #@11
    aget v1, v2, v4

    #@13
    .line 1543
    .local v1, "inputFormat":I
    const-string/jumbo v7, "[in:%s(%d), out:"

    #@16
    new-array v8, v11, [Ljava/lang/Object;

    #@18
    invoke-direct {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    aput-object v9, v8, v5

    #@1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v9

    #@22
    aput-object v9, v8, v10

    #@24
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 1544
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    #@2e
    move-result-object v3

    #@2f
    .line 1545
    .local v3, "outputFormats":[I
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_1
    array-length v7, v3

    #@31
    if-ge v0, v7, :cond_1

    #@33
    .line 1546
    const-string/jumbo v7, "%s(%d)"

    #@36
    new-array v8, v11, [Ljava/lang/Object;

    #@38
    aget v9, v3, v0

    #@3a
    invoke-direct {p0, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    aput-object v9, v8, v5

    #@40
    .line 1547
    aget v9, v3, v0

    #@42
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v9

    #@46
    aput-object v9, v8, v10

    #@48
    .line 1546
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 1548
    array-length v7, v3

    #@50
    add-int/lit8 v7, v7, -0x1

    #@52
    if-ge v0, v7, :cond_0

    #@54
    .line 1549
    const-string/jumbo v7, ", "

    #@57
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 1545
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 1552
    :cond_1
    const-string/jumbo v7, "], "

    #@60
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 1542
    add-int/lit8 v4, v4, 0x1

    #@65
    goto :goto_0

    #@66
    .line 1555
    .end local v0    # "i":I
    .end local v1    # "inputFormat":I
    .end local v3    # "outputFormats":[I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@69
    move-result v4

    #@6a
    add-int/lit8 v4, v4, -0x1

    #@6c
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    #@6f
    move-result v4

    #@70
    const/16 v5, 0x20

    #@72
    if-ne v4, v5, :cond_3

    #@74
    .line 1556
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@77
    move-result v4

    #@78
    add-int/lit8 v4, v4, -0x2

    #@7a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@7d
    move-result v5

    #@7e
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@81
    .line 1558
    :cond_3
    const-string/jumbo v4, ")"

    #@84
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 1539
    return-void
.end method

.method private static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 1406
    if-nez p0, :cond_0

    #@3
    .line 1407
    return v2

    #@4
    .line 1410
    :cond_0
    array-length v3, p0

    #@5
    move v1, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_2

    #@8
    aget-object v0, p0, v1

    #@a
    .line 1411
    .local v0, "el":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 1412
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1410
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1416
    .end local v0    # "el":Ljava/lang/Object;, "TT;"
    :cond_2
    return v2
.end method

.method static checkArgumentFormat(I)I
    .locals 5
    .param p0, "format"    # I

    #@0
    .prologue
    .line 1033
    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1038
    :cond_0
    return p0

    #@d
    .line 1034
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    .line 1035
    const-string/jumbo v1, "format 0x%x was not defined in either ImageFormat or PixelFormat"

    #@12
    .line 1034
    const/4 v2, 0x1

    #@13
    new-array v2, v2, [Ljava/lang/Object;

    #@15
    .line 1035
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x0

    #@1a
    aput-object v3, v2, v4

    #@1c
    .line 1034
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method static checkArgumentFormatInternal(I)I
    .locals 2
    .param p0, "format"    # I

    #@0
    .prologue
    .line 998
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1008
    invoke-static {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 1003
    :sswitch_0
    return p0

    #@9
    .line 1005
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    .line 1006
    const-string/jumbo v1, "ImageFormat.JPEG is an unknown internal format"

    #@e
    .line 1005
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 998
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x100 -> :sswitch_1
        0x20363159 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkArgumentFormatSupported(IZ)I
    .locals 7
    .param p1, "format"    # I
    .param p2, "output"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 955
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    #@4
    .line 957
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@7
    move-result v1

    #@8
    .line 958
    .local v1, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    #@b
    move-result v0

    #@c
    .line 960
    .local v0, "internalDataspace":I
    if-eqz p2, :cond_1

    #@e
    .line 961
    const/16 v2, 0x1000

    #@10
    if-ne v0, v2, :cond_0

    #@12
    .line 962
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@17
    move-result v2

    #@18
    if-ltz v2, :cond_2

    #@1a
    .line 963
    return p1

    #@1b
    .line 966
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    #@1d
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@20
    move-result v2

    #@21
    if-ltz v2, :cond_2

    #@23
    .line 967
    return p1

    #@24
    .line 971
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    #@26
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@29
    move-result v2

    #@2a
    if-ltz v2, :cond_2

    #@2c
    .line 972
    return p1

    #@2d
    .line 976
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2f
    .line 977
    const-string/jumbo v3, "format %x is not supported by this stream configuration map"

    #@32
    .line 976
    const/4 v4, 0x1

    #@33
    new-array v4, v4, [Ljava/lang/Object;

    #@35
    .line 977
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v5

    #@39
    aput-object v5, v4, v6

    #@3b
    .line 976
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2
.end method

.method static depthFormatToPublic(I)I
    .locals 3
    .param p0, "format"    # I

    #@0
    .prologue
    .line 1115
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown DATASPACE_DEPTH format "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 1127
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1117
    :sswitch_0
    const/16 v0, 0x101

    #@1f
    return v0

    #@20
    .line 1119
    :sswitch_1
    const v0, 0x44363159

    #@23
    return v0

    #@24
    .line 1121
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    .line 1122
    const-string/jumbo v1, "ImageFormat.JPEG is an unknown internal format"

    #@29
    .line 1121
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1124
    :sswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    .line 1125
    const-string/jumbo v1, "IMPLEMENTATION_DEFINED must not leak to public API"

    #@32
    .line 1124
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 1115
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_3
        0x100 -> :sswitch_2
        0x20363159 -> :sswitch_1
    .end sparse-switch
.end method

.method private formatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    .line 1579
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1615
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 1581
    :sswitch_0
    const-string/jumbo v0, "YV12"

    #@a
    return-object v0

    #@b
    .line 1583
    :sswitch_1
    const-string/jumbo v0, "YUV_420_888"

    #@e
    return-object v0

    #@f
    .line 1585
    :sswitch_2
    const-string/jumbo v0, "NV21"

    #@12
    return-object v0

    #@13
    .line 1587
    :sswitch_3
    const-string/jumbo v0, "NV16"

    #@16
    return-object v0

    #@17
    .line 1589
    :sswitch_4
    const-string/jumbo v0, "RGB_565"

    #@1a
    return-object v0

    #@1b
    .line 1591
    :sswitch_5
    const-string/jumbo v0, "RGBA_8888"

    #@1e
    return-object v0

    #@1f
    .line 1593
    :sswitch_6
    const-string/jumbo v0, "RGBX_8888"

    #@22
    return-object v0

    #@23
    .line 1595
    :sswitch_7
    const-string/jumbo v0, "RGB_888"

    #@26
    return-object v0

    #@27
    .line 1597
    :sswitch_8
    const-string/jumbo v0, "JPEG"

    #@2a
    return-object v0

    #@2b
    .line 1599
    :sswitch_9
    const-string/jumbo v0, "YUY2"

    #@2e
    return-object v0

    #@2f
    .line 1601
    :sswitch_a
    const-string/jumbo v0, "Y8"

    #@32
    return-object v0

    #@33
    .line 1603
    :sswitch_b
    const-string/jumbo v0, "Y16"

    #@36
    return-object v0

    #@37
    .line 1605
    :sswitch_c
    const-string/jumbo v0, "RAW_SENSOR"

    #@3a
    return-object v0

    #@3b
    .line 1607
    :sswitch_d
    const-string/jumbo v0, "RAW10"

    #@3e
    return-object v0

    #@3f
    .line 1609
    :sswitch_e
    const-string/jumbo v0, "DEPTH16"

    #@42
    return-object v0

    #@43
    .line 1611
    :sswitch_f
    const-string/jumbo v0, "DEPTH_POINT_CLOUD"

    #@46
    return-object v0

    #@47
    .line 1613
    :sswitch_10
    const-string/jumbo v0, "PRIVATE"

    #@4a
    return-object v0

    #@4b
    .line 1579
    nop

    #@4c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_7
        0x4 -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x14 -> :sswitch_9
        0x20 -> :sswitch_c
        0x22 -> :sswitch_10
        0x23 -> :sswitch_1
        0x25 -> :sswitch_d
        0x100 -> :sswitch_8
        0x101 -> :sswitch_f
        0x20203859 -> :sswitch_a
        0x20363159 -> :sswitch_b
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_e
    .end sparse-switch
.end method

.method private getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .locals 2
    .param p1, "duration"    # I
    .param p2, "dataspace"    # I

    #@0
    .prologue
    const/16 v0, 0x1000

    #@2
    .line 1379
    packed-switch p1, :pswitch_data_0

    #@5
    .line 1387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "duration was invalid"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1381
    :pswitch_0
    if-ne p2, v0, :cond_0

    #@10
    .line 1382
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@12
    .line 1381
    :goto_0
    return-object v0

    #@13
    .line 1382
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@15
    goto :goto_0

    #@16
    .line 1384
    :pswitch_1
    if-ne p2, v0, :cond_1

    #@18
    .line 1385
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@1a
    .line 1384
    :goto_1
    return-object v0

    #@1b
    .line 1385
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@1d
    goto :goto_1

    #@1e
    .line 1379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFormatsMap(Z)Landroid/util/SparseIntArray;
    .locals 1
    .param p1, "output"    # Z

    #@0
    .prologue
    .line 1349
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    #@7
    goto :goto_0
.end method

.method private getInternalFormatDuration(IILandroid/util/Size;I)J
    .locals 6
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;
    .param p4, "duration"    # I

    #@0
    .prologue
    .line 1355
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isSupportedInternalConfiguration(IILandroid/util/Size;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1356
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "size was not supported"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 1359
    :cond_0
    invoke-direct {p0, p4, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getDurations(II)[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@12
    move-result-object v1

    #@13
    .line 1361
    .local v1, "durations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v2, 0x0

    #@14
    array-length v3, v1

    #@15
    :goto_0
    if-ge v2, v3, :cond_2

    #@17
    aget-object v0, v1, v2

    #@19
    .line 1362
    .local v0, "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    #@1c
    move-result v4

    #@1d
    if-ne v4, p1, :cond_1

    #@1f
    .line 1363
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    #@22
    move-result v4

    #@23
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    #@26
    move-result v5

    #@27
    if-ne v4, v5, :cond_1

    #@29
    .line 1364
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    #@30
    move-result v5

    #@31
    if-ne v4, v5, :cond_1

    #@33
    .line 1365
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    #@36
    move-result-wide v2

    #@37
    return-wide v2

    #@38
    .line 1361
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1369
    .end local v0    # "configurationDuration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_2
    const-wide/16 v2, 0x0

    #@3d
    return-wide v2
.end method

.method private getInternalFormatSizes(IIZZ)[Landroid/util/Size;
    .locals 20
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "output"    # Z
    .param p4, "highRes"    # Z

    #@0
    .prologue
    .line 1272
    if-nez p3, :cond_2

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputFormats:Landroid/util/SparseIntArray;

    #@6
    .line 1277
    .local v8, "formatsMap":Landroid/util/SparseIntArray;
    :goto_0
    move/from16 v0, p1

    #@8
    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->get(I)I

    #@b
    move-result v13

    #@c
    .line 1278
    .local v13, "sizesCount":I
    if-eqz p3, :cond_0

    #@e
    const/16 v14, 0x1000

    #@10
    move/from16 v0, p2

    #@12
    if-ne v0, v14, :cond_5

    #@14
    :cond_0
    if-nez v13, :cond_5

    #@16
    .line 1281
    :cond_1
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v15, "format not available"

    #@1b
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v14

    #@1f
    .line 1273
    .end local v8    # "formatsMap":Landroid/util/SparseIntArray;
    .end local v13    # "sizesCount":I
    :cond_2
    const/16 v14, 0x1000

    #@21
    move/from16 v0, p2

    #@23
    if-ne v0, v14, :cond_3

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@29
    .restart local v8    # "formatsMap":Landroid/util/SparseIntArray;
    goto :goto_0

    #@2a
    .line 1274
    .end local v8    # "formatsMap":Landroid/util/SparseIntArray;
    :cond_3
    if-eqz p4, :cond_4

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighResOutputFormats:Landroid/util/SparseIntArray;

    #@30
    .restart local v8    # "formatsMap":Landroid/util/SparseIntArray;
    goto :goto_0

    #@31
    .line 1275
    .end local v8    # "formatsMap":Landroid/util/SparseIntArray;
    :cond_4
    move-object/from16 v0, p0

    #@33
    iget-object v8, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mOutputFormats:Landroid/util/SparseIntArray;

    #@35
    .restart local v8    # "formatsMap":Landroid/util/SparseIntArray;
    goto :goto_0

    #@36
    .line 1279
    .restart local v13    # "sizesCount":I
    :cond_5
    if-eqz p3, :cond_6

    #@38
    const/16 v14, 0x1000

    #@3a
    move/from16 v0, p2

    #@3c
    if-eq v0, v14, :cond_6

    #@3e
    move-object/from16 v0, p0

    #@40
    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mAllOutputFormats:Landroid/util/SparseIntArray;

    #@42
    move/from16 v0, p1

    #@44
    invoke-virtual {v14, v0}, Landroid/util/SparseIntArray;->get(I)I

    #@47
    move-result v14

    #@48
    if-eqz v14, :cond_1

    #@4a
    .line 1284
    :cond_6
    new-array v12, v13, [Landroid/util/Size;

    #@4c
    .line 1285
    .local v12, "sizes":[Landroid/util/Size;
    const/4 v10, 0x0

    #@4d
    .line 1288
    .local v10, "sizeIndex":I
    const/16 v14, 0x1000

    #@4f
    move/from16 v0, p2

    #@51
    if-ne v0, v14, :cond_8

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@57
    .line 1290
    .local v3, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_1
    const/4 v14, 0x0

    #@58
    array-length v0, v3

    #@59
    move/from16 v16, v0

    #@5b
    move v15, v14

    #@5c
    move v11, v10

    #@5d
    .end local v10    # "sizeIndex":I
    .local v11, "sizeIndex":I
    :goto_2
    move/from16 v0, v16

    #@5f
    if-ge v15, v0, :cond_d

    #@61
    aget-object v2, v3, v15

    #@63
    .line 1291
    .local v2, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    #@66
    move-result v5

    #@67
    .line 1292
    .local v5, "fmt":I
    move/from16 v0, p1

    #@69
    if-ne v5, v0, :cond_9

    #@6b
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    #@6e
    move-result v14

    #@6f
    move/from16 v0, p3

    #@71
    if-ne v14, v0, :cond_9

    #@73
    .line 1293
    if-eqz p3, :cond_c

    #@75
    .line 1296
    const-wide/16 v6, 0x0

    #@77
    .line 1297
    .local v6, "duration":J
    const/4 v9, 0x0

    #@78
    .local v9, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@7a
    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@7c
    array-length v14, v14

    #@7d
    if-ge v9, v14, :cond_7

    #@7f
    .line 1298
    move-object/from16 v0, p0

    #@81
    iget-object v14, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@83
    aget-object v4, v14, v9

    #@85
    .line 1299
    .local v4, "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getFormat()I

    #@88
    move-result v14

    #@89
    if-ne v14, v5, :cond_a

    #@8b
    .line 1300
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getWidth()I

    #@8e
    move-result v14

    #@8f
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@92
    move-result-object v17

    #@93
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    #@96
    move-result v17

    #@97
    move/from16 v0, v17

    #@99
    if-ne v14, v0, :cond_a

    #@9b
    .line 1301
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getHeight()I

    #@9e
    move-result v14

    #@9f
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@a2
    move-result-object v17

    #@a3
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    #@a6
    move-result v17

    #@a7
    move/from16 v0, v17

    #@a9
    if-ne v14, v0, :cond_a

    #@ab
    .line 1302
    invoke-virtual {v4}, Landroid/hardware/camera2/params/StreamConfigurationDuration;->getDuration()J

    #@ae
    move-result-wide v6

    #@af
    .line 1306
    .end local v4    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_7
    const-wide/32 v18, 0x2faf080

    #@b2
    cmp-long v14, v6, v18

    #@b4
    if-lez v14, :cond_b

    #@b6
    const/4 v14, 0x1

    #@b7
    :goto_4
    move/from16 v0, p4

    #@b9
    if-eq v0, v14, :cond_c

    #@bb
    move v10, v11

    #@bc
    .line 1290
    .end local v6    # "duration":J
    .end local v9    # "i":I
    .end local v11    # "sizeIndex":I
    .restart local v10    # "sizeIndex":I
    :goto_5
    add-int/lit8 v14, v15, 0x1

    #@be
    move v15, v14

    #@bf
    move v11, v10

    #@c0
    .end local v10    # "sizeIndex":I
    .restart local v11    # "sizeIndex":I
    goto :goto_2

    #@c1
    .line 1288
    .end local v2    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v3    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v11    # "sizeIndex":I
    .restart local v10    # "sizeIndex":I
    :cond_8
    move-object/from16 v0, p0

    #@c3
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@c5
    .restart local v3    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    goto :goto_1

    #@c6
    .end local v10    # "sizeIndex":I
    .restart local v2    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v5    # "fmt":I
    .restart local v11    # "sizeIndex":I
    :cond_9
    move v10, v11

    #@c7
    .line 1292
    .end local v11    # "sizeIndex":I
    .restart local v10    # "sizeIndex":I
    goto :goto_5

    #@c8
    .line 1297
    .end local v10    # "sizeIndex":I
    .restart local v4    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v6    # "duration":J
    .restart local v9    # "i":I
    .restart local v11    # "sizeIndex":I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    #@ca
    goto :goto_3

    #@cb
    .line 1306
    .end local v4    # "d":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_b
    const/4 v14, 0x0

    #@cc
    goto :goto_4

    #@cd
    .line 1310
    .end local v6    # "duration":J
    .end local v9    # "i":I
    :cond_c
    add-int/lit8 v10, v11, 0x1

    #@cf
    .end local v11    # "sizeIndex":I
    .restart local v10    # "sizeIndex":I
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@d2
    move-result-object v14

    #@d3
    aput-object v14, v12, v11

    #@d5
    goto :goto_5

    #@d6
    .line 1314
    .end local v2    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v5    # "fmt":I
    .end local v10    # "sizeIndex":I
    .restart local v11    # "sizeIndex":I
    :cond_d
    if-eq v11, v13, :cond_e

    #@d8
    .line 1315
    new-instance v14, Ljava/lang/AssertionError;

    #@da
    .line 1316
    new-instance v15, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v16, "Too few sizes (expected "

    #@e2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v15

    #@e6
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v15

    #@ea
    const-string/jumbo v16, ", actual "

    #@ed
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v15

    #@f1
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v15

    #@f5
    const-string/jumbo v16, ")"

    #@f8
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v15

    #@fc
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v15

    #@100
    .line 1315
    invoke-direct {v14, v15}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@103
    throw v14

    #@104
    .line 1319
    :cond_e
    return-object v12
.end method

.method private getPublicFormatCount(Z)I
    .locals 3
    .param p1, "output"    # Z

    #@0
    .prologue
    .line 1393
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    #@3
    move-result-object v0

    #@4
    .line 1394
    .local v0, "formatsMap":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    #@7
    move-result v1

    #@8
    .line 1395
    .local v1, "size":I
    const/16 v2, 0x24

    #@a
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@d
    move-result v2

    #@e
    if-ltz v2, :cond_0

    #@10
    .line 1396
    add-int/lit8 v1, v1, -0x1

    #@12
    .line 1398
    :cond_0
    if-eqz p1, :cond_1

    #@14
    .line 1399
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@16
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    #@19
    move-result v2

    #@1a
    add-int/2addr v1, v2

    #@1b
    .line 1402
    :cond_1
    return v1
.end method

.method private getPublicFormatSizes(IZZ)[Landroid/util/Size;
    .locals 4
    .param p1, "format"    # I
    .param p2, "output"    # Z
    .param p3, "highRes"    # Z

    #@0
    .prologue
    .line 1258
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1263
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@6
    move-result v2

    #@7
    .line 1264
    .local v2, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    #@a
    move-result v0

    #@b
    .line 1266
    .local v0, "dataspace":I
    invoke-direct {p0, v2, v0, p2, p3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    #@e
    move-result-object v3

    #@f
    return-object v3

    #@10
    .line 1259
    .end local v0    # "dataspace":I
    .end local v2    # "internalFormat":I
    :catch_0
    move-exception v1

    #@11
    .line 1260
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    #@12
    return-object v3
.end method

.method private getPublicFormats(Z)[I
    .locals 9
    .param p1, "output"    # Z

    #@0
    .prologue
    .line 1324
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatCount(Z)I

    #@3
    move-result v6

    #@4
    new-array v1, v6, [I

    #@6
    .line 1326
    .local v1, "formats":[I
    const/4 v2, 0x0

    #@7
    .line 1328
    .local v2, "i":I
    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    #@a
    move-result-object v5

    #@b
    .line 1329
    .local v5, "map":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    #@c
    .local v4, "j":I
    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@f
    move-result v6

    #@10
    if-ge v4, v6, :cond_1

    #@12
    .line 1330
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@15
    move-result v0

    #@16
    .line 1331
    .local v0, "format":I
    const/16 v6, 0x24

    #@18
    if-eq v0, v6, :cond_0

    #@1a
    .line 1332
    add-int/lit8 v3, v2, 0x1

    #@1c
    .end local v2    # "i":I
    .local v3, "i":I
    invoke-static {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    #@1f
    move-result v6

    #@20
    aput v6, v1, v2

    #@22
    move v2, v3

    #@23
    .line 1329
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1335
    .end local v0    # "format":I
    :cond_1
    if-eqz p1, :cond_2

    #@28
    .line 1336
    const/4 v4, 0x0

    #@29
    :goto_1
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@2b
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    #@2e
    move-result v6

    #@2f
    if-ge v4, v6, :cond_2

    #@31
    .line 1337
    add-int/lit8 v3, v2, 0x1

    #@33
    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@35
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@38
    move-result v6

    #@39
    invoke-static {v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    #@3c
    move-result v6

    #@3d
    aput v6, v1, v2

    #@3f
    .line 1336
    add-int/lit8 v4, v4, 0x1

    #@41
    move v2, v3

    #@42
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@43
    .line 1340
    :cond_2
    array-length v6, v1

    #@44
    if-eq v6, v2, :cond_3

    #@46
    .line 1341
    new-instance v6, Ljava/lang/AssertionError;

    #@48
    new-instance v7, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v8, "Too few formats "

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    const-string/jumbo v8, ", expected "

    #@5b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    array-length v8, v1

    #@60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6b
    throw v6

    #@6c
    .line 1344
    :cond_3
    return-object v1
.end method

.method static imageFormatToDataspace(I)I
    .locals 1
    .param p0, "format"    # I

    #@0
    .prologue
    .line 1223
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1230
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1225
    :sswitch_0
    const/16 v0, 0x101

    #@7
    return v0

    #@8
    .line 1228
    :sswitch_1
    const/16 v0, 0x1000

    #@a
    return v0

    #@b
    .line 1223
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_1
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method static imageFormatToInternal(I)I
    .locals 1
    .param p0, "format"    # I

    #@0
    .prologue
    .line 1181
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1188
    return p0

    #@4
    .line 1184
    :sswitch_0
    const/16 v0, 0x21

    #@6
    return v0

    #@7
    .line 1186
    :sswitch_1
    const v0, 0x20363159

    #@a
    return v0

    #@b
    .line 1181
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method public static imageFormatToInternal([I)[I
    .locals 2
    .param p0, "formats"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1245
    if-nez p0, :cond_0

    #@3
    .line 1246
    return-object v1

    #@4
    .line 1249
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@6
    if-ge v0, v1, :cond_1

    #@8
    .line 1250
    aget v1, p0, v0

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@d
    move-result v1

    #@e
    aput v1, p0, v0

    #@10
    .line 1249
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1253
    :cond_1
    return-object p0
.end method

.method static imageFormatToPublic(I)I
    .locals 2
    .param p0, "format"    # I

    #@0
    .prologue
    .line 1072
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1079
    return p0

    #@4
    .line 1074
    :sswitch_0
    const/16 v0, 0x100

    #@6
    return v0

    #@7
    .line 1076
    :sswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 1077
    const-string/jumbo v1, "ImageFormat.JPEG is an unknown internal format"

    #@c
    .line 1076
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1072
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method static imageFormatToPublic([I)[I
    .locals 2
    .param p0, "formats"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1141
    if-nez p0, :cond_0

    #@3
    .line 1142
    return-object v1

    #@4
    .line 1145
    :cond_0
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@6
    if-ge v0, v1, :cond_1

    #@8
    .line 1146
    aget v1, p0, v0

    #@a
    invoke-static {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    #@d
    move-result v1

    #@e
    aput v1, p0, v0

    #@10
    .line 1145
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1149
    :cond_1
    return-object p0
.end method

.method public static isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x1

    #@1
    .line 345
    const-string/jumbo v0, "klass must not be null"

    #@4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 347
    const-class v0, Landroid/media/ImageReader;

    #@9
    if-ne p0, v0, :cond_0

    #@b
    .line 348
    return v1

    #@c
    .line 349
    :cond_0
    const-class v0, Landroid/media/MediaRecorder;

    #@e
    if-ne p0, v0, :cond_1

    #@10
    .line 350
    return v1

    #@11
    .line 351
    :cond_1
    const-class v0, Landroid/media/MediaCodec;

    #@13
    if-ne p0, v0, :cond_2

    #@15
    .line 352
    return v1

    #@16
    .line 353
    :cond_2
    const-class v0, Landroid/renderscript/Allocation;

    #@18
    if-ne p0, v0, :cond_3

    #@1a
    .line 354
    return v1

    #@1b
    .line 355
    :cond_3
    const-class v0, Landroid/view/SurfaceHolder;

    #@1d
    if-ne p0, v0, :cond_4

    #@1f
    .line 356
    return v1

    #@20
    .line 357
    :cond_4
    const-class v0, Landroid/graphics/SurfaceTexture;

    #@22
    if-ne p0, v0, :cond_5

    #@24
    .line 358
    return v1

    #@25
    .line 361
    :cond_5
    const/4 v0, 0x0

    #@26
    return v0
.end method

.method private isSupportedInternalConfiguration(IILandroid/util/Size;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "dataspace"    # I
    .param p3, "size"    # Landroid/util/Size;

    #@0
    .prologue
    .line 1422
    const/16 v2, 0x1000

    #@2
    if-ne p2, v2, :cond_0

    #@4
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@6
    .line 1424
    .local v0, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_1
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_2

    #@a
    .line 1425
    aget-object v2, v0, v1

    #@c
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    #@f
    move-result v2

    #@10
    if-ne v2, p1, :cond_1

    #@12
    .line 1426
    aget-object v2, v0, v1

    #@14
    invoke-virtual {v2}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    .line 1425
    if-eqz v2, :cond_1

    #@1e
    .line 1427
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 1422
    .end local v0    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@22
    .restart local v0    # "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    goto :goto_0

    #@23
    .line 1424
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_1

    #@26
    .line 1431
    :cond_2
    const/4 v2, 0x0

    #@27
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 922
    if-nez p1, :cond_0

    #@3
    .line 923
    return v1

    #@4
    .line 925
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 926
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 928
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 929
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@f
    .line 931
    .local v0, "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@11
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@13
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 932
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@1b
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@1d
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 931
    if-eqz v2, :cond_2

    #@23
    .line 933
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@25
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@27
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .line 931
    if-eqz v2, :cond_2

    #@2d
    .line 934
    iget-object v2, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@2f
    iget-object v3, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@31
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    .line 931
    if-eqz v2, :cond_2

    #@37
    .line 935
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@39
    .line 936
    iget-object v2, v0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@3b
    .line 935
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    .line 931
    :cond_2
    return v1

    #@40
    .line 938
    .end local v0    # "other":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_3
    return v1
.end method

.method public getHighResolutionOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 677
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mListHighResolution:Z

    #@3
    if-nez v0, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 679
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getHighSpeedVideoFpsRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 622
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 623
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@9
    move-result v1

    #@a
    new-array v1, v1, [Landroid/util/Range;

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, [Landroid/util/Range;

    #@12
    return-object v1
.end method

.method public getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;
    .locals 9
    .param p1, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")[",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 559
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Ljava/lang/Integer;

    #@9
    .line 560
    .local v1, "fpsRangeCount":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    #@b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v6

    #@f
    if-nez v6, :cond_1

    #@11
    .line 561
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@13
    .line 562
    const-string/jumbo v7, "Size %s does not support high speed video recording"

    #@16
    .line 561
    const/4 v8, 0x1

    #@17
    new-array v8, v8, [Ljava/lang/Object;

    #@19
    .line 562
    aput-object p1, v8, v5

    #@1b
    .line 561
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v6

    #@23
    .line 566
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v6

    #@27
    new-array v2, v6, [Landroid/util/Range;

    #@29
    .line 567
    .local v2, "fpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    #@2a
    .line 568
    .local v3, "i":I
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@2c
    array-length v7, v6

    #@2d
    move v4, v3

    #@2e
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    #@30
    aget-object v0, v6, v5

    #@32
    .line 569
    .local v0, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {p1, v8}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_3

    #@3c
    .line 570
    add-int/lit8 v3, v4, 0x1

    #@3e
    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    #@41
    move-result-object v8

    #@42
    aput-object v8, v2, v4

    #@44
    .line 568
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@46
    move v4, v3

    #@47
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@48
    .line 573
    .end local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_2
    return-object v2

    #@49
    .restart local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_3
    move v3, v4

    #@4a
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public getHighSpeedVideoSizes()[Landroid/util/Size;
    .locals 2

    #@0
    .prologue
    .line 532
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoSizeMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 533
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@9
    move-result v1

    #@a
    new-array v1, v1, [Landroid/util/Size;

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, [Landroid/util/Size;

    #@12
    return-object v1
.end method

.method public getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    #@1
    .line 640
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoFpsRangeMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Ljava/lang/Integer;

    #@9
    .line 641
    .local v3, "sizeCount":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    #@b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v6

    #@f
    if-nez v6, :cond_1

    #@11
    .line 642
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@13
    .line 643
    const-string/jumbo v7, "FpsRange %s does not support high speed video recording"

    #@16
    .line 642
    const/4 v8, 0x1

    #@17
    new-array v8, v8, [Ljava/lang/Object;

    #@19
    .line 643
    aput-object p1, v8, v5

    #@1b
    .line 642
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v6

    #@23
    .line 646
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v6

    #@27
    new-array v4, v6, [Landroid/util/Size;

    #@29
    .line 647
    .local v4, "sizes":[Landroid/util/Size;
    const/4 v1, 0x0

    #@2a
    .line 648
    .local v1, "i":I
    iget-object v6, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@2c
    array-length v7, v6

    #@2d
    move v2, v1

    #@2e
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    #@30
    aget-object v0, v6, v5

    #@32
    .line 649
    .local v0, "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsRange()Landroid/util/Range;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {p1, v8}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v8

    #@3a
    if-eqz v8, :cond_3

    #@3c
    .line 650
    add-int/lit8 v1, v2, 0x1

    #@3e
    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v0}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getSize()Landroid/util/Size;

    #@41
    move-result-object v8

    #@42
    aput-object v8, v4, v2

    #@44
    .line 648
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@46
    move v2, v1

    #@47
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@48
    .line 653
    .end local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_2
    return-object v4

    #@49
    .restart local v0    # "config":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_3
    move v1, v2

    #@4a
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public final getInputFormats()[I
    .locals 1

    #@0
    .prologue
    .line 254
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getInputSizes(I)[Landroid/util/Size;
    .locals 1
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 267
    invoke-direct {p0, p1, v0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final getOutputFormats()[I
    .locals 1

    #@0
    .prologue
    .line 212
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormats(Z)[I

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getOutputMinFrameDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    #@0
    .prologue
    .line 721
    const-string/jumbo v0, "size must not be null"

    #@3
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 722
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    #@a
    .line 724
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@d
    move-result v0

    #@e
    .line 725
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    #@11
    move-result v1

    #@12
    .line 727
    const/4 v2, 0x0

    #@13
    .line 724
    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    #@16
    move-result-wide v0

    #@17
    return-wide v0
.end method

.method public getOutputMinFrameDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 2
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 775
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "klass was not supported"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 779
    :cond_0
    const/16 v0, 0x22

    #@12
    invoke-direct {p0, v0, v1, p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    #@15
    move-result-wide v0

    #@16
    return-wide v0
.end method

.method public getOutputSizes(I)[Landroid/util/Size;
    .locals 2
    .param p1, "format"    # I

    #@0
    .prologue
    .line 494
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getPublicFormatSizes(IZZ)[Landroid/util/Size;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Landroid/util/Size;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 462
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 463
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 466
    :cond_0
    const/16 v0, 0x22

    #@b
    .line 467
    const/4 v1, 0x1

    #@c
    .line 466
    invoke-direct {p0, v0, v2, v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatSizes(IIZZ)[Landroid/util/Size;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getOutputStallDuration(ILandroid/util/Size;)J
    .locals 3
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 867
    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatSupported(IZ)I

    #@4
    .line 869
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@7
    move-result v0

    #@8
    .line 870
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    #@b
    move-result v1

    #@c
    .line 869
    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public getOutputStallDuration(Ljava/lang/Class;Landroid/util/Size;)J
    .locals 3
    .param p2, "size"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/util/Size;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 904
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->isOutputSupportedFor(Ljava/lang/Class;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 905
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "klass was not supported"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 908
    :cond_0
    const/16 v0, 0x22

    #@11
    .line 909
    const/4 v1, 0x0

    #@12
    const/4 v2, 0x1

    #@13
    .line 908
    invoke-direct {p0, v0, v1, p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInternalFormatDuration(IILandroid/util/Size;I)J

    #@16
    move-result-wide v0

    #@17
    return-wide v0
.end method

.method public final getValidOutputFormatsForInput(I)[I
    .locals 1
    .param p1, "inputFormat"    # I

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 237
    const/4 v0, 0x0

    #@5
    new-array v0, v0, [I

    #@7
    return-object v0

    #@8
    .line 239
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mInputOutputFormatsMap:Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@a
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 947
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [[Ljava/lang/Object;

    #@3
    .line 948
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mMinFrameDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    .line 949
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mStallDurations:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    .line 950
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@14
    const/4 v2, 0x3

    #@15
    aput-object v1, v0, v2

    #@17
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mHighSpeedVideoConfigurations:[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@19
    const/4 v2, 0x4

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 947
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public isOutputSupportedFor(I)Z
    .locals 5
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 295
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    #@5
    .line 297
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    #@8
    move-result v1

    #@9
    .line 298
    .local v1, "internalFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    #@c
    move-result v0

    #@d
    .line 299
    .local v0, "dataspace":I
    const/16 v4, 0x1000

    #@f
    if-ne v0, v4, :cond_1

    #@11
    .line 300
    iget-object v4, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthOutputFormats:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@16
    move-result v4

    #@17
    if-ltz v4, :cond_0

    #@19
    :goto_0
    return v2

    #@1a
    :cond_0
    move v2, v3

    #@1b
    goto :goto_0

    #@1c
    .line 302
    :cond_1
    invoke-direct {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getFormatsMap(Z)Landroid/util/SparseIntArray;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    #@23
    move-result v4

    #@24
    if-ltz v4, :cond_2

    #@26
    :goto_1
    return v2

    #@27
    :cond_2
    move v2, v3

    #@28
    goto :goto_1
.end method

.method public isOutputSupportedFor(Landroid/view/Surface;)Z
    .locals 12
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    .line 402
    const-string/jumbo v6, "surface must not be null"

    #@5
    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 404
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    #@b
    move-result-object v5

    #@c
    .line 405
    .local v5, "surfaceSize":Landroid/util/Size;
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    #@f
    move-result v4

    #@10
    .line 406
    .local v4, "surfaceFormat":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    #@13
    move-result v3

    #@14
    .line 409
    .local v3, "surfaceDataspace":I
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->isFlexibleConsumer(Landroid/view/Surface;)Z

    #@17
    move-result v2

    #@18
    .line 412
    .local v2, "isFlexible":Z
    if-lt v4, v11, :cond_0

    #@1a
    .line 413
    const/4 v6, 0x5

    #@1b
    if-gt v4, v6, :cond_0

    #@1d
    .line 414
    const/16 v4, 0x22

    #@1f
    .line 418
    :cond_0
    const/16 v6, 0x1000

    #@21
    if-eq v3, v6, :cond_1

    #@23
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@25
    .line 419
    .local v1, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :goto_0
    array-length v8, v1

    #@26
    move v6, v7

    #@27
    :goto_1
    if-ge v6, v8, :cond_4

    #@29
    aget-object v0, v1, v6

    #@2b
    .line 420
    .local v0, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    #@2e
    move-result v9

    #@2f
    if-ne v9, v4, :cond_3

    #@31
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->isOutput()Z

    #@34
    move-result v9

    #@35
    if-eqz v9, :cond_3

    #@37
    .line 423
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9, v5}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v9

    #@3f
    if-eqz v9, :cond_2

    #@41
    .line 424
    return v11

    #@42
    .line 418
    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v1    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/params/StreamConfigurationMap;->mDepthConfigurations:[Landroid/hardware/camera2/params/StreamConfiguration;

    #@44
    .restart local v1    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    goto :goto_0

    #@45
    .line 425
    .restart local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_2
    if-eqz v2, :cond_3

    #@47
    .line 426
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfiguration;->getSize()Landroid/util/Size;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    #@4e
    move-result v9

    #@4f
    const/16 v10, 0x780

    #@51
    if-gt v9, v10, :cond_3

    #@53
    .line 427
    return v11

    #@54
    .line 419
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@56
    goto :goto_1

    #@57
    .line 431
    .end local v0    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_4
    return v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "StreamConfiguration("

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1467
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendOutputsString(Ljava/lang/StringBuilder;)V

    #@b
    .line 1468
    const-string/jumbo v1, ", "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1469
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighResOutputsString(Ljava/lang/StringBuilder;)V

    #@14
    .line 1470
    const-string/jumbo v1, ", "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 1471
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendInputsString(Ljava/lang/StringBuilder;)V

    #@1d
    .line 1472
    const-string/jumbo v1, ", "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1473
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendValidOutputFormatsForInputString(Ljava/lang/StringBuilder;)V

    #@26
    .line 1474
    const-string/jumbo v1, ", "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 1475
    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->appendHighSpeedVideoConfigurationsString(Ljava/lang/StringBuilder;)V

    #@2f
    .line 1476
    const-string/jumbo v1, ")"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 1478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method
