.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# static fields
.field private static final blacklist keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private blacklist certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist certFact:Ljava/security/cert/CertificateFactory;

.field private blacklist certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist chainCerts:Ljava/util/Hashtable;

.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist itCount:I

.field private blacklist keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist keyCerts:Ljava/util/Hashtable;

.field private blacklist keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected blacklist random:Ljava/security/SecureRandom;

.field private blacklist saltLength:I

.field private final blacklist selfHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcreateSubjectKeyId(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 7

    .line 222
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 146
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 148
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 149
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 167
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 174
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const v0, 0x19000

    .line 175
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/16 v0, 0x14

    .line 176
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 223
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 224
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 228
    :try_start_53
    const-string p2, "X.509"

    invoke-interface {p1, p2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception p0

    .line 232
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t create cert factory - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .registers 8

    .line 1852
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1856
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 1857
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p1, p4, p5}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1858
    invoke-virtual {p0, p6}, Ljavax/crypto/Mac;->update([B)V

    .line 1860
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method private blacklist createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .registers 13

    .line 747
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p3

    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object p3

    .line 748
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v0

    .line 749
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 753
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 756
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 758
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v0

    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v1

    invoke-direct {v3, p2, v4, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    goto :goto_70

    .line 762
    :cond_50
    new-instance v3, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v6

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v7

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 767
    :goto_70
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->selfHelper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 769
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p3

    .line 770
    instance-of v0, p3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_9e

    .line 772
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p3

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_9e
    return-object p0
.end method

.method private blacklist createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .registers 8

    .line 1719
    new-instance p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1721
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1722
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1725
    instance-of v1, p2, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    .line 1727
    check-cast p2, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1731
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p2, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v3, :cond_30

    .line 1732
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    :cond_30
    if-eqz p1, :cond_3a

    .line 1736
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v3}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1740
    :cond_3a
    invoke-interface {p2}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1742
    :goto_3e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1744
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1750
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_3e

    .line 1755
    :cond_53
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1757
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1758
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-interface {p2, v3}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1759
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x1

    goto :goto_3e

    :cond_71
    if-nez v2, :cond_92

    .line 1767
    new-instance p2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1769
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1770
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1772
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1812
    :cond_92
    new-instance p1, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object p2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, p2, p0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object p1
.end method

.method private blacklist createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 2

    .line 241
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    .line 243
    new-instance p1, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    .line 247
    :catch_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "error creating key"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist doStore(Ljava/io/OutputStream;[CZ)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    if-eqz v3, :cond_404

    .line 1408
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1410
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1412
    :goto_11
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const v7, 0xc800

    const/16 v8, 0x14

    if-eqz v4, :cond_11a

    .line 1414
    new-array v4, v8, [B

    .line 1416
    iget-object v8, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1418
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1419
    iget-object v9, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v9, v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/PrivateKey;

    .line 1420
    new-instance v10, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v10, v4, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1421
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v9, v10, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v4

    .line 1422
    new-instance v7, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v11, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-direct {v7, v11, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1423
    new-instance v10, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v10, v7, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1425
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1427
    instance-of v7, v9, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v7, :cond_bd

    .line 1429
    check-cast v9, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1433
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v7}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v11, :cond_6f

    .line 1434
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_77

    .line 1436
    :cond_6f
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v11, v8}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v7, v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1442
    :cond_77
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v7}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    if-nez v11, :cond_8e

    .line 1444
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    .line 1446
    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v11

    invoke-interface {v9, v7, v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1449
    :cond_8e
    invoke-interface {v9}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v7

    const/4 v6, 0x0

    .line 1451
    :goto_93
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_be

    .line 1453
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1454
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1456
    invoke-virtual {v11, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1457
    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-interface {v9, v6}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-direct {v12, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1461
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v11}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v6, 0x1

    goto :goto_93

    :cond_bd
    const/4 v6, 0x0

    :cond_be
    if-nez v6, :cond_105

    .line 1470
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1471
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 1473
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1474
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1476
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1478
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1480
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1481
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1483
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1486
    :cond_105
    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1487
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto/16 :goto_11

    .line 1490
    :cond_11a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v9, "DER"

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    .line 1491
    new-instance v10, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v10, v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 1496
    new-array v1, v8, [B

    .line 1498
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1500
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1501
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v4, v1, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1502
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v1, v7, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1503
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 1505
    iget-object v7, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 1506
    :goto_151
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    const-string v11, "Error encoding certificate: "

    if-eqz v8, :cond_264

    .line 1510
    :try_start_159
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1511
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v12

    .line 1513
    new-instance v13, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v15, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1515
    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v13, v14, v15}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1516
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1518
    instance-of v14, v12, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v14, :cond_1ea

    .line 1520
    move-object v14, v12

    check-cast v14, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1524
    sget-object v15, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v14, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v16, :cond_197

    .line 1525
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19f

    goto :goto_197

    :catch_194
    move-exception v0

    goto/16 :goto_24b

    .line 1527
    :cond_197
    :goto_197
    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, v8}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v15, v6}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1533
    :cond_19f
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v14, v6}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    if-nez v15, :cond_1b2

    .line 1535
    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v15

    invoke-interface {v14, v6, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1538
    :cond_1b2
    invoke-interface {v14}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v6

    const/4 v15, 0x0

    .line 1540
    :goto_1b7
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_1e7

    .line 1542
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v1

    .line 1543
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1545
    invoke-virtual {v1, v15}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1546
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-interface {v14, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    invoke-direct {v3, v15}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1547
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v3, p2

    move-object/from16 v1, v16

    const/4 v15, 0x1

    goto :goto_1b7

    :cond_1e7
    :goto_1e7
    move-object/from16 v16, v1

    goto :goto_1ec

    :cond_1ea
    const/4 v15, 0x0

    goto :goto_1e7

    :goto_1ec
    if-nez v15, :cond_22f

    .line 1555
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1557
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1558
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v12}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1559
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1561
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1563
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1564
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, v8}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1566
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1569
    :cond_22f
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v8, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v3, v6, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1571
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1573
    invoke-virtual {v4, v12, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_245
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_159 .. :try_end_245} :catch_194

    move-object/from16 v3, p2

    move-object/from16 v1, v16

    goto/16 :goto_151

    .line 1577
    :goto_24b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_264
    move-object/from16 v16, v1

    .line 1581
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1582
    :goto_26c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2ae

    .line 1586
    :try_start_272
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1587
    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    .line 1589
    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_289

    goto :goto_26c

    .line 1594
    :cond_289
    invoke-direct {v0, v3, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v3

    .line 1596
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1598
    invoke-virtual {v4, v5, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_293
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_272 .. :try_end_293} :catch_294

    goto :goto_26c

    :catch_294
    move-exception v0

    .line 1602
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1606
    :cond_2ae
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getUsedCertificateSet()Ljava/util/Set;

    move-result-object v1

    .line 1608
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1609
    :goto_2b8
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_35b

    .line 1613
    :try_start_2be
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 1614
    iget-object v6, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    .line 1616
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d3

    goto :goto_2b8

    .line 1621
    :cond_2d3
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2da

    goto :goto_2b8

    .line 1626
    :cond_2da
    new-instance v6, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1628
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1629
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1631
    instance-of v8, v5, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v8, :cond_32d

    .line 1633
    check-cast v5, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1634
    invoke-interface {v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v8

    .line 1636
    :goto_2f9
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_32d

    .line 1638
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1644
    sget-object v13, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v13}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_30e

    goto :goto_2f9

    .line 1649
    :cond_30e
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1651
    invoke-virtual {v13, v12}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1652
    new-instance v14, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-interface {v5, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-direct {v14, v12}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1653
    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v12}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2f9

    :catch_32b
    move-exception v0

    goto :goto_342

    .line 1658
    :cond_32d
    new-instance v5, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v12, v7}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v8, v6, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1660
    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_340
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2be .. :try_end_340} :catch_32b

    goto/16 :goto_2b8

    .line 1664
    :goto_342
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1668
    :cond_35b
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v3, p2

    move-object/from16 v2, v16

    .line 1669
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v1

    .line 1670
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v5, v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v3, v4, v2, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1672
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v1, v4, v10}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1675
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    filled-new-array {v1, v2}, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v1

    .line 1678
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    .line 1680
    const-string v7, "BER"

    if-eqz p3, :cond_399

    move-object v1, v9

    goto :goto_39a

    :cond_399
    move-object v1, v7

    :goto_39a
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    .line 1682
    new-instance v8, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v8, v4, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1687
    iget v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    new-array v2, v1, [B

    .line 1689
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1691
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 1697
    :try_start_3bb
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v1

    .line 1699
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1701
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    iget v0, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    invoke-direct {v1, v3, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_3d8
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_3d8} :catch_3e8

    .line 1711
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v0, v8, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    if-eqz p3, :cond_3e2

    :goto_3df
    move-object/from16 v1, p1

    goto :goto_3e4

    :cond_3e2
    move-object v9, v7

    goto :goto_3df

    .line 1713
    :goto_3e4
    invoke-virtual {v0, v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :catch_3e8
    move-exception v0

    .line 1705
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error constructing MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1346
    :cond_404
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 5

    .line 255
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 258
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p0

    .line 259
    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 260
    invoke-interface {v0, v1, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v1
.end method

.method private blacklist getUsedCertificateSet()Ljava/util/Set;
    .registers 6

    .line 1817
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1819
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1821
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1823
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v3, 0x0

    .line 1825
    :goto_1c
    array-length v4, v2

    if-eq v3, v4, :cond_b

    .line 1827
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1831
    :cond_27
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1833
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1835
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 1837
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_41
    return-object v0
.end method

.method private blacklist processKeyBag(Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;)V
    .registers 10

    .line 1204
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 1210
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1214
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1215
    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1217
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    const/4 v5, 0x0

    .line 1218
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    const/4 v7, 0x1

    .line 1219
    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 1222
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v7

    if-lez v7, :cond_19

    .line 1224
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1226
    invoke-interface {v1, v6}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 1230
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_56

    goto :goto_61

    .line 1232
    :cond_56
    new-instance p0, Ljava/io/IOException;

    const-string p1, "attempt to add existing attribute with different value"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1238
    :cond_5e
    invoke-interface {v1, v6, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1241
    :goto_61
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1243
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4, v3, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 1246
    :cond_75
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1248
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object v2, v4

    goto :goto_19

    .line 1253
    :cond_81
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    if-nez v3, :cond_96

    .line 1257
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1261
    :cond_96
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist processShroudedKeyBag(Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z
    .registers 12

    .line 1125
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v0

    .line 1126
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object p2

    .line 1134
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_92

    .line 1136
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    move-object p3, v2

    move-object v3, p3

    .line 1137
    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1139
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1140
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1141
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 1144
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-lez v6, :cond_6f

    .line 1146
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1148
    instance-of v6, p2, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v6, :cond_70

    .line 1150
    move-object v6, p2

    check-cast v6, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1151
    invoke-interface {v6, v5}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    if-eqz v7, :cond_6b

    .line 1155
    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_63

    goto :goto_70

    .line 1157
    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string p1, "attempt to add existing attribute with different value"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1163
    :cond_6b
    invoke-interface {v6, v5, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_70

    :cond_6f
    move-object v4, v2

    .line 1168
    :cond_70
    :goto_70
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 1170
    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object p3

    .line 1171
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4, p3, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    .line 1173
    :cond_84
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1175
    move-object v3, v4

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_27

    :cond_90
    move-object v2, v3

    goto :goto_93

    :cond_92
    move-object p3, v2

    :goto_93
    if-eqz v2, :cond_b0

    .line 1182
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    if-nez p3, :cond_aa

    .line 1186
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_af

    .line 1190
    :cond_aa
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_af
    return v1

    .line 1196
    :cond_b0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string p1, "unmarked"

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method private blacklist validateIterationCount(Ljava/math/BigInteger;)I
    .registers 5

    .line 1267
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    if-ltz p0, :cond_39

    .line 1274
    const-string p1, "com.android.org.bouncycastle.pkcs12.max_it_count"

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Properties;->asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 1277
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-lt v0, p0, :cond_15

    goto :goto_38

    .line 1279
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iteration count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " greater than "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    :goto_38
    return p0

    .line 1271
    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "negative iteration count found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected blacklist cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .registers 10

    .line 702
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x2

    .line 705
    :goto_9
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    const-string v2, "exception decrypting data - "

    if-eqz v1, :cond_5d

    .line 707
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object p2

    .line 710
    :try_start_1b
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 711
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    .line 712
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {v1, v3, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 713
    new-instance p2, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p2, p3, p4}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 715
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 717
    invoke-virtual {p0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 718
    invoke-virtual {p0, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_42} :catch_43

    return-object p0

    :catch_43
    move-exception p0

    .line 722
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 725
    :cond_5d
    sget-object p4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p4

    if-eqz p4, :cond_88

    .line 729
    :try_start_65
    invoke-direct {p0, p1, p3, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 731
    invoke-virtual {p0, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6d} :catch_6e

    return-object p0

    :catch_6e
    move-exception p0

    .line 735
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 740
    :cond_88
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown PBE algorithm: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 5

    .line 278
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 281
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
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    .line 287
    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 289
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    .line 292
    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 296
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_18

    .line 317
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_18
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    if-eqz v0, :cond_44

    .line 323
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_44

    .line 326
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/Certificate;

    if-eqz p1, :cond_44

    .line 329
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3

    if-eqz p1, :cond_29

    .line 346
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_28

    .line 353
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 356
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    return-object p0

    .line 360
    :cond_1f
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    return-object p0

    :cond_28
    return-object v0

    .line 343
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getCertificate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 6

    .line 370
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 373
    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 375
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 376
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 378
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v3

    .line 384
    :cond_25
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 385
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    .line 387
    :cond_31
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 389
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 390
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    invoke-virtual {v1, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    return-object v2

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 10

    if-eqz p1, :cond_a6

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 414
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_a5

    .line 418
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_15
    if-eqz p1, :cond_90

    .line 422
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 425
    sget-object v3, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_46

    .line 428
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v3

    .line 431
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    if-eqz v3, :cond_46

    .line 434
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-direct {v5, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    goto :goto_47

    :cond_46
    move-object v3, v1

    :goto_47
    if-nez v3, :cond_81

    .line 443
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    .line 444
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    .line 446
    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 448
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 450
    :catch_5d
    :cond_5d
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 452
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 453
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    .line 454
    invoke-interface {v7, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 458
    :try_start_79
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_5d

    move-object v3, v6

    .line 471
    :cond_81
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    :cond_87
    move-object p1, v1

    goto :goto_15

    .line 477
    :cond_89
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v3, p1, :cond_87

    move-object p1, v3

    goto :goto_15

    .line 489
    :cond_90
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p1, p0, [Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    :goto_97
    if-eq v1, p0, :cond_a4

    .line 493
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    :cond_a4
    return-object p1

    :cond_a5
    return-object v1

    .line 406
    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getCertificateChain."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    if-eqz p1, :cond_1a

    .line 508
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 512
    :cond_14
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0

    .line 506
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 525
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Key;

    return-object p0

    .line 522
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null alias passed to getKey."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 2

    .line 537
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_3ed

    .line 823
    :cond_8
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0xa

    .line 825
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 827
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_401

    const/16 v3, 0x30

    if-ne v1, v3, :cond_3f9

    .line 837
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 839
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 844
    :try_start_24
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_3ee

    .line 851
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v7

    .line 852
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 856
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_cd

    if-eqz p2, :cond_c5

    .line 863
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v1

    .line 864
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v11

    .line 865
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 866
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v2

    .line 867
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v1

    iput v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 868
    array-length v1, v2

    iput v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 870
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 874
    :try_start_68
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v1

    .line 875
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v11

    .line 877
    invoke-static {v1, v11}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_cf

    .line 879
    array-length v1, v4
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_82} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_82} :catch_a7

    const-string v12, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v1, :cond_a1

    .line 885
    :try_start_86
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v1

    .line 887
    invoke-static {v1, v11}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_9b

    move v1, v9

    goto :goto_d0

    .line 889
    :cond_9b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_a1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a7} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a7} :catch_a7

    :catch_a7
    move-exception v0

    .line 901
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error constructing MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_c3
    move-exception v0

    .line 897
    throw v0

    .line 860
    :cond_c5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied when one expected"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cd
    move-object/from16 v4, p2

    :cond_cf
    move v1, v10

    .line 916
    :goto_d0
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 917
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 919
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_26c

    .line 921
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 922
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v2

    .line 923
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v7

    move v11, v10

    move v12, v11

    .line 925
    :goto_101
    array-length v2, v7

    if-eq v11, v2, :cond_26d

    .line 927
    aget-object v2, v7, v11

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 929
    aget-object v2, v7, v11

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 930
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    move v3, v10

    .line 932
    :goto_125
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v3, v5, :cond_18b

    .line 934
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v5

    .line 935
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_145

    .line 937
    invoke-direct {v0, v5, v4, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z

    move-result v5

    move v12, v5

    goto :goto_188

    .line 939
    :cond_145
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_155

    .line 941
    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_188

    .line 943
    :cond_155
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_165

    .line 945
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;)V

    goto :goto_188

    .line 950
    :cond_165
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extra in data "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 951
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_188
    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    :cond_18b
    move v2, v1

    goto/16 :goto_267

    .line 955
    :cond_18e
    aget-object v2, v7, v11

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_228

    .line 957
    aget-object v2, v7, v11

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    move-result-object v2

    move-object v3, v2

    .line 958
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 959
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    move v4, v1

    const/4 v1, 0x0

    move-object/from16 v3, p2

    .line 958
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v1

    move v2, v4

    move-object v4, v3

    .line 960
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    move v3, v10

    .line 962
    :goto_1c2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v3, v5, :cond_267

    .line 964
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v5

    .line 965
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_1e0

    .line 967
    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_225

    .line 969
    :cond_1e0
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_1f2

    .line 971
    invoke-direct {v0, v5, v4, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processShroudedKeyBag(Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;[CZ)Z

    move-result v5

    move v12, v5

    goto :goto_225

    .line 973
    :cond_1f2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_202

    .line 975
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->processKeyBag(Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;)V

    goto :goto_225

    .line 980
    :cond_202
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extra in encryptedData "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_225
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c2

    :cond_228
    move v2, v1

    .line 988
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v7, v11

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v7, v11

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_267
    :goto_267
    add-int/lit8 v11, v11, 0x1

    move v1, v2

    goto/16 :goto_101

    :cond_26c
    move v12, v10

    .line 994
    :cond_26d
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v1, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi-IA;)V

    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 995
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 996
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    move v1, v10

    .line 998
    :goto_283
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_3ed

    .line 1000
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 1001
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v3

    .line 1003
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_3d2

    .line 1012
    :try_start_2a3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 1013
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1014
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2b8} :catch_3c7

    .line 1027
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    if-eqz v4, :cond_368

    .line 1029
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    move-object v4, v6

    move-object v5, v4

    .line 1030
    :cond_2c8
    :goto_2c8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_36a

    .line 1032
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1033
    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    .line 1034
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    .line 1036
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v13

    if-lez v13, :cond_2c8

    .line 1038
    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1041
    instance-of v14, v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v14, :cond_34b

    .line 1043
    move-object v14, v3

    check-cast v14, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1045
    invoke-interface {v14, v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    if-eqz v15, :cond_33e

    .line 1049
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_32b

    .line 1052
    move-object v7, v13

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 1053
    iget-object v14, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v14}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->-$$Nest$fgetkeys(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_32b

    iget-object v14, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v14}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->-$$Nest$fgetkeys(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32b

    goto :goto_2c8

    .line 1060
    :cond_32b
    invoke-interface {v15}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_336

    goto :goto_34b

    .line 1062
    :cond_336
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to add existing attribute with different value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_33e
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v15

    if-le v15, v9, :cond_348

    .line 1070
    invoke-interface {v14, v11, v7}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_34b

    .line 1074
    :cond_348
    invoke-interface {v14, v11, v13}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1079
    :cond_34b
    :goto_34b
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_35b

    .line 1081
    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2c8

    .line 1083
    :cond_35b
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_2c8

    .line 1085
    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object v5, v13

    goto/16 :goto_2c8

    :cond_368
    move-object v4, v6

    move-object v5, v4

    .line 1091
    :cond_36a
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-direct {v7, v0, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_3a8

    .line 1095
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c3

    .line 1097
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 1099
    iget-object v4, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    iget-object v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const-string v4, "unmarked"

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3c3

    :cond_3a8
    if-eqz v5, :cond_3bc

    .line 1110
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 1112
    iget-object v5, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v5, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3bc
    if-eqz v4, :cond_3c3

    .line 1116
    iget-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, v4, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3c3
    :goto_3c3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_283

    :catch_3c7
    move-exception v0

    .line 1018
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1005
    :cond_3d2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported certificate type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3ed
    :goto_3ed
    return-void

    :catch_3ee
    move-exception v0

    .line 848
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :cond_3f9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_401
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "no data in keystore stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 550
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 547
    :cond_1c
    new-instance p0, Ljava/security/KeyStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is a key entry with the name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 570
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_46

    .line 575
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_13

    if-eqz p4, :cond_b

    goto :goto_13

    .line 577
    :cond_b
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "no certificate chain for private key"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 580
    :cond_13
    :goto_13
    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1e

    .line 582
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 585
    :cond_1e
    iget-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p3, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_45

    .line 588
    iget-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 p3, 0x0

    aget-object v0, p4, p3

    invoke-virtual {p2, p1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    :goto_2d
    array-length p1, p4

    if-eq p3, p1, :cond_45

    .line 592
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance p2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v0, p4, p3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v0, p4, p3

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2d

    :cond_45
    return-void

    .line 572
    :cond_46
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 560
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api engineSize()I
    .registers 5

    .line 599
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 601
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 602
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
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    .line 608
    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 610
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 611
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    .line 613
    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 617
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1335
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public whitelist test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_6d

    .line 1295
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 1305
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    .line 1314
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_1d

    .line 1319
    :cond_13
    instance-of v1, p1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_29

    .line 1321
    check-cast p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    .line 1329
    :goto_1d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->isForDEREncoding()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void

    .line 1325
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No support for protection parameter of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1309
    :cond_48
    new-instance p0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v1

    .line 1297
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No support for \'param\' of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1292
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'param\' arg cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setRandom(Ljava/security/SecureRandom;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected blacklist unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .registers 11

    .line 627
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 630
    :try_start_4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_6c

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x4

    if-eqz v1, :cond_42

    .line 632
    :try_start_10
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object p1

    .line 633
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 634
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v5

    .line 635
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result p1

    invoke-direct {v1, v5, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 637
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 639
    new-instance p1, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p1, p3, p4}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 641
    invoke-virtual {p0, v4, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 644
    invoke-virtual {p0, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;

    return-object p0

    .line 646
    :cond_42
    sget-object p4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p4}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p4

    if-eqz p4, :cond_55

    .line 649
    invoke-direct {p0, v4, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 652
    invoke-virtual {p0, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_54} :catch_6c

    return-object p0

    .line 660
    :cond_55
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_6c
    move-exception p0

    .line 657
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception unwrapping private key - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .registers 8

    .line 670
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 675
    :try_start_5
    iget-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p4, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p4

    .line 676
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 677
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v2

    .line 678
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 680
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p0, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 682
    invoke-virtual {p4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 684
    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    .line 688
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception encrypting data - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
