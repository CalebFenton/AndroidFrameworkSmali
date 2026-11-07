.class public Lcom/android/internal/util/ExponentiallyBucketedHistogram;
.super Ljava/lang/Object;
.source "ExponentiallyBucketedHistogram.java"


# instance fields
.field private final greylist-max-o mData:[I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 5
    .param p1, "numBuckets"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x1f

    const-string v1, "numBuckets"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    .line 41
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    .line 42
    return-void
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .registers 5
    .param p1, "value"    # I

    .line 53
    if-gtz p1, :cond_c

    .line 54
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_23

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 58
    :goto_23
    return-void
.end method

.method public greylist-max-o log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/CharSequence;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v2, v2

    if-ge v1, v2, :cond_44

    .line 78
    if-eqz v1, :cond_17

    .line 79
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_17
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_29

    .line 83
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    shl-int v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 86
    :cond_29
    const-string v2, ">="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v2, v1, -0x1

    shl-int v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    :goto_35
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 93
    .end local v1    # "i":I
    :cond_44
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public greylist-max-o reset()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 65
    return-void
.end method
