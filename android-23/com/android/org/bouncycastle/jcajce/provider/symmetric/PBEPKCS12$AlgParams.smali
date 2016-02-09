.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "PBEPKCS12.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# instance fields
.field params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 4

    #@0
    .prologue
    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@2
    const-string/jumbo v2, "DER"

    #@5
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 35
    :catch_0
    move-exception v0

    #@b
    .line 36
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Oooops! "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineGetEncoded()[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 48
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    instance-of v1, p1, Ljavax/crypto/spec/PBEParameterSpec;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 70
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v2, "PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object"

    #@9
    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 73
    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@10
    .line 75
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@12
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    #@15
    move-result-object v2

    #@16
    .line 76
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    #@19
    move-result v3

    #@1a
    .line 75
    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    #@1d
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@1f
    .line 66
    return-void
.end method

.method protected engineInit([B)V
    .locals 1
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@a
    .line 81
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineInit([B)V

    #@9
    .line 94
    return-void

    #@a
    .line 97
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v1, "Unknown parameters format in PKCS12 PBE parameters object"

    #@f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    const-string/jumbo v0, "PKCS12 PBE Parameters"

    #@3
    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 57
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    #@6
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@8
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    #@b
    move-result-object v1

    #@c
    .line 58
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->params:Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    #@e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@15
    move-result v2

    #@16
    .line 57
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    #@19
    return-object v0

    #@1a
    .line 61
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@1c
    const-string/jumbo v1, "unknown parameter spec passed to PKCS12 PBE parameters object."

    #@1f
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
.end method
