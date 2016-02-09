.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source "BCPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field algorithm:Ljava/lang/String;

.field digest:I

.field ivSize:I

.field keySize:I

.field oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field tryWrong:Z

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "type"    # I
    .param p4, "digest"    # I
    .param p5, "keySize"    # I
    .param p6, "ivSize"    # I
    .param p7, "pbeKeySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p8, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    #@6
    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    #@8
    .line 39
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    .line 40
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    #@c
    .line 41
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    #@e
    .line 42
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    #@10
    .line 43
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    #@12
    .line 44
    iput-object p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    #@14
    .line 45
    iput-object p8, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@16
    .line 36
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getDigest()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    #@2
    return v0
.end method

.method public getEncoded()[B
    .locals 3

    #@0
    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 64
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@6
    instance-of v1, v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 66
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@c
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@14
    .line 73
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    .line 70
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1b
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@1d
    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_0

    #@1e
    .line 77
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    #@20
    const/4 v2, 0x2

    #@21
    if-ne v1, v2, :cond_2

    #@23
    .line 79
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    #@25
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@28
    move-result-object v1

    #@29
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 81
    :cond_2
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    #@30
    const/4 v2, 0x5

    #@31
    if-ne v1, v2, :cond_3

    #@33
    .line 83
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    #@35
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@38
    move-result-object v1

    #@39
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    #@3c
    move-result-object v1

    #@3d
    return-object v1

    #@3e
    .line 87
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    #@40
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@43
    move-result-object v1

    #@44
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    #@47
    move-result-object v1

    #@48
    return-object v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "RAW"

    #@3
    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    #@2
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIvSize()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    #@2
    return v0
.end method

.method getKeySize()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    #@2
    return v0
.end method

.method public getOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getParam()Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@2
    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    #@2
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    #@2
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getType()I
    .locals 1

    #@0
    .prologue
    .line 94
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    #@2
    return v0
.end method

.method public setTryWrongPKCS12Zero(Z)V
    .locals 0
    .param p1, "tryWrong"    # Z

    #@0
    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    #@2
    .line 146
    return-void
.end method

.method shouldTryWrongPKCS12()Z
    .locals 1

    #@0
    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    #@2
    return v0
.end method
