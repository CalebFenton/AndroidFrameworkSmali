.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0x10

.field private static final blacklist LOAD_FACTOR:F = 0.75f

.field private static final blacklist NOT_PRESENT:I = -0x80000000


# instance fields
.field private blacklist mKeys:[I

.field blacklist mSize:I

.field private blacklist mValues:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    .line 30
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 31
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mValues:[I

    .line 32
    return-void
.end method

.method private blacklist findKey(I)I
    .registers 5
    .param p1, "key"    # I

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 108
    .local v0, "index":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1f

    .line 109
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_17

    .line 110
    return v0

    .line 112
    :cond_17
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_8

    .line 114
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist hash(I)I
    .registers 2
    .param p1, "key"    # I

    .line 118
    return p1
.end method

.method private blacklist insert(II)I
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 92
    .local v0, "index":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1e

    .line 93
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_8

    .line 95
    :cond_1e
    const/4 v1, 0x0

    .line 96
    .local v1, "oldValue":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_2c

    .line 97
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mSize:I

    goto :goto_30

    .line 99
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mValues:[I

    aget v1, v2, v0

    .line 101
    :goto_30
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    aput p1, v2, v0

    .line 102
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mValues:[I

    aput p2, v2, v0

    .line 103
    return v1
.end method

.method private blacklist resize()V
    .registers 7

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    .line 123
    .local v0, "oldKeys":[I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mValues:[I

    .line 124
    .local v1, "oldValues":[I
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    array-length v3, v3

    const/high16 v4, -0x80000000

    if-ge v2, v3, :cond_1a

    .line 126
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    aput v4, v3, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 128
    .end local v2    # "i":I
    :cond_1a
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mValues:[I

    .line 129
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mSize:I

    .line 130
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_25
    array-length v3, v0

    if-ge v2, v3, :cond_36

    .line 131
    aget v3, v0, v2

    if-eq v3, v4, :cond_33

    .line 132
    aget v3, v0, v2

    aget v5, v1, v2

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->put(II)I

    .line 130
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 135
    .end local v2    # "i":I
    :cond_36
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mValues:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 38
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mSize:I

    .line 39
    return-void
.end method

.method public blacklist contains(I)Z
    .registers 4
    .param p1, "key"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->findKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist get(I)I
    .registers 4
    .param p1, "key"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->findKey(I)I

    move-result v0

    .line 76
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 77
    const/4 v1, 0x0

    return v1

    .line 78
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mValues:[I

    aget v1, v1, v0

    return v1
.end method

.method public blacklist put(II)I
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 59
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1a

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mSize:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mKeys:[I

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 63
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->resize()V

    .line 65
    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->insert(II)I

    move-result v0

    return v0

    .line 60
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be NOT_PRESENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntIntMap;->mSize:I

    return v0
.end method
