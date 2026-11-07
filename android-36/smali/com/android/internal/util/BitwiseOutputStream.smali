.class public Lcom/android/internal/util/BitwiseOutputStream;
.super Ljava/lang/Object;
.source "BitwiseOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    }
.end annotation


# instance fields
.field private blacklist mBuf:[B

.field private blacklist mEnd:I

.field private blacklist mPos:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 3
    .param p1, "startingLength"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 58
    shl-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 60
    return-void
.end method

.method private blacklist possExpand(I)V
    .registers 6
    .param p1, "bits"    # I

    .line 81
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    if-ge v0, v1, :cond_8

    return-void

    .line 82
    :cond_8
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 83
    .local v0, "newBuf":[B
    iget-object v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    ushr-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 85
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist skip(I)V
    .registers 3
    .param p1, "bits"    # I

    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 135
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 136
    return-void
.end method

.method public greylist toByteArray()[B
    .registers 5

    .line 69
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x0

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    .line 70
    .local v0, "len":I
    new-array v1, v0, [B

    .line 71
    .local v1, "newBuf":[B
    iget-object v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-object v1
.end method

.method public greylist write(II)V
    .registers 9
    .param p1, "bits"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 99
    if-ltz p1, :cond_39

    const/16 v0, 0x8

    if-gt p1, v0, :cond_39

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 103
    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr p2, v1

    .line 104
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v1, v1, 0x3

    .line 105
    .local v1, "index":I
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, p1

    .line 106
    .local v2, "offset":I
    shl-int/2addr p2, v2

    .line 107
    iget v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 108
    iget-object v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    aget-byte v4, v3, v1

    ushr-int/lit8 v5, p2, 0x8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 109
    if-ge v2, v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, v0, v3

    and-int/lit16 v5, p2, 0xff

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 110
    :cond_38
    return-void

    .line 100
    .end local v1    # "index":I
    .end local v2    # "offset":I
    :cond_39
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal write ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist writeByteArray(I[B)V
    .registers 7
    .param p1, "bits"    # I
    .param p2, "arr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 121
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 122
    .local v1, "increment":I
    if-lez v1, :cond_19

    .line 123
    aget-byte v2, p2, v0

    rsub-int/lit8 v3, v1, 0x8

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 120
    .end local v1    # "increment":I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method
