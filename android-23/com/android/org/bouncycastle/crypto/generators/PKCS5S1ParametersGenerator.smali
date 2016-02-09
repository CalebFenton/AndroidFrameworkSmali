.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S1ParametersGenerator.java"


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 29
    return-void
.end method

.method private generateDerivedKey()[B
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 39
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v2

    #@7
    new-array v0, v2, [B

    #@9
    .line 41
    .local v0, "digestBytes":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->password:[B

    #@d
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->password:[B

    #@f
    array-length v4, v4

    #@10
    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@13
    .line 42
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@15
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->salt:[B

    #@17
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->salt:[B

    #@19
    array-length v4, v4

    #@1a
    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@1d
    .line 44
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@1f
    invoke-interface {v2, v0, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@22
    .line 45
    const/4 v1, 0x1

    #@23
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->iterationCount:I

    #@25
    if-ge v1, v2, :cond_0

    #@27
    .line 47
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@29
    array-length v3, v0

    #@2a
    invoke-interface {v2, v0, v5, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@2d
    .line 48
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2f
    invoke-interface {v2, v0, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@32
    .line 45
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 65
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 67
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@4
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@7
    move-result v1

    #@8
    if-le p1, v1, :cond_0

    #@a
    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Can\'t generate a derived key "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " bytes long."

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    #@2e
    move-result-object v0

    #@2f
    .line 75
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@31
    const/4 v2, 0x0

    #@32
    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@35
    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    #@0
    .prologue
    .line 92
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 93
    div-int/lit8 p2, p2, 0x8

    #@4
    .line 95
    add-int v1, p1, p2

    #@6
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@8
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@b
    move-result v2

    #@c
    if-le v1, v2, :cond_0

    #@e
    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Can\'t generate a derived key "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    add-int v3, p1, p2

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " bytes long."

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    #@34
    move-result-object v0

    #@35
    .line 103
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@37
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@39
    const/4 v3, 0x0

    #@3a
    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@3d
    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    #@40
    return-object v1
.end method
