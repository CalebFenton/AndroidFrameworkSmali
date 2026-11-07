.class public Lcom/android/org/conscrypt/ECParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "ECParameters.java"


# instance fields
.field private blacklist curve:Lcom/android/org/conscrypt/OpenSSLECGroupContext;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

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

    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/ECParameters;->curve:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_marshal_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    if-eqz p1, :cond_24

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    .line 108
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ECParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 89
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/security/spec/ECParameterSpec;

    if-ne p1, v0, :cond_b

    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/ECParameters;->curve:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 91
    :cond_b
    const-class v0, Ljava/security/spec/ECGenParameterSpec;

    if-ne p1, v0, :cond_1b

    .line 92
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    iget-object v1, p0, Lcom/android/org/conscrypt/ECParameters;->curve:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 94
    :cond_1b
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 7
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 43
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_2d

    .line 44
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "newCurveName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 46
    .local v1, "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-eqz v1, :cond_14

    .line 49
    iput-object v1, p0, Lcom/android/org/conscrypt/ECParameters;->curve:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 50
    .end local v0    # "newCurveName":Ljava/lang/String;
    .end local v1    # "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    goto :goto_3e

    .line 47
    .restart local v0    # "newCurveName":Ljava/lang/String;
    .restart local v1    # "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_14
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown EC curve name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v0    # "newCurveName":Ljava/lang/String;
    .end local v1    # "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_2d
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_63

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 53
    .local v0, "ecParamSpec":Ljava/security/spec/ECParameterSpec;
    :try_start_34
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 54
    .restart local v1    # "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    if-eqz v1, :cond_3f

    .line 57
    iput-object v1, p0, Lcom/android/org/conscrypt/ECParameters;->curve:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 60
    .end local v1    # "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    nop

    .line 61
    .end local v0    # "ecParamSpec":Ljava/security/spec/ECParameterSpec;
    nop

    .line 65
    :goto_3e
    return-void

    .line 55
    .restart local v0    # "ecParamSpec":Ljava/security/spec/ECParameterSpec;
    .restart local v1    # "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    :cond_3f
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown EC curve: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ecParamSpec":Ljava/security/spec/ECParameterSpec;
    .end local p0    # "this":Lcom/android/org/conscrypt/ECParameters;
    .end local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    throw v2
    :try_end_58
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_34 .. :try_end_58} :catch_58

    .line 58
    .end local v1    # "newCurve":Lcom/android/org/conscrypt/OpenSSLECGroupContext;
    .restart local v0    # "ecParamSpec":Ljava/security/spec/ECParameterSpec;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ECParameters;
    .restart local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_58
    move-exception v1

    .line 59
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v0    # "ecParamSpec":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_63
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only ECParameterSpec and ECGenParameterSpec are supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .registers 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_KEY_parse_curve_name([B)J

    move-result-wide v0

    .line 70
    .local v0, "ref":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    .line 73
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    new-instance v3, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;

    invoke-direct {v3, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;-><init>(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)V

    iput-object v2, p0, Lcom/android/org/conscrypt/ECParameters;->curve:Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    .line 74
    return-void

    .line 71
    :cond_17
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error reading ASN.1 encoding"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    if-eqz p2, :cond_24

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    .line 81
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_24
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/ECParameters;->engineInit([B)V

    .line 83
    return-void
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .registers 2

    .line 113
    const-string v0, "Conscrypt EC AlgorithmParameters"

    return-object v0
.end method
