.class public Landroid/hardware/camera2/utils/SurfaceUtils;
.super Ljava/lang/Object;
.source "SurfaceUtils.java"


# static fields
.field private static final blacklist BAD_VALUE:I

.field private static final blacklist BGRA_8888:I = 0x5

.field private static final blacklist USAGE_HW_COMPOSER:I = 0x800

.field private static final blacklist USAGE_RENDERSCRIPT:I = 0x100000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .registers 9
    .param p2, "config"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")V"
        }
    .end annotation

    .line 239
    .local p0, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_ff

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_ff

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_ff

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-nez p1, :cond_1b

    .line 246
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_31

    .line 249
    :cond_1b
    invoke-virtual {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object v2

    .line 250
    .local v2, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 255
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizesFor(Landroid/util/Range;)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 258
    .end local v2    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_31
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 259
    .local v3, "surface":Landroid/view/Surface;
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V

    .line 262
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    .line 263
    .local v4, "surfaceSize":Landroid/util/Size;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 269
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v5

    if-nez v5, :cond_63

    .line 270
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v5

    if-eqz v5, :cond_5b

    goto :goto_63

    .line 271
    :cond_5b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This output surface is neither preview nor hardware video encoding surface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_63
    :goto_63
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 275
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v5

    if-nez v5, :cond_70

    goto :goto_78

    .line 276
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This output surface can not be both preview and hardware video encoding surface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "surfaceSize":Landroid/util/Size;
    :cond_78
    :goto_78
    goto :goto_35

    .line 264
    .restart local v3    # "surface":Landroid/view/Surface;
    .restart local v4    # "surfaceSize":Landroid/util/Size;
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface size "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is not part of the high speed supported size list "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 266
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "surfaceSize":Landroid/util/Size;
    :cond_a8
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v1, :cond_d3

    .line 284
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 285
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    nop

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v2

    .line 287
    .local v2, "isFirstSurfacePreview":Z
    nop

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForPreview(Landroid/view/Surface;)Z

    move-result v3

    .line 289
    .local v3, "isSecondSurfacePreview":Z
    if-eq v2, v3, :cond_cb

    goto :goto_d3

    .line 290
    :cond_cb
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The 2 output surfaces must have different type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/Surface;>;"
    .end local v2    # "isFirstSurfacePreview":Z
    .end local v3    # "isSecondSurfacePreview":Z
    :cond_d3
    :goto_d3
    return-void

    .line 251
    .local v2, "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_d4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fps range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in the request is not a supported high speed fps range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    .end local v0    # "highSpeedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v2    # "highSpeedFpsRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output target surface list must not be null and the size must be 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkHighSpeedSurfaceFormat(Landroid/view/Surface;)V
    .registers 5
    .param p0, "surface"    # Landroid/view/Surface;

    .line 221
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    .line 223
    .local v0, "surfaceFormat":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 227
    return-void

    .line 224
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface format("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not for preview or hardware video encoding!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist detectSurfaceFormat(Landroid/view/Surface;)I
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 172
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 174
    .local v0, "surfaceType":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_c

    .line 176
    return v0

    .line 174
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceDataspace(Landroid/view/Surface;)I
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 188
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDataspace(Landroid/view/Surface;)I

    move-result v0

    .line 190
    .local v0, "dataSpace":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_c

    .line 191
    return v0

    .line 190
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceFormat(Landroid/view/Surface;)I
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 149
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceType(Landroid/view/Surface;)I

    move-result v0

    .line 151
    .local v0, "surfaceType":I
    sget v1, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v0, v1, :cond_14

    .line 155
    const/4 v1, 0x1

    if-lt v0, v1, :cond_13

    const/4 v1, 0x5

    if-gt v0, v1, :cond_13

    .line 157
    const/16 v0, 0x22

    .line 159
    :cond_13
    return v0

    .line 151
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface was abandoned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getSurfaceId(Landroid/view/Surface;)J
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 99
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :try_start_3
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeGetSurfaceId(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 102
    :catch_8
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static greylist getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .registers 6
    .param p0, "surface"    # Landroid/view/Surface;

    .line 131
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 134
    .local v0, "dimens":[I
    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I

    move-result v1

    .line 135
    .local v1, "errorFlag":I
    sget v2, Landroid/hardware/camera2/utils/SurfaceUtils;->BAD_VALUE:I

    if-eq v1, v2, :cond_1a

    .line 137
    new-instance v2, Landroid/util/Size;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    return-object v2

    .line 135
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Surface was abandoned"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getSurfaceUsage(Landroid/view/Surface;)J
    .registers 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 114
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :try_start_3
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 117
    :catch_8
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static greylist-max-o isFlexibleConsumer(Landroid/view/Surface;)Z
    .registers 11
    .param p0, "output"    # Landroid/view/Surface;

    .line 200
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 205
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x110000

    .line 206
    .local v2, "disallowedFlags":J
    const-wide/16 v4, 0x903

    .line 209
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1c

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x0

    .line 211
    .local v6, "flexibleConsumer":Z
    :goto_1d
    return v6
.end method

.method public static greylist-max-o isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z
    .registers 11
    .param p0, "surface"    # Landroid/view/Surface;

    .line 79
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 81
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x100803

    .line 83
    .local v2, "disallowedFlags":J
    const-wide/32 v4, 0x10000

    .line 84
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1d

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    .line 87
    .local v6, "videoEncoderConsumer":Z
    :goto_1e
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    .line 89
    .local v7, "surfaceFormat":I
    return v6
.end method

.method public static greylist-max-o isSurfaceForPreview(Landroid/view/Surface;)Z
    .registers 11
    .param p0, "surface"    # Landroid/view/Surface;

    .line 58
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J

    move-result-wide v0

    .line 60
    .local v0, "usageFlags":J
    const-wide/32 v2, 0x110003

    .line 62
    .local v2, "disallowedFlags":J
    const-wide/16 v4, 0xb00

    .line 64
    .local v4, "allowedFlags":J
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1c

    and-long v6, v0, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v6, 0x0

    .line 66
    .local v6, "previewConsumer":Z
    :goto_1d
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v7

    .line 68
    .local v7, "surfaceFormat":I
    return v6
.end method

.method private static native blacklist nativeDetectSurfaceDataspace(Landroid/view/Surface;)I
.end method

.method private static native blacklist nativeDetectSurfaceDimens(Landroid/view/Surface;[I)I
.end method

.method private static native blacklist nativeDetectSurfaceType(Landroid/view/Surface;)I
.end method

.method private static native blacklist nativeDetectSurfaceUsageFlags(Landroid/view/Surface;)J
.end method

.method private static native blacklist nativeGetSurfaceId(Landroid/view/Surface;)J
.end method
