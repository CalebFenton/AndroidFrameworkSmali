.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "IvAlgorithmParameters.java"


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 22
    const-string/jumbo v0, "ASN.1"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@8
    const-string/jumbo v1, "RAW"

    #@b
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@12
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 34
    :cond_0
    const-string/jumbo v0, "RAW"

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 36
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    #@22
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 39
    :cond_1
    const/4 v0, 0x0

    #@28
    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 60
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 63
    :cond_0
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    #@f
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    #@15
    .line 56
    return-void
.end method

.method protected engineInit([B)V
    .locals 3
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 73
    array-length v1, p1

    #@2
    rem-int/lit8 v1, v1, 0x8

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 74
    aget-byte v1, p1, v2

    #@8
    const/4 v2, 0x4

    #@9
    if-ne v1, v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    aget-byte v1, p1, v1

    #@e
    array-length v2, p1

    #@f
    add-int/lit8 v2, v2, -0x2

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 76
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@19
    .line 78
    .local v0, "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@1c
    move-result-object p1

    #@1d
    .line 81
    .end local v0    # "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    #@23
    .line 68
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 5
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 93
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@c
    .line 95
    .local v1, "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 102
    return-void

    #@14
    .line 98
    .end local v1    # "oct":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v0

    #@15
    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Exception decoding: "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "RAW"

    #@32
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V

    #@3b
    .line 108
    return-void

    #@3c
    .line 111
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@3e
    const-string/jumbo v3, "Unknown parameters format in IV parameters object"

    #@41
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "IV Parameters"

    #@3
    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 48
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    #@8
    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@b
    return-object v0

    #@c
    .line 51
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@e
    const-string/jumbo v1, "unknown parameter spec passed to IV parameters object."

    #@11
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method
