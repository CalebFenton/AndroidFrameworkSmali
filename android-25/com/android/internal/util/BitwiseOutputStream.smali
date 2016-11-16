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
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "startingLength"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-array v0, p1, [B

    #@5
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    #@7
    .line 54
    shl-int/lit8 v0, p1, 0x3

    #@9
    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    #@b
    .line 55
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@e
    .line 52
    return-void
.end method

.method private possExpand(I)V
    .locals 4
    .param p1, "bits"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 76
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@3
    add-int/2addr v1, p1

    #@4
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    #@6
    if-ge v1, v2, :cond_0

    #@8
    return-void

    #@9
    .line 77
    :cond_0
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@b
    add-int/2addr v1, p1

    #@c
    ushr-int/lit8 v1, v1, 0x2

    #@e
    new-array v0, v1, [B

    #@10
    .line 78
    .local v0, "newBuf":[B
    iget-object v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    #@12
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    #@14
    ushr-int/lit8 v2, v2, 0x3

    #@16
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 79
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    #@1b
    .line 80
    array-length v1, v0

    #@1c
    shl-int/lit8 v1, v1, 0x3

    #@1e
    iput v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    #@20
    .line 75
    return-void
.end method


# virtual methods
.method public skip(I)V
    .locals 1
    .param p1, "bits"    # I

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    #@3
    .line 128
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@8
    .line 126
    return-void
.end method

.method public toByteArray()[B
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 64
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@3
    ushr-int/lit8 v4, v2, 0x3

    #@5
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@7
    and-int/lit8 v2, v2, 0x7

    #@9
    if-lez v2, :cond_0

    #@b
    const/4 v2, 0x1

    #@c
    :goto_0
    add-int v0, v4, v2

    #@e
    .line 65
    .local v0, "len":I
    new-array v1, v0, [B

    #@10
    .line 66
    .local v1, "newBuf":[B
    iget-object v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    #@12
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15
    .line 67
    return-object v1

    #@16
    .end local v0    # "len":I
    .end local v1    # "newBuf":[B
    :cond_0
    move v2, v3

    #@17
    .line 64
    goto :goto_0
.end method

.method public write(II)V
    .locals 6
    .param p1, "bits"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 93
    if-ltz p1, :cond_0

    #@4
    if-le p1, v5, :cond_1

    #@6
    .line 94
    :cond_0
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "illegal write ("

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, " bits)"

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 96
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    #@2a
    .line 97
    rsub-int/lit8 v2, p1, 0x20

    #@2c
    const/4 v3, -0x1

    #@2d
    ushr-int v2, v3, v2

    #@2f
    and-int/2addr p2, v2

    #@30
    .line 98
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@32
    ushr-int/lit8 v0, v2, 0x3

    #@34
    .line 99
    .local v0, "index":I
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@36
    and-int/lit8 v2, v2, 0x7

    #@38
    rsub-int/lit8 v2, v2, 0x10

    #@3a
    sub-int v1, v2, p1

    #@3c
    .line 100
    .local v1, "offset":I
    shl-int/2addr p2, v1

    #@3d
    .line 101
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@3f
    add-int/2addr v2, p1

    #@40
    iput v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    #@42
    .line 102
    iget-object v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    #@44
    aget-byte v3, v2, v0

    #@46
    ushr-int/lit8 v4, p2, 0x8

    #@48
    or-int/2addr v3, v4

    #@49
    int-to-byte v3, v3

    #@4a
    aput-byte v3, v2, v0

    #@4c
    .line 103
    if-ge v1, v5, :cond_2

    #@4e
    iget-object v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    #@50
    add-int/lit8 v3, v0, 0x1

    #@52
    aget-byte v4, v2, v3

    #@54
    and-int/lit16 v5, p2, 0xff

    #@56
    or-int/2addr v4, v5

    #@57
    int-to-byte v4, v4

    #@58
    aput-byte v4, v2, v3

    #@5a
    .line 92
    :cond_2
    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 4
    .param p1, "bits"    # I
    .param p2, "arr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@2
    if-ge v0, v2, :cond_1

    #@4
    .line 114
    shl-int/lit8 v2, v0, 0x3

    #@6
    sub-int v2, p1, v2

    #@8
    const/16 v3, 0x8

    #@a
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v1

    #@e
    .line 115
    .local v1, "increment":I
    if-lez v1, :cond_0

    #@10
    .line 116
    aget-byte v2, p2, v0

    #@12
    rsub-int/lit8 v3, v1, 0x8

    #@14
    ushr-int/2addr v2, v3

    #@15
    int-to-byte v2, v2

    #@16
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    #@19
    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 112
    .end local v1    # "increment":I
    :cond_1
    return-void
.end method
