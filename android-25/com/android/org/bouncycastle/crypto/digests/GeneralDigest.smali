.class public abstract Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/org/bouncycastle/util/Memoable;


# static fields
.field private static final BYTE_LENGTH:I = 0x40


# instance fields
.field private byteCount:J

.field private final xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@8
    .line 26
    const/4 v0, 0x0

    #@9
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@b
    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@8
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    #@b
    .line 34
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 4
    .param p1, "encodedState"    # [B

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v2, 0x0

    #@2
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 16
    new-array v0, v3, [B

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@9
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@b
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@d
    array-length v1, v1

    #@e
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 42
    invoke-static {p1, v3}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@17
    .line 43
    const/16 v0, 0x8

    #@19
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@1f
    .line 39
    return-void
.end method


# virtual methods
.method protected copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 48
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@5
    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@7
    array-length v2, v2

    #@8
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 50
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@f
    .line 51
    iget-wide v0, p1, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@11
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@13
    .line 46
    return-void
.end method

.method public finish()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 115
    iget-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@3
    const/4 v4, 0x3

    #@4
    shl-long v0, v2, v4

    #@6
    .line 120
    .local v0, "bitLength":J
    const/16 v2, -0x80

    #@8
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    #@b
    .line 122
    :goto_0
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 124
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    #@12
    goto :goto_0

    #@13
    .line 127
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    #@16
    .line 129
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    #@19
    .line 113
    return-void
.end method

.method public getByteLength()I
    .locals 1

    #@0
    .prologue
    .line 152
    const/16 v0, 0x40

    #@2
    return v0
.end method

.method protected populateState([B)V
    .locals 3
    .param p1, "state"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 145
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@3
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@5
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@8
    .line 146
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@a
    const/4 v1, 0x4

    #@b
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@e
    .line 147
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@10
    const/16 v2, 0x8

    #@12
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@15
    .line 143
    return-void
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 134
    const-wide/16 v2, 0x0

    #@3
    iput-wide v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@5
    .line 136
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@7
    .line 137
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 139
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@f
    aput-byte v4, v1, v0

    #@11
    .line 137
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 132
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@3
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@5
    add-int/lit8 v2, v1, 0x1

    #@7
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@9
    aput-byte p1, v0, v1

    #@b
    .line 59
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@f
    array-length v1, v1

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@14
    invoke-virtual {p0, v0, v3}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    #@17
    .line 62
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@19
    .line 65
    :cond_0
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@1b
    const-wide/16 v2, 0x1

    #@1d
    add-long/2addr v0, v2

    #@1e
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@20
    .line 55
    return-void
.end method

.method public update([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 73
    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    #@4
    move-result p3

    #@5
    .line 78
    const/4 v0, 0x0

    #@6
    .line 79
    .local v0, "i":I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@8
    if-eqz v3, :cond_1

    #@a
    :cond_0
    move v1, v0

    #@b
    .line 81
    .end local v0    # "i":I
    .local v1, "i":I
    if-ge v1, p3, :cond_4

    #@d
    .line 83
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@f
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@11
    add-int/lit8 v5, v4, 0x1

    #@13
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@15
    add-int/lit8 v0, v1, 0x1

    #@17
    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int v5, p2, v1

    #@19
    aget-byte v5, p1, v5

    #@1b
    aput-byte v5, v3, v4

    #@1d
    .line 84
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@1f
    const/4 v4, 0x4

    #@20
    if-ne v3, v4, :cond_0

    #@22
    .line 86
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@24
    invoke-virtual {p0, v3, v6}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    #@27
    .line 87
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@29
    .line 96
    :cond_1
    :goto_0
    sub-int v3, p3, v0

    #@2b
    and-int/lit8 v3, v3, -0x4

    #@2d
    add-int v2, v3, v0

    #@2f
    .line 97
    .local v2, "limit":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@31
    .line 99
    add-int v3, p2, v0

    #@33
    invoke-virtual {p0, p1, v3}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    #@36
    .line 97
    add-int/lit8 v0, v0, 0x4

    #@38
    goto :goto_1

    #@39
    .line 105
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p3, :cond_3

    #@3b
    .line 107
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    #@3d
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@3f
    add-int/lit8 v5, v4, 0x1

    #@41
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    #@43
    add-int/lit8 v0, v1, 0x1

    #@45
    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int v5, p2, v1

    #@47
    aget-byte v5, p1, v5

    #@49
    aput-byte v5, v3, v4

    #@4b
    :cond_2
    move v1, v0

    #@4c
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    #@4d
    .line 110
    :cond_3
    iget-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@4f
    int-to-long v6, p3

    #@50
    add-long/2addr v4, v6

    #@51
    iput-wide v4, p0, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    #@53
    .line 71
    return-void

    #@54
    .end local v2    # "limit":I
    :cond_4
    move v0, v1

    #@55
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method
