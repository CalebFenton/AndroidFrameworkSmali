.class public Lcom/android/internal/util/RingBufferIndices;
.super Ljava/lang/Object;
.source "RingBufferIndices.java"


# instance fields
.field private final mCapacity:I

.field private mSize:I

.field private mStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput p1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    #@5
    .line 33
    return-void
.end method


# virtual methods
.method public add()I
    .locals 3

    #@0
    .prologue
    .line 43
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    #@2
    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    .line 44
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    #@8
    .line 45
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    #@e
    .line 46
    return v0

    #@f
    .line 48
    .end local v0    # "pos":I
    :cond_0
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    #@11
    .line 49
    .restart local v0    # "pos":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    #@17
    .line 50
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    #@19
    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    #@1b
    if-ne v1, v2, :cond_1

    #@1d
    .line 51
    const/4 v1, 0x0

    #@1e
    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    #@20
    .line 53
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 60
    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    #@3
    .line 61
    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    #@5
    .line 59
    return-void
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 76
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    #@2
    add-int v0, v1, p1

    #@4
    .line 77
    .local v0, "index":I
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 78
    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    #@a
    sub-int/2addr v0, v1

    #@b
    .line 80
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    #@2
    return v0
.end method
