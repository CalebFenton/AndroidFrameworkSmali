.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DES.java"


# instance fields
.field private blacklist digest:I

.field private blacklist forCipher:Z

.field private blacklist ivSize:I

.field private blacklist keySize:I

.field private blacklist scheme:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .registers 8

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 341
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->forCipher:Z

    .line 342
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    .line 343
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    .line 344
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    .line 345
    iput p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 12

    .line 352
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_67

    .line 354
    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    .line 357
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_20

    .line 370
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 376
    :cond_20
    iget-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->forCipher:Z

    if-eqz p1, :cond_32

    .line 378
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    invoke-static {v8, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    :goto_30
    move-object v9, p1

    goto :goto_3d

    .line 382
    :cond_32
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    invoke-static {v8, p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_30

    .line 386
    :goto_3d
    instance-of p1, v9, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_4b

    .line 388
    move-object p1, v9

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_4e

    .line 392
    :cond_4b
    move-object p1, v9

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 395
    :goto_4e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 397
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 400
    :cond_67
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
