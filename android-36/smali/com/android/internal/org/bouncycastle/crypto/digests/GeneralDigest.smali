.class public abstract Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/internal/org/bouncycastle/util/Memoable;


# static fields
.field private static final blacklist BYTE_LENGTH:I = 0x40


# instance fields
.field private blacklist byteCount:J

.field private final blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 30
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .registers 3
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 40
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 6
    .param p1, "encodedState"    # [B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 44
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 46
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 47
    return-void
.end method


# virtual methods
.method protected blacklist copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .registers 6
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;

    .line 51
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 54
    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 55
    return-void
.end method

.method public blacklist finish()V
    .registers 4

    .line 118
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 123
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 125
    :goto_9
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_12

    .line 127
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_9

    .line 130
    :cond_12
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    .line 133
    return-void
.end method

.method public blacklist getByteLength()I
    .registers 2

    .line 155
    const/16 v0, 0x40

    return v0
.end method

.method protected blacklist populateState([B)V
    .registers 5
    .param p1, "state"    # [B

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 150
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 151
    return-void
.end method

.method protected abstract blacklist processBlock()V
.end method

.method protected abstract blacklist processLength(J)V
.end method

.method protected abstract blacklist processWord([BI)V
.end method

.method public blacklist reset()V
    .registers 4

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 142
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v0, v2, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 144
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public blacklist update(B)V
    .registers 6
    .param p1, "in"    # B

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 62
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    .line 64
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 65
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 68
    :cond_19
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 69
    return-void
.end method

.method public blacklist update([BII)V
    .registers 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 76
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "i":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_2b

    .line 84
    :goto_a
    if-ge v1, p3, :cond_2b

    .line 86
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    .line 87
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_29

    .line 89
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 90
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 91
    move v1, v4

    goto :goto_2b

    .line 87
    :cond_29
    move v1, v4

    goto :goto_a

    .line 99
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2b
    :goto_2b
    sub-int v0, p3, v1

    and-int/lit8 v0, v0, -0x4

    add-int/2addr v0, v1

    .line 100
    .local v0, "limit":I
    :goto_30
    if-ge v1, v0, :cond_3a

    .line 102
    add-int v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 100
    add-int/lit8 v1, v1, 0x4

    goto :goto_30

    .line 108
    :cond_3a
    :goto_3a
    if-ge v1, p3, :cond_4d

    .line 110
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    move v1, v4

    goto :goto_3a

    .line 113
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_4d
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 114
    return-void
.end method
