.class public Lcom/android/org/bouncycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source "HMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# static fields
.field private static blacklist blockLengths:Ljava/util/Hashtable;


# instance fields
.field private blacklist blockLength:I

.field private blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private blacklist digestSize:I

.field private blacklist inputPad:[B

.field private blacklist ipadState:Lcom/android/org/bouncycastle/util/Memoable;

.field private blacklist opadState:Lcom/android/org/bouncycastle/util/Memoable;

.field private blacklist outputBuf:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const/16 v1, 0x40

    .line 47
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MD5"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-1"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-224"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-256"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const/16 v1, 0x80

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-512"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 3

    .line 93
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 101
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    .line 102
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    .line 103
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    add-int/2addr p2, p1

    .line 104
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    return-void
.end method

.method private static blacklist getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I
    .registers 4

    .line 69
    instance-of v0, p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_b

    .line 71
    check-cast p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p0

    return p0

    .line 74
    :cond_b
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 78
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist xorPad([BIB)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_c

    .line 236
    aget-byte v1, p0, v0

    xor-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 8

    .line 185
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 187
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 189
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {v2, v0}, Lcom/android/org/bouncycastle/util/Memoable;->reset(Lcom/android/org/bouncycastle/util/Memoable;)V

    .line 190
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_2b

    .line 194
    :cond_23
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 197
    :goto_2b
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p1

    .line 199
    iget p2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    :goto_33
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v2, v0

    if-ge p2, v2, :cond_3d

    .line 201
    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    .line 204
    :cond_3d
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz p2, :cond_49

    .line 206
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast p0, Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {p0, p2}, Lcom/android/org/bouncycastle/util/Memoable;->reset(Lcom/android/org/bouncycastle/util/Memoable;)V

    return p1

    .line 210
    :cond_49
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v0, p0

    invoke-interface {p2, p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/HMAC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMacSize()I
    .registers 1

    .line 164
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    return p0
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 122
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    .line 123
    array-length v0, p1

    .line 125
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_20

    .line 127
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, v2, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 128
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-interface {p1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 130
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    goto :goto_25

    .line 134
    :cond_20
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :goto_25
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v1, p1

    if-ge v0, v1, :cond_2f

    .line 139
    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 142
    :cond_2f
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/16 v1, 0x36

    invoke-static {p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    .line 145
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/16 v1, 0x5c

    invoke-static {p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    .line 147
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    instance-of v0, p1, Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz v0, :cond_5f

    .line 149
    check-cast p1, Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/Memoable;->copy()Lcom/android/org/bouncycastle/util/Memoable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    .line 151
    check-cast p1, Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {p1, v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 154
    :cond_5f
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v1, v0

    invoke-interface {p1, v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 156
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    instance-of v0, p1, Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz v0, :cond_75

    .line 158
    check-cast p1, Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/Memoable;->copy()Lcom/android/org/bouncycastle/util/Memoable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    :cond_75
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    if-eqz v0, :cond_c

    .line 223
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    check-cast p0, Lcom/android/org/bouncycastle/util/Memoable;

    invoke-interface {p0, v0}, Lcom/android/org/bouncycastle/util/Memoable;->reset(Lcom/android/org/bouncycastle/util/Memoable;)V

    return-void

    .line 227
    :cond_c
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 228
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public blacklist update(B)V
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public blacklist update([BII)V
    .registers 4

    .line 178
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
