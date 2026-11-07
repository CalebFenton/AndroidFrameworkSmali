.class public Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;
.super Ljava/lang/Object;
.source "KernelCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyBucketCreator"
.end annotation


# instance fields
.field private final blacklist mBucketStartIndices:[I

.field private final blacklist mNumBuckets:I

.field private final blacklist mNumFrequencies:I


# direct methods
.method public constructor blacklist <init>([JI)V
    .registers 5
    .param p1, "frequencies"    # [J
    .param p2, "targetNumBuckets"    # I

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    array-length v0, p1

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    .line 412
    invoke-static {p1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getClusterStartIndices([J)[I

    move-result-object v0

    .line 413
    .local v0, "clusterStartIndices":[I
    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    .line 414
    invoke-static {v0, p2, v1}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getBucketStartIndices([III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    .line 415
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    array-length v1, v1

    iput v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    .line 416
    return-void
.end method

.method private static blacklist getBucketStartIndices([III)[I
    .registers 13
    .param p0, "clusterStartIndices"    # [I
    .param p1, "targetNumBuckets"    # I
    .param p2, "numFrequencies"    # I

    .line 473
    array-length v0, p0

    .line 477
    .local v0, "numClusters":I
    if-le v0, p1, :cond_9

    .line 478
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    .line 481
    :cond_9
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 482
    .local v1, "bucketStartIndices":Landroid/util/IntArray;
    const/4 v2, 0x0

    .local v2, "clusterIdx":I
    :goto_f
    if-ge v2, v0, :cond_44

    .line 483
    invoke-static {v2, p0}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v3

    .line 484
    .local v3, "clusterStartIdx":I
    nop

    .line 485
    invoke-static {v2, p0, p2}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v4

    .line 488
    .local v4, "clusterEndIdx":I
    add-int/lit8 v5, v0, -0x1

    if-eq v2, v5, :cond_21

    .line 489
    div-int v5, p1, v0

    .local v5, "numBucketsInCluster":I
    goto :goto_29

    .line 493
    .end local v5    # "numBucketsInCluster":I
    :cond_21
    div-int v5, p1, v0

    .line 494
    .local v5, "previousBucketsInCluster":I
    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v5

    sub-int v6, p1, v6

    move v5, v6

    .line 498
    .local v5, "numBucketsInCluster":I
    :goto_29
    sub-int v6, v4, v3

    .line 501
    .local v6, "numFrequenciesInCluster":I
    div-int v7, v6, v5

    .line 502
    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 503
    .local v7, "numFrequenciesInBucket":I
    const/4 v8, 0x0

    .local v8, "bucketIdx":I
    :goto_33
    if-ge v8, v5, :cond_41

    .line 504
    mul-int v9, v8, v7

    add-int/2addr v9, v3

    .line 507
    .local v9, "bucketStartIdx":I
    if-lt v9, v4, :cond_3b

    .line 508
    goto :goto_41

    .line 510
    :cond_3b
    invoke-virtual {v1, v9}, Landroid/util/IntArray;->add(I)V

    .line 503
    .end local v9    # "bucketStartIdx":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 482
    .end local v3    # "clusterStartIdx":I
    .end local v4    # "clusterEndIdx":I
    .end local v5    # "numBucketsInCluster":I
    .end local v6    # "numFrequenciesInCluster":I
    .end local v7    # "numFrequenciesInBucket":I
    .end local v8    # "bucketIdx":I
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 513
    .end local v2    # "clusterIdx":I
    :cond_44
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getClusterStartIndices([J)[I
    .registers 7
    .param p0, "frequencies"    # [J

    .line 460
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 461
    .local v0, "indices":Landroid/util/IntArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_21

    .line 463
    aget-wide v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-wide v4, p0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    .line 464
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 462
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 467
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getLowerBound(I[I)I
    .registers 3
    .param p0, "index"    # I
    .param p1, "startIndices"    # [I

    .line 517
    aget v0, p1, p0

    return v0
.end method

.method private static blacklist getUpperBound(I[II)I
    .registers 4
    .param p0, "index"    # I
    .param p1, "startIndices"    # [I
    .param p2, "max"    # I

    .line 521
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq p0, v0, :cond_a

    .line 522
    add-int/lit8 v0, p0, 0x1

    aget v0, p1, v0

    return v0

    .line 524
    :cond_a
    return p2
.end method


# virtual methods
.method public blacklist bucketFrequencies([J)[I
    .registers 6
    .param p1, "frequencies"    # [J

    .line 444
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 445
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v0, v0, [I

    .line 446
    .local v0, "buckets":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 447
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    aget v2, v2, v1

    aget-wide v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 449
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method public blacklist bucketValues([J)[I
    .registers 11
    .param p1, "values"    # [J

    .line 428
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumFrequencies:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 429
    iget v0, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    new-array v0, v0, [I

    .line 430
    .local v0, "buckets":[I
    const/4 v1, 0x0

    .local v1, "bucketIdx":I
    :goto_10
    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mNumBuckets:I

    if-ge v1, v2, :cond_33

    .line 431
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    invoke-static {v1, v2}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getLowerBound(I[I)I

    move-result v2

    .line 432
    .local v2, "bucketStartIdx":I
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->mBucketStartIndices:[I

    array-length v4, p1

    .line 433
    invoke-static {v1, v3, v4}, Lcom/android/internal/os/KernelCpuThreadReader$FrequencyBucketCreator;->getUpperBound(I[II)I

    move-result v3

    .line 434
    .local v3, "bucketEndIdx":I
    move v4, v2

    .local v4, "valuesIdx":I
    :goto_22
    if-ge v4, v3, :cond_30

    .line 435
    aget v5, v0, v1

    int-to-long v5, v5

    aget-wide v7, p1, v4

    add-long/2addr v5, v7

    long-to-int v5, v5

    aput v5, v0, v1

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 430
    .end local v2    # "bucketStartIdx":I
    .end local v3    # "bucketEndIdx":I
    .end local v4    # "valuesIdx":I
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 438
    .end local v1    # "bucketIdx":I
    :cond_33
    return-object v0
.end method
