.class abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "PBES2AlgorithmParameters.java"


# instance fields
.field private final blacklist cipherAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final blacklist cipherAlgorithmShortName:Ljava/lang/String;

.field private final blacklist kdf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist kdfShortName:Ljava/lang/String;

.field private final blacklist keySize:I

.field private blacklist params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 8

    .line 62
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdfShortName:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->keySize:I

    .line 66
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithmShortName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 5

    .line 74
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read PBES2 parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 90
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 10

    .line 119
    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_48

    .line 125
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 130
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 131
    instance-of v1, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_40

    .line 132
    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    .line 137
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 141
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->keySize:I

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v4, v5, p1, v6, v7}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p1, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    return-void

    .line 134
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expecting an IV as a parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_48
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "PBEParameterSpec required to initialise PBES2 algorithm parameters"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 4

    .line 150
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 152
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 153
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 156
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    return-void

    .line 154
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid PBES2 parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 3

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->engineInit([B)V

    return-void

    .line 170
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in PBES2 parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBES2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdfShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithmShortName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Parameters"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    .line 100
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-ne p1, v0, :cond_31

    .line 102
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 104
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 105
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    .line 106
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 106
    invoke-static {v0, p1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;->-$$Nest$smcreatePBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object p0

    return-object p0

    .line 111
    :cond_31
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to PBES2 parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
