.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field blacklist currentSpec:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .registers 4

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 57
    :try_start_17
    const-string p0, "DER"

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1e

    return-object p0

    .line 61
    :catch_1e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error encoding DHParameters"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 70
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected whitelist test-api engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    if-eqz p1, :cond_7

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0

    .line 32
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "argument to getParameterSpec must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3

    .line 92
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_9

    .line 97
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    .line 94
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 6

    .line 106
    const-string v0, "Not a valid DH Parameter encoding."

    :try_start_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 110
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void

    .line 114
    :cond_24
    new-instance v1, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;
    :try_end_33
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_33} :catch_3a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_33} :catch_34

    return-void

    .line 123
    :catch_34
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :catch_3a
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 4

    .line 132
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineInit([B)V

    return-void

    .line 138
    :cond_a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown parameter format "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 1

    .line 144
    const-string p0, "Diffie-Hellman Parameters"

    return-object p0
.end method

.method protected blacklist isASN1FormatString(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 23
    const-string p0, "ASN.1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3

    .line 80
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eq p1, v0, :cond_11

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 85
    :cond_9
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to DH parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_11
    :goto_11
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object p0
.end method
