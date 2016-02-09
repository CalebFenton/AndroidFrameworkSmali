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
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    #@5
    .line 54
    array-length v0, p1

    #@6
    shl-int/lit8 v0, v0, 0x3

    #@8
    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    #@a
    .line 55
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@d
    .line 52
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    #@0
    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    #@2
    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public read(I)I
    .locals 6
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 75
    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@4
    ushr-int/lit8 v1, v3, 0x3

    #@6
    .line 76
    .local v1, "index":I
    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@8
    and-int/lit8 v3, v3, 0x7

    #@a
    rsub-int/lit8 v3, v3, 0x10

    #@c
    sub-int v2, v3, p1

    #@e
    .line 77
    .local v2, "offset":I
    if-ltz p1, :cond_0

    #@10
    if-le p1, v5, :cond_1

    #@12
    .line 78
    :cond_0
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "illegal read (pos "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 79
    iget v5, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@22
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 79
    const-string/jumbo v5, ", end "

    #@29
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 79
    iget v5, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    #@2f
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    .line 79
    const-string/jumbo v5, ", bits "

    #@36
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 79
    const-string/jumbo v5, ")"

    #@41
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-direct {v3, v4}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 77
    :cond_1
    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@4f
    add-int/2addr v3, p1

    #@50
    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    #@52
    if-gt v3, v4, :cond_0

    #@54
    .line 81
    iget-object v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    #@56
    aget-byte v3, v3, v1

    #@58
    and-int/lit16 v3, v3, 0xff

    #@5a
    shl-int/lit8 v0, v3, 0x8

    #@5c
    .line 82
    .local v0, "data":I
    if-ge v2, v5, :cond_2

    #@5e
    iget-object v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    #@60
    add-int/lit8 v4, v1, 0x1

    #@62
    aget-byte v3, v3, v4

    #@64
    and-int/lit16 v3, v3, 0xff

    #@66
    or-int/2addr v0, v3

    #@67
    .line 83
    :cond_2
    ushr-int/2addr v0, v2

    #@68
    .line 84
    rsub-int/lit8 v3, p1, 0x20

    #@6a
    const/4 v4, -0x1

    #@6b
    ushr-int v3, v4, v3

    #@6d
    and-int/2addr v0, v3

    #@6e
    .line 85
    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@70
    add-int/2addr v3, p1

    #@71
    iput v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@73
    .line 86
    return v0
.end method

.method public readByteArray(I)[B
    .locals 7
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 96
    ushr-int/lit8 v5, p1, 0x3

    #@3
    and-int/lit8 v6, p1, 0x7

    #@5
    if-lez v6, :cond_0

    #@7
    const/4 v4, 0x1

    #@8
    :cond_0
    add-int v1, v5, v4

    #@a
    .line 97
    .local v1, "bytes":I
    new-array v0, v1, [B

    #@c
    .line 98
    .local v0, "arr":[B
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@f
    .line 99
    shl-int/lit8 v4, v2, 0x3

    #@11
    sub-int v4, p1, v4

    #@13
    const/16 v5, 0x8

    #@15
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    #@18
    move-result v3

    #@19
    .line 100
    .local v3, "increment":I
    invoke-virtual {p0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    #@1c
    move-result v4

    #@1d
    rsub-int/lit8 v5, v3, 0x8

    #@1f
    shl-int/2addr v4, v5

    #@20
    int-to-byte v4, v4

    #@21
    aput-byte v4, v0, v2

    #@23
    .line 98
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 102
    .end local v3    # "increment":I
    :cond_1
    return-object v0
.end method

.method public skip(I)V
    .locals 3
    .param p1, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@2
    add-int/2addr v0, p1

    #@3
    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    #@5
    if-le v0, v1, :cond_0

    #@7
    .line 112
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "illegal skip (pos "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 113
    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@17
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 113
    const-string/jumbo v2, ", end "

    #@1e
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 113
    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    #@24
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 113
    const-string/jumbo v2, ", bits "

    #@2b
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 113
    const-string/jumbo v2, ")"

    #@36
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 115
    :cond_0
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@44
    add-int/2addr v0, p1

    #@45
    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    #@47
    .line 110
    return-void
.end method
