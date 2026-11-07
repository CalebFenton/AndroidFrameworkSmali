.class public Lcom/android/internal/os/CpuScalingPolicies;
.super Ljava/lang/Object;
.source "CpuScalingPolicies.java"


# instance fields
.field private final blacklist mCpusByPolicy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mFreqsByPolicy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mPolicies:[I

.field private final blacklist mScalingStepCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 38
    .local p1, "cpusByPolicy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p2, "freqsByPolicy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/os/CpuScalingPolicies;->mCpusByPolicy:Landroid/util/SparseArray;

    .line 40
    iput-object p2, p0, Lcom/android/internal/os/CpuScalingPolicies;->mFreqsByPolicy:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/os/CpuScalingPolicies;->mPolicies:[I

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/internal/os/CpuScalingPolicies;->mPolicies:[I

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 44
    iget-object v1, p0, Lcom/android/internal/os/CpuScalingPolicies;->mPolicies:[I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 47
    .end local v0    # "i":I
    :cond_20
    iget-object v0, p0, Lcom/android/internal/os/CpuScalingPolicies;->mPolicies:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "count":I
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2c
    if-ltz v1, :cond_39

    .line 51
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v2, v2

    add-int/2addr v0, v2

    .line 50
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 53
    .end local v1    # "i":I
    :cond_39
    iput v0, p0, Lcom/android/internal/os/CpuScalingPolicies;->mScalingStepCount:I

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist getFrequencies(I)[I
    .registers 4
    .param p1, "policy"    # I

    .line 77
    iget-object v0, p0, Lcom/android/internal/os/CpuScalingPolicies;->mFreqsByPolicy:Landroid/util/SparseArray;

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getPolicies()[I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/internal/os/CpuScalingPolicies;->mPolicies:[I

    return-object v0
.end method

.method public blacklist getRelatedCpus(I)[I
    .registers 4
    .param p1, "policy"    # I

    .line 69
    iget-object v0, p0, Lcom/android/internal/os/CpuScalingPolicies;->mCpusByPolicy:Landroid/util/SparseArray;

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist getScalingStepCount()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/android/internal/os/CpuScalingPolicies;->mScalingStepCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/os/CpuScalingPolicies;->mPolicies:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_4c

    aget v4, v1, v3

    .line 92
    .local v4, "policy":I
    const-string/jumbo v5, "policy"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 93
    const-string v6, "\n CPUs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/CpuScalingPolicies;->mCpusByPolicy:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 94
    const-string v6, "\n freqs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/CpuScalingPolicies;->mFreqsByPolicy:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 95
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .end local v4    # "policy":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 97
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
