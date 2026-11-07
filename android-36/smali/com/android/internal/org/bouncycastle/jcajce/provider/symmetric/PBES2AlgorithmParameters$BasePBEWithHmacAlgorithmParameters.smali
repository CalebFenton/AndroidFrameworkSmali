.class abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "PBES2AlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BasePBEWithHmacAlgorithmParameters"
.end annotation


# instance fields
.field private final blacklist cipherAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final blacklist cipherAlgorithmShortName:Ljava/lang/String;

.field private final blacklist kdf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist kdfShortName:Ljava/lang/String;

.field private final blacklist keySize:I

.field private blacklist params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 8
    .param p1, "kdf"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "kdfShortName"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "cipherAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p5, "cipherAlgorithmShortName"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdfShortName:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->keySize:I

    .line 66
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithmShortName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;ILcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 5

    .line 74
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    .line 74
    return-object v0

    .line 79
    :catch_17
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read PBES2 parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 93
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 13
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 119
    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_4b

    .line 125
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 129
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    nop

    .line 130
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 131
    .local v1, "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    instance-of v2, v1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_43

    .line 132
    move-object v2, v1

    check-cast v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    .line 137
    .local v2, "iv":[B
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 141
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v7

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v8

    iget v9, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->keySize:I

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 143
    return-void

    .line 134
    .end local v2    # "iv":[B
    :cond_43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expecting an IV as a parameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    .end local v0    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4b
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "PBEParameterSpec required to initialise PBES2 algorithm parameters"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 7
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 151
    .local v0, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 152
    .local v1, "seqObjects":Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 153
    .local v2, "id":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 156
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 157
    return-void

    .line 154
    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid PBES2 parameters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 5
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->engineInit([B)V

    .line 167
    return-void

    .line 170
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in PBES2 parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBES2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->kdfShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->cipherAlgorithmShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Parameters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 6
    .param p1, "parameterSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 100
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-ne p1, v0, :cond_31

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 103
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 104
    .local v0, "pbeParamSpec":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 105
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    .line 106
    .local v1, "iv":[B
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v2

    .line 107
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 106
    invoke-static {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;->-$$Nest$smcreatePBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object v2

    return-object v2

    .line 111
    .end local v0    # "pbeParamSpec":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    .end local v1    # "iv":[B
    :cond_31
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to PBES2 parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
