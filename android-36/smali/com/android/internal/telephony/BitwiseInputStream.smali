.class public Lcom/android/internal/telephony/BitwiseInputStream;
.super Ljava/lang/Object;
.source "BitwiseInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/BitwiseInputStream$AccessException;
    }
.end annotation


# instance fields
.field private blacklist mBuf:[B

.field private blacklist mEnd:I

.field private blacklist mPos:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mBuf:[B

    .line 58
    array-length p1, p1

    shl-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mEnd:I

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    return-void
.end method


# virtual methods
.method public blacklist available()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mEnd:I

    iget p0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist read(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v2, v0, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, p1

    if-ltz p1, :cond_31

    const/16 v3, 0x8

    if-gt p1, v3, :cond_31

    add-int v4, v0, p1

    .line 83
    iget v5, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mEnd:I

    if-gt v4, v5, :cond_31

    .line 87
    iget-object v4, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mBuf:[B

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v3

    if-ge v2, v3, :cond_25

    add-int/lit8 v1, v1, 0x1

    .line 88
    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v5, v1

    :cond_25
    ushr-int v1, v5, v2

    rsub-int/lit8 v2, p1, 0x20

    const/4 v3, -0x1

    ushr-int v2, v3, v2

    and-int/2addr v1, v2

    add-int/2addr v0, p1

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    return v1

    .line 84
    :cond_31
    new-instance v0, Lcom/android/internal/telephony/BitwiseInputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal read (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mEnd:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bits "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist readByteArray(I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/BitwiseInputStream$AccessException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x0

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    .line 104
    new-array v1, v0, [B

    :goto_d
    if-ge v2, v0, :cond_26

    shl-int/lit8 v3, v2, 0x3

    sub-int v3, p1, v3

    const/16 v4, 0x8

    .line 106
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v5

    sub-int/2addr v4, v3

    shl-int v3, v5, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_26
    return-object v1
.end method

.method public blacklist skip(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mEnd:I

    if-gt v1, v2, :cond_c

    add-int/2addr v0, p1

    .line 123
    iput v0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    return-void

    .line 120
    :cond_c
    new-instance v0, Lcom/android/internal/telephony/BitwiseInputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal skip (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/BitwiseInputStream;->mEnd:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", bits "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
