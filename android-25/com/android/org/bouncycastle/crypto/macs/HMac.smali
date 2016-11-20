.class public Lcom/android/org/bouncycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source "HMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# static fields
.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct

.field private static blockLengths:Ljava/util/Hashtable;


# instance fields
.field private blockLength:I

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private ipadState:Lcom/android/org/bouncycastle/util/Memoable;

.field private opadState:Lcom/android/org/bouncycastle/util/Memoable;

.field private outputBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x80

    #@2
    const/16 v3, 0x40

    #@4
    .line 37
    new-instance v0, Ljava/util/Hashtable;

    #@6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@9
    sput-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@b
    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@d
    const-string/jumbo v1, "MD5"

    #@10
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@19
    const-string/jumbo v1, "SHA-1"

    #@1c
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@25
    const-string/jumbo v1, "SHA-224"

    #@28
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 54
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@31
    const-string/jumbo v1, "SHA-256"

    #@34
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 55
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@3d
    const-string/jumbo v1, "SHA-384"

    #@40
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@49
    const-string/jumbo v1, "SHA-512"

    #@4c
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 91
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V

    #@7
    .line 89
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V
    .locals 2
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "byteLength"    # I

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 99
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    #@b
    .line 100
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@d
    .line 101
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@f
    new-array v0, v0, [B

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@13
    .line 102
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@15
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    #@17
    add-int/2addr v0, v1

    #@18
    new-array v0, v0, [B

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@1c
    .line 96
    return-void
.end method

.method private static getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I
    .locals 4
    .param p0, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 67
    instance-of v1, p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 69
    check-cast p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    #@6
    .end local p0    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 72
    .restart local p0    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    #@d
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Integer;

    #@17
    .line 74
    .local v0, "b":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@19
    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "unknown digest passed: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3a
    move-result v1

    #@3b
    return v1
.end method

.method private static xorPad([BIB)V
    .locals 2
    .param p0, "pad"    # [B
    .param p1, "len"    # I
    .param p2, "n"    # B

    #@0
    .prologue
    .line 232
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@3
    .line 234
    aget-byte v1, p0, v0

    #@5
    xor-int/2addr v1, p2

    #@6
    int-to-byte v1, v1

    #@7
    aput-byte v1, p0, v0

    #@9
    .line 232
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 183
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@5
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@7
    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@a
    .line 185
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 187
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@10
    check-cast v2, Lcom/android/org/bouncycastle/util/Memoable;

    #@12
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    #@14
    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/util/Memoable;->reset(Lcom/android/org/bouncycastle/util/Memoable;)V

    #@17
    .line 188
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@19
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@1b
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@1d
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@1f
    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@22
    move-result v5

    #@23
    invoke-interface {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@26
    .line 195
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@28
    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@2b
    move-result v1

    #@2c
    .line 197
    .local v1, "len":I
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@2e
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@30
    array-length v2, v2

    #@31
    if-ge v0, v2, :cond_1

    #@33
    .line 199
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@35
    aput-byte v6, v2, v0

    #@37
    .line 197
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 192
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3c
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@3e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@40
    array-length v4, v4

    #@41
    invoke-interface {v2, v3, v6, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@44
    goto :goto_0

    #@45
    .line 202
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 204
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@4b
    check-cast v2, Lcom/android/org/bouncycastle/util/Memoable;

    #@4d
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    #@4f
    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/util/Memoable;->reset(Lcom/android/org/bouncycastle/util/Memoable;)V

    #@52
    .line 211
    :goto_2
    return v1

    #@53
    .line 208
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@55
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@57
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@59
    array-length v4, v4

    #@5a
    invoke-interface {v2, v3, v6, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5d
    goto :goto_2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/HMAC"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    #@0
    .prologue
    .line 162
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    #@2
    return v0
.end method

.method public getUnderlyingDigest()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    return-object v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 118
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@6
    .line 120
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@8
    .end local p1    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@b
    move-result-object v1

    #@c
    .line 121
    .local v1, "key":[B
    array-length v2, v1

    #@d
    .line 123
    .local v2, "keyLength":I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@f
    if-le v2, v3, :cond_0

    #@11
    .line 125
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@13
    invoke-interface {v3, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@16
    .line 126
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@18
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@1a
    invoke-interface {v3, v4, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@1d
    .line 128
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    #@1f
    .line 135
    :goto_0
    move v0, v2

    #@20
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@22
    array-length v3, v3

    #@23
    if-ge v0, v3, :cond_1

    #@25
    .line 137
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@27
    aput-byte v6, v3, v0

    #@29
    .line 135
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 132
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@2e
    invoke-static {v1, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    goto :goto_0

    #@32
    .line 140
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@34
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@36
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@38
    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3b
    .line 142
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@3d
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@3f
    const/16 v5, 0x36

    #@41
    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    #@44
    .line 143
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@46
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@48
    const/16 v5, 0x5c

    #@4a
    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    #@4d
    .line 145
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@4f
    instance-of v3, v3, Lcom/android/org/bouncycastle/util/Memoable;

    #@51
    if-eqz v3, :cond_2

    #@53
    .line 147
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@55
    check-cast v3, Lcom/android/org/bouncycastle/util/Memoable;

    #@57
    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/Memoable;->copy()Lcom/android/org/bouncycastle/util/Memoable;

    #@5a
    move-result-object v3

    #@5b
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    #@5d
    .line 149
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/org/bouncycastle/util/Memoable;

    #@5f
    check-cast v3, Lcom/android/org/bouncycastle/crypto/Digest;

    #@61
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    #@63
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    #@65
    invoke-interface {v3, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@68
    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@6a
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@6c
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@6e
    array-length v5, v5

    #@6f
    invoke-interface {v3, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@72
    .line 154
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@74
    instance-of v3, v3, Lcom/android/org/bouncycastle/util/Memoable;

    #@76
    if-eqz v3, :cond_3

    #@78
    .line 156
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@7a
    check-cast v3, Lcom/android/org/bouncycastle/util/Memoable;

    #@7c
    invoke-interface {v3}, Lcom/android/org/bouncycastle/util/Memoable;->copy()Lcom/android/org/bouncycastle/util/Memoable;

    #@7f
    move-result-object v3

    #@80
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/org/bouncycastle/util/Memoable;

    #@82
    .line 116
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@5
    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@7
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@9
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    #@b
    array-length v2, v2

    #@c
    const/4 v3, 0x0

    #@d
    invoke-interface {v0, v1, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@10
    .line 217
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@5
    .line 166
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 174
    return-void
.end method
