.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field blacklist currentSpec:Ljava/security/spec/DSAParameterSpec;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 5

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 53
    .local v0, "dsaP":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    :try_start_17
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1e

    return-object v1

    .line 55
    :catch_1e
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error encoding DSAParameters"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 69
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 30
    if-eqz p1, :cond_7

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 32
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "argument to getParameterSpec must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 88
    instance-of v0, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v0, :cond_a

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    .line 94
    return-void

    .line 90
    :cond_a
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "DSAParameterSpec required to initialise a DSA algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 8
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const-string v0, "Not a valid DSA Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v1

    .line 104
    .local v1, "dsaP":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v2, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_1d} :catch_26
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_1d} :catch_1f

    .line 113
    .end local v1    # "dsaP":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    nop

    .line 114
    return-void

    .line 110
    :catch_1f
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_26
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 6
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_28

    .line 127
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->engineInit([B)V

    .line 129
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 133
    const-string v0, "DSA Parameters"

    return-object v0
.end method

.method protected blacklist isASN1FormatString(Ljava/lang/String;)Z
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .line 23
    if-eqz p1, :cond_d

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 76
    const-class v0, Ljava/security/spec/DSAParameterSpec;

    if-eq p1, v0, :cond_12

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_12

    .line 81
    :cond_9
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to DSA parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParametersSpi;->currentSpec:Ljava/security/spec/DSAParameterSpec;

    return-object v0
.end method
