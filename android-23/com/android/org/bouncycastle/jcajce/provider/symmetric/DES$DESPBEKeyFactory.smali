.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESPBEKeyFactory"
.end annotation


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
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@3
    .line 312
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->forCipher:Z

    #@5
    .line 313
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    #@7
    .line 314
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    #@9
    .line 315
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    #@b
    .line 316
    iput p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    #@d
    .line 308
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10
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
    .line 323
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    #@3
    if-eqz v0, :cond_3

    #@5
    move-object v7, p1

    #@6
    .line 325
    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    #@8
    .line 328
    .local v7, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 330
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@10
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algName:Ljava/lang/String;

    #@12
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    #@16
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    #@18
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    #@1a
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    #@1c
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@1f
    return-object v0

    #@20
    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->forCipher:Z

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 335
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    #@26
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    #@28
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    #@2a
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    #@2c
    invoke-static {v7, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@2f
    move-result-object v8

    #@30
    .line 343
    .local v8, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    instance-of v0, v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@32
    if-eqz v0, :cond_2

    #@34
    move-object v0, v8

    #@35
    .line 345
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@37
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@3a
    move-result-object v9

    #@3b
    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@3d
    .line 352
    .local v9, "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :goto_1
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@40
    move-result-object v0

    #@41
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    #@44
    .line 354
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@46
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algName:Ljava/lang/String;

    #@48
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4a
    iget v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    #@4c
    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    #@4e
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    #@50
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    #@52
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@55
    return-object v0

    #@56
    .line 339
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v9    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    #@58
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    #@5a
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    #@5c
    invoke-static {v7, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@5f
    move-result-object v8

    #@60
    .restart local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@61
    :cond_2
    move-object v9, v8

    #@62
    .line 349
    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@64
    .restart local v9    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_1

    #@65
    .line 357
    .end local v7    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v8    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v9    # "kParam":Lcom/android/org/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    #@67
    const-string/jumbo v1, "Invalid KeySpec"

    #@6a
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v0
.end method
