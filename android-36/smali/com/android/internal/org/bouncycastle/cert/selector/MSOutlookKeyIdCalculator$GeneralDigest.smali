.class abstract Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GeneralDigest"
.end annotation


# static fields
.field private static final blacklist BYTE_LENGTH:I = 0x40


# instance fields
.field private blacklist byteCount:J

.field private blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    .line 52
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V
    .registers 3
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected blacklist copyIn(Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V
    .registers 6
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;

    .line 68
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    .line 71
    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    .line 72
    return-void
.end method

.method public blacklist finish()V
    .registers 4

    .line 130
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 135
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    .line 137
    :goto_9
    iget v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_12

    .line 139
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    goto :goto_9

    .line 142
    :cond_12
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processLength(J)V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processBlock()V

    .line 145
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

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 154
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    aput-byte v0, v2, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 156
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public blacklist update(B)V
    .registers 6
    .param p1, "in"    # B

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 79
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    .line 82
    iput v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    .line 85
    :cond_19
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    .line 86
    return-void
.end method

.method public blacklist update([BII)V
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 96
    nop

    :goto_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v0, :cond_11

    if-lez p3, :cond_11

    .line 98
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    .line 100
    add-int/lit8 p2, p2, 0x1

    .line 101
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 107
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_2b

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 113
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    goto :goto_11

    .line 119
    :cond_2b
    :goto_2b
    if-lez p3, :cond_37

    .line 121
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    .line 123
    add-int/lit8 p2, p2, 0x1

    .line 124
    add-int/lit8 p3, p3, -0x1

    goto :goto_2b

    .line 126
    :cond_37
    return-void
.end method
