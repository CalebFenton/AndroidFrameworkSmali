.class public Lcom/android/internal/ml/clustering/KMeans$Mean;
.super Ljava/lang/Object;
.source "KMeans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/ml/clustering/KMeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mean"
.end annotation


# instance fields
.field blacklist mCentroid:[F

.field final blacklist mClosestItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "dimension"    # I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 222
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 223
    return-void
.end method

.method public varargs constructor blacklist <init>([F)V
    .registers 3
    .param p1, "centroid"    # [F

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 226
    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 227
    return-void
.end method


# virtual methods
.method public blacklist getCentroid()[F
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    return-object v0
.end method

.method public blacklist getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mean(centroid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    return-object v0
.end method
