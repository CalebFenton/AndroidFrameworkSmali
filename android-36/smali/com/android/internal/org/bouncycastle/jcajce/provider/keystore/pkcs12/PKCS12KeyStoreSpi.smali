.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;
    }
.end annotation


# static fields
.field static final blacklist CERTIFICATE:I = 0x1

.field static final blacklist KEY:I = 0x2

.field static final blacklist KEY_PRIVATE:I = 0x0

.field static final blacklist KEY_PUBLIC:I = 0x1

.field static final blacklist KEY_SECRET:I = 0x2

.field private static final blacklist MIN_ITERATIONS:I = 0xc800

.field static final blacklist NULL:I = 0x0

.field static final blacklist PKCS12_MAX_IT_COUNT_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs12.max_it_count"

.field private static final blacklist SALT_SIZE:I = 0x14

.field static final blacklist SEALED:I = 0x4

.field static final blacklist SECRET:I = 0x3

.field private static final blacklist keySizeProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private blacklist certAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist certFact:Ljava/security/cert/CertificateFactory;

.field private blacklist certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist chainCerts:Ljava/util/Hashtable;

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist itCount:I

.field private blacklist keyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist keyCerts:Ljava/util/Hashtable;

.field private blacklist keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist macAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected blacklist random:Ljava/security/SecureRandom;

.field private blacklist saltLength:I

