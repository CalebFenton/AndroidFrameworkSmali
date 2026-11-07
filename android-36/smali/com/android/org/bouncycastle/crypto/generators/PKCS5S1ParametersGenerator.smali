.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S1ParametersGenerator.java"


# instance fields
.field private blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-void
.end method

.method private blacklist generateDerivedKey()[B
    .registers 7

    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    .line 43
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 44
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 46
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v2, 0x1

    .line 47
    :goto_1f
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-ge v2, v3, :cond_30

    .line 49
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 50
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_30
    return-object v1
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    return-object p0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 4

    .line 67
    div-int/lit8 p1, p1, 0x8

    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    if-gt p1, v0, :cond_15

    .line 75
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object p0

    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0

    .line 71
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t generate a derived key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes long."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 6

    .line 94
    div-int/lit8 p1, p1, 0x8

    .line 95
    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    .line 97
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    if-gt v0, v1, :cond_1e

    .line 103
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object p0

    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v0

    .line 99
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t generate a derived key "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes long."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
