.class public final Lcom/android/org/conscrypt/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;

.field private static final blacklist STANDARD_EC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.ECPrivateKey"

.field private static final blacklist STANDARD_RSA_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPrivateKey"

.field private static final blacklist STANDARD_RSA_PUBLIC_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPublicKey"

.field private static final blacklist STANDARD_XEC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.XECPrivateKey"

.field private static final whitelist serialVersionUID:J = 0x29969a845b3fb130L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/org/conscrypt/OpenSSLProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist test-api <init>()V
    .registers 2

    .line 56
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getDefaultProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "providerName"    # Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->provideTrustManagerByDefault()Z

    move-result v2

    sget-boolean v4, Lcom/android/org/conscrypt/Platform;->DEPRECATED_TLS_V1:Z

    sget-boolean v5, Lcom/android/org/conscrypt/Platform;->ENABLED_TLS_V1:Z

    const-string v3, "TLSv1.3"

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "providerName":Ljava/lang/String;
    .local v1, "providerName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZ)V

    .line 63
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 10
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "includeTrustManager"    # Z
    .param p3, "defaultTlsProtocol"    # Ljava/lang/String;

    .line 67
    sget-boolean v4, Lcom/android/org/conscrypt/Platform;->DEPRECATED_TLS_V1:Z

    sget-boolean v5, Lcom/android/org/conscrypt/Platform;->ENABLED_TLS_V1:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "providerName":Ljava/lang/String;
    .end local p2    # "includeTrustManager":Z
    .end local p3    # "defaultTlsProtocol":Ljava/lang/String;
    .local v1, "providerName":Ljava/lang/String;
    .local v2, "includeTrustManager":Z
    .local v3, "defaultTlsProtocol":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZ)V

    .line 69
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;ZZ)V
    .registers 23
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "includeTrustManager"    # Z
    .param p3, "defaultTlsProtocol"    # Ljava/lang/String;
    .param p4, "deprecatedTlsV1"    # Z
    .param p5, "enabledTlsV1"    # Z

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, "Android\'s OpenSSL-backed security provider"

    move-object/from16 v5, p1

    invoke-direct {v0, v5, v2, v3, v4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->checkAvailability()V

    .line 79
    if-nez p4, :cond_1d

    if-eqz p5, :cond_15

    goto :goto_1d

    .line 80
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "TLSv1 is not deprecated and cannot be disabled."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_1d
    :goto_1d
    invoke-static/range {p4 .. p5}, Lcom/android/org/conscrypt/Platform;->setup(ZZ)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLContextImpl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "classOpenSSLContextImpl":Ljava/lang/String;
    const-string v3, "$TLSv12"

    .line 88
    .local v3, "tls12SSLContextSuffix":Ljava/lang/String;
    const-string v4, "$TLSv13"

    .line 90
    .local v4, "tls13SSLContextSuffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_b00

    :cond_40
    goto :goto_55

    :pswitch_41
    const-string v6, "TLSv1.3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    const/4 v6, 0x1

    goto :goto_56

    :pswitch_4b
    const-string v6, "TLSv1.2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    const/4 v6, 0x0

    goto :goto_56

    :goto_55
    const/4 v6, -0x1

    :goto_56
    packed-switch v6, :pswitch_data_b08

    .line 98
    move-object/from16 v16, v2

    .end local v2    # "classOpenSSLContextImpl":Ljava/lang/String;
    .local v16, "classOpenSSLContextImpl":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choice of default protocol is unsupported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v16    # "classOpenSSLContextImpl":Ljava/lang/String;
    .restart local v2    # "classOpenSSLContextImpl":Ljava/lang/String;
    :pswitch_74
    move-object v6, v4

    .line 96
    .local v6, "defaultSSLContextSuffix":Ljava/lang/String;
    goto :goto_78

    .line 92
    .end local v6    # "defaultSSLContextSuffix":Ljava/lang/String;
    :pswitch_76
    move-object v6, v3

    .line 93
    .restart local v6    # "defaultSSLContextSuffix":Ljava/lang/String;
    nop

    .line 102
    :goto_78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSLContext.SSL"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSLContext.TLS"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$TLSv1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSLContext.TLSv1"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$TLSv11"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSLContext.TLSv1.1"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSLContext.TLSv1.2"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSLContext.TLSv1.3"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "DefaultSSLContextImpl"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSLContext.Default"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    if-eqz p2, :cond_132

    .line 111
    const-class v7, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TrustManagerFactory.PKIX"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v7, "Alg.Alias.TrustManagerFactory.X509"

    const-string v8, "PKIX"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_132
    const-class v7, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KeyManagerFactory.PKIX"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v7, "Alg.Alias.KeyManagerFactory.X509"

    const-string v8, "PKIX"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IvParameters$AES"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlgorithmParameters.AES"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v7, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.2"

    const-string v8, "AES"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v7, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.22"

    const-string v8, "AES"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v7, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.42"

    const-string v8, "AES"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IvParameters$ChaCha20"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlgorithmParameters.ChaCha20"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IvParameters$DESEDE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlgorithmParameters.DESEDE"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v7, "Alg.Alias.AlgorithmParameters.TDEA"

    const-string v8, "DESEDE"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v7, "Alg.Alias.AlgorithmParameters.1.2.840.113549.3.7"

    const-string v8, "DESEDE"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "GCMParameters"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlgorithmParameters.GCM"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v7, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.6"

    const-string v8, "GCM"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v7, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.26"

    const-string v8, "GCM"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v7, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.46"

    const-string v8, "GCM"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OAEPParameters"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlgorithmParameters.OAEP"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "PSSParameters"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlgorithmParameters.PSS"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ECParameters"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlgorithmParameters.EC"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MessageDigest.SHA-1"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v7, "Alg.Alias.MessageDigest.SHA1"

    const-string v8, "SHA-1"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v7, "Alg.Alias.MessageDigest.SHA"

    const-string v8, "SHA-1"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v7, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string v8, "SHA-1"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OpenSSLMessageDigestJDK$SHA224"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MessageDigest.SHA-224"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v7, "Alg.Alias.MessageDigest.SHA224"

    const-string v8, "SHA-224"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v7, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    const-string v8, "SHA-224"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MessageDigest.SHA-256"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v7, "Alg.Alias.MessageDigest.SHA256"

    const-string v8, "SHA-256"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v7, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string v8, "SHA-256"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MessageDigest.SHA-384"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v7, "Alg.Alias.MessageDigest.SHA384"

    const-string v8, "SHA-384"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v7, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string v8, "SHA-384"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MessageDigest.SHA-512"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v7, "Alg.Alias.MessageDigest.SHA512"

    const-string v8, "SHA-512"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v7, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string v8, "SHA-512"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MessageDigest.MD5"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v7, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string v8, "MD5"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "KeyGeneratorImpl$ARC4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KeyGenerator.ARC4"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v7, "Alg.Alias.KeyGenerator.RC4"

    const-string v8, "ARC4"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v7, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "KeyGeneratorImpl$AES"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "KeyGenerator.AES"

    invoke-virtual {v0, v9, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "KeyGeneratorImpl$ChaCha20"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "KeyGenerator.ChaCha20"

    invoke-virtual {v0, v9, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "KeyGeneratorImpl$DESEDE"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "KeyGenerator.DESEDE"

    invoke-virtual {v0, v9, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v7, "Alg.Alias.KeyGenerator.TDEA"

    const-string v9, "DESEDE"

    invoke-virtual {v0, v7, v9}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "KeyGeneratorImpl$HmacMD5"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "KeyGenerator.HmacMD5"

    invoke-virtual {v0, v9, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v7, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.1"

    const-string v9, "HmacMD5"

    invoke-virtual {v0, v7, v9}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v7, "Alg.Alias.KeyGenerator.HMAC-MD5"

    invoke-virtual {v0, v7, v9}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v7, "Alg.Alias.KeyGenerator.HMAC/MD5"

    invoke-virtual {v0, v7, v9}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "KeyGeneratorImpl$HmacSHA1"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "KeyGenerator.HmacSHA1"

    invoke-virtual {v0, v10, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v7, "Alg.Alias.KeyGenerator.1.2.840.113549.2.7"

    const-string v10, "HmacSHA1"

    invoke-virtual {v0, v7, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v7, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.2"

    invoke-virtual {v0, v7, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v7, "Alg.Alias.KeyGenerator.HMAC-SHA1"

    invoke-virtual {v0, v7, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v7, "Alg.Alias.KeyGenerator.HMAC/SHA1"

    invoke-virtual {v0, v7, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "KeyGeneratorImpl$HmacSHA224"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "KeyGenerator.HmacSHA224"

    invoke-virtual {v0, v11, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v7, "Alg.Alias.KeyGenerator.1.2.840.113549.2.8"

    const-string v11, "HmacSHA224"

    invoke-virtual {v0, v7, v11}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v7, "Alg.Alias.KeyGenerator.HMAC-SHA224"

    invoke-virtual {v0, v7, v11}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v7, "Alg.Alias.KeyGenerator.HMAC/SHA224"

    invoke-virtual {v0, v7, v11}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "KeyGeneratorImpl$HmacSHA256"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "KeyGenerator.HmacSHA256"

    invoke-virtual {v0, v12, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v7, "Alg.Alias.KeyGenerator.1.2.840.113549.2.9"

    const-string v12, "HmacSHA256"

    invoke-virtual {v0, v7, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v7, "Alg.Alias.KeyGenerator.2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v7, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v7, "Alg.Alias.KeyGenerator.HMAC-SHA256"

    invoke-virtual {v0, v7, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v7, "Alg.Alias.KeyGenerator.HMAC/SHA256"

    invoke-virtual {v0, v7, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "KeyGeneratorImpl$HmacSHA384"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "KeyGenerator.HmacSHA384"

    invoke-virtual {v0, v13, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v7, "Alg.Alias.KeyGenerator.1.2.840.113549.2.10"

    const-string v13, "HmacSHA384"

    invoke-virtual {v0, v7, v13}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v7, "Alg.Alias.KeyGenerator.HMAC-SHA384"

    invoke-virtual {v0, v7, v13}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v7, "Alg.Alias.KeyGenerator.HMAC/SHA384"

    invoke-virtual {v0, v7, v13}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "KeyGeneratorImpl$HmacSHA512"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "KeyGenerator.HmacSHA512"

    invoke-virtual {v0, v14, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v7, "Alg.Alias.KeyGenerator.1.2.840.113549.2.11"

    const-string v14, "HmacSHA512"

    invoke-virtual {v0, v7, v14}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v7, "Alg.Alias.KeyGenerator.HMAC-SHA512"

    invoke-virtual {v0, v7, v14}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v7, "Alg.Alias.KeyGenerator.HMAC/SHA512"

    invoke-virtual {v0, v7, v14}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "OpenSSLRSAKeyPairGenerator"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "KeyPairGenerator.RSA"

    invoke-virtual {v0, v15, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v7, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string v15, "RSA"

    invoke-virtual {v0, v7, v15}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v7, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.7"

    invoke-virtual {v0, v7, v15}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v7, "Alg.Alias.KeyPairGenerator.2.5.8.1.1"

    invoke-virtual {v0, v7, v15}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "classOpenSSLContextImpl":Ljava/lang/String;
    .restart local v16    # "classOpenSSLContextImpl":Ljava/lang/String;
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "OpenSSLECKeyPairGenerator"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "KeyPairGenerator.EC"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v2, "Alg.Alias.KeyPairGenerator.1.2.840.10045.2.1"

    const-string v7, "EC"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v2, "Alg.Alias.KeyPairGenerator.1.3.133.16.840.63.0.2"

    const-string v7, "EC"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "OpenSSLXDHKeyPairGenerator"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "KeyPairGenerator.XDH"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v2, "Alg.Alias.KeyPairGenerator.1.3.101.110"

    const-string v7, "XDH"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "Alg.Alias.KeyPairGenerator.X25519"

    const-string v7, "XDH"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "OpenSSLRSAKeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "KeyFactory.RSA"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    invoke-virtual {v0, v2, v15}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v2, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.7"

    invoke-virtual {v0, v2, v15}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v2, "Alg.Alias.KeyFactory.2.5.8.1.1"

    invoke-virtual {v0, v2, v15}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "OpenSSLECKeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "KeyFactory.EC"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v2, "Alg.Alias.KeyFactory.1.2.840.10045.2.1"

    const-string v7, "EC"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "Alg.Alias.KeyFactory.1.3.133.16.840.63.0.2"

    const-string v7, "EC"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "OpenSSLXDHKeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "KeyFactory.XDH"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v2, "Alg.Alias.KeyFactory.1.3.101.110"

    const-string v7, "XDH"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v2, "Alg.Alias.KeyFactory.X25519"

    const-string v7, "XDH"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "DESEDESecretKeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SecretKeyFactory.DESEDE"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "Alg.Alias.SecretKeyFactory.TDEA"

    const-string v7, "DESEDE"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "ScryptSecretKeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SecretKeyFactory.SCRYPT"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "Alg.Alias.SecretKeyFactory.1.3.6.1.4.1.11591.4.11"

    const-string v7, "SCRYPT"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v2, "Alg.Alias.SecretKeyFactory.OID.1.3.6.1.4.1.11591.4.11"

    const-string v7, "SCRYPT"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "OpenSSLECDHKeyAgreement"

    invoke-direct {v0, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    .line 245
    const-string v2, "OpenSSLXDHKeyAgreement"

    invoke-direct {v0, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putXDHKeyAgreementImplClass(Ljava/lang/String;)V

    .line 248
    const-string v2, "OpenSSLSignature$MD5RSA"

    const-string v7, "MD5withRSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "Alg.Alias.Signature.MD5withRSAEncryption"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "Alg.Alias.Signature.MD5/RSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "OpenSSLSignature$SHA1RSA"

    const-string v7, "SHA1withRSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "Alg.Alias.Signature.SHA1withRSAEncryption"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v2, "Alg.Alias.Signature.SHA1/RSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v2, "Alg.Alias.Signature.SHA-1/RSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v2, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.29"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "OpenSSLSignature$SHA224RSA"

    const-string v7, "SHA224withRSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "Alg.Alias.Signature.SHA224withRSAEncryption"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v2, "Alg.Alias.Signature.SHA224/RSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v2, "Alg.Alias.Signature.1.2.840.113549.1.1.14"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.14"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.14"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "OpenSSLSignature$SHA256RSA"

    const-string v7, "SHA256withRSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "Alg.Alias.Signature.SHA256withRSAEncryption"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "Alg.Alias.Signature.SHA256/RSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v2, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v2, "OpenSSLSignature$SHA384RSA"

    const-string v7, "SHA384withRSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "Alg.Alias.Signature.SHA384withRSAEncryption"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v2, "Alg.Alias.Signature.SHA384/RSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v2, "OpenSSLSignature$SHA512RSA"

    const-string v7, "SHA512withRSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "Alg.Alias.Signature.SHA512withRSAEncryption"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v2, "Alg.Alias.Signature.SHA512/RSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v2, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v2, "OpenSSLSignatureRawRSA"

    invoke-direct {v0, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    .line 304
    const-string v2, "NONEwithECDSA"

    const-string v7, "OpenSSLSignatureRawECDSA"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "OpenSSLSignature$SHA1ECDSA"

    const-string v7, "SHA1withECDSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v2, "Alg.Alias.Signature.ECDSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "Alg.Alias.Signature.ECDSAwithSHA1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v2, "Alg.Alias.Signature.1.2.840.10045.4.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v2, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v2, "OpenSSLSignature$SHA224ECDSA"

    const-string v7, "SHA224withECDSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v2, "Alg.Alias.Signature.SHA224/ECDSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v2, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v2, "OpenSSLSignature$SHA256ECDSA"

    const-string v7, "SHA256withECDSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "Alg.Alias.Signature.SHA256/ECDSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.2"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "OpenSSLSignature$SHA384ECDSA"

    const-string v7, "SHA384withECDSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "Alg.Alias.Signature.SHA384/ECDSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v2, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.3"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v2, "OpenSSLSignature$SHA512ECDSA"

    const-string v7, "SHA512withECDSA"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v2, "Alg.Alias.Signature.SHA512/ECDSA"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v2, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v2, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.4"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v2, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v2, "SHA1withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA1RSAPSS"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v2, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string v7, "SHA1withRSA/PSS"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v2, "SHA224withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA224RSAPSS"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v2, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string v7, "SHA224withRSA/PSS"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v2, "SHA256withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA256RSAPSS"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string v7, "SHA256withRSA/PSS"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v2, "SHA384withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA384RSAPSS"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v2, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string v7, "SHA384withRSA/PSS"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "SHA512withRSA/PSS"

    const-string v7, "OpenSSLSignature$SHA512RSAPSS"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string v7, "SHA512withRSA/PSS"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "OpenSSLRandom"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SecureRandom.SHA1PRNG"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v7, "Software"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v2, "RSA/ECB/NoPadding"

    const-string v7, "OpenSSLCipherRSA$Raw"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v2, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string v7, "RSA/ECB/NoPadding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v2, "RSA/ECB/PKCS1Padding"

    const-string v7, "OpenSSLCipherRSA$PKCS1"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string v7, "RSA/ECB/PKCS1Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v2, "RSA/ECB/OAEPPadding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string v7, "RSA/ECB/OAEPPadding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v2, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v2, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA224"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA256"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v2, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA384"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v2, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string v7, "OpenSSLCipherRSA$OAEP$SHA512"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v2, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string v7, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v2, "AES/ECB/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES$ECB$NoPadding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "AES/ECB/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES$ECB$PKCS5Padding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v2, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    const-string v7, "AES/ECB/PKCS5Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v2, "AES/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES$CBC$NoPadding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "AES/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES$CBC$PKCS5Padding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v2, "AES/CTR/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES$CTR"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "AES_128/ECB/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$ECB$NoPadding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v2, "AES_128/ECB/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$ECB$PKCS5Padding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v2, "Alg.Alias.Cipher.AES_128/ECB/PKCS7Padding"

    const-string v7, "AES_128/ECB/PKCS5Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v2, "AES_128/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$CBC$NoPadding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v2, "AES_128/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_128$CBC$PKCS5Padding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v2, "Alg.Alias.Cipher.AES_128/CBC/PKCS7Padding"

    const-string v7, "AES_128/CBC/PKCS5Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_128"

    const-string v7, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_128"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_128"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_128"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_128"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v2, "AES_256/ECB/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$ECB$NoPadding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v2, "AES_256/ECB/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$ECB$PKCS5Padding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "Alg.Alias.Cipher.AES_256/ECB/PKCS7Padding"

    const-string v7, "AES_256/ECB/PKCS5Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v2, "AES_256/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$CBC$NoPadding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v2, "AES_256/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherAES$AES_256$CBC$PKCS5Padding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v2, "Alg.Alias.Cipher.AES_256/CBC/PKCS7Padding"

    const-string v7, "AES_256/CBC/PKCS5Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_256"

    const-string v7, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_256"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_256"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_256"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v2, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_256"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v2, "DESEDE/CBC/NoPadding"

    const-string v7, "OpenSSLEvpCipherDESEDE$CBC$NoPadding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v2, "DESEDE/CBC/PKCS5Padding"

    const-string v7, "OpenSSLEvpCipherDESEDE$CBC$PKCS5Padding"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v2, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    const-string v7, "DESEDE/CBC/PKCS5Padding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v2, "OpenSSLEvpCipherARC4"

    invoke-direct {v0, v8, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v2, "Alg.Alias.Cipher.ARCFOUR"

    invoke-virtual {v0, v2, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v2, "Alg.Alias.Cipher.RC4"

    invoke-virtual {v0, v2, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v2, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    invoke-virtual {v0, v2, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v2, "Alg.Alias.Cipher.OID.1.2.840.113549.3.4"

    invoke-virtual {v0, v2, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v2, "OpenSSLAeadCipherAES$GCM"

    const-string v7, "AES/GCM/NoPadding"

    invoke-direct {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v2, "Alg.Alias.Cipher.GCM"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.6"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.26"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v2, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.46"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v2, "AES_128/GCM/NoPadding"

    const-string v7, "OpenSSLAeadCipherAES$GCM$AES_128"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v2, "AES_256/GCM/NoPadding"

    const-string v7, "OpenSSLAeadCipherAES$GCM$AES_256"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v2, "AES/GCM-SIV/NoPadding"

    const-string v7, "OpenSSLAeadCipherAES$GCM_SIV"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v2, "AES_128/GCM-SIV/NoPadding"

    const-string v7, "OpenSSLAeadCipherAES$GCM_SIV$AES_128"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v2, "AES_256/GCM-SIV/NoPadding"

    const-string v7, "OpenSSLAeadCipherAES$GCM_SIV$AES_256"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "ChaCha20"

    const-string v7, "OpenSSLCipherChaCha20"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "ChaCha20/Poly1305/NoPadding"

    const-string v7, "OpenSSLAeadCipherChaCha20"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "Alg.Alias.Cipher.ChaCha20-Poly1305"

    const-string v7, "ChaCha20/Poly1305/NoPadding"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v2, "OpenSSLMac$HmacMD5"

    invoke-direct {v0, v9, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.1"

    invoke-virtual {v0, v2, v9}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v2, "Alg.Alias.Mac.HMAC-MD5"

    invoke-virtual {v0, v2, v9}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v2, "Alg.Alias.Mac.HMAC/MD5"

    invoke-virtual {v0, v2, v9}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v2, "OpenSSLMac$HmacSHA1"

    invoke-direct {v0, v10, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v2, "Alg.Alias.Mac.1.2.840.113549.2.7"

    invoke-virtual {v0, v2, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v2, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.2"

    invoke-virtual {v0, v2, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v2, "Alg.Alias.Mac.HMAC-SHA1"

    invoke-virtual {v0, v2, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v2, "Alg.Alias.Mac.HMAC/SHA1"

    invoke-virtual {v0, v2, v10}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v2, "OpenSSLMac$HmacSHA224"

    invoke-direct {v0, v11, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v2, "Alg.Alias.Mac.1.2.840.113549.2.8"

    invoke-virtual {v0, v2, v11}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v2, "Alg.Alias.Mac.HMAC-SHA224"

    invoke-virtual {v0, v2, v11}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v2, "Alg.Alias.Mac.HMAC/SHA224"

    invoke-virtual {v0, v2, v11}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v2, "Alg.Alias.Mac.PBEWITHHMACSHA224"

    invoke-virtual {v0, v2, v11}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v2, "OpenSSLMac$HmacSHA256"

    invoke-direct {v0, v12, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v2, "Alg.Alias.Mac.1.2.840.113549.2.9"

    invoke-virtual {v0, v2, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v2, "Alg.Alias.Mac.2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v2, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v2, "Alg.Alias.Mac.HMAC-SHA256"

    invoke-virtual {v0, v2, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v2, "Alg.Alias.Mac.HMAC/SHA256"

    invoke-virtual {v0, v2, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v2, "Alg.Alias.Mac.PBEWITHHMACSHA256"

    invoke-virtual {v0, v2, v12}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v2, "OpenSSLMac$HmacSHA384"

    invoke-direct {v0, v13, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v2, "Alg.Alias.Mac.1.2.840.113549.2.10"

    invoke-virtual {v0, v2, v13}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "Alg.Alias.Mac.HMAC-SHA384"

    invoke-virtual {v0, v2, v13}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v2, "Alg.Alias.Mac.HMAC/SHA384"

    invoke-virtual {v0, v2, v13}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v2, "Alg.Alias.Mac.PBEWITHHMACSHA384"

    invoke-virtual {v0, v2, v13}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v2, "OpenSSLMac$HmacSHA512"

    invoke-direct {v0, v14, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v2, "Alg.Alias.Mac.1.2.840.113549.2.11"

    invoke-virtual {v0, v2, v14}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v2, "Alg.Alias.Mac.HMAC-SHA512"

    invoke-virtual {v0, v2, v14}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string v2, "Alg.Alias.Mac.HMAC/SHA512"

    invoke-virtual {v0, v2, v14}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v2, "Alg.Alias.Mac.PBEWITHHMACSHA512"

    invoke-virtual {v0, v2, v14}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v2, "AESCMAC"

    const-string v7, "OpenSSLMac$AesCmac"

    invoke-direct {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "OpenSSLX509CertificateFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "CertificateFactory.X509"

    invoke-virtual {v0, v7, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v2, "Alg.Alias.CertificateFactory.X.509"

    const-string v7, "X509"

    invoke-virtual {v0, v2, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v2, "android.crypto.hpke.HpkeSpi"

    invoke-direct {v0, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->classExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "AndroidHpkeSpi"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a67

    .line 536
    :cond_a52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "HpkeImpl"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a67
    nop

    .line 538
    .local v2, "baseClass":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$X25519_AES_128"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ConscryptHpke.DHKEM_X25519_HKDF_SHA256/HKDF_SHA256/AES_128_GCM"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v7, "Alg.Alias.ConscryptHpke.DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    const-string v8, "DHKEM_X25519_HKDF_SHA256/HKDF_SHA256/AES_128_GCM"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$X25519_AES_256"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ConscryptHpke.DHKEM_X25519_HKDF_SHA256/HKDF_SHA256/AES_256_GCM"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v7, "Alg.Alias.ConscryptHpke.DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    const-string v8, "DHKEM_X25519_HKDF_SHA256/HKDF_SHA256/AES_256_GCM"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$X25519_CHACHA20"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ConscryptHpke.DHKEM_X25519_HKDF_SHA256/HKDF_SHA256/CHACHA20POLY1305"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v7, "Alg.Alias.ConscryptHpke.DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_GhpkeCHACHA20POLY1305"

    const-string v8, "DHKEM_X25519_HKDF_SHA256/HKDF_SHA256/CHACHA20POLY1305"

    invoke-virtual {v0, v7, v8}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->isPakeSupported()Z

    move-result v7

    if-eqz v7, :cond_aff

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "PakeTrustManagerFactory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TrustManagerFactory.PAKE"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "PakeKeyManagerFactory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KeyManagerFactory.PAKE"

    invoke-virtual {v0, v8, v7}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_aff
    return-void

    :pswitch_data_b00
    .packed-switch -0x1dfc3f26
        :pswitch_4b
        :pswitch_41
    .end packed-switch

    :pswitch_data_b08
    .packed-switch 0x0
        :pswitch_76
        :pswitch_74
    .end packed-switch
.end method

.method private blacklist classExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "classname"    # Ljava/lang/String;

    .line 560
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_6

    .line 563
    nop

    .line 564
    const/4 v0, 0x1

    return v0

    .line 561
    :catch_6
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLKeyHolder|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "PKCS#8"

    .line 652
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyAgreement.ECDH"

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private blacklist putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "typeAndAlgName"    # Ljava/lang/String;
    .param p2, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p3, "supportedKeyClasses"    # Ljava/lang/String;
    .param p4, "supportedKeyFormats"    # Ljava/lang/String;

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    if-eqz p3, :cond_1b

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_1b
    if-eqz p4, :cond_33

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyFormats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_33
    return-void
.end method

.method private blacklist putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLKeyHolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "RAW"

    .line 573
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mac."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private blacklist putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLRSAPublicKey|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    .line 637
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Signature.NONEwithRSA"

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private blacklist putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLRSAPublicKey|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    .line 601
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method private blacklist putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLKeyHolder|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "PKCS#8|X.509"

    .line 621
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method private blacklist putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "RAW"

    .line 585
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method private blacklist putXDHKeyAgreementImplClass(Ljava/lang/String;)V
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLKeyHolder|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.security.interfaces.XECPrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OpenSSLX25519PrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "PKCS#8"

    .line 668
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyAgreement.XDH"

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v2, "Alg.Alias.KeyAgreement.X25519"

    const-string v3, "XDH"

    invoke-virtual {p0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-void
.end method
