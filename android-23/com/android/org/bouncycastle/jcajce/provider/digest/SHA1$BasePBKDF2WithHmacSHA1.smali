.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "SHA1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2WithHmacSHA1"
.end annotation


# instance fields
.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scheme"    # I

    #@0
    .prologue
    .line 103
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@5
    .line 105
    iput p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->scheme:I

    #@7
    .line 101
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 9
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    #@2
    if-eqz v0, :cond_4

    #@4
    move-object v7, p1

    #@5
    .line 114
    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    #@7
    .line 116
    .local v7, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 118
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@f
    const-string/jumbo v1, "missing required salt"

    #@12
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 121
    :cond_0
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    #@19
    move-result v0

    #@1a
    if-gtz v0, :cond_1

    #@1c
    .line 123
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "positive iteration count required: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 124
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    #@2d
    move-result v2

    #@2e
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 127
    :cond_1
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    #@3d
    move-result v0

    #@3e
    if-gtz v0, :cond_2

    #@40
    .line 129
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "positive key length required: "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 130
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    #@51
    move-result v2

    #@52
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    .line 133
    :cond_2
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    #@61
    move-result-object v0

    #@62
    array-length v0, v0

    #@63
    if-nez v0, :cond_3

    #@65
    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@67
    const-string/jumbo v1, "password empty"

    #@6a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v0

    #@6e
    .line 138
    :cond_3
    const/4 v4, 0x1

    #@6f
    .line 139
    .local v4, "digest":I
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    #@72
    move-result v5

    #@73
    .line 140
    .local v5, "keySize":I
    const/4 v6, -0x1

    #@74
    .line 141
    .local v6, "ivSize":I
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->scheme:I

    #@76
    invoke-static {v7, v0, v4, v5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@79
    move-result-object v8

    #@7a
    .line 143
    .local v8, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@7c
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->algName:Ljava/lang/String;

    #@7e
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@80
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->scheme:I

    #@82
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@85
    return-object v0

    #@86
    .line 146
    .end local v4    # "digest":I
    .end local v5    # "keySize":I
    .end local v6    # "ivSize":I
    .end local v7    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@88
    const-string/jumbo v1, "Invalid KeySpec"

    #@8b
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v0
.end method
