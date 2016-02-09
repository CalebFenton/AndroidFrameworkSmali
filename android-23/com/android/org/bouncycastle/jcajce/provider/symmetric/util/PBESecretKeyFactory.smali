.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "PBESecretKeyFactory.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private digest:I

.field private forCipher:Z

.field private ivSize:I

.field private keySize:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "forCipher"    # Z
    .param p4, "scheme"    # I
    .param p5, "digest"    # I
    .param p6, "keySize"    # I
    .param p7, "ivSize"    # I

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@3
    .line 33
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    #@5
    .line 34
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    #@7
    .line 35
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    #@9
    .line 36
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    #@b
    .line 37
    iput p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    #@d
    .line 29
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
    const/4 v8, 0x0

    #@1
    .line 44
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    #@3
    if-eqz v0, :cond_2

    #@5
    move-object v7, p1

    #@6
    .line 46
    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    #@8
    .line 49
    .local v7, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@10
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algName:Ljava/lang/String;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    #@16
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    #@18
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    #@1a
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    #@1c
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@1f
    return-object v0

    #@20
    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 56
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    #@26
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    #@28
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    #@2a
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    #@2c
    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@2f
    move-result-object v8

    #@30
    .line 63
    .local v8, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@32
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algName:Ljava/lang/String;

    #@34
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@36
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    #@38
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    #@3a
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    #@3c
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    #@3e
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@41
    return-object v0

    #@42
    .line 60
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    #@44
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    #@46
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    #@48
    invoke-static {v7, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@4b
    move-result-object v8

    #@4c
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@4d
    .line 66
    .end local v7    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@4f
    const-string/jumbo v1, "Invalid KeySpec"

    #@52
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@55
    throw v0
.end method
