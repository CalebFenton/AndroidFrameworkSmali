.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field currentSpec:Ljava/security/spec/DSAParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 5

    #@0
    .prologue
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    #@4
    invoke-virtual {v2}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    #@a
    invoke-virtual {v3}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    #@10
    invoke-virtual {v4}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    #@13
    move-result-object v4

    #@14
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@17
    .line 49
    .local v0, "dsaP":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    :try_start_0
    const-string/jumbo v2, "DER"

    #@1a
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 52
    :catch_0
    move-exception v1

    #@20
    .line 53
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@22
    const-string/jumbo v3, "Error encoding DSAParameters"

    #@25
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->engineGetEncoded()[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 65
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    #@0
    .prologue
    .line 26
    if-nez p1, :cond_0

    #@2
    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "argument to getParameterSpec must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    #@e
    move-result-object v0

    #@f
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
    .line 84
    instance-of v0, p1, Ljava/security/spec/DSAParameterSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 86
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "DSAParameterSpec required to initialise a DSA algorithm parameters object"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 89
    :cond_0
    check-cast p1, Ljava/security/spec/DSAParameterSpec;

    #@f
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    #@11
    .line 82
    return-void
.end method

.method protected engineInit([B)V
    .locals 7
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;

    #@7
    move-result-object v0

    #@8
    .line 100
    .local v0, "dsaP":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v3, Ljava/security/spec/DSAParameterSpec;

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    #@15
    move-result-object v6

    #@16
    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@19
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 94
    return-void

    #@1c
    .line 107
    .end local v0    # "dsaP":Lcom/android/org/bouncycastle/asn1/x509/DSAParameter;
    :catch_0
    move-exception v1

    #@1d
    .line 108
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    #@1f
    const-string/jumbo v4, "Not a valid DSA Parameter encoding."

    #@22
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3

    #@26
    .line 103
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    #@27
    .line 104
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    #@29
    const-string/jumbo v4, "Not a valid DSA Parameter encoding."

    #@2c
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const-string/jumbo v0, "X.509"

    #@9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->engineInit([B)V

    #@12
    .line 115
    return-void

    #@13
    .line 123
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Unknown parameter format "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    const-string/jumbo v0, "DSA Parameters"

    #@3
    return-object v0
.end method

.method protected isASN1FormatString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "ASN.1"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
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
    .line 72
    const-class v0, Ljava/security/spec/DSAParameterSpec;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    #@6
    return-object v0

    #@7
    .line 77
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@9
    const-string/jumbo v1, "unknown parameter spec passed to DSA parameters object."

    #@c
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method
