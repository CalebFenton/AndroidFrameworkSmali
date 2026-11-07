.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "PBEPKCS12.java"


# instance fields
.field blacklist params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 4

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oooops! "

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

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4

    .line 75
    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_16

    .line 80
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    return-void

    .line 77
    :cond_16
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 2

    .line 90
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    return-void
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 3

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineInit([B)V

    return-void

    .line 104
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in PKCS12 PBE parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 1

    .line 109
    const-string p0, "PKCS12 PBE Parameters"

    return-object p0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    .line 62
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 68
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to PKCS12 PBE parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_11
    :goto_11
    new-instance p1, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 65
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {p1, v0, p0}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    return-object p1
.end method
