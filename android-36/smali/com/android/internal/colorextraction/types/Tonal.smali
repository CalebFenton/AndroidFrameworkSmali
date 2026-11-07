.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;,
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist FIT_WEIGHT_H:F = 1.0f

.field private static final blacklist FIT_WEIGHT_L:F = 10.0f

.field private static final blacklist FIT_WEIGHT_S:F = 1.0f

.field public static final blacklist MAIN_COLOR_DARK:I = -0xdfdedc

.field public static final blacklist MAIN_COLOR_LIGHT:I = -0x252320

.field public static final blacklist MAIN_COLOR_REGULAR:I = -0x1000000

.field private static final blacklist TAG:Ljava/lang/String; = "Tonal"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private blacklist mTmpHSL:[F

.field private final blacklist mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 68
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "parser":Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mContext:Landroid/content/Context;

    .line 72
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 73
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method private blacklist applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 5
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 239
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 240
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 241
    return-void
.end method

.method private static blacklist bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .registers 10
    .param p0, "palette"    # Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "l"    # F

    .line 327
    const/4 v0, -0x1

    .line 328
    .local v0, "minErrorIndex":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 330
    .local v1, "minError":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v3, v3

    if-ge v2, v3, :cond_39

    .line 331
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    .line 332
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v2

    sub-float v5, p2, v5

    .line 333
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v4, v4, v2

    sub-float v4, p3, v4

    .line 334
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 335
    .local v3, "error":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_36

    .line 336
    move v1, v3

    .line 337
    move v0, v2

    .line 330
    .end local v3    # "error":F
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 341
    .end local v2    # "i":I
    :cond_39
    return v0
.end method

.method private blacklist findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .registers 11
    .param p1, "h"    # F
    .param p2, "s"    # F

    .line 348
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_a

    .line 349
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object v0

    .line 352
    :cond_a
    const/4 v0, 0x0

    .line 353
    .local v0, "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 355
    .local v1, "error":F
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 356
    .local v2, "tonalPalettesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_d3

    .line 357
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 359
    .local v4, "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2d

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2d

    .line 360
    move-object v0, v4

    .line 361
    goto/16 :goto_d3

    .line 364
    :cond_2d
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_47

    cmpl-float v5, p1, v7

    if-ltz v5, :cond_47

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_47

    .line 365
    move-object v0, v4

    .line 366
    goto/16 :goto_d3

    .line 369
    :cond_47
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5e

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5e

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_5e

    .line 370
    move-object v0, v4

    .line 371
    goto/16 :goto_d3

    .line 374
    :cond_5e
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_71

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_71

    .line 375
    move-object v0, v4

    .line 376
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    move v1, v5

    .end local v1    # "error":F
    .local v5, "error":F
    goto :goto_cf

    .line 377
    .end local v5    # "error":F
    .restart local v1    # "error":F
    :cond_71
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_85

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_85

    .line 378
    move-object v0, v4

    .line 379
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v1, p1, v5

    goto :goto_cf

    .line 380
    :cond_85
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ab

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_ab

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 381
    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_ab

    .line 382
    move-object v0, v4

    .line 383
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v1, p1, v5

    goto :goto_cf

    .line 384
    :cond_ab
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_cf

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_cf

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 385
    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_cf

    .line 386
    move-object v0, v4

    .line 387
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    move v1, v5

    .line 356
    .end local v4    # "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_cf
    :goto_cf
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    .line 391
    .end local v3    # "i":I
    :cond_d3
    :goto_d3
    return-object v0
.end method

.method private static blacklist fit([FFIFF)[F
    .registers 9
    .param p0, "data"    # [F
    .param p1, "v"    # F
    .param p2, "index"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F

    .line 307
    array-length v0, p0

    new-array v0, v0, [F

    .line 308
    .local v0, "fitData":[F
    aget v1, p0, p2

    sub-float v1, p1, v1

    .line 310
    .local v1, "delta":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_17

    .line 311
    aget v3, p0, v2

    add-float/2addr v3, v1

    invoke-static {v3, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    aput v3, v0, v2

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 314
    .end local v2    # "i":I
    :cond_17
    return-object v0
.end method

.method private static blacklist fract(F)F
    .registers 3
    .param p0, "v"    # F

    .line 395
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private blacklist getColorInt(I[F[F[F)I
    .registers 8
    .param p1, "fitIndex"    # I
    .param p2, "h"    # [F
    .param p3, "s"    # [F
    .param p4, "l"    # [F

    .line 278
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 279
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/4 v1, 0x1

    aget v2, p3, p1

    aput v2, v0, v1

    .line 280
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/4 v1, 0x2

    aget v2, p4, p1

    aput v2, v0, v1

    .line 281
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    return v0
.end method

.method private blacklist getColorPalette(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;)[I
    .registers 5
    .param p1, "palette"    # Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 293
    iget-object v0, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    iget-object v1, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    iget-object v2, p1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette([F[F[F)[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist getColorPalette([F[F[F)[I
    .registers 7
    .param p1, "h"    # [F
    .param p2, "s"    # [F
    .param p3, "l"    # [F

    .line 285
    array-length v0, p1

    new-array v0, v0, [I

    .line 286
    .local v0, "colorPalette":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_10

    .line 287
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v2

    aput v2, v0, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 289
    .end local v1    # "i":I
    :cond_10
    return-object v0
.end method

.method private blacklist runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .registers 32
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p1, :cond_c

    .line 109
    return v4

    .line 112
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    .line 113
    .local v5, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 114
    .local v6, "mainColorsSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v7

    .line 115
    .local v7, "hints":I
    and-int/lit8 v8, v7, 0x1

    const/4 v9, 0x1

    if-eqz v8, :cond_1f

    move v8, v9

    goto :goto_20

    :cond_1f
    move v8, v4

    .line 117
    .local v8, "supportsDarkText":Z
    :goto_20
    if-nez v6, :cond_23

    .line 118
    return v4

    .line 122
    :cond_23
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Color;

    .line 128
    .local v10, "bestColor":Landroid/graphics/Color;
    invoke-virtual {v10}, Landroid/graphics/Color;->toArgb()I

    move-result v11

    .line 129
    .local v11, "colorValue":I
    const/4 v12, 0x3

    new-array v13, v12, [F

    .line 130
    .local v13, "hsl":[F
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    move/from16 v16, v4

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v14, v15, v4, v13}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 135
    aget v4, v13, v16

    const/high16 v14, 0x43b40000    # 360.0f

    div-float/2addr v4, v14

    aput v4, v13, v16

    .line 138
    aget v4, v13, v16

    aget v14, v13, v9

    invoke-direct {v0, v4, v14}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v4

    .line 139
    .local v4, "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    const-string v14, "Tonal"

    if-nez v4, :cond_5a

    .line 140
    const-string v9, "Could not find a tonal palette!"

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v16

    .line 145
    :cond_5a
    aget v15, v13, v16

    move/from16 v17, v9

    aget v9, v13, v17

    const/16 v18, 0x2

    aget v12, v13, v18

    invoke-static {v4, v15, v9, v12}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v9

    .line 146
    .local v9, "fitIndex":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_71

    .line 147
    const-string v12, "Could not find best fit!"

    invoke-static {v14, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v16

    .line 152
    :cond_71
    iget-object v12, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v15, v13, v16

    move-object/from16 v19, v5

    .end local v5    # "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    .local v19, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v20, v6

    .end local v6    # "mainColorsSize":I
    .local v20, "mainColorsSize":I
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v12, v15, v9, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v5

    .line 154
    .local v5, "h":[F
    iget-object v6, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v12, v13, v17

    const/4 v15, 0x0

    move/from16 v21, v7

    .end local v7    # "hints":I
    .local v21, "hints":I
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v12, v9, v15, v7}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v6

    .line 155
    .local v6, "s":[F
    iget-object v12, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    move-object/from16 v22, v4

    .end local v4    # "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .local v22, "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    aget v4, v13, v18

    invoke-static {v12, v4, v9, v15, v7}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v4

    .line 156
    .local v4, "l":[F
    invoke-direct {v0, v5, v6, v4}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette([F[F[F)[I

    move-result-object v7

    .line 159
    .local v7, "colorPalette":[I
    new-instance v12, Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v10

    .end local v10    # "bestColor":Landroid/graphics/Color;
    .local v23, "bestColor":Landroid/graphics/Color;
    const-string v10, "Tonal Palette - index: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, ". Main color: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    invoke-direct {v0, v9, v5, v6, v4}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, "\nColors: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v12, "builder":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_cf
    array-length v15, v5

    if-ge v10, v15, :cond_ea

    .line 164
    invoke-direct {v0, v10, v5, v6, v4}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v15, v5

    add-int/lit8 v15, v15, -0x1

    if-ge v10, v15, :cond_e7

    .line 166
    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_e7
    add-int/lit8 v10, v10, 0x1

    goto :goto_cf

    .line 169
    .end local v10    # "i":I
    :cond_ea
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v12    # "builder":Ljava/lang/StringBuilder;
    move v10, v9

    .line 173
    .local v10, "primaryIndex":I
    invoke-direct {v0, v10, v5, v6, v4}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v12

    .line 177
    .local v12, "mainColor":I
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v12, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 178
    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v15, v15, v18

    .line 179
    .local v15, "mainLuminosity":F
    move/from16 v24, v10

    .end local v10    # "primaryIndex":I
    .local v24, "primaryIndex":I
    const v10, -0x252320

    move/from16 v25, v11

    .end local v11    # "colorValue":I
    .local v25, "colorValue":I
    iget-object v11, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v10, v11}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 180
    iget-object v10, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v10, v10, v18

    .line 181
    .local v10, "lightLuminosity":F
    cmpl-float v11, v15, v10

    if-lez v11, :cond_114

    .line 182
    return v16

    .line 184
    :cond_114
    const v11, -0xdfdedc

    move/from16 v26, v10

    .end local v10    # "lightLuminosity":F
    .local v26, "lightLuminosity":F
    iget-object v10, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v11, v10}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 185
    iget-object v10, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v10, v10, v18

    .line 186
    .local v10, "darkLuminosity":F
    cmpg-float v11, v15, v10

    if-gez v11, :cond_127

    .line 187
    return v16

    .line 191
    :cond_127
    invoke-virtual {v1, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 192
    invoke-virtual {v1, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 193
    invoke-virtual {v1, v7}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 197
    if-eqz v8, :cond_136

    .line 198
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    .end local v24    # "primaryIndex":I
    .local v11, "primaryIndex":I
    goto :goto_141

    .line 199
    .end local v11    # "primaryIndex":I
    .restart local v24    # "primaryIndex":I
    :cond_136
    move/from16 v11, v18

    if-ge v9, v11, :cond_13c

    .line 200
    const/4 v11, 0x0

    .end local v24    # "primaryIndex":I
    .restart local v11    # "primaryIndex":I
    goto :goto_141

    .line 202
    .end local v11    # "primaryIndex":I
    .restart local v24    # "primaryIndex":I
    :cond_13c
    const/4 v11, 0x3

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 204
    .end local v24    # "primaryIndex":I
    .restart local v11    # "primaryIndex":I
    :goto_141
    invoke-direct {v0, v11, v5, v6, v4}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v12

    .line 205
    invoke-virtual {v2, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 206
    invoke-virtual {v2, v12}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 207
    invoke-virtual {v2, v7}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 211
    if-eqz v8, :cond_156

    .line 212
    move/from16 v16, v10

    .end local v10    # "darkLuminosity":F
    .local v16, "darkLuminosity":F
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    .end local v11    # "primaryIndex":I
    .local v10, "primaryIndex":I
    goto :goto_15e

    .line 213
    .end local v16    # "darkLuminosity":F
    .local v10, "darkLuminosity":F
    .restart local v11    # "primaryIndex":I
    :cond_156
    move/from16 v16, v10

    .end local v10    # "darkLuminosity":F
    .restart local v16    # "darkLuminosity":F
    const/4 v10, 0x2

    if-ge v9, v10, :cond_15d

    .line 214
    const/4 v10, 0x0

    .end local v11    # "primaryIndex":I
    .local v10, "primaryIndex":I
    goto :goto_15e

    .line 216
    .end local v10    # "primaryIndex":I
    .restart local v11    # "primaryIndex":I
    :cond_15d
    const/4 v10, 0x2

    .line 218
    .end local v11    # "primaryIndex":I
    .restart local v10    # "primaryIndex":I
    :goto_15e
    invoke-direct {v0, v10, v5, v6, v4}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v11

    .line 219
    .end local v12    # "mainColor":I
    .local v11, "mainColor":I
    invoke-virtual {v3, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 220
    invoke-virtual {v3, v11}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 221
    invoke-virtual {v3, v7}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 223
    invoke-virtual {v1, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 224
    invoke-virtual {v2, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 225
    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 228
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gradients: \n\tNormal "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "\n\tDark "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "\n\tExtra dark: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return v17
.end method


# virtual methods
.method public blacklist applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 10
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outGradientColors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 251
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    .line 252
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v0

    .line 254
    .local v2, "light":Z
    :goto_e
    if-eqz p1, :cond_1a

    .line 255
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v0

    .line 258
    .local v3, "dark":Z
    :goto_1b
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2f

    move v4, v1

    goto :goto_30

    :cond_2f
    move v4, v0

    .line 261
    .local v4, "inNightMode":Z
    :goto_30
    if-eqz v2, :cond_36

    .line 262
    const v5, -0x252320

    .local v5, "color":I
    goto :goto_41

    .line 263
    .end local v5    # "color":I
    :cond_36
    if-nez v3, :cond_3e

    if-eqz v4, :cond_3b

    goto :goto_3e

    .line 266
    :cond_3b
    const/high16 v5, -0x1000000

    .restart local v5    # "color":I
    goto :goto_41

    .line 264
    .end local v5    # "color":I
    :cond_3e
    :goto_3e
    const v5, -0xdfdedc

    .line 268
    .restart local v5    # "color":I
    :goto_41
    const/4 v6, 0x3

    new-array v6, v6, [F

    .line 269
    .local v6, "hsl":[F
    invoke-static {v5, v6}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 271
    invoke-virtual {p2, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 272
    invoke-virtual {p2, v5}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 273
    invoke-virtual {p2, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 274
    aget v0, v6, v0

    aget v1, v6, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal;->getColorPalette(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;)[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setColorPalette([I)V

    .line 275
    return-void
.end method

.method public blacklist extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 6
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    .line 90
    .local v0, "success":Z
    if-nez v0, :cond_9

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 93
    :cond_9
    return-void
.end method
