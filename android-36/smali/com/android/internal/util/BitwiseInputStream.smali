.class public Lcom/android/internal/util/BitwiseInputStream;
.super Ljava/lang/Object;
.source "BitwiseInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseInputStream$AccessException;
    }
.end annotation


# instance fields
.field private blacklist mBuf:[B

.field private blacklist mEnd:I

.field private blacklist mPos:I


# direct methods
.method public constructor greylist <init>([B)V
    .registers 3
    .param p1, "buf"    # [B

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    .line 58
    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 60
    return-void
.end method


# virtual methods
.method public greylist available()I
    .registers 3

    .line 67
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist read(I)I
    .registers 7
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    ushr-int/lit8 v0, v0, 0x3

    .line 82
    .local v0, "index":I
    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    and-int/lit8 v1, v1, 0x7

    rsub-int/lit8 v1, v1, 0x10

    sub-int/2addr v1, p1

    .line 83
    .local v1, "offset":I
    if-ltz p1, :cond_38

    const/16 v2, 0x8

    if-gt p1, v2, :cond_38

    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-gt v3, v4, :cond_38

    .line 87
    iget-object v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    .line 88
    .local v3, "data":I
    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v3, v2

    .line 89
    :cond_2a
    ushr-int v2, v3, v1

    .line 90
    .end local v3    # "data":I
    .local v2, "data":I
    rsub-int/lit8 v3, p1, 0x20

    const/4 v4, -0x1

    ushr-int v3, v4, v3

    and-int/2addr v2, v3

    .line 91
    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 92
    return v2

    .line 84
    .end local v2    # "data":I
    :cond_38
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal read (pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bits "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist readByteArray(I)[B
    .registers 8
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 103
    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    .line 104
    .local v0, "bytes":I
    new-array v1, v0, [B

    .line 105
    .local v1, "arr":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 106
    shl-int/lit8 v3, v2, 0x3

    sub-int v3, p1, v3

    const/16 v4, 0x8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 107
    .local v3, "increment":I
    invoke-virtual {p0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    rsub-int/lit8 v5, v3, 0x8

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 105
    .end local v3    # "increment":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 109
    .end local v2    # "i":I
    :cond_26
    return-object v1
.end method

.method public greylist skip(I)V
    .registers 5
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-gt v0, v1, :cond_d

    .line 123
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 124
    return-void

    .line 120
    :cond_d
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal skip (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bits "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
