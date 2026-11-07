.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "IvAlgorithmParameters.java"


# instance fields
.field private blacklist iv:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RAW"

    if-eqz v0, :cond_16

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 38
    :cond_16
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 43
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 62
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_e

    .line 67
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    .line 68
    return-void

    .line 64
    :cond_e
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 4
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 82
    .local v0, "oct":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    .line 85
    .end local v0    # "oct":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :cond_1d
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    .line 86
    return-void
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 7
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 97
    :try_start_6
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 99
    .local v0, "oct":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    .line 104
    .end local v0    # "oct":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 106
    return-void

    .line 101
    :catch_15
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception decoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V

    .line 112
    return-void

    .line 115
    :cond_3b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in IV parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 120
    const-string v0, "IV Parameters"

    return-object v0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 50
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eq p1, v0, :cond_12

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_12

    .line 55
    :cond_9
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to IV parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_12
    :goto_12
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method
