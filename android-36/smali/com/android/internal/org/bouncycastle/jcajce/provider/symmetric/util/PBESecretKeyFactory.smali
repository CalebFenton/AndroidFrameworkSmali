.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "PBESecretKeyFactory.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private blacklist digest:I

.field private blacklist forCipher:Z

.field private blacklist ivSize:I

.field private blacklist keySize:I

.field private blacklist scheme:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .registers 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "forCipher"    # Z
    .param p4, "scheme"    # I
    .param p5, "digest"    # I
    .param p6, "keySize"    # I
    .param p7, "ivSize"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 37
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    .line 38
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    .line 39
    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    .line 40
    iput p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    .line 41
    iput p7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    .line 42
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 12
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 48
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_4f

    .line 50
    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    .line 53
    .local v8, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_20

    .line 55
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algOid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 58
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    if-eqz v0, :cond_32

    .line 60
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    move-object v9, v0

    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_3d

    .line 64
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_32
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    invoke-static {v8, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    move-object v9, v0

    .line 67
    .local v9, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_3d
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algOid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-object v1

    .line 70
    .end local v8    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v9    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_4f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
