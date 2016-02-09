.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;
    }
.end annotation


# static fields
.field private static final algorithms:Ljava/util/Hashtable;

.field private static final converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

.field private static final des:Ljava/util/Hashtable;

.field private static final oids:Ljava/util/Hashtable;


# instance fields
.field private agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

.field private kaAlgorithm:Ljava/lang/String;

.field private parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

.field private result:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 61
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@2
    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    #@5
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@7
    .line 62
    new-instance v4, Ljava/util/Hashtable;

    #@9
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@c
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@e
    .line 63
    new-instance v4, Ljava/util/Hashtable;

    #@10
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@13
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    #@15
    .line 64
    new-instance v4, Ljava/util/Hashtable;

    #@17
    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    #@1a
    sput-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    #@1c
    .line 68
    const/16 v4, 0x40

    #@1e
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v3

    #@22
    .line 69
    .local v3, "i64":Ljava/lang/Integer;
    const/16 v4, 0x80

    #@24
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v0

    #@28
    .line 70
    .local v0, "i128":Ljava/lang/Integer;
    const/16 v4, 0xc0

    #@2a
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    .line 71
    .local v1, "i192":Ljava/lang/Integer;
    const/16 v4, 0x100

    #@30
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v2

    #@34
    .line 73
    .local v2, "i256":Ljava/lang/Integer;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@36
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@38
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 74
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@41
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@43
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 75
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@4c
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4e
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 76
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@57
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 77
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@62
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@64
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    .line 78
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@6d
    sget-object v5, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 79
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@78
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7a
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 80
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@83
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@85
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v4, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 81
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@8e
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@90
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    .line 83
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    #@99
    const-string/jumbo v5, "DESEDE"

    #@9c
    sget-object v6, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@9e
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a1
    .line 84
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    #@a3
    const-string/jumbo v5, "AES"

    #@a6
    sget-object v6, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a8
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    .line 85
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    #@ad
    const-string/jumbo v5, "DES"

    #@b0
    sget-object v6, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b2
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    .line 87
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    #@b7
    const-string/jumbo v5, "DES"

    #@ba
    const-string/jumbo v6, "DES"

    #@bd
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    .line 88
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    #@c2
    const-string/jumbo v5, "DESEDE"

    #@c5
    const-string/jumbo v6, "DES"

    #@c8
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    .line 89
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    #@cd
    sget-object v5, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@cf
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    const-string/jumbo v6, "DES"

    #@d6
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d9
    .line 90
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    #@db
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@dd
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@e0
    move-result-object v5

    #@e1
    const-string/jumbo v6, "DES"

    #@e4
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    .line 91
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    #@e9
    sget-object v5, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@eb
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@ee
    move-result-object v5

    #@ef
    const-string/jumbo v6, "DES"

    #@f2
    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/BasicAgreement;Lcom/android/org/bouncycastle/crypto/DerivationFunction;)V
    .locals 0
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "agreement"    # Lcom/android/org/bouncycastle/crypto/BasicAgreement;
    .param p3, "kdf"    # Lcom/android/org/bouncycastle/crypto/DerivationFunction;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    #@3
    .line 113
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@5
    .line 114
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    #@7
    .line 111
    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@6
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 330
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 332
    .local v0, "fullName":Ljava/lang/String;
    const/16 v1, 0x2e

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private initFromKey(Ljava/security/Key;)V
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    instance-of v1, p1, Ljava/security/PrivateKey;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 317
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " key agreement requires "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 318
    const-class v3, Lcom/android/org/bouncycastle/jce/interfaces/ECPrivateKey;

    #@1a
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 318
    const-string/jumbo v3, " for initialisation"

    #@25
    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 321
    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    #@33
    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@39
    .line 322
    .local v0, "privKey":Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@3f
    .line 324
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    #@41
    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/crypto/BasicAgreement;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@44
    .line 281
    return-void
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 127
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, " not initialised."

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 130
    :cond_0
    if-nez p2, :cond_1

    #@23
    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, " can only be between two parties."

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1

    #@3f
    .line 158
    :cond_1
    instance-of v1, p1, Ljava/security/PublicKey;

    #@41
    if-nez v1, :cond_2

    #@43
    .line 160
    new-instance v1, Ljava/security/InvalidKeyException;

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, " key agreement requires "

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    .line 161
    const-class v3, Lcom/android/org/bouncycastle/jce/interfaces/ECPublicKey;

    #@59
    invoke-static {v3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    .line 161
    const-string/jumbo v3, " for doPhase"

    #@64
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v1

    #@70
    .line 164
    :cond_2
    check-cast p1, Ljava/security/PublicKey;

    #@72
    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@75
    move-result-object v0

    #@76
    .line 169
    .local v0, "pubKey":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Lcom/android/org/bouncycastle/crypto/BasicAgreement;

    #@78
    invoke-interface {v1, v0}, Lcom/android/org/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    #@7b
    move-result-object v1

    #@7c
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@7e
    .line 171
    return-object v2
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->engineGenerateSecret()[B

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "secret":[B
    array-length v1, p1

    #@5
    sub-int/2addr v1, p2

    #@6
    array-length v2, v0

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 197
    new-instance v1, Ljavax/crypto/ShortBufferException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, " key agreement: need "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    array-length v3, v0

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " bytes"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 200
    :cond_0
    array-length v1, v0

    #@32
    const/4 v2, 0x0

    #@33
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 202
    array-length v1, v0

    #@37
    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 209
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@3
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@6
    move-result-object v4

    #@7
    .line 210
    .local v4, "secret":[B
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 211
    .local v0, "algKey":Ljava/lang/String;
    move-object v3, p1

    #@c
    .line 213
    .local v3, "oidAlgorithm":Ljava/lang/String;
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 215
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->oids:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 238
    :cond_0
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 240
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->algorithms:Ljava/util/Hashtable;

    #@2a
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Ljava/lang/Integer;

    #@30
    .line 242
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v5

    #@34
    div-int/lit8 v5, v5, 0x8

    #@36
    new-array v1, v5, [B

    #@38
    .line 244
    .local v1, "key":[B
    array-length v5, v1

    #@39
    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3c
    .line 246
    move-object v4, v1

    #@3d
    .line 250
    .end local v1    # "key":[B
    .end local v2    # "length":Ljava/lang/Integer;
    :cond_1
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->des:Ljava/util/Hashtable;

    #@3f
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@42
    move-result v5

    #@43
    if-eqz v5, :cond_2

    #@45
    .line 252
    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    #@48
    .line 255
    :cond_2
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    #@4a
    invoke-direct {v5, v4, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@4d
    return-object v5
.end method

.method protected engineGenerateSecret()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:Ljava/math/BigInteger;

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;)V

    #@3
    .line 275
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    if-eqz p2, :cond_0

    #@2
    .line 266
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@4
    const-string/jumbo v1, "No algorithm parameters supported"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;)V

    #@e
    .line 262
    return-void
.end method