.field private final blacklist selfHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcreateSubjectKeyId(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 8
    .param p1, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "keyAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "certAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 222
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 138
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 145
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 146
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 147
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 148
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 149
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 167
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 174
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 175
    const v0, 0x19000

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 176
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 223
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 224
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 228
    :try_start_53
    const-string v0, "X.509"

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_5d

    .line 233
    nop

    .line 234
    return-void

    .line 230
    :catch_5d
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist calculatePbeMac(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .registers 10
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
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

    .line 1852
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1856
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1857
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v2, p4, p5}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1858
    invoke-virtual {v1, p6}, Ljavax/crypto/Mac;->update([B)V

    .line 1860
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    return-object v2
.end method

.method private blacklist createCipher(I[CLcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .registers 15
    .param p1, "mode"    # I
    .param p2, "password"    # [C
    .param p3, "algId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
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

    .line 747
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v0

    .line 748
    .local v0, "alg":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v1

    .line 749
    .local v1, "func":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 753
    .local v2, "encScheme":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 756
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 758
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v6

    sget-object v7, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v7

    invoke-direct {v4, p2, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    move-object v6, p2

    .local v4, "key":Ljavax/crypto/SecretKey;
    goto :goto_71

    .line 762
    .end local v4    # "key":Ljavax/crypto/SecretKey;
    :cond_51
    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v8

    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v4, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v9

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    move-object v6, p2

    .end local p2    # "password":[C
    .local v6, "password":[C
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 767
    .restart local v4    # "key":Ljavax/crypto/SecretKey;
    :goto_71
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 769
    .local p2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 770
    .local v5, "encParams":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v7, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v7, :cond_9f

    .line 772
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, p1, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 785
    :cond_9f
    return-object p2
.end method

.method private blacklist createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .registers 13
    .param p1, "certId"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1719
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 1721
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1722
    .local v0, "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1724
    .local v1, "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .line 1725
    .local v2, "cAttrSet":Z
    instance-of v3, p2, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_74

    .line 1727
    move-object v3, p2

    check-cast v3, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1731
    .local v3, "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v3, v4}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    .line 1732
    .local v4, "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1734
    :cond_31
    if-eqz p1, :cond_3d

    .line 1736
    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5, v6}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1740
    :cond_3d
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v5

    .line 1742
    .local v5, "e":Ljava/util/Enumeration;
    :goto_41
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1744
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1750
    .local v6, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v7, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1752
    goto :goto_41

    .line 1755
    :cond_56
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1757
    .local v7, "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v7, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1758
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-interface {v3, v6}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1759
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1761
    const/4 v2, 0x1

    .line 1762
    .end local v6    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_41

    .line 1765
    .end local v3    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v4    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_74
    if-nez v2, :cond_95

    .line 1767
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1769
    .local v3, "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1770
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v5, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1772
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1812
    .end local v3    # "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_95
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v3
.end method

.method private blacklist createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 5
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    .line 241
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 243
    .local v0, "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 245
    .end local v0    # "info":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_12
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error creating key"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist doStore(Ljava/io/OutputStream;[CZ)V
    .registers 32
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "useDEREncoding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1344
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    if-eqz v4, :cond_51b

    .line 1408
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v8, v0

    .line 1410
    .local v8, "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    .line 1412
    .local v9, "ks":Ljava/util/Enumeration;
    :goto_12
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const v2, 0xc800

    const/16 v3, 0x14

    if-eqz v0, :cond_140

    .line 1414
    new-array v0, v3, [B

    .line 1416
    .local v0, "kSalt":[B
    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1418
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1419
    .local v3, "name":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    .line 1420
    .local v5, "privKey":Ljava/security/PrivateKey;
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v6, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1421
    .local v6, "kParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v2

    .line 1422
    .local v2, "kBytes":[B
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1423
    .local v7, "kAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v10, v7, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1424
    .local v10, "kInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/4 v11, 0x0

    .line 1425
    .local v11, "attrSet":Z
    new-instance v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1427
    .local v12, "kName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v13, v5, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v13, :cond_de

    .line 1429
    move-object v13, v5

    check-cast v13, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1433
    .local v13, "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v14, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v13, v14}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    .line 1434
    .local v14, "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    if-eqz v14, :cond_76

    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_73

    goto :goto_76

    :cond_73
    move-object/from16 v16, v0

    goto :goto_82

    .line 1436
    :cond_76
    :goto_76
    sget-object v15, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v0

    .end local v0    # "kSalt":[B
    .local v16, "kSalt":[B
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v15, v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1442
    :goto_82
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v13, v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_9d

    .line 1444
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1446
    .local v0, "ct":Ljava/security/cert/Certificate;
    sget-object v15, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v0

    .end local v0    # "ct":Ljava/security/cert/Certificate;
    .local v17, "ct":Ljava/security/cert/Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-interface {v13, v15, v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1449
    .end local v17    # "ct":Ljava/security/cert/Certificate;
    :cond_9d
    invoke-interface {v13}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1451
    .local v0, "e":Ljava/util/Enumeration;
    :goto_a1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_d9

    .line 1453
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1454
    .local v15, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v17, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v18, v17

    .line 1456
    .local v18, "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v17, "e":Ljava/util/Enumeration;
    invoke-virtual {v0, v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1457
    move-object/from16 v18, v2

    .end local v2    # "kBytes":[B
    .local v18, "kBytes":[B
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-interface {v13, v15}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1459
    const/4 v11, 0x1

    .line 1461
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1462
    .end local v0    # "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v15    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v4, p2

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_a1

    .line 1451
    .end local v17    # "e":Ljava/util/Enumeration;
    .end local v18    # "kBytes":[B
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v2    # "kBytes":[B
    :cond_d9
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v2    # "kBytes":[B
    .restart local v17    # "e":Ljava/util/Enumeration;
    .restart local v18    # "kBytes":[B
    goto :goto_e2

    .line 1427
    .end local v13    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v14    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .end local v16    # "kSalt":[B
    .end local v17    # "e":Ljava/util/Enumeration;
    .end local v18    # "kBytes":[B
    .local v0, "kSalt":[B
    .restart local v2    # "kBytes":[B
    :cond_de
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 1465
    .end local v0    # "kSalt":[B
    .end local v2    # "kBytes":[B
    .restart local v16    # "kSalt":[B
    .restart local v18    # "kBytes":[B
    :goto_e2
    if-nez v11, :cond_129

    .line 1470
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1471
    .local v0, "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 1473
    .local v2, "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1474
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1476
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1478
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1480
    .end local v0    # "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1481
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v13, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1483
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1486
    .end local v2    # "ct":Ljava/security/cert/Certificate;
    .end local v4    # "kSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_129
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    new-instance v13, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v13, v12}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v2, v4, v13}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 1487
    .local v0, "kBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v8, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1488
    .end local v0    # "kBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "privKey":Ljava/security/PrivateKey;
    .end local v6    # "kParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v7    # "kAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v10    # "kInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v11    # "attrSet":Z
    .end local v12    # "kName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "kSalt":[B
    .end local v18    # "kBytes":[B
    move-object/from16 v4, p2

    goto/16 :goto_12

    .line 1490
    :cond_140
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v10, "DER"

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v11

    .line 1491
    .local v11, "keySEncoded":[B
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v12, v0

    .line 1496
    .local v12, "keyString":Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    new-array v13, v3, [B

    .line 1498
    .local v13, "cSalt":[B
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1500
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v14, v0

    .line 1501
    .local v14, "certSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v0, v13, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    move-object v15, v0

    .line 1502
    .local v15, "cParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1503
    .local v3, "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move-object v7, v0

    .line 1505
    .local v7, "doneCerts":Ljava/util/Hashtable;
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1506
    .local v2, "cs":Ljava/util/Enumeration;
    :goto_17b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const-string v4, "Error encoding certificate: "

    if-eqz v0, :cond_2f0

    .line 1510
    :try_start_183
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1511
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5
    :try_end_18d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_183 .. :try_end_18d} :catch_2ca

    .line 1512
    .local v5, "cert":Ljava/security/cert/Certificate;
    const/4 v6, 0x0

    .line 1513
    .local v6, "cAttrSet":Z
    move-object/from16 v16, v2

    .end local v2    # "cs":Ljava/util/Enumeration;
    .local v16, "cs":Ljava/util/Enumeration;
    :try_start_190
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :try_end_192
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_190 .. :try_end_192} :catch_2c0

    move-object/from16 v17, v3

    .end local v3    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v17, "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_194
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move/from16 v18, v6

    .end local v6    # "cAttrSet":Z
    .local v18, "cAttrSet":Z
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;
    :try_end_19a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_194 .. :try_end_19a} :catch_2b8

    .line 1515
    move-object/from16 v19, v8

    .end local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v19, "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_19c
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1516
    .local v2, "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1518
    .local v3, "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v6, v5, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v6, :cond_243

    .line 1520
    move-object v6, v5

    check-cast v6, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1524
    .local v6, "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v6, v8}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    :try_end_1ba
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_19c .. :try_end_1ba} :catch_2b2

    .line 1525
    .local v8, "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    if-eqz v8, :cond_1d3

    move-object/from16 v20, v2

    .end local v2    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .local v20, "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :try_start_1be
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1be .. :try_end_1c6} :catch_1cc

    if-nez v2, :cond_1c9

    goto :goto_1d5

    :cond_1c9
    move-object/from16 v21, v8

    goto :goto_1e1

    .line 1575
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v6    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v8    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .end local v18    # "cAttrSet":Z
    .end local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :catch_1cc
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    goto/16 :goto_2d5

    .line 1525
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v3    # "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v5    # "cert":Ljava/security/cert/Certificate;
    .restart local v6    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v8    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .restart local v18    # "cAttrSet":Z
    :cond_1d3
    move-object/from16 v20, v2

    .line 1527
    .end local v2    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :goto_1d5
    :try_start_1d5
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v8

    .end local v8    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .local v21, "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v8, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v2, v8}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1533
    :goto_1e1
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v6, v2}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2
    :try_end_1e7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1d5 .. :try_end_1e7} :catch_2b2

    if-nez v2, :cond_1f6

    .line 1535
    :try_start_1e9
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1f6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1e9 .. :try_end_1f6} :catch_1cc

    .line 1538
    :cond_1f6
    :try_start_1f6
    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1540
    .local v2, "e":Ljava/util/Enumeration;
    :goto_1fa
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_23a

    .line 1542
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1543
    .local v8, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v22, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v23, v22

    .line 1545
    .local v23, "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v22, v2

    move-object/from16 v2, v23

    .end local v23    # "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v22, "e":Ljava/util/Enumeration;
    invoke-virtual {v2, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_214
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1f6 .. :try_end_214} :catch_2b2

    .line 1546
    move-object/from16 v23, v9

    .end local v9    # "ks":Ljava/util/Enumeration;
    .local v23, "ks":Ljava/util/Enumeration;
    :try_start_216
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERSet;
    :try_end_218
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_216 .. :try_end_218} :catch_235

    move-object/from16 v24, v11

    .end local v11    # "keySEncoded":[B
    .local v24, "keySEncoded":[B
    :try_start_21a
    invoke-interface {v6, v8}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1547
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1549
    const/16 v18, 0x1

    .line 1550
    .end local v2    # "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    goto :goto_1fa

    .line 1575
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v6    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v18    # "cAttrSet":Z
    .end local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v21    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .restart local v11    # "keySEncoded":[B
    :catch_235
    move-exception v0

    move-object/from16 v24, v11

    .end local v11    # "keySEncoded":[B
    .restart local v24    # "keySEncoded":[B
    goto/16 :goto_2d5

    .line 1540
    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .restart local v0    # "name":Ljava/lang/String;
    .local v2, "e":Ljava/util/Enumeration;
    .restart local v3    # "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v5    # "cert":Ljava/security/cert/Certificate;
    .restart local v6    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v9    # "ks":Ljava/util/Enumeration;
    .restart local v11    # "keySEncoded":[B
    .restart local v18    # "cAttrSet":Z
    .restart local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v21    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    :cond_23a
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v9    # "ks":Ljava/util/Enumeration;
    .end local v11    # "keySEncoded":[B
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "ks":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    move/from16 v6, v18

    goto :goto_24b

    .line 1518
    .end local v6    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v21    # "nm":Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .local v2, "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v9    # "ks":Ljava/util/Enumeration;
    .restart local v11    # "keySEncoded":[B
    :cond_243
    move-object/from16 v20, v2

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    .end local v2    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v9    # "ks":Ljava/util/Enumeration;
    .end local v11    # "keySEncoded":[B
    .restart local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v23    # "ks":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    move/from16 v6, v18

    .line 1553
    .end local v18    # "cAttrSet":Z
    .local v6, "cAttrSet":Z
    :goto_24b
    if-nez v6, :cond_28e

    .line 1555
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1557
    .local v2, "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1558
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1559
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1561
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1563
    .end local v2    # "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v8, "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1564
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v9, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1566
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1569
    .end local v8    # "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_28e
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v2, v8, v9, v11}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 1571
    .local v2, "sBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v14, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1573
    invoke-virtual {v7, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_21a .. :try_end_2a4} :catch_2b0

    .line 1578
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v8, v19

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "sBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v3    # "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v6    # "cAttrSet":Z
    .end local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    goto/16 :goto_17b

    .line 1575
    :catch_2b0
    move-exception v0

    goto :goto_2d5

    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .restart local v9    # "ks":Ljava/util/Enumeration;
    .restart local v11    # "keySEncoded":[B
    :catch_2b2
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    .end local v9    # "ks":Ljava/util/Enumeration;
    .end local v11    # "keySEncoded":[B
    .restart local v23    # "ks":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    goto :goto_2d5

    .end local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .local v8, "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9    # "ks":Ljava/util/Enumeration;
    .restart local v11    # "keySEncoded":[B
    :catch_2b8
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    .end local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "ks":Ljava/util/Enumeration;
    .end local v11    # "keySEncoded":[B
    .restart local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v23    # "ks":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    goto :goto_2d5

    .end local v17    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .local v3, "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9    # "ks":Ljava/util/Enumeration;
    .restart local v11    # "keySEncoded":[B
    :catch_2c0
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    .end local v3    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "ks":Ljava/util/Enumeration;
    .end local v11    # "keySEncoded":[B
    .restart local v17    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v23    # "ks":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    goto :goto_2d5

    .end local v16    # "cs":Ljava/util/Enumeration;
    .end local v17    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .local v2, "cs":Ljava/util/Enumeration;
    .restart local v3    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9    # "ks":Ljava/util/Enumeration;
    .restart local v11    # "keySEncoded":[B
    :catch_2ca
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    .line 1577
    .end local v2    # "cs":Ljava/util/Enumeration;
    .end local v3    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "ks":Ljava/util/Enumeration;
    .end local v11    # "keySEncoded":[B
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v16    # "cs":Ljava/util/Enumeration;
    .restart local v17    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v23    # "ks":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    :goto_2d5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1581
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v16    # "cs":Ljava/util/Enumeration;
    .end local v17    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .restart local v2    # "cs":Ljava/util/Enumeration;
    .restart local v3    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9    # "ks":Ljava/util/Enumeration;
    .restart local v11    # "keySEncoded":[B
    :cond_2f0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    .end local v2    # "cs":Ljava/util/Enumeration;
    .end local v3    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v8    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "ks":Ljava/util/Enumeration;
    .end local v11    # "keySEncoded":[B
    .restart local v16    # "cs":Ljava/util/Enumeration;
    .restart local v17    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v23    # "ks":Ljava/util/Enumeration;
    .restart local v24    # "keySEncoded":[B
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1582
    .end local v16    # "cs":Ljava/util/Enumeration;
    .restart local v2    # "cs":Ljava/util/Enumeration;
    :goto_300
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_345

    .line 1586
    :try_start_306
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1587
    .local v0, "certId":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 1589
    .local v3, "cert":Ljava/security/cert/Certificate;
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_31d

    .line 1591
    goto :goto_300

    .line 1594
    :cond_31d
    invoke-direct {v1, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v5

    .line 1596
    .local v5, "sBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v14, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1598
    invoke-virtual {v7, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_327
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_306 .. :try_end_327} :catch_329

    .line 1603
    nop

    .end local v0    # "certId":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "sBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    goto :goto_300

    .line 1600
    :catch_329
    move-exception v0

    .line 1602
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1606
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_345
    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getUsedCertificateSet()Ljava/util/Set;

    move-result-object v8

    .line 1608
    .local v8, "usedSet":Ljava/util/Set;
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    .line 1609
    .end local v2    # "cs":Ljava/util/Enumeration;
    .local v9, "cs":Ljava/util/Enumeration;
    :goto_34f
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_419

    .line 1613
    :try_start_355
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 1614
    .local v0, "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 1616
    .local v2, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36a

    .line 1618
    goto :goto_34f

    .line 1621
    :cond_36a
    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_371

    .line 1623
    goto :goto_34f

    .line 1626
    :cond_371
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 1628
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1629
    .local v3, "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1631
    .local v5, "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v6, v2, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v6, :cond_3e0

    .line 1633
    move-object v6, v2

    check-cast v6, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1634
    .local v6, "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v11

    .line 1636
    .local v11, "e":Ljava/util/Enumeration;
    :goto_391
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_3d9

    .line 1638
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v16

    .line 1644
    .local v18, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v16, v0

    .end local v0    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .local v16, "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v18

    .end local v18    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3b0

    .line 1646
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_391

    .line 1649
    :cond_3b0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1651
    .local v0, "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1652
    move-object/from16 v18, v2

    .end local v2    # "cert":Ljava/security/cert/Certificate;
    .local v18, "cert":Ljava/security/cert/Certificate;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    move-object/from16 v20, v3

    .end local v3    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-interface {v6, v1}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1653
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1654
    .end local v0    # "fSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    goto :goto_391

    .line 1636
    .end local v16    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    .end local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .local v0, "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v2    # "cert":Ljava/security/cert/Certificate;
    .restart local v3    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :cond_3d9
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    .end local v0    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    .end local v3    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v16    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v18    # "cert":Ljava/security/cert/Certificate;
    .restart local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    goto :goto_3e6

    .line 1631
    .end local v6    # "bagAttrs":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v16    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    .end local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v0    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v2    # "cert":Ljava/security/cert/Certificate;
    .restart local v3    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :cond_3e0
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    .line 1658
    .end local v0    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    .end local v3    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v16    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v18    # "cert":Ljava/security/cert/Certificate;
    .restart local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :goto_3e6
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 1660
    .local v0, "sBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v14, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_3f9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_355 .. :try_end_3f9} :catch_3fd

    .line 1665
    .end local v0    # "sBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v5    # "fName":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "certId":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    .end local v20    # "cBag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    move-object/from16 v1, p0

    goto/16 :goto_34f

    .line 1662
    :catch_3fd
    move-exception v0

    .line 1664
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1668
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_419
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v14}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 1669
    .local v6, "certSeqEncoded":[B
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v3, v17

    .end local v17    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v11

    .line 1670
    move-object v2, v3

    move-object/from16 v16, v6

    .end local v3    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "certSeqEncoded":[B
    .local v2, "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v11, "certBytes":[B
    .local v16, "certSeqEncoded":[B
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v4, v11}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v17, v0

    .line 1672
    .local v17, "cInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v12}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1675
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x1

    aput-object v3, v0, v4

    move-object v3, v0

    .line 1678
    .local v3, "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    move-object v4, v0

    .line 1680
    .local v4, "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    const-string v0, "BER"

    if-eqz p3, :cond_467

    move-object v5, v10

    goto :goto_468

    :cond_467
    move-object v5, v0

    :goto_468
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    .line 1682
    .local v5, "pkg":[B
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v18, v0

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v2

    .end local v2    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v20, "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v6, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1687
    .local v6, "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    new-array v2, v0, [B

    .line 1689
    .local v2, "mSalt":[B
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1691
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v21

    .line 1697
    .local v21, "data":[B
    :try_start_48f
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0
    :try_end_495
    .catch Ljava/lang/Exception; {:try_start_48f .. :try_end_495} :catch_4eb

    move-object/from16 v22, v4

    .end local v4    # "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v22, "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    :try_start_497
    iget v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_499
    .catch Ljava/lang/Exception; {:try_start_497 .. :try_end_499} :catch_4d7

    move-object/from16 v25, v6

    .end local v6    # "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v25, "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v6, 0x0

    move-object/from16 v26, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v26

    move-object/from16 v26, v5

    move-object/from16 v27, v8

    move-object/from16 v8, v25

    move-object/from16 v5, p2

    move-object/from16 v25, v22

    move-object/from16 v22, v3

    move-object v3, v2

    move-object v2, v0

    .end local v2    # "mSalt":[B
    .end local v5    # "pkg":[B
    .local v3, "mSalt":[B
    .local v7, "data":[B
    .local v8, "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v21, "doneCerts":Ljava/util/Hashtable;
    .local v22, "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v25, "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v26, "pkg":[B
    .local v27, "usedSet":Ljava/util/Set;
    :try_start_4b0
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    .line 1699
    .local v0, "res":[B
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v4, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1701
    .local v2, "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    iget v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    invoke-direct {v4, v2, v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4c2
    .catch Ljava/lang/Exception; {:try_start_4b0 .. :try_end_4c2} :catch_4d3

    .line 1706
    .end local v0    # "res":[B
    .end local v2    # "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .local v4, "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    nop

    .line 1711
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v0, v8, v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;)V

    .line 1713
    .local v0, "pfx":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_4cb

    goto :goto_4cd

    :cond_4cb
    move-object/from16 v10, v18

    :goto_4cd
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v10}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1714
    return-void

    .line 1703
    .end local v0    # "pfx":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v4    # "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    :catch_4d3
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_4fe

    .end local v25    # "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26    # "pkg":[B
    .end local v27    # "usedSet":Ljava/util/Set;
    .local v2, "mSalt":[B
    .local v3, "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v5    # "pkg":[B
    .restart local v6    # "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v7, "doneCerts":Ljava/util/Hashtable;
    .local v8, "usedSet":Ljava/util/Set;
    .local v21, "data":[B
    .local v22, "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    :catch_4d7
    move-exception v0

    move-object/from16 v25, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v25

    move-object/from16 v26, v5

    move-object/from16 v27, v8

    move-object/from16 v25, v22

    move-object/from16 v22, v3

    move-object v8, v6

    move-object v3, v2

    move-object/from16 v2, p1

    .end local v2    # "mSalt":[B
    .end local v5    # "pkg":[B
    .end local v6    # "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v3, "mSalt":[B
    .local v7, "data":[B
    .local v8, "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v21, "doneCerts":Ljava/util/Hashtable;
    .local v22, "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v25    # "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v26    # "pkg":[B
    .restart local v27    # "usedSet":Ljava/util/Set;
    goto :goto_4fe

    .end local v22    # "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v25    # "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26    # "pkg":[B
    .end local v27    # "usedSet":Ljava/util/Set;
    .restart local v2    # "mSalt":[B
    .local v3, "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v4, "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v5    # "pkg":[B
    .restart local v6    # "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v7, "doneCerts":Ljava/util/Hashtable;
    .local v8, "usedSet":Ljava/util/Set;
    .local v21, "data":[B
    :catch_4eb
    move-exception v0

    move-object/from16 v22, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v8

    move-object v3, v2

    move-object v8, v6

    move-object/from16 v2, p1

    .line 1705
    .end local v2    # "mSalt":[B
    .end local v4    # "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v5    # "pkg":[B
    .end local v6    # "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "mSalt":[B
    .local v7, "data":[B
    .local v8, "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v21, "doneCerts":Ljava/util/Hashtable;
    .restart local v22    # "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v25    # "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v26    # "pkg":[B
    .restart local v27    # "usedSet":Ljava/util/Set;
    :goto_4fe
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error constructing MAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1346
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "mSalt":[B
    .end local v7    # "data":[B
    .end local v8    # "mainInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v9    # "cs":Ljava/util/Enumeration;
    .end local v11    # "certBytes":[B
    .end local v12    # "keyString":Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
    .end local v13    # "cSalt":[B
    .end local v14    # "certSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v15    # "cParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v16    # "certSeqEncoded":[B
    .end local v17    # "cInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v19    # "keyS":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "cAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v21    # "doneCerts":Ljava/util/Hashtable;
    .end local v22    # "info":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v23    # "ks":Ljava/util/Enumeration;
    .end local v24    # "keySEncoded":[B
    .end local v25    # "auth":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26    # "pkg":[B
    .end local v27    # "usedSet":Ljava/util/Set;
    :cond_51b
    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getDigest(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 6
    .param p0, "spki"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 255
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 256
    .local v0, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 258
    .local v1, "resBuf":[B
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    .line 259
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 260
    invoke-interface {v0, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 261
    return-object v1
.end method

.method private blacklist getUsedCertificateSet()Ljava/util/Set;
    .registers 7

    .line 1817
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1819
    .local v0, "usedSet":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1821
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1823
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1825
    .local v3, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v3

    if-eq v4, v5, :cond_27

    .line 1827
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1825
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1829
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "i":I
    :cond_27
    goto :goto_b

    .line 1831
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_28
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "en":Ljava/util/Enumeration;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1833
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1835
    .restart local v2    # "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1837
    .local v3, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1838
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    goto :goto_2e

    .line 1840
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_42
    return-object v0
.end method

.method private blacklist processKeyBag(Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;)V
    .registers 15
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 1205
    .local v0, "kInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 1210
    .local v1, "privKey":Ljava/security/PrivateKey;
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1211
    .local v2, "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/4 v3, 0x0

    .line 1212
    .local v3, "alias":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1214
    .local v4, "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1215
    .local v5, "e":Ljava/util/Enumeration;
    :goto_19
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1217
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1218
    .local v6, "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 1219
    .local v8, "aOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    .line 1220
    .local v9, "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    const/4 v10, 0x0

    .line 1222
    .local v10, "attr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v11

    if-lez v11, :cond_82

    .line 1224
    invoke-virtual {v9, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 1226
    .end local v10    # "attr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .local v7, "attr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v2, v8}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    .line 1227
    .local v10, "existing":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v10, :cond_5f

    .line 1230
    invoke-interface {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_57

    goto :goto_62

    .line 1232
    :cond_57
    new-instance v11, Ljava/io/IOException;

    const-string v12, "attempt to add existing attribute with different value"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1238
    :cond_5f
    invoke-interface {v2, v8, v7}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1241
    :goto_62
    sget-object v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 1243
    move-object v11, v7

    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v11, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_82

    .line 1246
    :cond_77
    sget-object v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 1248
    move-object v4, v7

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 1251
    .end local v6    # "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "attr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v8    # "aOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v9    # "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v10    # "existing":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_82
    :goto_82
    goto :goto_19

    .line 1253
    :cond_83
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 1255
    .local v6, "name":Ljava/lang/String;
    if-nez v3, :cond_98

    .line 1257
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v6, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9d

    .line 1261
    :cond_98
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v3, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1263
    :goto_9d
    return-void
.end method

.method private blacklist processShroudedKeyBag(Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z
    .registers 21
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .param p2, "password"    # [C
    .param p3, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1125
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v1

    .line 1126
    .local v1, "eIn":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v2

    .line 1131
    .local v2, "privKey":Ljava/security/PrivateKey;
    const/4 v3, 0x0

    .line 1132
    .local v3, "alias":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1134
    .local v6, "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_a5

    .line 1136
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 1137
    .local v7, "e":Ljava/util/Enumeration;
    :goto_2c
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_a2

    .line 1139
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 1140
    .local v10, "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1141
    .local v11, "aOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v10, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 1142
    .local v12, "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    const/4 v13, 0x0

    .line 1144
    .local v13, "attr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v14

    if-lez v14, :cond_7d

    .line 1146
    invoke-virtual {v12, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 1148
    instance-of v14, v2, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v14, :cond_7a

    .line 1150
    move-object v14, v2

    check-cast v14, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1151
    .local v14, "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v14, v11}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    .line 1152
    .local v15, "existing":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v15, :cond_74

    .line 1155
    move/from16 v16, v8

    invoke-interface {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_6c

    goto :goto_7f

    .line 1157
    :cond_6c
    new-instance v8, Ljava/io/IOException;

    const-string v9, "attempt to add existing attribute with different value"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1163
    :cond_74
    move/from16 v16, v8

    invoke-interface {v14, v11, v13}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_7f

    .line 1148
    .end local v14    # "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v15    # "existing":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_7a
    move/from16 v16, v8

    goto :goto_7f

    .line 1144
    :cond_7d
    move/from16 v16, v8

    .line 1168
    :goto_7f
    sget-object v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 1170
    move-object v8, v13

    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1171
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v8, v3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9f

    .line 1173
    :cond_94
    sget-object v8, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 1175
    move-object v6, v13

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 1177
    .end local v10    # "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "aOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v12    # "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v13    # "attr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_9f
    :goto_9f
    move/from16 v8, v16

    goto :goto_2c

    .line 1137
    :cond_a2
    move/from16 v16, v8

    goto :goto_a7

    .line 1134
    .end local v7    # "e":Ljava/util/Enumeration;
    :cond_a5
    move/from16 v16, v8

    .line 1180
    :goto_a7
    if-eqz v6, :cond_c4

    .line 1182
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 1184
    .local v7, "name":Ljava/lang/String;
    if-nez v3, :cond_be

    .line 1186
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v8, v7, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c3

    .line 1190
    :cond_be
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v8, v3, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1192
    :goto_c3
    return v9

    .line 1196
    .end local v7    # "name":Ljava/lang/String;
    :cond_c4
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string/jumbo v8, "unmarked"

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    return v16
.end method

.method private blacklist validateIterationCount(Ljava/math/BigInteger;)I
    .registers 7
    .param p1, "i"    # Ljava/math/BigInteger;

    .line 1267
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 1269
    .local v0, "count":I
    if-ltz v0, :cond_3d

    .line 1274
    const-string v1, "com.android.internal.org.bouncycastle.pkcs12.max_it_count"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1275
    .local v1, "maxValue":Ljava/math/BigInteger;
    if-eqz v1, :cond_3c

    .line 1277
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_15

    goto :goto_3c

    .line 1279
    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iteration count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " greater than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1283
    :cond_3c
    :goto_3c
    return v0

    .line 1271
    .end local v1    # "maxValue":Ljava/math/BigInteger;
    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "negative iteration count found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected blacklist cryptData(ZLcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .registers 14
    .param p1, "forEncryption"    # Z
    .param p2, "algId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 703
    .local v0, "algorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x2

    .line 705
    .local v1, "mode":I
    :goto_9
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    const-string v3, "exception decrypting data - "

    if-eqz v2, :cond_5f

    .line 707
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v2

    .line 710
    .local v2, "pbeParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    :try_start_1b
    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 711
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v5

    .line 712
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 713
    .local v4, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v5, p3, p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 715
    .local v5, "key":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 717
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6, v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 718
    invoke-virtual {v6, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_42} :catch_43

    return-object v3

    .line 720
    .end local v4    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :catch_43
    move-exception v4

    .line 722
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 725
    .end local v2    # "pbeParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5f
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 729
    :try_start_67
    invoke-direct {p0, v1, p3, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 731
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_70

    return-object v3

    .line 733
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_70
    move-exception v2

    .line 735
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 740
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown PBE algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 5

    .line 278
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 280
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 281
    .local v1, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 283
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 286
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 287
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 289
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38

    .line 292
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v2    # "a":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 296
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 315
    .local v0, "cert":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_18

    .line 317
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_18
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    .line 321
    .local v1, "key":Ljava/security/Key;
    if-eqz v1, :cond_44

    .line 323
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 324
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_44

    .line 326
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 327
    .local v3, "keyCert":Ljava/security/cert/Certificate;
    if-eqz v3, :cond_44

    .line 329
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "keyCert":Ljava/security/cert/Certificate;
    :cond_44
    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 341
    if-eqz p1, :cond_2a

    .line 346
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 351
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_29

    .line 353
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 356
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_29

    .line 360
    :cond_20
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    .line 364
    .end local v1    # "id":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object v0

    .line 343
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 370
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 371
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 373
    .local v1, "k":Ljava/util/Enumeration;
    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 375
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 376
    .local v2, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 378
    .local v3, "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 380
    return-object v3

    .line 382
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_25
    goto :goto_c

    .line 384
    :cond_26
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 385
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 387
    :goto_32
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 389
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 390
    .restart local v2    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    .restart local v3    # "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 394
    return-object v3

    .line 396
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_4b
    goto :goto_32

    .line 398
    :cond_4c
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;

    .line 404
    if-eqz p1, :cond_ac

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 411
    return-object v1

    .line 414
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 416
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_ab

    .line 418
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 420
    .local v1, "cs":Ljava/util/Vector;
    :goto_15
    if-eqz v0, :cond_95

    .line 422
    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 423
    .local v2, "x509c":Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 425
    .local v3, "nextC":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 426
    .local v4, "akiBytes":[B
    if-eqz v4, :cond_47

    .line 428
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    .line 429
    .local v5, "akiValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v6

    .line 431
    .local v6, "aki":Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v7

    .line 432
    .local v7, "keyID":[B
    if-eqz v7, :cond_47

    .line 434
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v9, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-direct {v9, p0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Ljava/security/cert/Certificate;

    .line 438
    .end local v5    # "akiValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "aki":Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v7    # "keyID":[B
    :cond_47
    if-nez v3, :cond_84

    .line 443
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    .line 444
    .local v5, "i":Ljava/security/Principal;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    .line 446
    .local v6, "s":Ljava/security/Principal;
    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 448
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 450
    .local v7, "e":Ljava/util/Enumeration;
    :goto_5d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 452
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 453
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    .line 454
    .local v9, "sub":Ljava/security/Principal;
    invoke-interface {v9, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 458
    :try_start_79
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_82

    .line 459
    move-object v3, v8

    .line 460
    goto :goto_84

    .line 462
    :catch_82
    move-exception v10

    .line 467
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v9    # "sub":Ljava/security/Principal;
    :cond_83
    goto :goto_5d

    .line 471
    .end local v5    # "i":Ljava/security/Principal;
    .end local v6    # "s":Ljava/security/Principal;
    .end local v7    # "e":Ljava/util/Enumeration;
    :cond_84
    :goto_84
    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 473
    const/4 v0, 0x0

    goto :goto_94

    .line 477
    :cond_8c
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 478
    if-eq v3, v0, :cond_93

    .line 480
    move-object v0, v3

    goto :goto_94

    .line 484
    :cond_93
    const/4 v0, 0x0

    .line 487
    .end local v2    # "x509c":Ljava/security/cert/X509Certificate;
    .end local v3    # "nextC":Ljava/security/cert/Certificate;
    .end local v4    # "akiBytes":[B
    :goto_94
    goto :goto_15

    .line 489
    :cond_95
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 491
    .local v2, "certChain":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9c
    array-length v4, v2

    if-eq v3, v4, :cond_aa

    .line 493
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    aput-object v4, v2, v3

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 496
    .end local v3    # "i":I
    :cond_aa
    return-object v2

    .line 499
    .end local v1    # "cs":Ljava/util/Vector;
    .end local v2    # "certChain":[Ljava/security/cert/Certificate;
    :cond_ab
    return-object v1

    .line 406
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificateChain."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 504
    if-eqz p1, :cond_1a

    .line 508
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 510
    const/4 v0, 0x0

    return-object v0

    .line 512
    :cond_14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 506
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 520
    if-eqz p1, :cond_b

    .line 525
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0

    .line 522
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 28
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_7

    .line 820
    return-void

    .line 823
    :cond_7
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v0

    .line 825
    .local v9, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 827
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->read()I

    move-result v10

    .line 828
    .local v10, "head":I
    if-ltz v10, :cond_4df

    .line 832
    const/16 v0, 0x30

    if-ne v10, v0, :cond_4d6

    .line 837
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->reset()V

    .line 839
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 844
    .local v11, "bIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_25
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_4cb

    move-object v12, v0

    .line 849
    .local v12, "bag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    nop

    .line 851
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v13

    .line 852
    .local v13, "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v14, v0

    .line 853
    .local v14, "chain":Ljava/util/Vector;
    const/4 v15, 0x0

    .line 854
    .local v15, "unmarkedKey":Z
    const/16 v16, 0x0

    .line 856
    .local v16, "wrongPKCS12Zero":Z
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    if-eqz v0, :cond_f5

    .line 858
    if-eqz p2, :cond_eb

    .line 863
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v17

    .line 864
    .local v17, "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v18

    .line 865
    .local v18, "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 866
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v3

    .line 867
    .local v3, "salt":[B
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 868
    array-length v0, v3

    iput v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 870
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 874
    .local v7, "data":[B
    :try_start_6d
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_75} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_75} :catch_c7

    const/4 v6, 0x0

    move-object/from16 v5, p2

    :try_start_78
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    .line 875
    .local v0, "res":[B
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v2

    .line 877
    .local v2, "dig":[B
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 879
    array-length v4, v5
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_87} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_87} :catch_c3

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v4, :cond_b3

    .line 885
    :try_start_8b
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    move-object/from16 v19, v2

    move-object v2, v4

    .end local v2    # "dig":[B
    .local v19, "dig":[B
    iget v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    move-object/from16 v20, v6

    const/4 v6, 0x1

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v8, v20

    .end local v19    # "dig":[B
    .local v0, "dig":[B
    .local v21, "res":[B
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v2

    .line 887
    .end local v21    # "res":[B
    .local v2, "res":[B
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 892
    const/4 v4, 0x1

    move/from16 v16, v4

    .end local v16    # "wrongPKCS12Zero":Z
    .local v4, "wrongPKCS12Zero":Z
    goto :goto_c0

    .line 889
    .end local v4    # "wrongPKCS12Zero":Z
    .restart local v16    # "wrongPKCS12Zero":Z
    :cond_ad
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "salt":[B
    .end local v7    # "data":[B
    .end local v9    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v10    # "head":I
    .end local v11    # "bIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v12    # "bag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v13    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v14    # "chain":Ljava/util/Vector;
    .end local v15    # "unmarkedKey":Z
    .end local v16    # "wrongPKCS12Zero":Z
    .end local v17    # "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    .end local v18    # "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v4

    .line 881
    .local v0, "res":[B
    .local v2, "dig":[B
    .restart local v3    # "salt":[B
    .restart local v7    # "data":[B
    .restart local v9    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v10    # "head":I
    .restart local v11    # "bIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v12    # "bag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v13    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v14    # "chain":Ljava/util/Vector;
    .restart local v15    # "unmarkedKey":Z
    .restart local v16    # "wrongPKCS12Zero":Z
    .restart local v17    # "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    .restart local v18    # "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_b3
    move-object/from16 v21, v0

    move-object v0, v2

    move-object v8, v6

    .end local v2    # "dig":[B
    .local v0, "dig":[B
    .restart local v21    # "res":[B
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "salt":[B
    .end local v7    # "data":[B
    .end local v9    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v10    # "head":I
    .end local v11    # "bIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v12    # "bag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v13    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v14    # "chain":Ljava/util/Vector;
    .end local v15    # "unmarkedKey":Z
    .end local v16    # "wrongPKCS12Zero":Z
    .end local v17    # "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    .end local v18    # "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v2
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_bd} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_bd} :catch_c3

    .line 877
    .end local v21    # "res":[B
    .local v0, "res":[B
    .restart local v2    # "dig":[B
    .restart local v3    # "salt":[B
    .restart local v7    # "data":[B
    .restart local v9    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v10    # "head":I
    .restart local v11    # "bIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v12    # "bag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v13    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v14    # "chain":Ljava/util/Vector;
    .restart local v15    # "unmarkedKey":Z
    .restart local v16    # "wrongPKCS12Zero":Z
    .restart local v17    # "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    .restart local v18    # "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_bd
    move-object/from16 v21, v0

    move-object v0, v2

    .line 902
    .end local v0    # "res":[B
    .end local v2    # "dig":[B
    :goto_c0
    move/from16 v2, v16

    goto :goto_f9

    .line 899
    :catch_c3
    move-exception v0

    goto :goto_ca

    .line 895
    :catch_c5
    move-exception v0

    goto :goto_ea

    .line 899
    :catch_c7
    move-exception v0

    move-object/from16 v5, p2

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    :goto_ca
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error constructing MAC: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e7
    move-exception v0

    move-object/from16 v5, p2

    .line 897
    .local v0, "e":Ljava/io/IOException;
    :goto_ea
    throw v0

    .line 860
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "salt":[B
    .end local v7    # "data":[B
    .end local v17    # "mData":Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    .end local v18    # "dInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    :cond_eb
    move-object/from16 v5, p2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "no password supplied when one expected"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_f5
    move-object/from16 v5, p2

    move/from16 v2, v16

    .line 916
    .end local v16    # "wrongPKCS12Zero":Z
    .local v2, "wrongPKCS12Zero":Z
    :goto_f9
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 917
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 919
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 921
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 922
    .local v0, "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v8

    .line 923
    .local v8, "authSafe":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    .line 925
    .local v3, "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v4, 0x0

    move/from16 v16, v15

    move v15, v4

    .local v15, "i":I
    .local v16, "unmarkedKey":Z
    :goto_12c
    array-length v4, v3

    if-eq v15, v4, :cond_2da

    .line 927
    aget-object v4, v3, v15

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 929
    aget-object v4, v3, v15

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    .line 930
    .local v4, "authSafeContent":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 932
    .local v6, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v17, 0x0

    move/from16 v7, v17

    .local v7, "j":I
    :goto_153
    move-object/from16 v18, v0

    .end local v0    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .local v18, "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v7, v0, :cond_1ca

    .line 934
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v0

    .line 935
    .local v0, "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v19, v3

    .end local v3    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v19, "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    move-object/from16 v20, v4

    .end local v4    # "authSafeContent":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .local v20, "authSafeContent":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 937
    invoke-direct {v1, v0, v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z

    move-result v3

    move/from16 v16, v3

    .end local v16    # "unmarkedKey":Z
    .local v3, "unmarkedKey":Z
    goto :goto_1c1

    .line 939
    .end local v3    # "unmarkedKey":Z
    .restart local v16    # "unmarkedKey":Z
    :cond_17a
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 941
    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1c1

    .line 943
    :cond_18a
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 945
    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;)V

    goto :goto_1c1

    .line 950
    :cond_19a
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    .end local v0    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v21, "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    const-string v0, "extra in data "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 951
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 932
    .end local v21    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_1c1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_153

    .end local v19    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v20    # "authSafeContent":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .local v3, "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v4    # "authSafeContent":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1ca
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 954
    .end local v3    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v4    # "authSafeContent":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "j":I
    .restart local v19    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    move/from16 v22, v2

    goto/16 :goto_2cf

    .line 955
    .end local v18    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v19    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v0, "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v3    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    :cond_1d2
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v3    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v18    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v19    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    aget-object v0, v19, v15

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_28b

    .line 957
    aget-object v0, v19, v15

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;

    move-result-object v0

    .line 958
    .local v0, "d":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 959
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 958
    move v5, v2

    .end local v2    # "wrongPKCS12Zero":Z
    .local v5, "wrongPKCS12Zero":Z
    const/4 v2, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v2

    .line 960
    move v3, v5

    move-object v5, v4

    .end local v5    # "wrongPKCS12Zero":Z
    .local v2, "octets":[B
    .local v3, "wrongPKCS12Zero":Z
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 962
    .local v4, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_209
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-eq v6, v7, :cond_284

    .line 964
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v7

    .line 965
    .local v7, "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v20, v0

    .end local v0    # "d":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v20, "d":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object/from16 v21, v2

    .end local v2    # "octets":[B
    .local v21, "octets":[B
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 967
    invoke-virtual {v14, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move/from16 v22, v3

    goto :goto_27b

    .line 969
    :cond_22d
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 971
    invoke-direct {v1, v7, v5, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z

    move-result v0

    move/from16 v16, v0

    move/from16 v22, v3

    .end local v16    # "unmarkedKey":Z
    .local v0, "unmarkedKey":Z
    goto :goto_27b

    .line 973
    .end local v0    # "unmarkedKey":Z
    .restart local v16    # "unmarkedKey":Z
    :cond_242
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_254

    .line 975
    invoke-direct {v1, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;)V

    move/from16 v22, v3

    goto :goto_27b

    .line 980
    :cond_254
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v3

    .end local v3    # "wrongPKCS12Zero":Z
    .local v22, "wrongPKCS12Zero":Z
    const-string v3, "extra in encryptedData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    .end local v7    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_27b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    goto :goto_209

    .end local v20    # "d":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v21    # "octets":[B
    .end local v22    # "wrongPKCS12Zero":Z
    .local v0, "d":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    .restart local v2    # "octets":[B
    .restart local v3    # "wrongPKCS12Zero":Z
    :cond_284
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move/from16 v22, v3

    .line 984
    .end local v0    # "d":Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v2    # "octets":[B
    .end local v3    # "wrongPKCS12Zero":Z
    .end local v4    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "j":I
    .restart local v22    # "wrongPKCS12Zero":Z
    goto :goto_2cf

    .line 988
    .end local v22    # "wrongPKCS12Zero":Z
    .local v2, "wrongPKCS12Zero":Z
    :cond_28b
    move/from16 v22, v2

    .end local v2    # "wrongPKCS12Zero":Z
    .restart local v22    # "wrongPKCS12Zero":Z
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v19, v15

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v19, v15

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 925
    :goto_2cf
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move/from16 v2, v22

    const/4 v7, 0x0

    goto/16 :goto_12c

    .end local v18    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v19    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v22    # "wrongPKCS12Zero":Z
    .local v0, "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v2    # "wrongPKCS12Zero":Z
    .local v3, "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    :cond_2da
    move-object/from16 v18, v0

    move/from16 v22, v2

    move-object/from16 v19, v3

    .end local v0    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "wrongPKCS12Zero":Z
    .end local v3    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v18    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v19    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v22    # "wrongPKCS12Zero":Z
    move/from16 v15, v16

    goto :goto_2e5

    .line 919
    .end local v8    # "authSafe":Lcom/android/internal/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v16    # "unmarkedKey":Z
    .end local v18    # "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v19    # "c":[Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v22    # "wrongPKCS12Zero":Z
    .restart local v2    # "wrongPKCS12Zero":Z
    .local v15, "unmarkedKey":Z
    :cond_2e3
    move/from16 v22, v2

    .line 994
    .end local v2    # "wrongPKCS12Zero":Z
    .restart local v22    # "wrongPKCS12Zero":Z
    :goto_2e5
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 995
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 996
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 998
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_2fd
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v2, v0, :cond_4ca

    .line 1000
    invoke-virtual {v14, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 1001
    .local v3, "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v4

    .line 1003
    .local v4, "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v6, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_4a7

    .line 1012
    :try_start_31e
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 1013
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1014
    .local v0, "cIn":Ljava/io/ByteArrayInputStream;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6
    :try_end_333
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_333} :catch_496

    .line 1019
    .end local v0    # "cIn":Ljava/io/ByteArrayInputStream;
    .local v6, "cert":Ljava/security/cert/Certificate;
    nop

    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v7, 0x0

    .line 1027
    .local v7, "alias":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    if-eqz v8, :cond_42e

    .line 1029
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .line 1030
    .local v8, "e":Ljava/util/Enumeration;
    :goto_344
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_423

    .line 1032
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .local v17, "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 1033
    .local v0, "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    move/from16 v16, v2

    .end local v2    # "i":I
    .local v16, "i":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 1034
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v18, v3

    .end local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v18, "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    .line 1036
    .local v3, "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v20

    if-lez v20, :cond_40f

    .line 1038
    move-object/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v20, "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 1039
    .local v0, "attr":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/16 v19, 0x0

    .line 1041
    .local v19, "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v23, v4

    .end local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .local v23, "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    instance-of v4, v6, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_3ec

    .line 1043
    move-object v4, v6

    check-cast v4, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1045
    .end local v19    # "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .local v4, "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v4, v2}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    .line 1046
    .local v19, "existing":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v19, :cond_3d9

    .line 1049
    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_3c4

    .line 1052
    move-object v5, v0

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1053
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v24, v7

    .end local v7    # "alias":Ljava/lang/String;
    .local v24, "alias":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->-$$Nest$fgetkeys(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c6

    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->-$$Nest$fgetkeys(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c6

    .line 1055
    move-object/from16 v5, p2

    move/from16 v2, v16

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    move-object/from16 v7, v24

    goto :goto_344

    .line 1049
    .end local v5    # "id":Ljava/lang/String;
    .end local v24    # "alias":Ljava/lang/String;
    .restart local v7    # "alias":Ljava/lang/String;
    :cond_3c4
    move-object/from16 v24, v7

    .line 1060
    .end local v7    # "alias":Ljava/lang/String;
    .restart local v24    # "alias":Ljava/lang/String;
    :cond_3c6
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_3d1

    goto :goto_3e9

    .line 1062
    :cond_3d1
    new-instance v5, Ljava/io/IOException;

    const-string v7, "attempt to add existing attribute with different value"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1068
    .end local v24    # "alias":Ljava/lang/String;
    .restart local v7    # "alias":Ljava/lang/String;
    :cond_3d9
    move-object/from16 v24, v7

    .end local v7    # "alias":Ljava/lang/String;
    .restart local v24    # "alias":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_3e6

    .line 1070
    invoke-interface {v4, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3e9

    .line 1074
    :cond_3e6
    invoke-interface {v4, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1079
    .end local v19    # "existing":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_3e9
    move-object/from16 v19, v4

    goto :goto_3ee

    .line 1041
    .end local v4    # "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v24    # "alias":Ljava/lang/String;
    .restart local v7    # "alias":Ljava/lang/String;
    .local v19, "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    :cond_3ec
    move-object/from16 v24, v7

    .line 1079
    .end local v7    # "alias":Ljava/lang/String;
    .restart local v24    # "alias":Ljava/lang/String;
    :goto_3ee
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_400

    .line 1081
    move-object v4, v0

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    .end local v24    # "alias":Ljava/lang/String;
    .restart local v7    # "alias":Ljava/lang/String;
    goto :goto_419

    .line 1083
    .end local v7    # "alias":Ljava/lang/String;
    .restart local v24    # "alias":Ljava/lang/String;
    :cond_400
    sget-object v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_415

    .line 1085
    move-object v4, v0

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-object v0, v4

    move-object/from16 v7, v24

    .end local v17    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .local v4, "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    goto :goto_419

    .line 1036
    .end local v19    # "bagAttr":Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v20    # "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v24    # "alias":Ljava/lang/String;
    .local v0, "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v4, "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v7    # "alias":Ljava/lang/String;
    .restart local v17    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_40f
    move-object/from16 v20, v0

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    .line 1088
    .end local v0    # "sq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "attrSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v7    # "alias":Ljava/lang/String;
    .restart local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v24    # "alias":Ljava/lang/String;
    :cond_415
    move-object/from16 v0, v17

    move-object/from16 v7, v24

    .end local v17    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v24    # "alias":Ljava/lang/String;
    .local v0, "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v7    # "alias":Ljava/lang/String;
    :goto_419
    move-object/from16 v5, p2

    move/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    goto/16 :goto_344

    .line 1030
    .end local v16    # "i":I
    .end local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .local v2, "i":I
    .local v3, "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :cond_423
    move-object/from16 v17, v0

    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    .end local v0    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "i":I
    .end local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v7    # "alias":Ljava/lang/String;
    .restart local v16    # "i":I
    .restart local v17    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v24    # "alias":Ljava/lang/String;
    goto :goto_434

    .line 1027
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v16    # "i":I
    .end local v17    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v24    # "alias":Ljava/lang/String;
    .restart local v0    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v2    # "i":I
    .restart local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v7    # "alias":Ljava/lang/String;
    :cond_42e
    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    .line 1091
    .end local v2    # "i":I
    .end local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v16    # "i":I
    .restart local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :goto_434
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    if-eqz v15, :cond_475

    .line 1095
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_490

    .line 1097
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1099
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string/jumbo v5, "unmarked"

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1101
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_490

    .line 1108
    :cond_475
    if-eqz v0, :cond_489

    .line 1110
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1112
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .end local v2    # "name":Ljava/lang/String;
    :cond_489
    if-eqz v7, :cond_490

    .line 1116
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, v7, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 998
    .end local v0    # "localId":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "cert":Ljava/security/cert/Certificate;
    .end local v7    # "alias":Ljava/lang/String;
    .end local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :cond_490
    :goto_490
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v5, p2

    .end local v16    # "i":I
    .local v2, "i":I
    goto/16 :goto_2fd

    .line 1016
    .restart local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :catch_496
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    .line 1018
    .end local v2    # "i":I
    .end local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "i":I
    .restart local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "i":I
    .end local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v2    # "i":I
    .restart local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :cond_4a7
    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    .end local v2    # "i":I
    .end local v3    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v16    # "i":I
    .restart local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported certificate type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    .end local v16    # "i":I
    .end local v18    # "b":Lcom/android/internal/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v23    # "cb":Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    :cond_4ca
    return-void

    .line 846
    .end local v12    # "bag":Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v13    # "info":Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v14    # "chain":Ljava/util/Vector;
    .end local v15    # "unmarkedKey":Z
    .end local v22    # "wrongPKCS12Zero":Z
    :catch_4cb
    move-exception v0

    .line 848
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 834
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "bIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    :cond_4d6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_4df
    new-instance v0, Ljava/io/EOFException;

    const-string v2, "no data in keystore stream"

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 550
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void

    .line 547
    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 570
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_47

    .line 575
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_13

    if-eqz p4, :cond_b

    goto :goto_13

    .line 577
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 585
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    if-eqz p4, :cond_46

    .line 588
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    array-length v1, p4

    if-eq v0, v1, :cond_46

    .line 592
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 595
    .end local v0    # "i":I
    :cond_46
    return-void

    .line 572
    :cond_47
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 560
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .registers 5

    .line 599
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 601
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 602
    .local v1, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 604
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 607
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 608
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 610
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 611
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38

    .line 613
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .end local v2    # "a":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 617
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    return v2
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1336
    return-void
.end method

.method public whitelist test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 7
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1290
    if-eqz p1, :cond_8b

    .line 1295
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;

    if-nez v0, :cond_2c

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 1297
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1303
    :cond_2c
    :goto_2c
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;

    if-eqz v0, :cond_34

    .line 1305
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;

    .local v0, "bcParam":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;
    goto :goto_4b

    .line 1309
    .end local v0    # "bcParam":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :cond_34
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1310
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 1314
    .restart local v0    # "bcParam":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :goto_4b
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 1315
    .local v1, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v1, :cond_53

    .line 1317
    const/4 v2, 0x0

    .local v2, "password":[C
    goto :goto_5e

    .line 1319
    .end local v2    # "password":[C
    :cond_53
    instance-of v2, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v2, :cond_6a

    .line 1321
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 1329
    .restart local v2    # "password":[C
    :goto_5e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;->isForDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1330
    return-void

    .line 1325
    .end local v2    # "password":[C
    :cond_6a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No support for protection parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1326
    invoke-interface {v1}, Ljava/security/KeyStore$ProtectionParameter;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1292
    .end local v0    # "bcParam":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12StoreParameter;
    .end local v1    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'param\' arg cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRandom(Ljava/security/SecureRandom;)V
    .registers 2
    .param p1, "rand"    # Ljava/security/SecureRandom;

    .line 267
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 268
    return-void
.end method

.method protected blacklist unwrapKey(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .registers 13
    .param p1, "algId"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "data"    # [B
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 630
    .local v0, "algorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_4
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_6f

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x4

    if-eqz v1, :cond_42

    .line 632
    :try_start_10
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v1

    .line 633
    .local v1, "pbeParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 634
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    .line 635
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 637
    .local v5, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 639
    .local v6, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v7, p3, p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 641
    .local v7, "key":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
    invoke-virtual {v6, v4, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 644
    invoke-virtual {v6, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    return-object v2

    .line 646
    .end local v1    # "pbeParams":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v5    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "key":Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
    :cond_42
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 649
    invoke-direct {p0, v4, p3, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 652
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_54} :catch_6f

    return-object v2

    .line 658
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_55
    nop

    .line 660
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :catch_6f
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception unwrapping private key - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected blacklist wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 675
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 676
    .local v1, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 677
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    .line 678
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 680
    .local v2, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v3, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 682
    .local v3, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 684
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_30

    .line 689
    .end local v1    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .local v4, "out":[B
    nop

    .line 691
    return-object v4

    .line 686
    .end local v4    # "out":[B
    :catch_30
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception encrypting data - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
