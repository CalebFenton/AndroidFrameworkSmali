.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "PBEPKCS12.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# instance fields
.field blacklist params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 5

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 41
    :catch_9
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oooops! "

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

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 55
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 75
    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_17

    .line 80
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 82
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 84
    return-void

    .line 77
    .end local v0    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_17
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 3
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 91
    return-void
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

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineInit([B)V

    .line 101
    return-void

    .line 104
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in PKCS12 PBE parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "PKCS12 PBE Parameters"

    return-object v0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 62
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eq p1, v0, :cond_12

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_12

    .line 68
    :cond_9
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to PKCS12 PBE parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_12
    :goto_12
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 65
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 64
    return-object v0
.end method
