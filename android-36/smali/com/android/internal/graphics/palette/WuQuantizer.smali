.class public final Lcom/android/internal/graphics/palette/WuQuantizer;
.super Ljava/lang/Object;
.source "WuQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;,
        Lcom/android/internal/graphics/palette/WuQuantizer$Box;,
        Lcom/android/internal/graphics/palette/WuQuantizer$Direction;,
        Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BITS:I = 0x5

.field private static final blacklist MAX_INDEX:I = 0x20

.field private static final blacklist SIDE_LENGTH:I = 0x21

.field private static final blacklist TOTAL_SIZE:I = 0x8c61


# instance fields
.field private blacklist mColors:[I

.field private blacklist mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

.field private blacklist mInputPixelToCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMoments:[D

.field private blacklist mMomentsB:[I

.field private blacklist mMomentsG:[I

.field private blacklist mMomentsR:[I

.field private blacklist mPalette:Lcom/android/internal/graphics/palette/Palette;

.field private blacklist mWeights:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 44
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I
    .registers 7
    .param p0, "cube"    # Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    .param p1, "direction"    # Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .param p2, "moment"    # [I

    .line 381
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_c0

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_21
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 394
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 395
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 396
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    sub-int/2addr v0, v1

    .line 393
    return v0

    .line 388
    :pswitch_56
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 389
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 390
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 391
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    sub-int/2addr v0, v1

    .line 388
    return v0

    .line 383
    :pswitch_8b
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 384
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 385
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 386
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p2, v1

    sub-int/2addr v0, v1

    .line 383
    return v0

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_56
        :pswitch_21
    .end packed-switch
.end method

.method private blacklist constructHistogram(Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "pixels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    const v1, 0x8c61

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    .line 117
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    .line 118
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    .line 119
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    .line 120
    new-array v1, v1, [D

    iput-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    .line 122
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 124
    .local v3, "pixel":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 125
    .local v4, "count":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 126
    .local v5, "red":I
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 127
    .local v6, "green":I
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 128
    .local v7, "blue":I
    const/4 v8, 0x3

    .line 129
    .local v8, "bitsToRemove":I
    shr-int v9, v5, v8

    add-int/lit8 v9, v9, 0x1

    .line 130
    .local v9, "iR":I
    shr-int v10, v6, v8

    add-int/lit8 v10, v10, 0x1

    .line 131
    .local v10, "iG":I
    shr-int v11, v7, v8

    add-int/lit8 v11, v11, 0x1

    .line 132
    .local v11, "iB":I
    invoke-static {v9, v10, v11}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v12

    .line 133
    .local v12, "index":I
    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v14, v13, v12

    add-int/2addr v14, v4

    aput v14, v13, v12

    .line 134
    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v14, v13, v12

    mul-int v15, v5, v4

    add-int/2addr v14, v15

    aput v14, v13, v12

    .line 135
    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v14, v13, v12

    mul-int v15, v6, v4

    add-int/2addr v14, v15

    aput v14, v13, v12

    .line 136
    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v14, v13, v12

    mul-int v15, v7, v4

    add-int/2addr v14, v15

    aput v14, v13, v12

    .line 137
    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v14, v13, v12

    mul-int v16, v5, v5

    mul-int v17, v6, v6

    add-int v16, v16, v17

    mul-int v17, v7, v7

    add-int v16, v16, v17

    mul-int v0, v4, v16

    move-object/from16 v16, v1

    int-to-double v0, v0

    add-double/2addr v14, v0

    aput-wide v14, v13, v12

    .line 138
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "pixel":I
    .end local v4    # "count":I
    .end local v5    # "red":I
    .end local v6    # "green":I
    .end local v7    # "blue":I
    .end local v8    # "bitsToRemove":I
    .end local v9    # "iR":I
    .end local v10    # "iG":I
    .end local v11    # "iB":I
    .end local v12    # "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_21

    .line 139
    :cond_9b
    return-void
.end method

.method private blacklist createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
    .registers 15
    .param p1, "maxColorCount"    # I

    .line 182
    new-array v0, p1, [Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, p1, :cond_14

    .line 184
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    new-instance v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer$Box;-><init>(Lcom/android/internal/graphics/palette/WuQuantizer-IA;)V

    aput-object v2, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 186
    .end local v0    # "i":I
    :cond_14
    new-array v0, p1, [D

    .line 187
    .local v0, "volumeVariance":[D
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 188
    .local v1, "firstBox":Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    const/16 v3, 0x20

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 189
    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 190
    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, "generatedColorCount":I
    const/4 v4, 0x0

    .line 195
    .local v4, "next":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_26
    if-ge v5, p1, :cond_82

    .line 196
    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v7, v7, v5

    invoke-direct {p0, v6, v7}, Lcom/android/internal/graphics/palette/WuQuantizer;->cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_62

    .line 197
    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    const/4 v9, 0x1

    if-le v6, v9, :cond_4a

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v10

    goto :goto_4b

    :cond_4a
    move-wide v10, v7

    :goto_4b
    aput-wide v10, v0, v4

    .line 198
    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    if-le v6, v9, :cond_5e

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v5

    invoke-direct {p0, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v9

    goto :goto_5f

    :cond_5e
    move-wide v9, v7

    :goto_5f
    aput-wide v9, v0, v5

    goto :goto_66

    .line 200
    :cond_62
    aput-wide v7, v0, v4

    .line 201
    add-int/lit8 v5, v5, -0x1

    .line 204
    :goto_66
    const/4 v4, 0x0

    .line 206
    aget-wide v9, v0, v2

    .line 207
    .local v9, "temp":D
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_6a
    if-gt v6, v5, :cond_78

    .line 208
    aget-wide v11, v0, v6

    cmpl-double v11, v11, v9

    if-lez v11, :cond_75

    .line 209
    aget-wide v9, v0, v6

    .line 210
    move v4, v6

    .line 207
    :cond_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 213
    .end local v6    # "k":I
    :cond_78
    add-int/lit8 v3, v5, 0x1

    .line 214
    cmpg-double v6, v9, v7

    if-gtz v6, :cond_7f

    .line 215
    goto :goto_82

    .line 195
    .end local v9    # "temp":D
    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 219
    .end local v5    # "i":I
    :cond_82
    :goto_82
    new-instance v2, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    invoke-direct {v2, p1, v3}, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;-><init>(II)V

    return-object v2
.end method

.method private blacklist createMoments()V
    .registers 24

    .line 142
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .local v1, "r":I
    :goto_3
    const/16 v2, 0x21

    if-ge v1, v2, :cond_b9

    .line 143
    new-array v3, v2, [I

    .line 144
    .local v3, "area":[I
    new-array v4, v2, [I

    .line 145
    .local v4, "areaR":[I
    new-array v5, v2, [I

    .line 146
    .local v5, "areaG":[I
    new-array v6, v2, [I

    .line 147
    .local v6, "areaB":[I
    new-array v7, v2, [D

    .line 149
    .local v7, "area2":[D
    const/4 v8, 0x1

    .local v8, "g":I
    :goto_12
    if-ge v8, v2, :cond_b3

    .line 150
    const/4 v9, 0x0

    .line 151
    .local v9, "line":I
    const/4 v10, 0x0

    .line 152
    .local v10, "lineR":I
    const/4 v11, 0x0

    .line 153
    .local v11, "lineG":I
    const/4 v12, 0x0

    .line 155
    .local v12, "lineB":I
    const-wide/16 v13, 0x0

    .line 156
    .local v13, "line2":D
    const/4 v15, 0x1

    .local v15, "b":I
    :goto_1b
    if-ge v15, v2, :cond_ab

    .line 157
    invoke-static {v1, v8, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v16

    .line 158
    .local v16, "index":I
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v2, v2, v16

    add-int/2addr v9, v2

    .line 159
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v2, v2, v16

    add-int/2addr v10, v2

    .line 160
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v2, v2, v16

    add-int/2addr v11, v2

    .line 161
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v2, v2, v16

    add-int/2addr v12, v2

    .line 162
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v17, v2, v16

    add-double v13, v13, v17

    .line 164
    aget v2, v3, v15

    add-int/2addr v2, v9

    aput v2, v3, v15

    .line 165
    aget v2, v4, v15

    add-int/2addr v2, v10

    aput v2, v4, v15

    .line 166
    aget v2, v5, v15

    add-int/2addr v2, v11

    aput v2, v5, v15

    .line 167
    aget v2, v6, v15

    add-int/2addr v2, v12

    aput v2, v6, v15

    .line 168
    aget-wide v17, v7, v15

    add-double v17, v17, v13

    aput-wide v17, v7, v15

    .line 170
    add-int/lit8 v2, v1, -0x1

    invoke-static {v2, v8, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v2

    .line 171
    .local v2, "previousIndex":I
    move/from16 v17, v1

    .end local v1    # "r":I
    .local v17, "r":I
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v1, v1, v2

    aget v19, v3, v15

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 172
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v1, v1, v2

    aget v19, v4, v15

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 173
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v1, v1, v2

    aget v19, v5, v15

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 174
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v1, v1, v2

    aget v19, v6, v15

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 175
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v19, v1, v2

    aget-wide v21, v7, v15

    add-double v19, v19, v21

    aput-wide v19, v18, v16

    .line 156
    .end local v2    # "previousIndex":I
    .end local v16    # "index":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    const/16 v2, 0x21

    goto/16 :goto_1b

    .end local v17    # "r":I
    .restart local v1    # "r":I
    :cond_ab
    move/from16 v17, v1

    .line 149
    .end local v1    # "r":I
    .end local v9    # "line":I
    .end local v10    # "lineR":I
    .end local v11    # "lineG":I
    .end local v12    # "lineB":I
    .end local v13    # "line2":D
    .end local v15    # "b":I
    .restart local v17    # "r":I
    add-int/lit8 v8, v8, 0x1

    const/16 v2, 0x21

    goto/16 :goto_12

    .end local v17    # "r":I
    .restart local v1    # "r":I
    :cond_b3
    move/from16 v17, v1

    .line 142
    .end local v1    # "r":I
    .end local v3    # "area":[I
    .end local v4    # "areaR":[I
    .end local v5    # "areaG":[I
    .end local v6    # "areaB":[I
    .end local v7    # "area2":[D
    .end local v8    # "g":I
    .restart local v17    # "r":I
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "r":I
    .restart local v1    # "r":I
    goto/16 :goto_3

    .line 179
    .end local v1    # "r":I
    :cond_b9
    return-void
.end method

.method private blacklist createResult(I)[I
    .registers 12
    .param p1, "colorCount"    # I

    .line 223
    new-array v0, p1, [I

    .line 224
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 225
    .local v1, "nextAvailableIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, p1, :cond_33

    .line 226
    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v3, v3, v2

    .line 227
    .local v3, "cube":Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v3, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v4

    .line 228
    .local v4, "weight":I
    if-lez v4, :cond_30

    .line 229
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v3, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v5

    div-int/2addr v5, v4

    .line 230
    .local v5, "r":I
    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v3, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    div-int/2addr v6, v4

    .line 231
    .local v6, "g":I
    iget-object v7, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v3, v7}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v7

    div-int/2addr v7, v4

    .line 232
    .local v7, "b":I
    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 233
    .local v8, "color":I
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "nextAvailableIndex":I
    .local v9, "nextAvailableIndex":I
    aput v8, v0, v1

    move v1, v9

    .line 225
    .end local v3    # "cube":Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    .end local v4    # "weight":I
    .end local v5    # "r":I
    .end local v6    # "g":I
    .end local v7    # "b":I
    .end local v8    # "color":I
    .end local v9    # "nextAvailableIndex":I
    .restart local v1    # "nextAvailableIndex":I
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 236
    .end local v2    # "i":I
    :cond_33
    new-array v2, v1, [I

    .line 237
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    return-object v2
.end method

.method private blacklist cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z
    .registers 23
    .param p1, "one"    # Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    .param p2, "two"    # Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v5

    .line 263
    .local v5, "wholeR":I
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    .line 264
    .local v6, "wholeG":I
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v7

    .line 265
    .local v7, "wholeB":I
    iget-object v2, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v8

    .line 267
    .local v8, "wholeW":I
    sget-object v2, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    const/4 v10, 0x1

    add-int/2addr v3, v10

    iget v4, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 268
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v11

    .line 269
    .local v11, "maxRResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    sget-object v2, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 270
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v12

    .line 271
    .local v12, "maxGResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    sget-object v2, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    add-int/lit8 v3, v0, 0x1

    iget v4, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 272
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v2

    .line 274
    .local v2, "maxBResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    iget-wide v3, v11, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    .line 275
    .local v3, "maxR":D
    iget-wide v13, v12, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    .line 276
    .local v13, "maxG":D
    move v0, v10

    move-object v15, v11

    .end local v11    # "maxRResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .local v15, "maxRResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    iget-wide v10, v2, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    .line 277
    .local v10, "maxB":D
    cmpl-double v16, v3, v13

    if-ltz v16, :cond_61

    cmpl-double v16, v3, v10

    if-ltz v16, :cond_61

    .line 278
    move/from16 v16, v0

    iget v0, v15, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    if-gez v0, :cond_5e

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_5e
    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    .local v0, "cutDirection":Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    goto :goto_70

    .line 277
    .end local v0    # "cutDirection":Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    :cond_61
    move/from16 v16, v0

    .line 282
    cmpl-double v0, v13, v3

    if-ltz v0, :cond_6e

    cmpl-double v0, v13, v10

    if-ltz v0, :cond_6e

    .line 283
    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    .restart local v0    # "cutDirection":Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    goto :goto_70

    .line 285
    .end local v0    # "cutDirection":Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    :cond_6e
    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    .line 288
    .restart local v0    # "cutDirection":Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    :goto_70
    move-wide/from16 v17, v3

    .end local v3    # "maxR":D
    .local v17, "maxR":D
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 289
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 290
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 292
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_fe

    .line 312
    move-object/from16 v19, v2

    .end local v2    # "maxBResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .local v19, "maxBResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected direction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    .end local v19    # "maxBResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .restart local v2    # "maxBResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    :pswitch_a1
    iget v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 307
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    .line 308
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 309
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 310
    goto :goto_d4

    .line 300
    :pswitch_b2
    iget v3, v12, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 301
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    .line 302
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 303
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 304
    goto :goto_d4

    .line 294
    :pswitch_c3
    iget v3, v15, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 295
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    .line 296
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 297
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 298
    nop

    .line 315
    :goto_d4
    iget v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v4, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    move-object/from16 v19, v2

    .end local v2    # "maxBResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .restart local v19    # "maxBResult":Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    iget v2, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr v4, v2

    mul-int/2addr v3, v4

    iget v2, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v4, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr v2, v4

    mul-int/2addr v3, v2

    iput v3, v1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    .line 316
    iget v2, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr v2, v3

    iget v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v4, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget v3, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v4, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    iput v2, v9, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    .line 318
    return v16

    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_b2
        :pswitch_a1
    .end packed-switch
.end method

.method private static blacklist getIndex(III)I
    .registers 5
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 112
    shl-int/lit8 v0, p0, 0xa

    shl-int/lit8 v1, p0, 0x6

    add-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private blacklist maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .registers 33
    .param p1, "cube"    # Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    .param p2, "direction"    # Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .param p3, "first"    # I
    .param p4, "last"    # I
    .param p5, "wholeR"    # I
    .param p6, "wholeG"    # I
    .param p7, "wholeB"    # I
    .param p8, "wholeW"    # I

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v3

    .line 331
    .local v3, "baseR":I
    iget-object v4, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v4

    .line 332
    .local v4, "baseG":I
    iget-object v5, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v5

    .line 333
    .local v5, "baseB":I
    iget-object v6, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v6

    .line 335
    .local v6, "baseW":I
    const-wide/16 v7, 0x0

    .line 336
    .local v7, "max":D
    const/4 v9, -0x1

    .line 337
    .local v9, "cut":I
    move/from16 v10, p3

    .local v10, "i":I
    :goto_23
    move/from16 v11, p4

    if-ge v10, v11, :cond_83

    .line 338
    iget-object v12, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v10, v12}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v12

    add-int/2addr v12, v3

    .line 339
    .local v12, "halfR":I
    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v10, v13}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v13

    add-int/2addr v13, v4

    .line 340
    .local v13, "halfG":I
    iget-object v14, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v10, v14}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v14

    add-int/2addr v14, v5

    .line 341
    .local v14, "halfB":I
    iget-object v15, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v10, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v15

    add-int/2addr v15, v6

    .line 343
    .local v15, "halfW":I
    if-nez v15, :cond_46

    .line 344
    goto :goto_7c

    .line 346
    :cond_46
    mul-int v16, v12, v12

    mul-int v17, v13, v13

    add-int v16, v16, v17

    mul-int v17, v14, v14

    add-int v0, v16, v17

    int-to-double v0, v0

    .line 347
    .local v0, "tempNumerator":D
    move-wide/from16 v16, v0

    .end local v0    # "tempNumerator":D
    .local v16, "tempNumerator":D
    int-to-double v0, v15

    .line 348
    .local v0, "tempDenominator":D
    div-double v18, v16, v0

    .line 350
    .local v18, "temp":D
    sub-int v12, p5, v12

    .line 351
    sub-int v13, p6, v13

    .line 352
    sub-int v14, p7, v14

    .line 353
    sub-int v15, p8, v15

    .line 354
    if-nez v15, :cond_61

    .line 355
    goto :goto_7c

    .line 358
    :cond_61
    mul-int v20, v12, v12

    mul-int v21, v13, v13

    add-int v20, v20, v21

    mul-int v21, v14, v14

    move-wide/from16 v22, v0

    .end local v0    # "tempDenominator":D
    .local v22, "tempDenominator":D
    add-int v0, v20, v21

    int-to-double v0, v0

    .line 359
    .end local v16    # "tempNumerator":D
    .local v0, "tempNumerator":D
    move-wide/from16 v16, v0

    .end local v0    # "tempNumerator":D
    .restart local v16    # "tempNumerator":D
    int-to-double v0, v15

    .line 360
    .end local v22    # "tempDenominator":D
    .local v0, "tempDenominator":D
    div-double v20, v16, v0

    add-double v18, v18, v20

    .line 361
    cmpl-double v20, v18, v7

    if-lez v20, :cond_7c

    .line 362
    move-wide/from16 v7, v18

    .line 363
    move v9, v10

    .line 337
    .end local v0    # "tempDenominator":D
    .end local v12    # "halfR":I
    .end local v13    # "halfG":I
    .end local v14    # "halfB":I
    .end local v15    # "halfW":I
    .end local v16    # "tempNumerator":D
    .end local v18    # "temp":D
    :cond_7c
    :goto_7c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_23

    .line 366
    .end local v10    # "i":I
    :cond_83
    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    invoke-direct {v0, v9, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;-><init>(ID)V

    return-object v0
.end method

.method private static blacklist top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I
    .registers 7
    .param p0, "cube"    # Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    .param p1, "direction"    # Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .param p2, "position"    # I
    .param p3, "moment"    # [I

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_a6

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_21
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 416
    invoke-static {v1, v2, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 417
    invoke-static {v1, v2, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 418
    invoke-static {v1, v2, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    add-int/2addr v0, v1

    .line 415
    return v0

    .line 410
    :pswitch_4d
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 411
    invoke-static {v1, p2, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 412
    invoke-static {v1, p2, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 413
    invoke-static {v1, p2, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    add-int/2addr v0, v1

    .line 410
    return v0

    .line 405
    :pswitch_79
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 406
    invoke-static {p2, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 407
    invoke-static {p2, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 408
    invoke-static {p2, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p3, v1

    add-int/2addr v0, v1

    .line 405
    return v0

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_79
        :pswitch_4d
        :pswitch_21
    .end packed-switch
.end method

.method private blacklist variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D
    .registers 13
    .param p1, "cube"    # Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    .line 242
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v0

    .line 243
    .local v0, "dr":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {p1, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v1

    .line 244
    .local v1, "dg":I
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {p1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v2

    .line 245
    .local v2, "db":I
    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v4, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v5, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 246
    invoke-static {v4, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v4

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 247
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 248
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 249
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 250
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 251
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 252
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 253
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    .line 255
    .local v3, "xx":D
    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int/2addr v5, v6

    mul-int v6, v2, v2

    add-int/2addr v5, v6

    .line 256
    .local v5, "hypotenuse":I
    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {p1, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    .line 257
    .local v6, "volume2":I
    int-to-double v7, v5

    int-to-double v9, v6

    div-double/2addr v7, v9

    sub-double v7, v3, v7

    .line 258
    .local v7, "variance2":D
    return-wide v7
.end method

.method private static blacklist volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I
    .registers 6
    .param p0, "cube"    # Lcom/android/internal/graphics/palette/WuQuantizer$Box;
    .param p1, "moment"    # [I

    .line 370
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p1, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 371
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 372
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 373
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 374
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 375
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 376
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 377
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    .line 370
    return v0
.end method


# virtual methods
.method public blacklist getColors()[I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    return-object v0
.end method

.method public blacklist getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist inputPixelToCount()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 12
    .param p1, "pixels"    # [I
    .param p2, "colorCount"    # I

    .line 71
    nop

    .line 73
    new-instance v0, Lcom/android/internal/graphics/palette/QuantizerMap;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;-><init>()V

    .line 74
    .local v0, "quantizerMap":Lcom/android/internal/graphics/palette/QuantizerMap;
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/QuantizerMap;->quantize([II)V

    .line 75
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;->getColorToCount()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    .line 79
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 80
    .local v1, "uniqueColors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, p2, :cond_47

    .line 81
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "index":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 84
    .local v4, "color":I
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    aput v4, v5, v2

    .line 85
    .end local v4    # "color":I
    move v2, v6

    goto :goto_2e

    .line 86
    .end local v6    # "index":I
    :cond_46
    goto :goto_5b

    .line 87
    :cond_47
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->constructHistogram(Ljava/util/Map;)V

    .line 88
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->createMoments()V

    .line 89
    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    move-result-object v2

    .line 90
    .local v2, "createBoxesResult":Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
    iget v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mResultCount:I

    invoke-direct {p0, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->createResult(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    .line 93
    .end local v2    # "createBoxesResult":Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
    :goto_5b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, "swatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_65
    if-ge v6, v4, :cond_74

    aget v7, v3, v6

    .line 95
    .local v7, "color":I
    new-instance v8, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-direct {v8, v7, v5}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v7    # "color":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 97
    :cond_74
    invoke-static {v2}, Lcom/android/internal/graphics/palette/Palette;->from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    .line 98
    return-void
.end method
