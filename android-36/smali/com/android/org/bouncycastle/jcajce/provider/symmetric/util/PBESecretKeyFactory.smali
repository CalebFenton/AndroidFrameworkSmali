.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "PBESecretKeyFactory.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist digest:I

.field private blacklist forCipher:Z

.field private blacklist ivSize:I

.field private blacklist keySize:I

.field private blacklist scheme:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .registers 8

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 37
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    .line 38
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    .line 39
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    .line 40
    iput p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    .line 41
    iput p7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 12

    .line 48
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_4f

    .line 50
    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    .line 53
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_20

    .line 55
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 58
    :cond_20
    iget-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    if-eqz p1, :cond_32

    .line 60
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    invoke-static {v8, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    :goto_30
    move-object v9, p1

    goto :goto_3d

    .line 64
    :cond_32
    iget p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    invoke-static {v8, p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_30

    .line 67
    :goto_3d
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    invoke-direct/range {v1 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 70
    :cond_4f
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
