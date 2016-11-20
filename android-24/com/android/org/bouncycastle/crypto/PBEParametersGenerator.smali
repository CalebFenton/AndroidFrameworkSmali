.class public abstract Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static PKCS12PasswordToBytes([C)[B
    .locals 4
    .param p0, "password"    # [C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 153
    if-eqz p0, :cond_1

    #@3
    array-length v2, p0

    #@4
    if-lez v2, :cond_1

    #@6
    .line 156
    array-length v2, p0

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    mul-int/lit8 v2, v2, 0x2

    #@b
    new-array v0, v2, [B

    #@d
    .line 158
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 160
    mul-int/lit8 v2, v1, 0x2

    #@13
    aget-char v3, p0, v1

    #@15
    ushr-int/lit8 v3, v3, 0x8

    #@17
    int-to-byte v3, v3

    #@18
    aput-byte v3, v0, v2

    #@1a
    .line 161
    mul-int/lit8 v2, v1, 0x2

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    aget-char v3, p0, v1

    #@20
    int-to-byte v3, v3

    #@21
    aput-byte v3, v0, v2

    #@23
    .line 158
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 164
    :cond_0
    return-object v0

    #@27
    .line 168
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    :cond_1
    new-array v2, v3, [B

    #@29
    return-object v2
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .locals 3
    .param p0, "password"    # [C

    #@0
    .prologue
    .line 106
    if-eqz p0, :cond_1

    #@2
    .line 108
    array-length v2, p0

    #@3
    new-array v0, v2, [B

    #@5
    .line 110
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 112
    aget-char v2, p0, v1

    #@b
    int-to-byte v2, v2

    #@c
    aput-byte v2, v0, v1

    #@e
    .line 110
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 115
    :cond_0
    return-object v0

    #@12
    .line 119
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    #@13
    new-array v2, v2, [B

    #@15
    return-object v2
.end method

.method public static PKCS5PasswordToUTF8Bytes([C)[B
    .locals 1
    .param p0, "password"    # [C

    #@0
    .prologue
    .line 133
    if-eqz p0, :cond_0

    #@2
    .line 135
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 139
    :cond_0
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [B

    #@a
    return-object v0
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
.end method

.method public getIterationCount()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    #@2
    return v0
.end method

.method public getPassword()[B
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    #@2
    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    #@2
    return-object v0
.end method

.method public init([B[BI)V
    .locals 0
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    #@0
    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    #@2
    .line 35
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    #@4
    .line 36
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    #@6
    .line 32
    return-void
.end method
