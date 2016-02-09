.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private final helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    #@7
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 4
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "keyAlgorithm"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "certAlgorithm"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 189
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    #@4
    .line 113
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    #@6
    invoke-direct {v1}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@b
    .line 120
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@d
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)V

    #@10
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@12
    .line 121
    new-instance v1, Ljava/util/Hashtable;

    #@14
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@17
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    #@19
    .line 122
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@1b
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)V

    #@1e
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@20
    .line 123
    new-instance v1, Ljava/util/Hashtable;

    #@22
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@25
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@27
    .line 124
    new-instance v1, Ljava/util/Hashtable;

    #@29
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@2c
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@2e
    .line 142
    new-instance v1, Ljava/security/SecureRandom;

    #@30
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@33
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@35
    .line 194
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@37
    .line 195
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@39
    .line 199
    if-eqz p1, :cond_0

    #@3b
    .line 201
    :try_start_0
    const-string/jumbo v1, "X.509"

    #@3e
    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    #@41
    move-result-object v1

    #@42
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    #@44
    .line 192
    :goto_0
    return-void

    #@45
    .line 205
    :cond_0
    const-string/jumbo v1, "X.509"

    #@48
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@4b
    move-result-object v1

    #@4c
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    goto :goto_0

    #@4f
    .line 209
    :catch_0
    move-exception v0

    #@50
    .line 210
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@52
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v3, "can\'t create cert factory - "

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v1
.end method

