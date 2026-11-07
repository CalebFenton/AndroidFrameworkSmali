.class public abstract Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lcom/android/internal/net/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/internal/net/org/bouncycastle/util/Memoable;


# static fields
.field private static final blacklist BYTE_LENGTH:I = 0x40


# instance fields
.field private blacklist byteCount:J

.field private final blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 28
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .registers 3
    .param p1, "t"    # Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 38
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 6
    .param p1, "encodedState"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 42
    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 44
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 45
    return-void
.end method


# virtual methods
.method protected blacklist copyIn(Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .registers 6
    .param p1, "t"    # Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;

    .line 49
    iget-object v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 52
    iget-wide v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 53
    return-void
.end method

.method public blacklist finish()V
    .registers 4

    .line 116
    iget-wide v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 121
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 123
    :goto_9
    iget v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_12

    .line 125
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_9

    .line 128
    :cond_12
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    .line 131
    return-void
.end method

.method public blacklist getByteLength()I
    .registers 2

    .line 153
    const/16 v0, 0x40

    return v0
.end method

.method protected blacklist populateState([B)V
    .registers 5
    .param p1, "state"    # [B

    .line 146
    iget-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 148
    iget-wide v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 149
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

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 140
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v0, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 142
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public blacklist update(B)V
    .registers 6
    .param p1, "in"    # B

    .line 58
    iget-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 60
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    .line 62
    iget-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 63
    iput v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 66
    :cond_19
    iget-wide v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 67
    return-void
.end method

.method public blacklist update([BII)V
    .registers 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 74
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    iget v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_2b

    .line 82
    :goto_a
    if-ge v1, p3, :cond_2b

    .line 84
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    .line 85
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_29

    .line 87
    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 88
    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 89
    move v1, v4

    goto :goto_2b

    .line 85
    :cond_29
    move v1, v4

    goto :goto_a

    .line 97
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2b
    :goto_2b
    sub-int v0, p3, v1

    and-int/lit8 v0, v0, -0x4

    add-int/2addr v0, v1

    .line 98
    .local v0, "limit":I
    :goto_30
    if-ge v1, v0, :cond_3a

    .line 100
    add-int v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 98
    add-int/lit8 v1, v1, 0x4

    goto :goto_30

    .line 106
    :cond_3a
    :goto_3a
    if-ge v1, p3, :cond_4d

    .line 108
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    move v1, v4

    goto :goto_3a

    .line 111
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_4d
    iget-wide v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 112
    return-void
.end method
