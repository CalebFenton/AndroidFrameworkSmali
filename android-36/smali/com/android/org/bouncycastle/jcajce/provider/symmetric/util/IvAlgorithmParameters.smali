.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "IvAlgorithmParameters.java"


# instance fields
.field private blacklist iv:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 2

    .line 26
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 4

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RAW"

    if-eqz v0, :cond_16

    .line 35
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0

    .line 38
    :cond_16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 40
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    .line 62
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_d

    .line 67
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    return-void

    .line 64
    :cond_d
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 4

    .line 77
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_1d

    .line 80
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 82
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    .line 85
    :cond_1d
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    return-void
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 4

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 97
    :try_start_6
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 99
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 103
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception decoding: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_2c
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V

    return-void

    .line 115
    :cond_38
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in IV parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 1

    .line 120
    const-string p0, "IV Parameters"

    return-object p0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    .line 50
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 55
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to IV parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_11
    :goto_11
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1
.end method
