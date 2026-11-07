.class public Lcom/android/internal/util/RingBufferIndices;
.super Ljava/lang/Object;
.source "RingBufferIndices.java"


# instance fields
.field private final blacklist mCapacity:I

.field private blacklist mSize:I

.field private blacklist mStart:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist add()I
    .registers 4

    .line 43
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-ge v0, v1, :cond_f

    .line 44
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    .line 45
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    .line 46
    return v0

    .line 48
    .end local v0    # "pos":I
    :cond_f
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 49
    .restart local v0    # "pos":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 50
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-ne v1, v2, :cond_20

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 53
    :cond_20
    return v0
.end method

.method public blacklist clear()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    .line 61
    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    .line 62
    return-void
.end method

.method public blacklist indexOf(I)I
    .registers 4
    .param p1, "pos"    # I

    .line 76
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int/2addr v0, p1

    .line 77
    .local v0, "index":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-lt v0, v1, :cond_a

    .line 78
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    sub-int/2addr v0, v1

    .line 80
    :cond_a
    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return v0
.end method
