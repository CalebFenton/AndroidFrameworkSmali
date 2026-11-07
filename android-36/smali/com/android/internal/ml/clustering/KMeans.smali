.class public Lcom/android/internal/ml/clustering/KMeans;
.super Ljava/lang/Object;
.source "KMeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ml/clustering/KMeans$Mean;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KMeans"


# instance fields
.field private final blacklist mMaxIterations:I

.field private final blacklist mRandomState:Ljava/util/Random;

.field private blacklist mSqConvergenceEpsilon:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Random;)V
    .registers 4
    .param p1, "random"    # Ljava/util/Random;

    .line 45
    const/16 v0, 0x1e

    const v1, 0x3ba3d70a    # 0.005f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Random;IF)V
    .registers 5
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "maxIterations"    # I
    .param p3, "convergenceEpsilon"    # F

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    .line 49
    iput p2, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    .line 50
    mul-float v0, p3, p3

    iput v0, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    .line 51
    return-void
.end method

.method public static blacklist nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;
    .registers 9
    .param p0, "point"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;"
        }
    .end annotation

    .line 187
    .local p1, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const/4 v0, 0x0

    .line 188
    .local v0, "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 190
    .local v1, "nearestDistance":F
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 191
    .local v2, "meanCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_20

    .line 192
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 195
    .local v4, "next":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v5, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {p0, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v5

    .line 196
    .local v5, "nextDistance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1d

    .line 197
    move-object v0, v4

    .line 198
    move v1, v5

    .line 191
    .end local v4    # "next":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v5    # "nextDistance":F
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 201
    .end local v3    # "i":I
    :cond_20
    return-object v0
.end method

.method public static blacklist score(Ljava/util/List;)D
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)D"
        }
    .end annotation

    .line 98
    .local p0, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const-wide/16 v0, 0x0

    .line 99
    .local v0, "score":D
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 100
    .local v2, "meansSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_2f

    .line 101
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 102
    .local v4, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_10
    if-ge v5, v2, :cond_2c

    .line 103
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 104
    .local v6, "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    if-ne v4, v6, :cond_1b

    .line 105
    goto :goto_29

    .line 107
    :cond_1b
    iget-object v7, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v8, v6, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v7, v8}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 108
    .local v7, "distance":D
    add-double/2addr v0, v7

    .line 102
    .end local v6    # "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v7    # "distance":D
    :goto_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 100
    .end local v4    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v5    # "j":I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 111
    .end local v3    # "i":I
    :cond_2f
    return-wide v0
.end method

.method public static blacklist sqDistance([F[F)F
    .registers 8
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "dist":F
    array-length v1, p0

    .line 208
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_14

    .line 209
    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aget v4, p0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 211
    .end local v2    # "i":I
    :cond_14
    return v0
.end method

.method private blacklist step(Ljava/util/ArrayList;[[F)Z
    .registers 12
    .param p2, "inputData"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;[[F)Z"
        }
    .end annotation

    .line 144
    .local p1, "means":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 146
    .local v1, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v2, v1, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    .end local v1    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 148
    .end local v0    # "i":I
    :cond_16
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_19
    if-ltz v0, :cond_29

    .line 149
    aget-object v1, p2, v0

    .line 150
    .local v1, "current":[F
    invoke-static {v1, p1}, Lcom/android/internal/ml/clustering/KMeans;->nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;

    move-result-object v2

    .line 151
    .local v2, "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v1    # "current":[F
    .end local v2    # "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 154
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    .line 156
    .local v0, "converged":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_30
    if-ltz v1, :cond_95

    .line 157
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 158
    .local v2, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_41

    .line 159
    goto :goto_92

    .line 165
    :cond_41
    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 166
    .local v3, "oldCentroid":[F
    array-length v4, v3

    new-array v4, v4, [F

    iput-object v4, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 167
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_49
    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6e

    .line 169
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_52
    iget-object v6, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v6, v6

    if-ge v5, v6, :cond_6b

    .line 170
    iget-object v6, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v7, v6, v5

    iget-object v8, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v5

    add-float/2addr v7, v8

    aput v7, v6, v5

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 167
    .end local v5    # "p":I
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 173
    .end local v4    # "j":I
    :cond_6e
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6f
    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v5, v5

    if-ge v4, v5, :cond_85

    .line 174
    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v6, v5, v4

    iget-object v7, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v4

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 178
    .end local v4    # "j":I
    :cond_85
    iget-object v4, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v3, v4}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_92

    .line 179
    const/4 v0, 0x0

    .line 156
    .end local v2    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v3    # "oldCentroid":[F
    :cond_92
    :goto_92
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 182
    .end local v1    # "i":I
    :cond_95
    return v0
.end method


# virtual methods
.method public blacklist checkDataSetSanity([[F)V
    .registers 7
    .param p1, "inputData"    # [[F

    .line 116
    if-eqz p1, :cond_34

    .line 118
    array-length v0, p1

    if-eqz v0, :cond_2c

    .line 120
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Bad data set format."

    if-eqz v1, :cond_26

    .line 124
    aget-object v0, p1, v0

    array-length v0, v0

    .line 125
    .local v0, "dimension":I
    array-length v1, p1

    .line 126
    .local v1, "length":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_25

    .line 127
    aget-object v4, p1, v3

    if-eqz v4, :cond_1f

    aget-object v4, p1, v3

    array-length v4, v4

    if-ne v4, v0, :cond_1f

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 128
    :cond_1f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    .end local v3    # "i":I
    :cond_25
    return-void

    .line 121
    .end local v0    # "dimension":I
    .end local v1    # "length":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data set is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data set is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist predict(I[[F)Ljava/util/List;
    .registers 10
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

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/internal/ml/clustering/KMeans;->checkDataSetSanity([[F)V

    .line 65
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    .line 67
    .local v0, "dimension":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "means":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, p1, :cond_2a

    .line 69
    new-instance v3, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-direct {v3, v0}, Lcom/android/internal/ml/clustering/KMeans$Mean;-><init>(I)V

    .line 70
    .local v3, "m":Lcom/android/internal/ml/clustering/KMeans$Mean;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15
    if-ge v4, v0, :cond_24

    .line 71
    iget-object v5, v3, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v6, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aput v6, v5, v4

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 73
    .end local v4    # "j":I
    :cond_24
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v3    # "m":Lcom/android/internal/ml/clustering/KMeans$Mean;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 77
    .end local v2    # "i":I
    :cond_2a
    const/4 v2, 0x0

    .line 78
    .local v2, "converged":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    iget v4, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    if-ge v3, v4, :cond_3a

    .line 79
    invoke-direct {p0, v1, p2}, Lcom/android/internal/ml/clustering/KMeans;->step(Ljava/util/ArrayList;[[F)Z

    move-result v2

    .line 80
    if-eqz v2, :cond_37

    .line 82
    goto :goto_3a

    .line 78
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 85
    .end local v3    # "i":I
    :cond_3a
    :goto_3a
    nop

    .line 87
    return-object v1
.end method
