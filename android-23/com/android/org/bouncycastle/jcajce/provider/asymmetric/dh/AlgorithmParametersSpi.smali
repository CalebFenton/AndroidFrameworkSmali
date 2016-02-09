.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field currentSpec:Ljavax/crypto/spec/DHParameterSpec;


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
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@2
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@4
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@a
    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@10
    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    #@13
    move-result v4

    #@14
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@17
    .line 53
    .local v0, "dhP":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :try_start_0
    const-string/jumbo v2, "DER"

    #@1a
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 56
    :catch_0
    move-exception v1

    #@20
    .line 57
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@22
    const-string/jumbo v3, "Error encoding DHParameters"

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
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 66
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineGetEncoded()[B

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 69
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
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

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
    .line 88
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 90
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@6
    const-string/jumbo v1, "DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object"

    #@9
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 93
    :cond_0
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    #@f
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@11
    .line 86
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
    .line 102
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "dhP":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@7
    move-result-object v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 106
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    #@c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    #@1b
    move-result v6

    #@1c
    invoke-direct {v3, v4, v5, v6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    #@1f
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@21
    .line 98
    :goto_0
    return-void

    #@22
    .line 110
    :cond_0
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    #@24
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2f
    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@31
    goto :goto_0

    #@32
    .line 114
    .end local v0    # "dhP":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :catch_0
    move-exception v2

    #@33
    .line 115
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    #@35
    const-string/jumbo v4, "Not a valid DH Parameter encoding."

    #@38
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3

    #@3c
    .line 118
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    #@3d
    .line 119
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    #@3f
    const-string/jumbo v4, "Not a valid DH Parameter encoding."

    #@42
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@45
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
    .line 128
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineInit([B)V

    #@9
    .line 126
    return-void

    #@a
    .line 134
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Unknown parameter format "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    const-string/jumbo v0, "Diffie-Hellman Parameters"

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
    .line 76
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    #@6
    return-object v0

    #@7
    .line 81
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    #@9
    const-string/jumbo v1, "unknown parameter spec passed to DH parameters object."

    #@c
    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method
