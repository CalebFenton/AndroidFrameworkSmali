.class Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private final blacklist mLowerIndex:I

.field private blacklist mMaxBlue:I

.field private blacklist mMaxGreen:I

.field private blacklist mMaxRed:I

.field private blacklist mMinBlue:I

.field private blacklist mMinGreen:I

.field private blacklist mMinRed:I

.field private blacklist mPopulation:I

.field private blacklist mUpperIndex:I

.field final synthetic blacklist this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V
    .registers 4
    .param p2, "lowerIndex"    # I
    .param p3, "upperIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 232
    iput p3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 234
    return-void
.end method


# virtual methods
.method final blacklist canSplit()Z
    .registers 3

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method final blacklist findSplitPoint()I
    .registers 8

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v0

    .line 349
    .local v0, "longestDimension":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 350
    .local v1, "colors":[I
    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v2, v2, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 355
    .local v2, "hist":[I
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 358
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->sort([III)V

    .line 361
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v1, v0, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 363
    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v3, v3, 0x2

    .line 364
    .local v3, "midPoint":I
    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_2a
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v4, v6, :cond_41

    .line 365
    aget v6, v1, v4

    aget v6, v2, v6

    add-int/2addr v5, v6

    .line 366
    if-lt v5, v3, :cond_3e

    .line 369
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    .line 364
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 373
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_41
    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    return v4
.end method

.method final blacklist fitBox()V
    .registers 15

    .line 253
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 254
    .local v0, "colors":[I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 258
    .local v1, "hist":[I
    const v2, 0x7fffffff

    move v3, v2

    .local v3, "minBlue":I
    move v4, v2

    .line 260
    .local v2, "minRed":I
    .local v4, "minGreen":I
    const/high16 v5, -0x80000000

    move v6, v5

    .local v6, "maxBlue":I
    move v7, v5

    .line 261
    .local v5, "maxRed":I
    .local v7, "maxGreen":I
    const/4 v8, 0x0

    .line 263
    .local v8, "count":I
    iget v9, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v9, "i":I
    :goto_14
    iget v10, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v9, v10, :cond_3e

    .line 264
    aget v10, v0, v9

    .line 265
    .local v10, "color":I
    aget v11, v1, v10

    add-int/2addr v8, v11

    .line 267
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v11

    .line 268
    .local v11, "r":I
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v12

    .line 269
    .local v12, "g":I
    invoke-static {v10}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v13

    .line 270
    .local v13, "b":I
    if-le v11, v5, :cond_2c

    .line 271
    move v5, v11

    .line 273
    :cond_2c
    if-ge v11, v2, :cond_2f

    .line 274
    move v2, v11

    .line 276
    :cond_2f
    if-le v12, v7, :cond_32

    .line 277
    move v7, v12

    .line 279
    :cond_32
    if-ge v12, v4, :cond_35

    .line 280
    move v4, v12

    .line 282
    :cond_35
    if-le v13, v6, :cond_38

    .line 283
    move v6, v13

    .line 285
    :cond_38
    if-ge v13, v3, :cond_3b

    .line 286
    move v3, v13

    .line 263
    .end local v10    # "color":I
    .end local v11    # "r":I
    .end local v12    # "g":I
    .end local v13    # "b":I
    :cond_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 290
    .end local v9    # "i":I
    :cond_3e
    iput v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 291
    iput v5, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 292
    iput v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 293
    iput v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 294
    iput v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 295
    iput v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 296
    iput v8, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 297
    return-void
.end method

.method final blacklist getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;
    .registers 12

    .line 380
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v0, v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 381
    .local v0, "colors":[I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    iget-object v1, v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 382
    .local v1, "hist":[I
    const/4 v2, 0x0

    .line 383
    .local v2, "redSum":I
    const/4 v3, 0x0

    .line 384
    .local v3, "greenSum":I
    const/4 v4, 0x0

    .line 385
    .local v4, "blueSum":I
    const/4 v5, 0x0

    .line 387
    .local v5, "totalPopulation":I
    iget v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .local v6, "i":I
    :goto_e
    iget v7, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v6, v7, :cond_2c

    .line 388
    aget v7, v0, v6

    .line 389
    .local v7, "color":I
    aget v8, v1, v7

    .line 391
    .local v8, "colorPopulation":I
    add-int/2addr v5, v8

    .line 392
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 393
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 394
    invoke-static {v7}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v4, v9

    .line 387
    .end local v7    # "color":I
    .end local v8    # "colorPopulation":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 397
    .end local v6    # "i":I
    :cond_2c
    int-to-float v6, v2

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 398
    .local v6, "redMean":I
    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 399
    .local v7, "greenMean":I
    int-to-float v8, v4

    int-to-float v9, v5

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 401
    .local v8, "blueMean":I
    new-instance v9, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v10

    invoke-direct {v9, v10, v5}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    return-object v9
.end method

.method final blacklist getColorCount()I
    .registers 3

    .line 246
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final blacklist getLongestColorDimension()I
    .registers 5

    .line 325
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    .line 326
    .local v0, "redLength":I
    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    .line 327
    .local v1, "greenLength":I
    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v3, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v2, v3

    .line 329
    .local v2, "blueLength":I
    if-lt v0, v1, :cond_15

    if-lt v0, v2, :cond_15

    .line 330
    const/4 v3, -0x3

    return v3

    .line 331
    :cond_15
    if-lt v1, v0, :cond_1b

    if-lt v1, v2, :cond_1b

    .line 332
    const/4 v3, -0x2

    return v3

    .line 334
    :cond_1b
    const/4 v3, -0x1

    return v3
.end method

.method final blacklist getVolume()I
    .registers 4

    .line 237
    iget v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method final blacklist splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    .registers 6

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 310
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v0

    .line 312
    .local v0, "splitPoint":I
    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->this$0:Lcom/android/internal/graphics/palette/ColorCutQuantizer;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    .line 315
    .local v1, "newBox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    iput v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->fitBox()V

    .line 318
    return-object v1

    .line 306
    .end local v0    # "splitPoint":I
    .end local v1    # "newBox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
