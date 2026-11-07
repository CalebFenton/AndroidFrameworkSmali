.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "VariationalKMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final blacklist mInitializations:I

.field private final blacklist mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final blacklist mMinClusterSqDistance:F

.field private blacklist mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 3
    .param p1, "minClusterDistance"    # F

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .registers 7
    .param p1, "minClusterDistance"    # F
    .param p2, "initializations"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    .line 64
    mul-float v0, p1, p1

    iput v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 65
    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 66
    return-void
.end method

.method private blacklist getOptimalKMeans(I[[F)Ljava/util/List;
    .registers 11
    .param p1, "k"    # I
    .param p2, "inputData"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "optimal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const-wide v1, -0x10000000000001L

    .line 131
    .local v1, "optimalScore":D
    iget v3, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 132
    .local v3, "runs":I
    :goto_8
    if-lez v3, :cond_20

    .line 136
    iget-object v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    move-result-object v4

    .line 137
    .local v4, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    invoke-static {v4}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    move-result-wide v5

    .line 138
    .local v5, "score":D
    if-eqz v0, :cond_1a

    cmpl-double v7, v5, v1

    if-lez v7, :cond_1c

    .line 142
    :cond_1a
    move-wide v1, v5

    .line 143
    move-object v0, v4

    .line 145
    :cond_1c
    nop

    .end local v4    # "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    .end local v5    # "score":D
    add-int/lit8 v3, v3, -0x1

    .line 146
    goto :goto_8

    .line 148
    :cond_20
    return-object v0
.end method


# virtual methods
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

    .line 153
    iget-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 29
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_138

    .line 79
    .local v3, "hsl":[F
    array-length v4, v1

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v2, v6, v7

    const/4 v8, 0x0

    aput v4, v6, v8

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 80
    .local v4, "hslPixels":[[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    array-length v9, v1

    const/high16 v10, 0x43b40000    # 360.0f

    if-ge v6, v9, :cond_3d

    .line 81
    aget v9, v1, v6

    invoke-static {v9, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 83
    aget-object v9, v4, v6

    aget v11, v3, v8

    div-float/2addr v11, v10

    aput v11, v9, v8

    .line 84
    aget-object v9, v4, v6

    aget v10, v3, v7

    aput v10, v9, v7

    .line 85
    aget-object v9, v4, v6

    aget v10, v3, v5

    aput v10, v9, v5

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 88
    .end local v6    # "i":I
    :cond_3d
    move/from16 v6, p2

    invoke-direct {v0, v6, v4}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    move-result-object v9

    .line 92
    .local v9, "optimalMeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_44
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_dc

    .line 93
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 94
    .local v12, "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v13

    .line 95
    .local v13, "currentCentroid":[F
    add-int/lit8 v14, v11, 0x1

    .local v14, "j":I
    :goto_56
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_cb

    .line 96
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 97
    .local v15, "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    move/from16 v16, v5

    invoke-virtual {v15}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v5

    .line 98
    .local v5, "compareToCentroid":[F
    invoke-static {v13, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v17

    .line 100
    .local v17, "sqDistance":F
    move/from16 v18, v7

    iget v7, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    cmpg-float v7, v17, v7

    if-gez v7, :cond_b3

    .line 101
    invoke-interface {v9, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v7

    move/from16 v19, v8

    invoke-virtual {v15}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_85
    array-length v8, v13

    if-ge v7, v8, :cond_aa

    .line 104
    aget v8, v13, v7

    move/from16 v20, v10

    move/from16 v21, v11

    .end local v11    # "i":I
    .local v21, "i":I
    float-to-double v10, v8

    aget v8, v5, v7

    aget v22, v13, v7

    sub-float v8, v8, v22

    move-object/from16 v23, v3

    .end local v3    # "hsl":[F
    .local v23, "hsl":[F
    float-to-double v2, v8

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v2, v2, v24

    add-double/2addr v10, v2

    double-to-float v2, v10

    aput v2, v13, v7

    .line 103
    add-int/lit8 v7, v7, 0x1

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v3, v23

    const/4 v2, 0x3

    goto :goto_85

    .end local v21    # "i":I
    .end local v23    # "hsl":[F
    .restart local v3    # "hsl":[F
    .restart local v11    # "i":I
    :cond_aa
    move-object/from16 v23, v3

    move/from16 v20, v10

    move/from16 v21, v11

    .line 106
    .end local v3    # "hsl":[F
    .end local v7    # "k":I
    .end local v11    # "i":I
    .restart local v21    # "i":I
    .restart local v23    # "hsl":[F
    add-int/lit8 v14, v14, -0x1

    goto :goto_bb

    .line 100
    .end local v21    # "i":I
    .end local v23    # "hsl":[F
    .restart local v3    # "hsl":[F
    .restart local v11    # "i":I
    :cond_b3
    move-object/from16 v23, v3

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .line 95
    .end local v3    # "hsl":[F
    .end local v5    # "compareToCentroid":[F
    .end local v11    # "i":I
    .end local v15    # "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v17    # "sqDistance":F
    .restart local v21    # "i":I
    .restart local v23    # "hsl":[F
    :goto_bb
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v3, v23

    const/4 v2, 0x3

    goto :goto_56

    .end local v21    # "i":I
    .end local v23    # "hsl":[F
    .restart local v3    # "hsl":[F
    .restart local v11    # "i":I
    :cond_cb
    move-object/from16 v23, v3

    move/from16 v16, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .line 92
    .end local v3    # "hsl":[F
    .end local v11    # "i":I
    .end local v12    # "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v13    # "currentCentroid":[F
    .end local v14    # "j":I
    .restart local v21    # "i":I
    .restart local v23    # "hsl":[F
    add-int/lit8 v11, v21, 0x1

    const/4 v2, 0x3

    .end local v21    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_44

    .end local v23    # "hsl":[F
    .restart local v3    # "hsl":[F
    :cond_dc
    move-object/from16 v23, v3

    move/from16 v16, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .line 112
    .end local v3    # "hsl":[F
    .end local v11    # "i":I
    .restart local v23    # "hsl":[F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 113
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 114
    .local v2, "mHsl":[F
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_136

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 115
    .local v5, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_10d

    .line 116
    goto :goto_f6

    .line 118
    :cond_10d
    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v7

    .line 120
    .local v7, "centroid":[F
    aget v8, v7, v19

    mul-float v8, v8, v20

    aput v8, v2, v19

    .line 121
    aget v8, v7, v18

    aput v8, v2, v18

    .line 122
    aget v8, v7, v16

    aput v8, v2, v16

    .line 123
    invoke-static {v2}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v8

    .line 124
    .local v8, "color":I
    iget-object v10, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v11, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v8, v12}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v5    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v7    # "centroid":[F
    .end local v8    # "color":I
    goto :goto_f6

    .line 126
    :cond_136
    return-void

    nop

    :array_138
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