.method private calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .locals 7
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "salt"    # [B
    .param p3, "itCount"    # I
    .param p4, "password"    # [C
    .param p5, "wrongPkcs12Zero"    # Z
    .param p6, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 1669
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    invoke-interface {v5, v6}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@9
    move-result-object v2

    #@a
    .line 1670
    .local v2, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@c
    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@f
    .line 1671
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    #@11
    invoke-direct {v4, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    #@14
    .line 1672
    .local v4, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@1a
    .line 1673
    .local v1, "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v1, p5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    #@1d
    .line 1675
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@1f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-interface {v5, v6}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    #@26
    move-result-object v3

    #@27
    .line 1676
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@2a
    .line 1677
    invoke-virtual {v3, p6}, Ljavax/crypto/Mac;->update([B)V

    #@2d
    .line 1678
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    #@30
    move-result-object v5

    #@31
    return-object v5
.end method

.method private createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .locals 15
    .param p1, "mode"    # I
    .param p2, "password"    # [C
    .param p3, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 735
    invoke-virtual/range {p3 .. p3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    #@7
    move-result-object v7

    #@8
    .line 736
    .local v7, "alg":Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    #@13
    move-result-object v12

    #@14
    .line 737
    .local v12, "func":Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1b
    move-result-object v10

    #@1c
    .line 739
    .local v10, "encScheme":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@1e
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@2d
    move-result-object v14

    #@2e
    .line 742
    .local v14, "keyFact":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 744
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    #@36
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@41
    move-result v3

    #@42
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    #@44
    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    #@47
    move-result v4

    #@48
    move-object/from16 v0, p2

    #@4a
    invoke-direct {v1, v0, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    #@4d
    invoke-virtual {v14, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@50
    move-result-object v13

    #@51
    .line 751
    .local v13, "key":Ljavax/crypto/SecretKey;
    :goto_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@60
    move-result-object v8

    #@61
    .line 753
    .local v8, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@64
    move-result-object v1

    #@65
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@68
    move-result-object v11

    #@69
    .line 755
    .local v11, "encryptionAlg":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@70
    move-result-object v9

    #@71
    .line 756
    .local v9, "encParams":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v9, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@73
    if-eqz v1, :cond_0

    #@75
    .line 758
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    #@77
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@7e
    move-result-object v2

    #@7f
    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@82
    move/from16 v0, p1

    #@84
    invoke-virtual {v8, v0, v13, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@87
    .line 769
    :cond_0
    return-object v8

    #@88
    .line 748
    .end local v8    # "cipher":Ljavax/crypto/Cipher;
    .end local v9    # "encParams":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v11    # "encryptionAlg":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v13    # "key":Ljavax/crypto/SecretKey;
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    #@8a
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@95
    move-result v4

    #@96
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    #@98
    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    #@9b
    move-result v5

    #@9c
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@9f
    move-result-object v6

    #@a0
    move-object/from16 v2, p2

    #@a2
    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    #@a5
    invoke-virtual {v14, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@a8
    move-result-object v13

    #@a9
    .restart local v13    # "key":Ljavax/crypto/SecretKey;
    goto :goto_0
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 4
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 219
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@2
    .line 220
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@c
    .line 219
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@f
    .line 222
    .local v1, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@11
    invoke-static {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    #@14
    move-result-object v3

    #@15
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    return-object v2

    #@19
    .line 225
    .end local v1    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    #@1a
    .line 226
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v3, "error creating key"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 65
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "useDEREncoding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1274
    if-nez p2, :cond_0

    #@2
    .line 1276
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "No password supplied for PKCS#12 KeyStore."

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 1282
    :cond_0
    new-instance v51, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@d
    invoke-direct/range {v51 .. v51}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@10
    .line 1285
    .local v51, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@14
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@17
    move-result-object v54

    #@18
    .line 1287
    .local v54, "ks":Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v54 .. v54}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_5

    #@1e
    .line 1289
    const/16 v4, 0x14

    #@20
    new-array v0, v4, [B

    #@22
    move-object/from16 v49, v0

    #@24
    .line 1291
    .local v49, "kSalt":[B
    move-object/from16 v0, p0

    #@26
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@28
    move-object/from16 v0, v49

    #@2a
    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@2d
    .line 1293
    invoke-interface/range {v54 .. v54}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@30
    move-result-object v57

    #@31
    check-cast v57, Ljava/lang/String;

    #@33
    .line 1294
    .local v57, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@35
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@37
    move-object/from16 v0, v57

    #@39
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3c
    move-result-object v62

    #@3d
    check-cast v62, Ljava/security/PrivateKey;

    #@3f
    .line 1295
    .local v62, "privKey":Ljava/security/PrivateKey;
    new-instance v48, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@41
    const/16 v4, 0x400

    #@43
    move-object/from16 v0, v48

    #@45
    move-object/from16 v1, v49

    #@47
    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    #@4a
    .line 1296
    .local v48, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    move-object/from16 v0, p0

    #@4c
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    move-object/from16 v0, p0

    #@54
    move-object/from16 v1, v62

    #@56
    move-object/from16 v2, v48

    #@58
    move-object/from16 v3, p2

    #@5a
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    #@5d
    move-result-object v45

    #@5e
    .line 1297
    .local v45, "kBytes":[B
    new-instance v43, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    invoke-virtual/range {v48 .. v48}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@67
    move-result-object v5

    #@68
    move-object/from16 v0, v43

    #@6a
    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@6d
    .line 1298
    .local v43, "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v46, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    #@6f
    move-object/from16 v0, v46

    #@71
    move-object/from16 v1, v43

    #@73
    move-object/from16 v2, v45

    #@75
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@78
    .line 1299
    .local v46, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/16 v19, 0x0

    #@7a
    .line 1300
    .local v19, "attrSet":Z
    new-instance v47, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@7c
    invoke-direct/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@7f
    .line 1302
    .local v47, "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v62

    #@81
    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@83
    if-eqz v4, :cond_3

    #@85
    move-object/from16 v22, v62

    #@87
    .line 1304
    check-cast v22, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@89
    .line 1308
    .local v22, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8b
    move-object/from16 v0, v22

    #@8d
    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@90
    move-result-object v58

    #@91
    check-cast v58, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@93
    .line 1309
    .local v58, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v58, :cond_2

    #@95
    invoke-virtual/range {v58 .. v58}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@98
    move-result-object v4

    #@99
    move-object/from16 v0, v57

    #@9b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v4

    #@9f
    if-eqz v4, :cond_2

    #@a1
    .line 1317
    :goto_1
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a3
    move-object/from16 v0, v22

    #@a5
    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a8
    move-result-object v4

    #@a9
    if-nez v4, :cond_1

    #@ab
    .line 1319
    move-object/from16 v0, p0

    #@ad
    move-object/from16 v1, v57

    #@af
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@b2
    move-result-object v34

    #@b3
    .line 1321
    .local v34, "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b5
    invoke-virtual/range {v34 .. v34}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@b8
    move-result-object v5

    #@b9
    move-object/from16 v0, p0

    #@bb
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@be
    move-result-object v5

    #@bf
    move-object/from16 v0, v22

    #@c1
    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@c4
    .line 1324
    .end local v34    # "ct":Ljava/security/cert/Certificate;
    :cond_1
    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@c7
    move-result-object v39

    #@c8
    .line 1326
    .local v39, "e":Ljava/util/Enumeration;
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@cb
    move-result v4

    #@cc
    if-eqz v4, :cond_3

    #@ce
    .line 1328
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d1
    move-result-object v59

    #@d2
    check-cast v59, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d4
    .line 1329
    .local v59, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v50, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@d6
    invoke-direct/range {v50 .. v50}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@d9
    .line 1331
    .local v50, "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v50

    #@db
    move-object/from16 v1, v59

    #@dd
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e0
    .line 1332
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@e2
    move-object/from16 v0, v22

    #@e4
    move-object/from16 v1, v59

    #@e6
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@e9
    move-result-object v5

    #@ea
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@ed
    move-object/from16 v0, v50

    #@ef
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f2
    .line 1334
    const/16 v19, 0x1

    #@f4
    .line 1336
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@f6
    move-object/from16 v0, v50

    #@f8
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@fb
    move-object/from16 v0, v47

    #@fd
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@100
    goto :goto_2

    #@101
    .line 1311
    .end local v39    # "e":Ljava/util/Enumeration;
    .end local v50    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v59    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@103
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@105
    move-object/from16 v0, v57

    #@107
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    #@10a
    move-object/from16 v0, v22

    #@10c
    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@10f
    goto :goto_1

    #@110
    .line 1340
    .end local v22    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v58    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :cond_3
    if-nez v19, :cond_4

    #@112
    .line 1345
    new-instance v50, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@114
    invoke-direct/range {v50 .. v50}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@117
    .line 1346
    .restart local v50    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    #@119
    move-object/from16 v1, v57

    #@11b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@11e
    move-result-object v34

    #@11f
    .line 1348
    .restart local v34    # "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@121
    move-object/from16 v0, v50

    #@123
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@126
    .line 1349
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@128
    invoke-virtual/range {v34 .. v34}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@12b
    move-result-object v5

    #@12c
    move-object/from16 v0, p0

    #@12e
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@131
    move-result-object v5

    #@132
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@135
    move-object/from16 v0, v50

    #@137
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13a
    .line 1351
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@13c
    move-object/from16 v0, v50

    #@13e
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@141
    move-object/from16 v0, v47

    #@143
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@146
    .line 1353
    new-instance v50, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@148
    .end local v50    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v50 .. v50}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@14b
    .line 1355
    .restart local v50    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14d
    move-object/from16 v0, v50

    #@14f
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@152
    .line 1356
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@154
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@156
    move-object/from16 v0, v57

    #@158
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    #@15b
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15e
    move-object/from16 v0, v50

    #@160
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@163
    .line 1358
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@165
    move-object/from16 v0, v50

    #@167
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@16a
    move-object/from16 v0, v47

    #@16c
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16f
    .line 1361
    .end local v34    # "ct":Ljava/security/cert/Certificate;
    .end local v50    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    new-instance v44, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@171
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@173
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@176
    move-result-object v5

    #@177
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@179
    move-object/from16 v0, v47

    #@17b
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@17e
    move-object/from16 v0, v44

    #@180
    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@183
    .line 1362
    .local v44, "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v51

    #@185
    move-object/from16 v1, v44

    #@187
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18a
    goto/16 :goto_0

    #@18c
    .line 1365
    .end local v19    # "attrSet":Z
    .end local v43    # "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v44    # "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v45    # "kBytes":[B
    .end local v46    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v47    # "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v48    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v49    # "kSalt":[B
    .end local v57    # "name":Ljava/lang/String;
    .end local v62    # "privKey":Ljava/security/PrivateKey;
    :cond_5
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@18e
    move-object/from16 v0, v51

    #@190
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@193
    const-string/jumbo v5, "DER"

    #@196
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    #@199
    move-result-object v52

    #@19a
    .line 1366
    .local v52, "keySEncoded":[B
    new-instance v53, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@19c
    move-object/from16 v0, v53

    #@19e
    move-object/from16 v1, v52

    #@1a0
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@1a3
    .line 1371
    .local v53, "keyString":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    const/16 v4, 0x14

    #@1a5
    new-array v0, v4, [B

    #@1a7
    move-object/from16 v27, v0

    #@1a9
    .line 1373
    .local v27, "cSalt":[B
    move-object/from16 v0, p0

    #@1ab
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@1ad
    move-object/from16 v0, v27

    #@1af
    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@1b2
    .line 1375
    new-instance v32, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@1b4
    invoke-direct/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@1b7
    .line 1376
    .local v32, "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v26, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@1b9
    const/16 v4, 0x400

    #@1bb
    move-object/from16 v0, v26

    #@1bd
    move-object/from16 v1, v27

    #@1bf
    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    #@1c2
    .line 1377
    .local v26, "cParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c8
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1cb
    move-result-object v5

    #@1cc
    invoke-direct {v6, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1cf
    .line 1378
    .local v6, "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v36, Ljava/util/Hashtable;

    #@1d1
    invoke-direct/range {v36 .. v36}, Ljava/util/Hashtable;-><init>()V

    #@1d4
    .line 1380
    .local v36, "doneCerts":Ljava/util/Hashtable;
    move-object/from16 v0, p0

    #@1d6
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@1d8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@1db
    move-result-object v33

    #@1dc
    .line 1381
    .local v33, "cs":Ljava/util/Enumeration;
    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1df
    move-result v4

    #@1e0
    if-eqz v4, :cond_a

    #@1e2
    .line 1385
    :try_start_0
    invoke-interface/range {v33 .. v33}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1e5
    move-result-object v57

    #@1e6
    check-cast v57, Ljava/lang/String;

    #@1e8
    .line 1386
    .restart local v57    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ea
    move-object/from16 v1, v57

    #@1ec
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@1ef
    move-result-object v28

    #@1f0
    .line 1387
    .local v28, "cert":Ljava/security/cert/Certificate;
    const/16 v23, 0x0

    #@1f2
    .line 1388
    .local v23, "cAttrSet":Z
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    #@1f4
    .line 1389
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f6
    .line 1390
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@1f8
    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@1fb
    move-result-object v7

    #@1fc
    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@1ff
    .line 1388
    move-object/from16 v0, v24

    #@201
    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@204
    .line 1391
    .local v24, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v40, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@206
    invoke-direct/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@209
    .line 1393
    .local v40, "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v28

    #@20b
    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@20d
    if-eqz v4, :cond_8

    #@20f
    .line 1395
    move-object/from16 v0, v28

    #@211
    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@213
    move-object/from16 v22, v0

    #@215
    .line 1399
    .restart local v22    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@217
    move-object/from16 v0, v22

    #@219
    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@21c
    move-result-object v58

    #@21d
    check-cast v58, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@21f
    .line 1400
    .restart local v58    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v58, :cond_7

    #@221
    invoke-virtual/range {v58 .. v58}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@224
    move-result-object v4

    #@225
    move-object/from16 v0, v57

    #@227
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22a
    move-result v4

    #@22b
    if-eqz v4, :cond_7

    #@22d
    .line 1408
    :goto_4
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22f
    move-object/from16 v0, v22

    #@231
    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@234
    move-result-object v4

    #@235
    if-nez v4, :cond_6

    #@237
    .line 1410
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@239
    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@23c
    move-result-object v5

    #@23d
    move-object/from16 v0, p0

    #@23f
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@242
    move-result-object v5

    #@243
    move-object/from16 v0, v22

    #@245
    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@248
    .line 1413
    :cond_6
    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@24b
    move-result-object v39

    #@24c
    .line 1415
    .restart local v39    # "e":Ljava/util/Enumeration;
    :goto_5
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@24f
    move-result v4

    #@250
    if-eqz v4, :cond_8

    #@252
    .line 1417
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@255
    move-result-object v59

    #@256
    check-cast v59, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@258
    .line 1418
    .restart local v59    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v41, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@25a
    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@25d
    .line 1420
    .local v41, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v41

    #@25f
    move-object/from16 v1, v59

    #@261
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@264
    .line 1421
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@266
    move-object/from16 v0, v22

    #@268
    move-object/from16 v1, v59

    #@26a
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@26d
    move-result-object v5

    #@26e
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@271
    move-object/from16 v0, v41

    #@273
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@276
    .line 1422
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@278
    move-object/from16 v0, v41

    #@27a
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@27d
    move-object/from16 v0, v40

    #@27f
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@282
    .line 1424
    const/16 v23, 0x1

    #@284
    goto :goto_5

    #@285
    .line 1402
    .end local v39    # "e":Ljava/util/Enumeration;
    .end local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v59    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_7
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@287
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@289
    move-object/from16 v0, v57

    #@28b
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    #@28e
    move-object/from16 v0, v22

    #@290
    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@293
    goto :goto_4

    #@294
    .line 1451
    .end local v22    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23    # "cAttrSet":Z
    .end local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28    # "cert":Ljava/security/cert/Certificate;
    .end local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v57    # "name":Ljava/lang/String;
    .end local v58    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :catch_0
    move-exception v38

    #@295
    .line 1452
    .local v38, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    #@297
    new-instance v5, Ljava/lang/StringBuilder;

    #@299
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29c
    const-string/jumbo v7, "Error encoding certificate: "

    #@29f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v5

    #@2a3
    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    #@2a6
    move-result-object v7

    #@2a7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v5

    #@2ab
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ae
    move-result-object v5

    #@2af
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b2
    throw v4

    #@2b3
    .line 1428
    .end local v38    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v23    # "cAttrSet":Z
    .restart local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v28    # "cert":Ljava/security/cert/Certificate;
    .restart local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v57    # "name":Ljava/lang/String;
    :cond_8
    if-nez v23, :cond_9

    #@2b5
    .line 1430
    :try_start_1
    new-instance v41, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2b7
    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@2ba
    .line 1432
    .restart local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2bc
    move-object/from16 v0, v41

    #@2be
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c1
    .line 1433
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@2c3
    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@2c6
    move-result-object v5

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@2cc
    move-result-object v5

    #@2cd
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d0
    move-object/from16 v0, v41

    #@2d2
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d5
    .line 1434
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2d7
    move-object/from16 v0, v41

    #@2d9
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@2dc
    move-object/from16 v0, v40

    #@2de
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2e1
    .line 1436
    new-instance v41, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2e3
    .end local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@2e6
    .line 1438
    .restart local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e8
    move-object/from16 v0, v41

    #@2ea
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2ed
    .line 1439
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@2ef
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@2f1
    move-object/from16 v0, v57

    #@2f3
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    #@2f6
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f9
    move-object/from16 v0, v41

    #@2fb
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2fe
    .line 1441
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@300
    move-object/from16 v0, v41

    #@302
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@305
    move-object/from16 v0, v40

    #@307
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@30a
    .line 1444
    .end local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_9
    new-instance v64, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@30c
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@30e
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@311
    move-result-object v5

    #@312
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@314
    move-object/from16 v0, v40

    #@316
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@319
    move-object/from16 v0, v64

    #@31b
    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@31e
    .line 1446
    .local v64, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v32

    #@320
    move-object/from16 v1, v64

    #@322
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@325
    .line 1448
    move-object/from16 v0, v36

    #@327
    move-object/from16 v1, v28

    #@329
    move-object/from16 v2, v28

    #@32b
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    #@32e
    goto/16 :goto_3

    #@330
    .line 1456
    .end local v23    # "cAttrSet":Z
    .end local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28    # "cert":Ljava/security/cert/Certificate;
    .end local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v57    # "name":Ljava/lang/String;
    .end local v64    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_a
    move-object/from16 v0, p0

    #@332
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@334
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@337
    move-result-object v33

    #@338
    .line 1457
    :cond_b
    :goto_6
    invoke-interface/range {v33 .. v33}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@33b
    move-result v4

    #@33c
    if-eqz v4, :cond_10

    #@33e
    .line 1461
    :try_start_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@341
    move-result-object v31

    #@342
    check-cast v31, Ljava/lang/String;

    #@344
    .line 1462
    .local v31, "certId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@346
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@348
    move-object/from16 v0, v31

    #@34a
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@34d
    move-result-object v28

    #@34e
    check-cast v28, Ljava/security/cert/Certificate;

    #@350
    .line 1463
    .restart local v28    # "cert":Ljava/security/cert/Certificate;
    const/16 v23, 0x0

    #@352
    .line 1465
    .restart local v23    # "cAttrSet":Z
    move-object/from16 v0, p0

    #@354
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@356
    move-object/from16 v0, v31

    #@358
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@35b
    move-result-object v4

    #@35c
    if-nez v4, :cond_b

    #@35e
    .line 1470
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    #@360
    .line 1471
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@362
    .line 1472
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@364
    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@367
    move-result-object v7

    #@368
    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@36b
    .line 1470
    move-object/from16 v0, v24

    #@36d
    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@370
    .line 1473
    .restart local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v40, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@372
    invoke-direct/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@375
    .line 1475
    .restart local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v28

    #@377
    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@379
    if-eqz v4, :cond_e

    #@37b
    .line 1477
    move-object/from16 v0, v28

    #@37d
    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@37f
    move-object/from16 v22, v0

    #@381
    .line 1481
    .restart local v22    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@383
    move-object/from16 v0, v22

    #@385
    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@388
    move-result-object v58

    #@389
    check-cast v58, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@38b
    .line 1482
    .restart local v58    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v58, :cond_d

    #@38d
    invoke-virtual/range {v58 .. v58}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@390
    move-result-object v4

    #@391
    move-object/from16 v0, v31

    #@393
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@396
    move-result v4

    #@397
    if-eqz v4, :cond_d

    #@399
    .line 1487
    :goto_7
    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@39c
    move-result-object v39

    #@39d
    .line 1489
    .restart local v39    # "e":Ljava/util/Enumeration;
    :cond_c
    :goto_8
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3a0
    move-result v4

    #@3a1
    if-eqz v4, :cond_e

    #@3a3
    .line 1491
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3a6
    move-result-object v59

    #@3a7
    check-cast v59, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a9
    .line 1497
    .restart local v59    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3ab
    move-object/from16 v0, v59

    #@3ad
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@3b0
    move-result v4

    #@3b1
    if-nez v4, :cond_c

    #@3b3
    .line 1502
    new-instance v41, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3b5
    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@3b8
    .line 1504
    .restart local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v41

    #@3ba
    move-object/from16 v1, v59

    #@3bc
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3bf
    .line 1505
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@3c1
    move-object/from16 v0, v22

    #@3c3
    move-object/from16 v1, v59

    #@3c5
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3c8
    move-result-object v5

    #@3c9
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3cc
    move-object/from16 v0, v41

    #@3ce
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3d1
    .line 1506
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@3d3
    move-object/from16 v0, v41

    #@3d5
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@3d8
    move-object/from16 v0, v40

    #@3da
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3dd
    .line 1508
    const/16 v23, 0x1

    #@3df
    goto :goto_8

    #@3e0
    .line 1484
    .end local v39    # "e":Ljava/util/Enumeration;
    .end local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v59    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_d
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e2
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@3e4
    move-object/from16 v0, v31

    #@3e6
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    #@3e9
    move-object/from16 v0, v22

    #@3eb
    invoke-interface {v0, v4, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    #@3ee
    goto :goto_7

    #@3ef
    .line 1529
    .end local v22    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23    # "cAttrSet":Z
    .end local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28    # "cert":Ljava/security/cert/Certificate;
    .end local v31    # "certId":Ljava/lang/String;
    .end local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v58    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :catch_1
    move-exception v38

    #@3f0
    .line 1530
    .restart local v38    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    #@3f2
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f7
    const-string/jumbo v7, "Error encoding certificate: "

    #@3fa
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fd
    move-result-object v5

    #@3fe
    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    #@401
    move-result-object v7

    #@402
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@405
    move-result-object v5

    #@406
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@409
    move-result-object v5

    #@40a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40d
    throw v4

    #@40e
    .line 1512
    .end local v38    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v23    # "cAttrSet":Z
    .restart local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v28    # "cert":Ljava/security/cert/Certificate;
    .restart local v31    # "certId":Ljava/lang/String;
    .restart local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_e
    if-nez v23, :cond_f

    #@410
    .line 1514
    :try_start_3
    new-instance v41, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@412
    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@415
    .line 1516
    .restart local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@417
    move-object/from16 v0, v41

    #@419
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@41c
    .line 1517
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@41e
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@420
    move-object/from16 v0, v31

    #@422
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    #@425
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@428
    move-object/from16 v0, v41

    #@42a
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@42d
    .line 1519
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@42f
    move-object/from16 v0, v41

    #@431
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@434
    move-object/from16 v0, v40

    #@436
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@439
    .line 1522
    .end local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_f
    new-instance v64, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@43b
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43d
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@440
    move-result-object v5

    #@441
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@443
    move-object/from16 v0, v40

    #@445
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@448
    move-object/from16 v0, v64

    #@44a
    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@44d
    .line 1524
    .restart local v64    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v32

    #@44f
    move-object/from16 v1, v64

    #@451
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@454
    .line 1526
    move-object/from16 v0, v36

    #@456
    move-object/from16 v1, v28

    #@458
    move-object/from16 v2, v28

    #@45a
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    #@45d
    goto/16 :goto_6

    #@45f
    .line 1534
    .end local v23    # "cAttrSet":Z
    .end local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28    # "cert":Ljava/security/cert/Certificate;
    .end local v31    # "certId":Ljava/lang/String;
    .end local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v64    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_10
    move-object/from16 v0, p0

    #@461
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@463
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@466
    move-result-object v33

    #@467
    .line 1535
    :cond_11
    :goto_9
    invoke-interface/range {v33 .. v33}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@46a
    move-result v4

    #@46b
    if-eqz v4, :cond_14

    #@46d
    .line 1539
    :try_start_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@470
    move-result-object v30

    #@471
    check-cast v30, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    #@473
    .line 1540
    .local v30, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    move-object/from16 v0, p0

    #@475
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@477
    move-object/from16 v0, v30

    #@479
    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47c
    move-result-object v28

    #@47d
    check-cast v28, Ljava/security/cert/Certificate;

    #@47f
    .line 1542
    .restart local v28    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v0, v36

    #@481
    move-object/from16 v1, v28

    #@483
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@486
    move-result-object v4

    #@487
    if-nez v4, :cond_11

    #@489
    .line 1547
    new-instance v24, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    #@48b
    .line 1548
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48d
    .line 1549
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@48f
    invoke-virtual/range {v28 .. v28}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@492
    move-result-object v7

    #@493
    invoke-direct {v5, v7}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@496
    .line 1547
    move-object/from16 v0, v24

    #@498
    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@49b
    .line 1550
    .restart local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v40, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@49d
    invoke-direct/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@4a0
    .line 1552
    .restart local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v28

    #@4a2
    instance-of v4, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@4a4
    if-eqz v4, :cond_13

    #@4a6
    .line 1554
    move-object/from16 v0, v28

    #@4a8
    check-cast v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@4aa
    move-object/from16 v22, v0

    #@4ac
    .line 1555
    .restart local v22    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface/range {v22 .. v22}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    #@4af
    move-result-object v39

    #@4b0
    .line 1557
    .restart local v39    # "e":Ljava/util/Enumeration;
    :cond_12
    :goto_a
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4b3
    move-result v4

    #@4b4
    if-eqz v4, :cond_13

    #@4b6
    .line 1559
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@4b9
    move-result-object v59

    #@4ba
    check-cast v59, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4bc
    .line 1565
    .restart local v59    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4be
    move-object/from16 v0, v59

    #@4c0
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@4c3
    move-result v4

    #@4c4
    if-nez v4, :cond_12

    #@4c6
    .line 1570
    new-instance v41, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@4c8
    invoke-direct/range {v41 .. v41}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@4cb
    .line 1572
    .restart local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v41

    #@4cd
    move-object/from16 v1, v59

    #@4cf
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4d2
    .line 1573
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@4d4
    move-object/from16 v0, v22

    #@4d6
    move-object/from16 v1, v59

    #@4d8
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@4db
    move-result-object v5

    #@4dc
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4df
    move-object/from16 v0, v41

    #@4e1
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4e4
    .line 1574
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@4e6
    move-object/from16 v0, v41

    #@4e8
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@4eb
    move-object/from16 v0, v40

    #@4ed
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    #@4f0
    goto :goto_a

    #@4f1
    .line 1583
    .end local v22    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28    # "cert":Ljava/security/cert/Certificate;
    .end local v30    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v39    # "e":Ljava/util/Enumeration;
    .end local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v41    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v59    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_2
    move-exception v38

    #@4f2
    .line 1584
    .restart local v38    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    #@4f4
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f9
    const-string/jumbo v7, "Error encoding certificate: "

    #@4fc
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ff
    move-result-object v5

    #@500
    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    #@503
    move-result-object v7

    #@504
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@507
    move-result-object v5

    #@508
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50b
    move-result-object v5

    #@50c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@50f
    throw v4

    #@510
    .line 1578
    .end local v38    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v28    # "cert":Ljava/security/cert/Certificate;
    .restart local v30    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_13
    :try_start_5
    new-instance v64, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@512
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@514
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@517
    move-result-object v5

    #@518
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    #@51a
    move-object/from16 v0, v40

    #@51c
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@51f
    move-object/from16 v0, v64

    #@521
    invoke-direct {v0, v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    #@524
    .line 1580
    .restart local v64    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v32

    #@526
    move-object/from16 v1, v64

    #@528
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    #@52b
    goto/16 :goto_9

    #@52d
    .line 1588
    .end local v24    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v28    # "cert":Ljava/security/cert/Certificate;
    .end local v30    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v40    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v64    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_14
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@52f
    move-object/from16 v0, v32

    #@531
    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@534
    const-string/jumbo v5, "DER"

    #@537
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    #@53a
    move-result-object v9

    #@53b
    .line 1589
    .local v9, "certSeqEncoded":[B
    const/4 v5, 0x1

    #@53c
    const/4 v8, 0x0

    #@53d
    move-object/from16 v4, p0

    #@53f
    move-object/from16 v7, p2

    #@541
    invoke-virtual/range {v4 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    #@544
    move-result-object v29

    #@545
    .line 1590
    .local v29, "certBytes":[B
    new-instance v25, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    #@547
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@549
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@54b
    move-object/from16 v0, v29

    #@54d
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@550
    move-object/from16 v0, v25

    #@552
    invoke-direct {v0, v4, v6, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@555
    .line 1593
    .local v25, "cInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v4, 0x2

    #@556
    new-array v0, v4, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@558
    move-object/from16 v42, v0

    #@55a
    .line 1594
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@55c
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@55e
    move-object/from16 v0, v53

    #@560
    invoke-direct {v4, v5, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@563
    const/4 v5, 0x0

    #@564
    aput-object v4, v42, v5

    #@566
    .line 1595
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@568
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56a
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@56d
    move-result-object v7

    #@56e
    invoke-direct {v4, v5, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@571
    const/4 v5, 0x1

    #@572
    aput-object v4, v42, v5

    #@574
    .line 1598
    .local v42, "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v20, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    #@576
    move-object/from16 v0, v20

    #@578
    move-object/from16 v1, v42

    #@57a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    #@57d
    .line 1600
    .local v20, "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    #@57f
    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@582
    .line 1602
    .local v21, "bOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_15

    #@584
    .line 1604
    new-instance v18, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@586
    move-object/from16 v0, v18

    #@588
    move-object/from16 v1, v21

    #@58a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@58d
    .line 1611
    .local v18, "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_b
    move-object/from16 v0, v18

    #@58f
    move-object/from16 v1, v20

    #@591
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@594
    .line 1613
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@597
    move-result-object v61

    #@598
    .line 1615
    .local v61, "pkg":[B
    new-instance v56, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@59a
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59c
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    #@59e
    move-object/from16 v0, v61

    #@5a0
    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    #@5a3
    move-object/from16 v0, v56

    #@5a5
    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5a8
    .line 1620
    .local v56, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v4, 0x14

    #@5aa
    new-array v12, v4, [B

    #@5ac
    .line 1621
    .local v12, "mSalt":[B
    const/16 v13, 0x400

    #@5ae
    .line 1623
    .local v13, "itCount":I
    move-object/from16 v0, p0

    #@5b0
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@5b2
    invoke-virtual {v4, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@5b5
    .line 1625
    invoke-virtual/range {v56 .. v56}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5b8
    move-result-object v4

    #@5b9
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@5bb
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@5be
    move-result-object v16

    #@5bf
    .line 1631
    .local v16, "data":[B
    :try_start_6
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c1
    const/4 v15, 0x0

    #@5c2
    move-object/from16 v10, p0

    #@5c4
    move-object/from16 v14, p2

    #@5c6
    invoke-direct/range {v10 .. v16}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    #@5c9
    move-result-object v63

    #@5ca
    .line 1633
    .local v63, "res":[B
    new-instance v17, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@5cc
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->id_SHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5ce
    sget-object v5, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    #@5d0
    move-object/from16 v0, v17

    #@5d2
    invoke-direct {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@5d5
    .line 1634
    .local v17, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v35, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@5d7
    move-object/from16 v0, v35

    #@5d9
    move-object/from16 v1, v17

    #@5db
    move-object/from16 v2, v63

    #@5dd
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    #@5e0
    .line 1636
    .local v35, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    new-instance v55, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@5e2
    move-object/from16 v0, v55

    #@5e4
    move-object/from16 v1, v35

    #@5e6
    invoke-direct {v0, v1, v12, v13}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    #@5e9
    .line 1646
    .local v55, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    new-instance v60, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    #@5eb
    move-object/from16 v0, v60

    #@5ed
    move-object/from16 v1, v56

    #@5ef
    move-object/from16 v2, v55

    #@5f1
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    #@5f4
    .line 1648
    .local v60, "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_16

    #@5f6
    .line 1650
    new-instance v18, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    #@5f8
    .end local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    move-object/from16 v0, v18

    #@5fa
    move-object/from16 v1, p1

    #@5fc
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@5ff
    .line 1657
    .restart local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_c
    move-object/from16 v0, v18

    #@601
    move-object/from16 v1, v60

    #@603
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@606
    .line 1272
    return-void

    #@607
    .line 1608
    .end local v12    # "mSalt":[B
    .end local v13    # "itCount":I
    .end local v16    # "data":[B
    .end local v17    # "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .end local v35    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v55    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v56    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v60    # "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v61    # "pkg":[B
    .end local v63    # "res":[B
    :cond_15
    new-instance v18, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    #@609
    move-object/from16 v0, v18

    #@60b
    move-object/from16 v1, v21

    #@60d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@610
    .restart local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto/16 :goto_b

    #@612
    .line 1639
    .restart local v12    # "mSalt":[B
    .restart local v13    # "itCount":I
    .restart local v16    # "data":[B
    .restart local v56    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v61    # "pkg":[B
    :catch_3
    move-exception v37

    #@613
    .line 1640
    .local v37, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    #@615
    new-instance v5, Ljava/lang/StringBuilder;

    #@617
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61a
    const-string/jumbo v7, "error constructing MAC: "

    #@61d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@620
    move-result-object v5

    #@621
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@624
    move-result-object v7

    #@625
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@628
    move-result-object v5

    #@629
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62c
    move-result-object v5

    #@62d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@630
    throw v4

    #@631
    .line 1654
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v17    # "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v35    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .restart local v55    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .restart local v60    # "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v63    # "res":[B
    :cond_16
    new-instance v18, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    #@633
    .end local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    move-object/from16 v0, v18

    #@635
    move-object/from16 v1, p1

    #@637
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    #@63a
    .restart local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto :goto_c
.end method

.method private static getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5
    .param p0, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 232
    new-instance v1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@3
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    #@6
    .line 233
    .local v1, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@9
    move-result v3

    #@a
    new-array v2, v3, [B

    #@c
    .line 235
    .local v2, "resBuf":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@13
    move-result-object v0

    #@14
    .line 236
    .local v0, "bytes":[B
    array-length v3, v0

    #@15
    invoke-interface {v1, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@18
    .line 237
    invoke-interface {v1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@1b
    .line 238
    return-object v2
.end method


# virtual methods
.method protected cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 13
    .param p1, "forEncryption"    # Z
    .param p2, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    move-result-object v1

    #@4
    .line 686
    .local v1, "algorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz p1, :cond_0

    #@6
    const/4 v7, 0x1

    #@7
    .line 688
    .local v7, "mode":I
    :goto_0
    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9
    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    #@c
    move-result v10

    #@d
    if-eqz v10, :cond_1

    #@f
    .line 690
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    move-result-object v10

    #@13
    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@16
    move-result-object v8

    #@17
    .line 691
    .local v8, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    #@19
    move-object/from16 v0, p3

    #@1b
    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    #@1e
    .line 695
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@20
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@23
    move-result-object v11

    #@24
    invoke-interface {v10, v11}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@27
    move-result-object v6

    #@28
    .line 696
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    #@2a
    .line 697
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    #@2d
    move-result-object v10

    #@2e
    .line 698
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    #@31
    move-result-object v11

    #@32
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    #@35
    move-result v11

    #@36
    .line 696
    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@39
    .line 699
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@3c
    move-result-object v5

    #@3d
    check-cast v5, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@3f
    .line 701
    .local v5, "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    move/from16 v0, p4

    #@41
    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    #@44
    .line 703
    iget-object v10, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@46
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    invoke-interface {v10, v11}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@4d
    move-result-object v2

    #@4e
    .line 705
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@51
    .line 706
    move-object/from16 v0, p5

    #@53
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result-object v10

    #@57
    return-object v10

    #@58
    .line 686
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "mode":I
    .end local v8    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :cond_0
    const/4 v7, 0x2

    #@59
    .restart local v7    # "mode":I
    goto :goto_0

    #@5a
    .line 709
    .restart local v8    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v9    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :catch_0
    move-exception v4

    #@5b
    .line 710
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    #@5d
    new-instance v11, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v12, "exception decrypting data - "

    #@65
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v11

    #@69
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@6c
    move-result-object v12

    #@6d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v11

    #@71
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v11

    #@75
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v10

    #@79
    .line 713
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :cond_1
    sget-object v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7b
    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v10

    #@7f
    if-eqz v10, :cond_2

    #@81
    .line 717
    :try_start_1
    move-object/from16 v0, p3

    #@83
    invoke-direct {p0, v7, v0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    #@86
    move-result-object v2

    #@87
    .line 719
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v0, p5

    #@89
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@8c
    move-result-object v10

    #@8d
    return-object v10

    #@8e
    .line 722
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_1
    move-exception v4

    #@8f
    .line 723
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    #@91
    new-instance v11, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v12, "exception decrypting data - "

    #@99
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v11

    #@9d
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@a0
    move-result-object v12

    #@a1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v11

    #@a5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v11

    #@a9
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v10

    #@ad
    .line 728
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v10, Ljava/io/IOException;

    #@af
    new-instance v11, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v12, "unknown PBE algorithm: "

    #@b7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v11

    #@bb
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v11

    #@bf
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v11

    #@c3
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c6
    throw v10
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 5

    #@0
    .prologue
    .line 249
    new-instance v2, Ljava/util/Hashtable;

    #@2
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 251
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@a
    move-result-object v1

    #@b
    .line 252
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 254
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, "cert"

    #@18
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    goto :goto_0

    #@1c
    .line 257
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@1e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@21
    move-result-object v1

    #@22
    .line 258
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 260
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/lang/String;

    #@2e
    .line 261
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    if-nez v3, :cond_1

    #@34
    .line 263
    const-string/jumbo v3, "key"

    #@37
    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    goto :goto_1

    #@3b
    .line 267
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 273
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@b
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/security/Key;

    #@8
    .line 286
    .local v2, "k":Ljava/security/Key;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@a
    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/security/cert/Certificate;

    #@10
    .line 288
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    #@12
    .line 290
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@14
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    #@16
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@19
    move-result-object v5

    #@1a
    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    #@1d
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 293
    :cond_0
    if-eqz v2, :cond_2

    #@22
    .line 295
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    #@24
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/lang/String;

    #@2a
    .line 296
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2c
    .line 298
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@2e
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    #@34
    .line 300
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    if-eqz v0, :cond_2

    #@36
    .line 302
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@38
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    #@3a
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3d
    move-result-object v5

    #@3e
    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    #@41
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 282
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 313
    if-nez p1, :cond_0

    #@2
    .line 315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "null alias passed to getCertificate."

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 318
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@d
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/security/cert/Certificate;

    #@13
    .line 323
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_1

    #@15
    .line 325
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    #@17
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/String;

    #@1d
    .line 326
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@1f
    .line 328
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@21
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    #@27
    .line 336
    .end local v1    # "id":Ljava/lang/String;
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    :goto_0
    return-object v0

    #@28
    .line 332
    .restart local v1    # "id":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@2a
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    #@30
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 342
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    .line 343
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@8
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@b
    move-result-object v1

    #@c
    .line 345
    .local v1, "k":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 347
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/security/cert/Certificate;

    #@18
    .line 348
    .local v3, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    .line 350
    .local v2, "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 352
    return-object v2

    #@25
    .line 356
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@27
    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@2a
    move-result-object v0

    #@2b
    .line 357
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@2d
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@30
    move-result-object v1

    #@31
    .line 359
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_3

    #@37
    .line 361
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Ljava/security/cert/Certificate;

    #@3d
    .line 362
    .restart local v3    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Ljava/lang/String;

    #@43
    .line 364
    .restart local v2    # "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_2

    #@49
    .line 366
    return-object v2

    #@4a
    .line 370
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :cond_3
    const/4 v4, 0x0

    #@4b
    return-object v4
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 23
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 376
    if-nez p1, :cond_0

    #@2
    .line 378
    new-instance v20, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v21, "null alias passed to getCertificateChain."

    #@7
    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v20

    #@b
    .line 381
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    #@e
    move-result v20

    #@f
    if-nez v20, :cond_1

    #@11
    .line 383
    const/16 v20, 0x0

    #@13
    return-object v20

    #@14
    .line 386
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@17
    move-result-object v6

    #@18
    .line 388
    .local v6, "c":Ljava/security/cert/Certificate;
    if-eqz v6, :cond_8

    #@1a
    .line 390
    new-instance v9, Ljava/util/Vector;

    #@1c
    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    #@1f
    .line 392
    .end local v6    # "c":Ljava/security/cert/Certificate;
    .local v9, "cs":Ljava/util/Vector;
    :goto_0
    if-eqz v6, :cond_6

    #@21
    move-object/from16 v19, v6

    #@23
    .line 394
    check-cast v19, Ljava/security/cert/X509Certificate;

    #@25
    .line 395
    .local v19, "x509c":Ljava/security/cert/X509Certificate;
    const/16 v16, 0x0

    #@27
    .line 397
    .local v16, "nextC":Ljava/security/cert/Certificate;
    sget-object v20, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2c
    move-result-object v20

    #@2d
    invoke-virtual/range {v19 .. v20}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    #@30
    move-result-object v5

    #@31
    .line 398
    .local v5, "bytes":[B
    if-eqz v5, :cond_2

    #@33
    .line 402
    :try_start_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@35
    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@38
    .line 404
    .local v3, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3b
    move-result-object v20

    #@3c
    check-cast v20, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@3e
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@41
    move-result-object v4

    #@42
    .line 405
    .local v4, "authBytes":[B
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@44
    .end local v3    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@47
    .line 407
    .restart local v3    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@4a
    move-result-object v20

    #@4b
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    #@4e
    move-result-object v15

    #@4f
    .line 408
    .local v15, "id":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    #@52
    move-result-object v20

    #@53
    if-eqz v20, :cond_2

    #@55
    .line 410
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@59
    move-object/from16 v20, v0

    #@5b
    new-instance v21, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    #@5d
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    #@60
    move-result-object v22

    #@61
    move-object/from16 v0, v21

    #@63
    move-object/from16 v1, p0

    #@65
    move-object/from16 v2, v22

    #@67
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    #@6a
    invoke-virtual/range {v20 .. v21}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v16

    #@6e
    .end local v16    # "nextC":Ljava/security/cert/Certificate;
    check-cast v16, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 420
    .end local v3    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "authBytes":[B
    .end local v15    # "id":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    :cond_2
    if-nez v16, :cond_4

    #@72
    .line 425
    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    #@75
    move-result-object v14

    #@76
    .line 426
    .local v14, "i":Ljava/security/Principal;
    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@79
    move-result-object v17

    #@7a
    .line 428
    .local v17, "s":Ljava/security/Principal;
    move-object/from16 v0, v17

    #@7c
    invoke-interface {v14, v0}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v20

    #@80
    if-nez v20, :cond_4

    #@82
    .line 430
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@86
    move-object/from16 v20, v0

    #@88
    invoke-virtual/range {v20 .. v20}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@8b
    move-result-object v11

    #@8c
    .line 432
    .local v11, "e":Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8f
    move-result v20

    #@90
    if-eqz v20, :cond_4

    #@92
    .line 434
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@96
    move-object/from16 v20, v0

    #@98
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@9b
    move-result-object v21

    #@9c
    invoke-virtual/range {v20 .. v21}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v8

    #@a0
    check-cast v8, Ljava/security/cert/X509Certificate;

    #@a2
    .line 435
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@a5
    move-result-object v18

    #@a6
    .line 436
    .local v18, "sub":Ljava/security/Principal;
    move-object/from16 v0, v18

    #@a8
    invoke-interface {v0, v14}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v20

    #@ac
    if-eqz v20, :cond_3

    #@ae
    .line 440
    :try_start_1
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@b1
    move-result-object v20

    #@b2
    invoke-virtual/range {v19 .. v20}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@b5
    .line 441
    move-object/from16 v16, v8

    #@b7
    .line 453
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v14    # "i":Ljava/security/Principal;
    .end local v17    # "s":Ljava/security/Principal;
    .end local v18    # "sub":Ljava/security/Principal;
    :cond_4
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@ba
    .line 454
    move-object/from16 v0, v16

    #@bc
    if-eq v0, v6, :cond_5

    #@be
    .line 456
    move-object/from16 v6, v16

    #@c0
    .restart local v6    # "c":Ljava/security/cert/Certificate;
    goto/16 :goto_0

    #@c2
    .line 415
    .end local v6    # "c":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v10

    #@c3
    .line 416
    .local v10, "e":Ljava/io/IOException;
    new-instance v20, Ljava/lang/RuntimeException;

    #@c5
    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@c8
    move-result-object v21

    #@c9
    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v20

    #@cd
    .line 460
    .end local v10    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v6, 0x0

    #@ce
    .local v6, "c":Ljava/security/cert/Certificate;
    goto/16 :goto_0

    #@d0
    .line 464
    .end local v5    # "bytes":[B
    .end local v6    # "c":Ljava/security/cert/Certificate;
    .end local v19    # "x509c":Ljava/security/cert/X509Certificate;
    :cond_6
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    #@d3
    move-result v20

    #@d4
    move/from16 v0, v20

    #@d6
    new-array v7, v0, [Ljava/security/cert/Certificate;

    #@d8
    .line 466
    .local v7, "certChain":[Ljava/security/cert/Certificate;
    const/4 v13, 0x0

    #@d9
    .local v13, "i":I
    :goto_2
    array-length v0, v7

    #@da
    move/from16 v20, v0

    #@dc
    move/from16 v0, v20

    #@de
    if-eq v13, v0, :cond_7

    #@e0
    .line 468
    invoke-virtual {v9, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e3
    move-result-object v20

    #@e4
    check-cast v20, Ljava/security/cert/Certificate;

    #@e6
    aput-object v20, v7, v13

    #@e8
    .line 466
    add-int/lit8 v13, v13, 0x1

    #@ea
    goto :goto_2

    #@eb
    .line 471
    :cond_7
    return-object v7

    #@ec
    .line 474
    .end local v7    # "certChain":[Ljava/security/cert/Certificate;
    .end local v9    # "cs":Ljava/util/Vector;
    .end local v13    # "i":I
    .local v6, "c":Ljava/security/cert/Certificate;
    :cond_8
    const/16 v20, 0x0

    #@ee
    return-object v20

    #@ef
    .line 445
    .end local v6    # "c":Ljava/security/cert/Certificate;
    .restart local v5    # "bytes":[B
    .restart local v8    # "crt":Ljava/security/cert/X509Certificate;
    .restart local v9    # "cs":Ljava/util/Vector;
    .restart local v11    # "e":Ljava/util/Enumeration;
    .restart local v14    # "i":Ljava/security/Principal;
    .restart local v17    # "s":Ljava/security/Principal;
    .restart local v18    # "sub":Ljava/security/Principal;
    .restart local v19    # "x509c":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v12

    #@f0
    .local v12, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 479
    if-nez p1, :cond_0

    #@3
    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "alias == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    if-nez v0, :cond_1

    #@14
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@16
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 485
    return-object v1

    #@1d
    .line 487
    :cond_1
    new-instance v0, Ljava/util/Date;

    #@1f
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@22
    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 495
    if-nez p1, :cond_0

    #@2
    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "null alias passed to getKey."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/security/Key;

    #@13
    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 506
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@b
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 57
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 777
    if-nez p1, :cond_0

    #@2
    .line 779
    return-void

    #@3
    .line 782
    :cond_0
    if-nez p2, :cond_1

    #@5
    .line 784
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v4, "No password supplied for PKCS#12 KeyStore."

    #@a
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 787
    :cond_1
    new-instance v26, Ljava/io/BufferedInputStream;

    #@10
    move-object/from16 v0, v26

    #@12
    move-object/from16 v1, p1

    #@14
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@17
    .line 789
    .local v26, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v3, 0xa

    #@19
    move-object/from16 v0, v26

    #@1b
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    #@1e
    .line 791
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedInputStream;->read()I

    #@21
    move-result v41

    #@22
    .line 793
    .local v41, "head":I
    const/16 v3, 0x30

    #@24
    move/from16 v0, v41

    #@26
    if-eq v0, v3, :cond_2

    #@28
    .line 795
    new-instance v3, Ljava/io/IOException;

    #@2a
    const-string/jumbo v4, "stream does not represent a PKCS12 key store"

    #@2d
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v3

    #@31
    .line 798
    :cond_2
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedInputStream;->reset()V

    #@34
    .line 800
    new-instance v23, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@36
    move-object/from16 v0, v23

    #@38
    move-object/from16 v1, v26

    #@3a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    #@3d
    .line 801
    .local v23, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@40
    move-result-object v49

    #@41
    check-cast v49, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@43
    .line 802
    .local v49, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static/range {v49 .. v49}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    #@46
    move-result-object v24

    #@47
    .line 803
    .local v24, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@4a
    move-result-object v43

    #@4b
    .line 804
    .local v43, "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v31, Ljava/util/Vector;

    #@4d
    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    #@50
    .line 805
    .local v31, "chain":Ljava/util/Vector;
    const/16 v56, 0x0

    #@52
    .line 806
    .local v56, "unmarkedKey":Z
    const/4 v14, 0x0

    #@53
    .line 808
    .local v14, "wrongPKCS12Zero":Z
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@56
    move-result-object v3

    #@57
    if-eqz v3, :cond_5

    #@59
    .line 810
    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    #@5c
    move-result-object v47

    #@5d
    .line 811
    .local v47, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    #@60
    move-result-object v34

    #@61
    .line 812
    .local v34, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@64
    move-result-object v17

    #@65
    .line 813
    .local v17, "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    #@68
    move-result-object v5

    #@69
    .line 814
    .local v5, "salt":[B
    invoke-virtual/range {v47 .. v47}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    #@70
    move-result v6

    #@71
    .line 816
    .local v6, "itCount":I
    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@74
    move-result-object v3

    #@75
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@77
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@7a
    move-result-object v9

    #@7b
    .line 820
    .local v9, "data":[B
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7e
    move-result-object v4

    #@7f
    const/4 v8, 0x0

    #@80
    move-object/from16 v3, p0

    #@82
    move-object/from16 v7, p2

    #@84
    invoke-direct/range {v3 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    #@87
    move-result-object v53

    #@88
    .line 821
    .local v53, "res":[B
    invoke-virtual/range {v34 .. v34}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    #@8b
    move-result-object v35

    #@8c
    .line 823
    .local v35, "dig":[B
    move-object/from16 v0, v53

    #@8e
    move-object/from16 v1, v35

    #@90
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@93
    move-result v3

    #@94
    if-nez v3, :cond_5

    #@96
    .line 825
    move-object/from16 v0, p2

    #@98
    array-length v3, v0

    #@99
    if-lez v3, :cond_3

    #@9b
    .line 827
    new-instance v3, Ljava/io/IOException;

    #@9d
    const-string/jumbo v4, "PKCS12 key store mac invalid - wrong password or corrupted file."

    #@a0
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@a4
    .line 842
    .end local v35    # "dig":[B
    .end local v53    # "res":[B
    :catch_0
    move-exception v36

    #@a5
    .line 843
    .local v36, "e":Ljava/io/IOException;
    throw v36

    #@a6
    .line 831
    .end local v36    # "e":Ljava/io/IOException;
    .restart local v35    # "dig":[B
    .restart local v53    # "res":[B
    :cond_3
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a9
    move-result-object v4

    #@aa
    const/4 v8, 0x1

    #@ab
    move-object/from16 v3, p0

    #@ad
    move-object/from16 v7, p2

    #@af
    invoke-direct/range {v3 .. v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    #@b2
    move-result-object v53

    #@b3
    .line 833
    move-object/from16 v0, v53

    #@b5
    move-object/from16 v1, v35

    #@b7
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@ba
    move-result v3

    #@bb
    if-nez v3, :cond_4

    #@bd
    .line 835
    new-instance v3, Ljava/io/IOException;

    #@bf
    const-string/jumbo v4, "PKCS12 key store mac invalid - wrong password or corrupted file."

    #@c2
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c5
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@c6
    .line 846
    .end local v35    # "dig":[B
    .end local v53    # "res":[B
    :catch_1
    move-exception v37

    #@c7
    .line 847
    .local v37, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    #@c9
    new-instance v4, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v7, "error constructing MAC: "

    #@d1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v4

    #@d5
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@d8
    move-result-object v7

    #@d9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v4

    #@e1
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e4
    throw v3

    #@e5
    .line 838
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v35    # "dig":[B
    .restart local v53    # "res":[B
    :cond_4
    const/4 v14, 0x1

    #@e6
    .line 851
    .end local v5    # "salt":[B
    .end local v6    # "itCount":I
    .end local v9    # "data":[B
    .end local v17    # "algId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v34    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v35    # "dig":[B
    .end local v47    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v53    # "res":[B
    :cond_5
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@e8
    const/4 v4, 0x0

    #@e9
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)V

    #@ec
    move-object/from16 v0, p0

    #@ee
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@f0
    .line 852
    new-instance v3, Ljava/util/Hashtable;

    #@f2
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    #@f9
    .line 854
    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@fc
    move-result-object v3

    #@fd
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ff
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v3

    #@103
    if-eqz v3, :cond_21

    #@105
    .line 856
    new-instance v23, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@107
    .end local v23    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v43 .. v43}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@10a
    move-result-object v3

    #@10b
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@10d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@110
    move-result-object v3

    #@111
    move-object/from16 v0, v23

    #@113
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@116
    .line 858
    .restart local v23    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@119
    move-result-object v3

    #@11a
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    #@11d
    move-result-object v21

    #@11e
    .line 859
    .local v21, "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    #@121
    move-result-object v27

    #@122
    .line 861
    .local v27, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v42, 0x0

    #@124
    .local v42, "i":I
    :goto_0
    move-object/from16 v0, v27

    #@126
    array-length v3, v0

    #@127
    move/from16 v0, v42

    #@129
    if-eq v0, v3, :cond_21

    #@12b
    .line 863
    aget-object v3, v27, v42

    #@12d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@130
    move-result-object v3

    #@131
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@133
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@136
    move-result v3

    #@137
    if-eqz v3, :cond_f

    #@139
    .line 865
    new-instance v33, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    #@13b
    aget-object v3, v27, v42

    #@13d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@140
    move-result-object v3

    #@141
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@143
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@146
    move-result-object v3

    #@147
    move-object/from16 v0, v33

    #@149
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    #@14c
    .line 866
    .local v33, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v33 .. v33}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@14f
    move-result-object v54

    #@150
    check-cast v54, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@152
    .line 868
    .local v54, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v44, 0x0

    #@154
    .local v44, "j":I
    :goto_1
    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@157
    move-result v3

    #@158
    move/from16 v0, v44

    #@15a
    if-eq v0, v3, :cond_20

    #@15c
    .line 870
    move-object/from16 v0, v54

    #@15e
    move/from16 v1, v44

    #@160
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@163
    move-result-object v3

    #@164
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@167
    move-result-object v22

    #@168
    .line 871
    .local v22, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16b
    move-result-object v3

    #@16c
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16e
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v3

    #@172
    if-eqz v3, :cond_d

    #@174
    .line 873
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@177
    move-result-object v3

    #@178
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    #@17b
    move-result-object v39

    #@17c
    .line 874
    .local v39, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@17f
    move-result-object v3

    #@180
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    #@183
    move-result-object v4

    #@184
    move-object/from16 v0, p0

    #@186
    move-object/from16 v1, p2

    #@188
    invoke-virtual {v0, v3, v4, v1, v14}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    #@18b
    move-result-object v52

    #@18c
    .local v52, "privKey":Ljava/security/PrivateKey;
    move-object/from16 v25, v52

    #@18e
    .line 879
    check-cast v25, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@190
    .line 880
    .local v25, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v18, 0x0

    #@192
    .line 881
    .local v18, "alias":Ljava/lang/String;
    const/16 v46, 0x0

    #@194
    .line 883
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@197
    move-result-object v3

    #@198
    if-eqz v3, :cond_a

    #@19a
    .line 885
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@19d
    move-result-object v3

    #@19e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@1a1
    move-result-object v38

    #@1a2
    .line 886
    .end local v18    # "alias":Ljava/lang/String;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v38, "e":Ljava/util/Enumeration;
    :cond_6
    :goto_2
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1a5
    move-result v3

    #@1a6
    if-eqz v3, :cond_a

    #@1a8
    .line 888
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1ab
    move-result-object v55

    #@1ac
    check-cast v55, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1ae
    .line 889
    .local v55, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    #@1af
    move-object/from16 v0, v55

    #@1b1
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1b4
    move-result-object v16

    #@1b5
    check-cast v16, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1b7
    .line 890
    .local v16, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    #@1b8
    move-object/from16 v0, v55

    #@1ba
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1bd
    move-result-object v20

    #@1be
    check-cast v20, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1c0
    .line 891
    .local v20, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v19, 0x0

    #@1c2
    .line 893
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@1c5
    move-result v3

    #@1c6
    if-lez v3, :cond_8

    #@1c8
    .line 895
    const/4 v3, 0x0

    #@1c9
    move-object/from16 v0, v20

    #@1cb
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1ce
    move-result-object v19

    #@1cf
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1d1
    .line 897
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v25

    #@1d3
    move-object/from16 v1, v16

    #@1d5
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d8
    move-result-object v40

    #@1d9
    .line 898
    .local v40, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v40, :cond_7

    #@1db
    .line 901
    invoke-interface/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@1de
    move-result-object v3

    #@1df
    move-object/from16 v0, v19

    #@1e1
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@1e4
    move-result v3

    #@1e5
    if-nez v3, :cond_8

    #@1e7
    .line 903
    new-instance v3, Ljava/io/IOException;

    #@1e9
    .line 904
    const-string/jumbo v4, "attempt to add existing attribute with different value"

    #@1ec
    .line 903
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1ef
    throw v3

    #@1f0
    .line 909
    :cond_7
    move-object/from16 v0, v25

    #@1f2
    move-object/from16 v1, v16

    #@1f4
    move-object/from16 v2, v19

    #@1f6
    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1f9
    .line 913
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_8
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1fb
    move-object/from16 v0, v16

    #@1fd
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@200
    move-result v3

    #@201
    if-eqz v3, :cond_9

    #@203
    .line 915
    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@205
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@208
    move-result-object v18

    #@209
    .line 916
    .local v18, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20b
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@20d
    move-object/from16 v0, v18

    #@20f
    move-object/from16 v1, v52

    #@211
    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@214
    goto :goto_2

    #@215
    .line 918
    .end local v18    # "alias":Ljava/lang/String;
    :cond_9
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@217
    move-object/from16 v0, v16

    #@219
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@21c
    move-result v3

    #@21d
    if-eqz v3, :cond_6

    #@21f
    move-object/from16 v46, v19

    #@221
    .line 920
    check-cast v46, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@223
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto/16 :goto_2

    #@225
    .line 925
    .end local v16    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v38    # "e":Ljava/util/Enumeration;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_a
    if-eqz v46, :cond_c

    #@227
    .line 927
    new-instance v48, Ljava/lang/String;

    #@229
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@22c
    move-result-object v3

    #@22d
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@230
    move-result-object v3

    #@231
    move-object/from16 v0, v48

    #@233
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #@236
    .line 929
    .local v48, "name":Ljava/lang/String;
    if-nez v18, :cond_b

    #@238
    .line 931
    move-object/from16 v0, p0

    #@23a
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@23c
    move-object/from16 v0, v48

    #@23e
    move-object/from16 v1, v52

    #@240
    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@243
    .line 868
    .end local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v39    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v48    # "name":Ljava/lang/String;
    .end local v52    # "privKey":Ljava/security/PrivateKey;
    :goto_3
    add-int/lit8 v44, v44, 0x1

    #@245
    goto/16 :goto_1

    #@247
    .line 935
    .restart local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v39    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v48    # "name":Ljava/lang/String;
    .restart local v52    # "privKey":Ljava/security/PrivateKey;
    :cond_b
    move-object/from16 v0, p0

    #@249
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    #@24b
    move-object/from16 v0, v18

    #@24d
    move-object/from16 v1, v48

    #@24f
    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@252
    goto :goto_3

    #@253
    .line 940
    .end local v48    # "name":Ljava/lang/String;
    :cond_c
    const/16 v56, 0x1

    #@255
    .line 941
    move-object/from16 v0, p0

    #@257
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@259
    const-string/jumbo v4, "unmarked"

    #@25c
    move-object/from16 v0, v52

    #@25e
    invoke-virtual {v3, v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@261
    goto :goto_3

    #@262
    .line 944
    .end local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v39    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v52    # "privKey":Ljava/security/PrivateKey;
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@265
    move-result-object v3

    #@266
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@268
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@26b
    move-result v3

    #@26c
    if-eqz v3, :cond_e

    #@26e
    .line 946
    move-object/from16 v0, v31

    #@270
    move-object/from16 v1, v22

    #@272
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@275
    goto :goto_3

    #@276
    .line 950
    :cond_e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@278
    new-instance v4, Ljava/lang/StringBuilder;

    #@27a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27d
    const-string/jumbo v7, "extra in data "

    #@280
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v4

    #@284
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@287
    move-result-object v7

    #@288
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v4

    #@28c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28f
    move-result-object v4

    #@290
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@293
    .line 951
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@295
    invoke-static/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@298
    move-result-object v4

    #@299
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29c
    goto :goto_3

    #@29d
    .line 955
    .end local v22    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v33    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v44    # "j":I
    .end local v54    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_f
    aget-object v3, v27, v42

    #@29f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a2
    move-result-object v3

    #@2a3
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a5
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@2a8
    move-result v3

    #@2a9
    if-eqz v3, :cond_1f

    #@2ab
    .line 957
    aget-object v3, v27, v42

    #@2ad
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2b0
    move-result-object v3

    #@2b1
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    #@2b4
    move-result-object v32

    #@2b5
    .line 958
    .local v32, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2b8
    move-result-object v12

    #@2b9
    .line 959
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2bc
    move-result-object v3

    #@2bd
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@2c0
    move-result-object v15

    #@2c1
    .line 958
    const/4 v11, 0x0

    #@2c2
    move-object/from16 v10, p0

    #@2c4
    move-object/from16 v13, p2

    #@2c6
    invoke-virtual/range {v10 .. v15}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    #@2c9
    move-result-object v50

    #@2ca
    .line 960
    .local v50, "octets":[B
    invoke-static/range {v50 .. v50}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@2cd
    move-result-object v54

    #@2ce
    check-cast v54, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2d0
    .line 962
    .restart local v54    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v44, 0x0

    #@2d2
    .restart local v44    # "j":I
    :goto_4
    invoke-virtual/range {v54 .. v54}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@2d5
    move-result v3

    #@2d6
    move/from16 v0, v44

    #@2d8
    if-eq v0, v3, :cond_20

    #@2da
    .line 964
    move-object/from16 v0, v54

    #@2dc
    move/from16 v1, v44

    #@2de
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2e1
    move-result-object v3

    #@2e2
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@2e5
    move-result-object v22

    #@2e6
    .line 966
    .restart local v22    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2e9
    move-result-object v3

    #@2ea
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ec
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@2ef
    move-result v3

    #@2f0
    if-eqz v3, :cond_10

    #@2f2
    .line 968
    move-object/from16 v0, v31

    #@2f4
    move-object/from16 v1, v22

    #@2f6
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2f9
    .line 962
    :goto_5
    add-int/lit8 v44, v44, 0x1

    #@2fb
    goto :goto_4

    #@2fc
    .line 970
    :cond_10
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2ff
    move-result-object v3

    #@300
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@302
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@305
    move-result v3

    #@306
    if-eqz v3, :cond_17

    #@308
    .line 972
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@30b
    move-result-object v3

    #@30c
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    #@30f
    move-result-object v39

    #@310
    .line 973
    .restart local v39    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@313
    move-result-object v3

    #@314
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    #@317
    move-result-object v4

    #@318
    move-object/from16 v0, p0

    #@31a
    move-object/from16 v1, p2

    #@31c
    invoke-virtual {v0, v3, v4, v1, v14}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    #@31f
    move-result-object v52

    #@320
    .restart local v52    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v25, v52

    #@322
    .line 978
    check-cast v25, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@324
    .line 979
    .restart local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v18, 0x0

    #@326
    .line 980
    .local v18, "alias":Ljava/lang/String;
    const/16 v46, 0x0

    #@328
    .line 982
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@32b
    move-result-object v3

    #@32c
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@32f
    move-result-object v38

    #@330
    .line 983
    .end local v18    # "alias":Ljava/lang/String;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v38    # "e":Ljava/util/Enumeration;
    :cond_11
    :goto_6
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@333
    move-result v3

    #@334
    if-eqz v3, :cond_15

    #@336
    .line 985
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@339
    move-result-object v55

    #@33a
    check-cast v55, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@33c
    .line 986
    .restart local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    #@33d
    move-object/from16 v0, v55

    #@33f
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@342
    move-result-object v16

    #@343
    check-cast v16, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@345
    .line 987
    .restart local v16    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    #@346
    move-object/from16 v0, v55

    #@348
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@34b
    move-result-object v20

    #@34c
    check-cast v20, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@34e
    .line 988
    .restart local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v19, 0x0

    #@350
    .line 990
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@353
    move-result v3

    #@354
    if-lez v3, :cond_13

    #@356
    .line 992
    const/4 v3, 0x0

    #@357
    move-object/from16 v0, v20

    #@359
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@35c
    move-result-object v19

    #@35d
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@35f
    .line 994
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v25

    #@361
    move-object/from16 v1, v16

    #@363
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@366
    move-result-object v40

    #@367
    .line 995
    .restart local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v40, :cond_12

    #@369
    .line 998
    invoke-interface/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@36c
    move-result-object v3

    #@36d
    move-object/from16 v0, v19

    #@36f
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@372
    move-result v3

    #@373
    if-nez v3, :cond_13

    #@375
    .line 1000
    new-instance v3, Ljava/io/IOException;

    #@377
    .line 1001
    const-string/jumbo v4, "attempt to add existing attribute with different value"

    #@37a
    .line 1000
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37d
    throw v3

    #@37e
    .line 1006
    :cond_12
    move-object/from16 v0, v25

    #@380
    move-object/from16 v1, v16

    #@382
    move-object/from16 v2, v19

    #@384
    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@387
    .line 1010
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_13
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@389
    move-object/from16 v0, v16

    #@38b
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@38e
    move-result v3

    #@38f
    if-eqz v3, :cond_14

    #@391
    .line 1012
    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@393
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@396
    move-result-object v18

    #@397
    .line 1013
    .local v18, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@399
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@39b
    move-object/from16 v0, v18

    #@39d
    move-object/from16 v1, v52

    #@39f
    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3a2
    goto :goto_6

    #@3a3
    .line 1015
    .end local v18    # "alias":Ljava/lang/String;
    :cond_14
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a5
    move-object/from16 v0, v16

    #@3a7
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@3aa
    move-result v3

    #@3ab
    if-eqz v3, :cond_11

    #@3ad
    move-object/from16 v46, v19

    #@3af
    .line 1017
    check-cast v46, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@3b1
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto/16 :goto_6

    #@3b3
    .line 1021
    .end local v16    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_15
    new-instance v48, Ljava/lang/String;

    #@3b5
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@3b8
    move-result-object v3

    #@3b9
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@3bc
    move-result-object v3

    #@3bd
    move-object/from16 v0, v48

    #@3bf
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #@3c2
    .line 1023
    .restart local v48    # "name":Ljava/lang/String;
    if-nez v18, :cond_16

    #@3c4
    .line 1025
    move-object/from16 v0, p0

    #@3c6
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@3c8
    move-object/from16 v0, v48

    #@3ca
    move-object/from16 v1, v52

    #@3cc
    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@3cf
    goto/16 :goto_5

    #@3d1
    .line 1029
    :cond_16
    move-object/from16 v0, p0

    #@3d3
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    #@3d5
    move-object/from16 v0, v18

    #@3d7
    move-object/from16 v1, v48

    #@3d9
    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3dc
    goto/16 :goto_5

    #@3de
    .line 1032
    .end local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v38    # "e":Ljava/util/Enumeration;
    .end local v39    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v48    # "name":Ljava/lang/String;
    .end local v52    # "privKey":Ljava/security/PrivateKey;
    :cond_17
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e1
    move-result-object v3

    #@3e2
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e4
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@3e7
    move-result v3

    #@3e8
    if-eqz v3, :cond_1e

    #@3ea
    .line 1034
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3ed
    move-result-object v3

    #@3ee
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    #@3f1
    move-result-object v45

    #@3f2
    .line 1035
    .local v45, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v45 .. v45}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    #@3f5
    move-result-object v52

    #@3f6
    .restart local v52    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v25, v52

    #@3f8
    .line 1040
    check-cast v25, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@3fa
    .line 1041
    .restart local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v18, 0x0

    #@3fc
    .line 1042
    .local v18, "alias":Ljava/lang/String;
    const/16 v46, 0x0

    #@3fe
    .line 1044
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@401
    move-result-object v3

    #@402
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@405
    move-result-object v38

    #@406
    .line 1045
    .end local v18    # "alias":Ljava/lang/String;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v38    # "e":Ljava/util/Enumeration;
    :cond_18
    :goto_7
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@409
    move-result v3

    #@40a
    if-eqz v3, :cond_1c

    #@40c
    .line 1047
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@40f
    move-result-object v3

    #@410
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@413
    move-result-object v55

    #@414
    .line 1048
    .restart local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    #@415
    move-object/from16 v0, v55

    #@417
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@41a
    move-result-object v3

    #@41b
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@41e
    move-result-object v16

    #@41f
    .line 1049
    .restart local v16    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    #@420
    move-object/from16 v0, v55

    #@422
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@425
    move-result-object v3

    #@426
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@429
    move-result-object v20

    #@42a
    .line 1050
    .restart local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v19, 0x0

    #@42c
    .line 1052
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@42f
    move-result v3

    #@430
    if-lez v3, :cond_18

    #@432
    .line 1054
    const/4 v3, 0x0

    #@433
    move-object/from16 v0, v20

    #@435
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@438
    move-result-object v19

    #@439
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@43b
    .line 1056
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v25

    #@43d
    move-object/from16 v1, v16

    #@43f
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@442
    move-result-object v40

    #@443
    .line 1057
    .restart local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v40, :cond_19

    #@445
    .line 1060
    invoke-interface/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@448
    move-result-object v3

    #@449
    move-object/from16 v0, v19

    #@44b
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@44e
    move-result v3

    #@44f
    if-nez v3, :cond_1a

    #@451
    .line 1062
    new-instance v3, Ljava/io/IOException;

    #@453
    .line 1063
    const-string/jumbo v4, "attempt to add existing attribute with different value"

    #@456
    .line 1062
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@459
    throw v3

    #@45a
    .line 1068
    :cond_19
    move-object/from16 v0, v25

    #@45c
    move-object/from16 v1, v16

    #@45e
    move-object/from16 v2, v19

    #@460
    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@463
    .line 1071
    :cond_1a
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@465
    move-object/from16 v0, v16

    #@467
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@46a
    move-result v3

    #@46b
    if-eqz v3, :cond_1b

    #@46d
    move-object/from16 v3, v19

    #@46f
    .line 1073
    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@471
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@474
    move-result-object v18

    #@475
    .line 1074
    .local v18, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    #@477
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@479
    move-object/from16 v0, v18

    #@47b
    move-object/from16 v1, v52

    #@47d
    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@480
    goto :goto_7

    #@481
    .line 1076
    .end local v18    # "alias":Ljava/lang/String;
    :cond_1b
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@483
    move-object/from16 v0, v16

    #@485
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@488
    move-result v3

    #@489
    if-eqz v3, :cond_18

    #@48b
    move-object/from16 v46, v19

    #@48d
    .line 1078
    check-cast v46, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@48f
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto/16 :goto_7

    #@491
    .line 1083
    .end local v16    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1c
    new-instance v48, Ljava/lang/String;

    #@493
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@496
    move-result-object v3

    #@497
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@49a
    move-result-object v3

    #@49b
    move-object/from16 v0, v48

    #@49d
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #@4a0
    .line 1085
    .restart local v48    # "name":Ljava/lang/String;
    if-nez v18, :cond_1d

    #@4a2
    .line 1087
    move-object/from16 v0, p0

    #@4a4
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@4a6
    move-object/from16 v0, v48

    #@4a8
    move-object/from16 v1, v52

    #@4aa
    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@4ad
    goto/16 :goto_5

    #@4af
    .line 1091
    :cond_1d
    move-object/from16 v0, p0

    #@4b1
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    #@4b3
    move-object/from16 v0, v18

    #@4b5
    move-object/from16 v1, v48

    #@4b7
    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4ba
    goto/16 :goto_5

    #@4bc
    .line 1096
    .end local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v38    # "e":Ljava/util/Enumeration;
    .end local v45    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v48    # "name":Ljava/lang/String;
    .end local v52    # "privKey":Ljava/security/PrivateKey;
    :cond_1e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4be
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c3
    const-string/jumbo v7, "extra in encryptedData "

    #@4c6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c9
    move-result-object v4

    #@4ca
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4cd
    move-result-object v7

    #@4ce
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v4

    #@4d2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d5
    move-result-object v4

    #@4d6
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4d9
    .line 1097
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4db
    invoke-static/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@4de
    move-result-object v4

    #@4df
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e2
    goto/16 :goto_5

    #@4e4
    .line 1103
    .end local v22    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v32    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v44    # "j":I
    .end local v50    # "octets":[B
    .end local v54    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4e6
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4eb
    const-string/jumbo v7, "extra "

    #@4ee
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f1
    move-result-object v4

    #@4f2
    aget-object v7, v27, v42

    #@4f4
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4f7
    move-result-object v7

    #@4f8
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@4fb
    move-result-object v7

    #@4fc
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ff
    move-result-object v4

    #@500
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@503
    move-result-object v4

    #@504
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@507
    .line 1104
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@509
    new-instance v4, Ljava/lang/StringBuilder;

    #@50b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50e
    const-string/jumbo v7, "extra "

    #@511
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@514
    move-result-object v4

    #@515
    aget-object v7, v27, v42

    #@517
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@51a
    move-result-object v7

    #@51b
    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    #@51e
    move-result-object v7

    #@51f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@522
    move-result-object v4

    #@523
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@526
    move-result-object v4

    #@527
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@52a
    .line 861
    :cond_20
    add-int/lit8 v42, v42, 0x1

    #@52c
    goto/16 :goto_0

    #@52e
    .line 1109
    .end local v21    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v27    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v42    # "i":I
    :cond_21
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@530
    const/4 v4, 0x0

    #@531
    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)V

    #@534
    move-object/from16 v0, p0

    #@536
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@538
    .line 1110
    new-instance v3, Ljava/util/Hashtable;

    #@53a
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@53d
    move-object/from16 v0, p0

    #@53f
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@541
    .line 1111
    new-instance v3, Ljava/util/Hashtable;

    #@543
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@546
    move-object/from16 v0, p0

    #@548
    iput-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@54a
    .line 1113
    const/16 v42, 0x0

    #@54c
    .restart local v42    # "i":I
    :goto_8
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    #@54f
    move-result v3

    #@550
    move/from16 v0, v42

    #@552
    if-eq v0, v3, :cond_2b

    #@554
    .line 1115
    move-object/from16 v0, v31

    #@556
    move/from16 v1, v42

    #@558
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@55b
    move-result-object v22

    #@55c
    check-cast v22, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    #@55e
    .line 1116
    .restart local v22    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@561
    move-result-object v3

    #@562
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    #@565
    move-result-object v29

    #@566
    .line 1118
    .local v29, "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@569
    move-result-object v3

    #@56a
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@56c
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@56f
    move-result v3

    #@570
    if-nez v3, :cond_22

    #@572
    .line 1120
    new-instance v3, Ljava/lang/RuntimeException;

    #@574
    new-instance v4, Ljava/lang/StringBuilder;

    #@576
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@579
    const-string/jumbo v7, "Unsupported certificate type: "

    #@57c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57f
    move-result-object v4

    #@580
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@583
    move-result-object v7

    #@584
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@587
    move-result-object v4

    #@588
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58b
    move-result-object v4

    #@58c
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@58f
    throw v3

    #@590
    .line 1127
    :cond_22
    :try_start_2
    new-instance v28, Ljava/io/ByteArrayInputStream;

    #@592
    .line 1128
    invoke-virtual/range {v29 .. v29}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@595
    move-result-object v3

    #@596
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@598
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@59b
    move-result-object v3

    #@59c
    .line 1127
    move-object/from16 v0, v28

    #@59e
    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5a1
    .line 1129
    .local v28, "cIn":Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    #@5a3
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    #@5a5
    move-object/from16 v0, v28

    #@5a7
    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@5aa
    move-result-object v30

    #@5ab
    .line 1139
    .local v30, "cert":Ljava/security/cert/Certificate;
    const/16 v46, 0x0

    #@5ad
    .line 1140
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/16 v18, 0x0

    #@5af
    .line 1142
    .local v18, "alias":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5b2
    move-result-object v3

    #@5b3
    if-eqz v3, :cond_27

    #@5b5
    .line 1144
    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5b8
    move-result-object v3

    #@5b9
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    #@5bc
    move-result-object v38

    #@5bd
    .line 1145
    .end local v18    # "alias":Ljava/lang/String;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v38    # "e":Ljava/util/Enumeration;
    :cond_23
    :goto_9
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5c0
    move-result v3

    #@5c1
    if-eqz v3, :cond_27

    #@5c3
    .line 1147
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5c6
    move-result-object v3

    #@5c7
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5ca
    move-result-object v55

    #@5cb
    .line 1148
    .restart local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    #@5cc
    move-object/from16 v0, v55

    #@5ce
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5d1
    move-result-object v3

    #@5d2
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5d5
    move-result-object v51

    #@5d6
    .line 1149
    .local v51, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    #@5d7
    move-object/from16 v0, v55

    #@5d9
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5dc
    move-result-object v3

    #@5dd
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5e0
    move-result-object v20

    #@5e1
    .line 1151
    .restart local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    #@5e4
    move-result v3

    #@5e5
    if-lez v3, :cond_23

    #@5e7
    .line 1153
    const/4 v3, 0x0

    #@5e8
    move-object/from16 v0, v20

    #@5ea
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5ed
    move-result-object v19

    #@5ee
    check-cast v19, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@5f0
    .line 1154
    .restart local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/16 v25, 0x0

    #@5f2
    .line 1156
    .local v25, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v30

    #@5f4
    instance-of v3, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@5f6
    if-eqz v3, :cond_25

    #@5f8
    move-object/from16 v25, v30

    #@5fa
    .line 1158
    check-cast v25, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    #@5fc
    .line 1160
    .local v25, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v25

    #@5fe
    move-object/from16 v1, v51

    #@600
    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@603
    move-result-object v40

    #@604
    .line 1161
    .restart local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v40, :cond_24

    #@606
    .line 1164
    invoke-interface/range {v40 .. v40}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@609
    move-result-object v3

    #@60a
    move-object/from16 v0, v19

    #@60c
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    #@60f
    move-result v3

    #@610
    if-nez v3, :cond_25

    #@612
    .line 1166
    new-instance v3, Ljava/io/IOException;

    #@614
    .line 1167
    const-string/jumbo v4, "attempt to add existing attribute with different value"

    #@617
    .line 1166
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@61a
    throw v3

    #@61b
    .line 1132
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v28    # "cIn":Ljava/io/ByteArrayInputStream;
    .end local v30    # "cert":Ljava/security/cert/Certificate;
    .end local v38    # "e":Ljava/util/Enumeration;
    .end local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v51    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v37

    #@61c
    .line 1133
    .restart local v37    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@61e
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@621
    move-result-object v4

    #@622
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@625
    throw v3

    #@626
    .line 1172
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v28    # "cIn":Ljava/io/ByteArrayInputStream;
    .restart local v30    # "cert":Ljava/security/cert/Certificate;
    .restart local v38    # "e":Ljava/util/Enumeration;
    .restart local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .restart local v51    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_24
    move-object/from16 v0, v25

    #@628
    move-object/from16 v1, v51

    #@62a
    move-object/from16 v2, v19

    #@62c
    invoke-interface {v0, v1, v2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@62f
    .line 1176
    .end local v25    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v40    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_25
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@631
    move-object/from16 v0, v51

    #@633
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@636
    move-result v3

    #@637
    if-eqz v3, :cond_26

    #@639
    .line 1178
    check-cast v19, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    #@63b
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    #@63e
    move-result-object v18

    #@63f
    .local v18, "alias":Ljava/lang/String;
    goto/16 :goto_9

    #@641
    .line 1180
    .end local v18    # "alias":Ljava/lang/String;
    .restart local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_26
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@643
    move-object/from16 v0, v51

    #@645
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@648
    move-result v3

    #@649
    if-eqz v3, :cond_23

    #@64b
    move-object/from16 v46, v19

    #@64d
    .line 1182
    check-cast v46, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@64f
    .local v46, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto/16 :goto_9

    #@651
    .line 1188
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v20    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v38    # "e":Ljava/util/Enumeration;
    .end local v46    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v51    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v55    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_27
    move-object/from16 v0, p0

    #@653
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@655
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    #@657
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@65a
    move-result-object v7

    #@65b
    move-object/from16 v0, p0

    #@65d
    invoke-direct {v4, v0, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    #@660
    move-object/from16 v0, v30

    #@662
    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@665
    .line 1190
    if-eqz v56, :cond_29

    #@667
    .line 1192
    move-object/from16 v0, p0

    #@669
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@66b
    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    #@66e
    move-result v3

    #@66f
    if-eqz v3, :cond_28

    #@671
    .line 1194
    new-instance v48, Ljava/lang/String;

    #@673
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@676
    move-result-object v3

    #@677
    move-object/from16 v0, p0

    #@679
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    #@67c
    move-result-object v3

    #@67d
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    #@680
    move-result-object v3

    #@681
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@684
    move-result-object v3

    #@685
    move-object/from16 v0, v48

    #@687
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #@68a
    .line 1196
    .restart local v48    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@68c
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@68e
    move-object/from16 v0, v48

    #@690
    move-object/from16 v1, v30

    #@692
    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@695
    .line 1197
    move-object/from16 v0, p0

    #@697
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@699
    move-object/from16 v0, p0

    #@69b
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@69d
    const-string/jumbo v7, "unmarked"

    #@6a0
    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    #@6a3
    move-result-object v4

    #@6a4
    move-object/from16 v0, v48

    #@6a6
    invoke-virtual {v3, v0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@6a9
    .line 1113
    .end local v48    # "name":Ljava/lang/String;
    :cond_28
    :goto_a
    add-int/lit8 v42, v42, 0x1

    #@6ab
    goto/16 :goto_8

    #@6ad
    .line 1205
    :cond_29
    if-eqz v46, :cond_2a

    #@6af
    .line 1207
    new-instance v48, Ljava/lang/String;

    #@6b1
    invoke-virtual/range {v46 .. v46}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@6b4
    move-result-object v3

    #@6b5
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@6b8
    move-result-object v3

    #@6b9
    move-object/from16 v0, v48

    #@6bb
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #@6be
    .line 1209
    .restart local v48    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6c0
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    #@6c2
    move-object/from16 v0, v48

    #@6c4
    move-object/from16 v1, v30

    #@6c6
    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c9
    .line 1211
    .end local v48    # "name":Ljava/lang/String;
    :cond_2a
    if-eqz v18, :cond_28

    #@6cb
    .line 1213
    move-object/from16 v0, p0

    #@6cd
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@6cf
    move-object/from16 v0, v18

    #@6d1
    move-object/from16 v1, v30

    #@6d3
    invoke-virtual {v3, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@6d6
    goto :goto_a

    #@6d7
    .line 775
    .end local v22    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v28    # "cIn":Ljava/io/ByteArrayInputStream;
    .end local v29    # "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v30    # "cert":Ljava/security/cert/Certificate;
    :cond_2b
    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 522
    new-instance v0, Ljava/security/KeyStoreException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "There is a key entry with the name "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "."

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@2b
    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2e
    .line 526
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@30
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    #@32
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    #@39
    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 518
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 545
    instance-of v1, p2, Ljava/security/PrivateKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 547
    new-instance v1, Ljava/security/KeyStoreException;

    #@6
    const-string/jumbo v2, "PKCS12 does not support non-PrivateKeys"

    #@9
    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 550
    :cond_0
    instance-of v1, p2, Ljava/security/PrivateKey;

    #@f
    if-eqz v1, :cond_1

    #@11
    if-nez p4, :cond_1

    #@13
    .line 552
    new-instance v1, Ljava/security/KeyStoreException;

    #@15
    const-string/jumbo v2, "no certificate chain for private key"

    #@18
    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 555
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@1e
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 557
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    #@27
    .line 560
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@29
    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 561
    if-eqz p4, :cond_3

    #@2e
    .line 563
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@30
    const/4 v2, 0x0

    #@31
    aget-object v2, p4, v2

    #@33
    invoke-virtual {v1, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@36
    .line 565
    const/4 v0, 0x0

    #@37
    .local v0, "i":I
    :goto_0
    array-length v1, p4

    #@38
    if-eq v0, v1, :cond_3

    #@3a
    .line 567
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    #@3c
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    #@3e
    aget-object v3, p4, v0

    #@40
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@43
    move-result-object v3

    #@44
    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    #@47
    aget-object v3, p4, v0

    #@49
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 565
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 543
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "operation not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public engineSize()I
    .locals 5

    #@0
    .prologue
    .line 574
    new-instance v2, Ljava/util/Hashtable;

    #@2
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 576
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@7
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@a
    move-result-object v1

    #@b
    .line 577
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 579
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    const-string/jumbo v4, "cert"

    #@18
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    goto :goto_0

    #@1c
    .line 582
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    #@1e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    #@21
    move-result-object v1

    #@22
    .line 583
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 585
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/lang/String;

    #@2e
    .line 586
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    if-nez v3, :cond_1

    #@34
    .line 588
    const-string/jumbo v3, "key"

    #@37
    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    goto :goto_1

    #@3b
    .line 592
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    #@3e
    move-result v3

    #@3f
    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1268
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    #@4
    .line 1266
    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1223
    if-nez p1, :cond_0

    #@2
    .line 1225
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "\'param\' arg cannot be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 1228
    :cond_0
    instance-of v3, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    #@d
    if-nez v3, :cond_1

    #@f
    instance-of v3, p1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    #@11
    :goto_0
    if-nez v3, :cond_2

    #@13
    .line 1230
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15
    .line 1231
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "No support for \'param\' of type "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    .line 1230
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 1228
    :cond_1
    const/4 v3, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1236
    :cond_2
    instance-of v3, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    #@39
    if-eqz v3, :cond_3

    #@3b
    move-object v0, p1

    #@3c
    .line 1238
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    #@3e
    .line 1247
    .local v0, "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :goto_1
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    #@41
    move-result-object v2

    #@42
    .line 1248
    .local v2, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v2, :cond_4

    #@44
    .line 1250
    const/4 v1, 0x0

    #@45
    .line 1262
    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :goto_2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->isForDEREncoding()Z

    #@4c
    move-result v4

    #@4d
    invoke-direct {p0, v3, v1, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    #@50
    .line 1221
    return-void

    #@51
    .line 1242
    .end local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :cond_3
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    #@53
    move-object v3, p1

    #@54
    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    #@56
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    #@59
    move-result-object v4

    #@5a
    .line 1243
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    #@5d
    move-result-object v5

    #@5e
    move-object v3, p1

    #@5f
    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    #@61
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    #@64
    move-result v3

    #@65
    .line 1242
    invoke-direct {v0, v4, v5, v3}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    #@68
    .restart local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    goto :goto_1

    #@69
    .line 1252
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_4
    instance-of v3, v2, Ljava/security/KeyStore$PasswordProtection;

    #@6b
    if-eqz v3, :cond_5

    #@6d
    .line 1254
    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    #@6f
    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    #@72
    move-result-object v1

    #@73
    .local v1, "password":[C
    goto :goto_2

    #@74
    .line 1258
    .end local v1    # "password":[C
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@76
    .line 1259
    new-instance v4, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v5, "No support for protection parameter of type "

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    .line 1258
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@95
    throw v3
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "rand"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@2
    .line 242
    return-void
.end method

.method protected unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 12
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "data"    # [B
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3
    move-result-object v1

    #@4
    .line 605
    .local v1, "algorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_0
    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    #@9
    move-result v9

    #@a
    if-eqz v9, :cond_0

    #@c
    .line 607
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@f
    move-result-object v9

    #@10
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@13
    move-result-object v7

    #@14
    .line 609
    .local v7, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v8, Ljavax/crypto/spec/PBEKeySpec;

    #@16
    invoke-direct {v8, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    #@19
    .line 612
    .local v8, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@1b
    .line 613
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1e
    move-result-object v10

    #@1f
    .line 612
    invoke-interface {v9, v10}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@22
    move-result-object v6

    #@23
    .line 614
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    #@25
    .line 615
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    #@28
    move-result-object v9

    #@29
    .line 616
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    #@30
    move-result v10

    #@31
    .line 614
    invoke-direct {v3, v9, v10}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@34
    .line 618
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v8}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@37
    move-result-object v5

    #@38
    .line 620
    .local v5, "k":Ljavax/crypto/SecretKey;
    move-object v0, v5

    #@39
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    #@3b
    move-object v9, v0

    #@3c
    move/from16 v0, p4

    #@3e
    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    #@41
    .line 622
    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@43
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@46
    move-result-object v10

    #@47
    invoke-interface {v9, v10}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@4a
    move-result-object v2

    #@4b
    .line 624
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x4

    #@4c
    invoke-virtual {v2, v9, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@4f
    .line 627
    const-string/jumbo v9, ""

    #@52
    const/4 v10, 0x2

    #@53
    invoke-virtual {v2, p2, v9, v10}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    #@56
    move-result-object v9

    #@57
    check-cast v9, Ljava/security/PrivateKey;

    #@59
    return-object v9

    #@5a
    .line 629
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "k":Ljavax/crypto/SecretKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v8    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :cond_0
    sget-object v9, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5c
    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v9

    #@60
    if-eqz v9, :cond_1

    #@62
    .line 632
    const/4 v9, 0x4

    #@63
    invoke-direct {p0, v9, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    #@66
    move-result-object v2

    #@67
    .line 635
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    const-string/jumbo v9, ""

    #@6a
    const/4 v10, 0x2

    #@6b
    invoke-virtual {v2, p2, v9, v10}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    #@6e
    move-result-object v9

    #@6f
    check-cast v9, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@71
    return-object v9

    #@72
    .line 639
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v4

    #@73
    .line 640
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    #@75
    new-instance v10, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v11, "exception unwrapping private key - "

    #@7d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@84
    move-result-object v11

    #@85
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v10

    #@89
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v10

    #@8d
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@90
    throw v9

    #@91
    .line 643
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v9, Ljava/io/IOException;

    #@93
    new-instance v10, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v11, "exception unwrapping private key - cannot recognise: "

    #@9b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v10

    #@9f
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v10

    #@a3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v10

    #@a7
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v9
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 653
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    #@2
    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    #@5
    .line 658
    .local v5, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@7
    invoke-interface {v6, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@a
    move-result-object v3

    #@b
    .line 659
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    #@d
    .line 660
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    #@10
    move-result-object v6

    #@11
    .line 661
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    #@18
    move-result v7

    #@19
    .line 659
    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@1c
    .line 663
    .local v1, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    #@1e
    invoke-interface {v6, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@21
    move-result-object v0

    #@22
    .line 665
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@25
    move-result-object v6

    #@26
    const/4 v7, 0x3

    #@27
    invoke-virtual {v0, v7, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@2a
    .line 667
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result-object v4

    #@2e
    .line 674
    .local v4, "out":[B
    return-object v4

    #@2f
    .line 670
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "out":[B
    :catch_0
    move-exception v2

    #@30
    .line 671
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    #@32
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "exception encrypting data - "

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v6
.end method
