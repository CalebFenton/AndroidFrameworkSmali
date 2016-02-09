.class public Lcom/android/org/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;,
        Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    }
.end annotation


# static fields
.field private static final KEY_TYPE_DH_RSA:Ljava/lang/String; = "DH_RSA"

.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_EC_EC:Ljava/lang/String; = "EC_EC"

.field private static final KEY_TYPE_EC_RSA:Ljava/lang/String; = "EC_RSA"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static volatile defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field alpnProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private enable_session_creation:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field private need_client_auth:Z

.field npnProtocols:[B

.field private final pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field useSessionTickets:Z

.field private useSni:Ljava/lang/Boolean;

.field private want_client_auth:Z

.field private final x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V
    .locals 5
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .param p4, "clientSessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p5, "serverSessionContext"    # Lcom/android/org/conscrypt/ServerSessionContext;
    .param p6, "protocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 89
    iput-boolean v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@8
    .line 91
    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@a
    .line 93
    iput-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@c
    .line 95
    iput-boolean v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    #@e
    .line 121
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@10
    .line 122
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@12
    .line 125
    if-nez p1, :cond_2

    #@14
    .line 126
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@1a
    .line 128
    iput-object v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@1c
    .line 135
    :goto_0
    if-nez p2, :cond_3

    #@1e
    .line 136
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@24
    .line 146
    :goto_1
    iput-object p3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@26
    .line 150
    if-nez p6, :cond_0

    #@28
    sget-object p6, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    #@2a
    .line 149
    .end local p6    # "protocols":[Ljava/lang/String;
    :cond_0
    invoke-static {p6}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, [Ljava/lang/String;

    #@34
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    #@36
    .line 151
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@38
    if-nez v2, :cond_1

    #@3a
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@3c
    if-eqz v2, :cond_4

    #@3e
    :cond_1
    const/4 v1, 0x1

    #@3f
    .line 152
    .local v1, "x509CipherSuitesNeeded":Z
    :goto_2
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@41
    if-eqz v2, :cond_5

    #@43
    const/4 v0, 0x1

    #@44
    .line 153
    .local v0, "pskCipherSuitesNeeded":Z
    :goto_3
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@4a
    .line 120
    return-void

    #@4b
    .line 130
    .end local v0    # "pskCipherSuitesNeeded":Z
    .end local v1    # "x509CipherSuitesNeeded":Z
    .restart local p6    # "protocols":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    #@4e
    move-result-object v2

    #@4f
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@51
    .line 131
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@57
    goto :goto_0

    #@58
    .line 138
    :cond_3
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    #@5b
    move-result-object v2

    #@5c
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@5e
    goto :goto_1

    #@5f
    .line 151
    .end local p6    # "protocols":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@60
    .restart local v1    # "x509CipherSuitesNeeded":Z
    goto :goto_2

    #@61
    .line 152
    :cond_5
    const/4 v0, 0x0

    #@62
    .restart local v0    # "pskCipherSuitesNeeded":Z
    goto :goto_3
.end method

.method private static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "arrays"    # [[Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1019
    const/4 v2, 0x0

    #@2
    .line 1020
    .local v2, "resultLength":I
    array-length v6, p0

    #@3
    move v4, v5

    #@4
    :goto_0
    if-ge v4, v6, :cond_0

    #@6
    aget-object v0, p0, v4

    #@8
    .line 1021
    .local v0, "array":[Ljava/lang/String;
    array-length v7, v0

    #@9
    add-int/2addr v2, v7

    #@a
    .line 1020
    add-int/lit8 v4, v4, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1023
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    #@f
    .line 1024
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    #@10
    .line 1025
    .local v3, "resultOffset":I
    array-length v6, p0

    #@11
    move v4, v5

    #@12
    :goto_1
    if-ge v4, v6, :cond_1

    #@14
    aget-object v0, p0, v4

    #@16
    .line 1026
    .restart local v0    # "array":[Ljava/lang/String;
    array-length v7, v0

    #@17
    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 1027
    array-length v7, v0

    #@1b
    add-int/2addr v3, v7

    #@1c
    .line 1025
    add-int/lit8 v4, v4, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 1029
    .end local v0    # "array":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "certificateRefs"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 362
    if-nez p0, :cond_0

    #@3
    .line 363
    return-object v2

    #@4
    .line 365
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@7
    .line 366
    .local v0, "certificates":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 367
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@d
    aget-wide v4, p0, v1

    #@f
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@12
    aput-object v2, v0, v1

    #@14
    .line 366
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 369
    :cond_1
    return-object v0
.end method

.method private static createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 789
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 790
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    #@7
    move-result-object v4

    #@8
    .line 791
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v7, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    invoke-virtual {v4, v7, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    #@d
    .line 792
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@10
    move-result-object v5

    #@11
    .line 793
    .local v5, "kms":[Ljavax/net/ssl/KeyManager;
    invoke-static {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    #@14
    move-result-object v6

    #@15
    .line 794
    .local v6, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v6, :cond_0

    #@17
    .line 795
    new-instance v7, Ljava/security/KeyManagementException;

    #@19
    new-instance v8, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v9, "No X509KeyManager among default KeyManagers: "

    #@21
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    .line 796
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    .line 795
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    invoke-direct {v7, v8}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@34
    throw v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1

    #@35
    .line 799
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_0
    move-exception v2

    #@36
    .line 800
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/KeyManagementException;

    #@38
    invoke-direct {v7, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@3b
    throw v7

    #@3c
    .line 798
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :cond_0
    return-object v6

    #@3d
    .line 803
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_1
    move-exception v3

    #@3e
    .line 804
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v7, Ljava/security/KeyManagementException;

    #@40
    invoke-direct {v7, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@43
    throw v7

    #@44
    .line 801
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_2
    move-exception v1

    #@45
    .line 802
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v7, Ljava/security/KeyManagementException;

    #@47
    invoke-direct {v7, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@4a
    throw v7
.end method

.method private static createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 858
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 859
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@7
    move-result-object v3

    #@8
    .line 860
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v6, 0x0

    #@9
    check-cast v6, Ljava/security/KeyStore;

    #@b
    invoke-virtual {v3, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@e
    .line 861
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@11
    move-result-object v4

    #@12
    .line 862
    .local v4, "tms":[Ljavax/net/ssl/TrustManager;
    invoke-static {v4}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    #@15
    move-result-object v5

    #@16
    .line 863
    .local v5, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v5, :cond_0

    #@18
    .line 864
    new-instance v6, Ljava/security/KeyManagementException;

    #@1a
    .line 865
    new-instance v7, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v8, "No X509TrustManager in among default TrustManagers: "

    #@22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    .line 866
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    .line 865
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    .line 864
    invoke-direct {v6, v7}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@35
    throw v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    #@36
    .line 869
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v2

    #@37
    .line 870
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/KeyManagementException;

    #@39
    invoke-direct {v6, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v6

    #@3d
    .line 868
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .restart local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-object v5

    #@3e
    .line 871
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v1

    #@3f
    .line 872
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v6, Ljava/security/KeyManagementException;

    #@41
    invoke-direct {v6, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@44
    throw v6
.end method

.method static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    array-length v2, p0

    #@1
    new-array v1, v2, [[B

    #@3
    .line 350
    .local v1, "principalBytes":[[B
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 351
    aget-object v2, p0, v0

    #@9
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    .line 350
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 353
    :cond_0
    return-object v1
.end method

.method private static findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;
    .locals 6
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 828
    const/4 v2, 0x0

    #@2
    array-length v3, p0

    #@3
    :goto_0
    if-ge v2, v3, :cond_2

    #@5
    aget-object v1, p0, v2

    #@7
    .line 829
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    instance-of v4, v1, Lcom/android/org/conscrypt/PSKKeyManager;

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 830
    check-cast v1, Lcom/android/org/conscrypt/PSKKeyManager;

    #@d
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    return-object v1

    #@e
    .line 831
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    if-eqz v1, :cond_1

    #@10
    .line 833
    :try_start_0
    invoke-static {v1}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 834
    :catch_0
    move-exception v0

    #@16
    .line 828
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 837
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_2
    return-object v5
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    #@0
    .prologue
    .line 814
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_1

    #@4
    aget-object v0, p0, v1

    #@6
    .line 815
    .local v0, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v0, Ljavax/net/ssl/X509KeyManager;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 816
    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    #@c
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    return-object v0

    #@d
    .line 814
    .restart local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 819
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_1
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method private static findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    #@0
    .prologue
    .line 882
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_1

    #@4
    aget-object v0, p0, v1

    #@6
    .line 883
    .local v0, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 884
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    #@c
    .end local v0    # "tm":Ljavax/net/ssl/TrustManager;
    return-object v0

    #@d
    .line 882
    .restart local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 887
    .end local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public static getClientKeyType(B)Ljava/lang/String;
    .locals 1
    .param p0, "clientCertificateType"    # B

    #@0
    .prologue
    .line 945
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 957
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 947
    :sswitch_0
    const-string/jumbo v0, "RSA"

    #@8
    return-object v0

    #@9
    .line 949
    :sswitch_1
    const-string/jumbo v0, "DH_RSA"

    #@c
    return-object v0

    #@d
    .line 951
    :sswitch_2
    const-string/jumbo v0, "EC"

    #@10
    return-object v0

    #@11
    .line 953
    :sswitch_3
    const-string/jumbo v0, "EC_RSA"

    #@14
    return-object v0

    #@15
    .line 955
    :sswitch_4
    const-string/jumbo v0, "EC_EC"

    #@18
    return-object v0

    #@19
    .line 945
    nop

    #@1a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x40 -> :sswitch_2
        0x41 -> :sswitch_3
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static getDefault()Lcom/android/org/conscrypt/SSLParametersImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 158
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@3
    .line 159
    .local v0, "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    if-nez v0, :cond_0

    #@5
    .line 161
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@7
    .line 164
    .end local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    new-instance v4, Lcom/android/org/conscrypt/ClientSessionContext;

    #@9
    invoke-direct {v4}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    #@c
    .line 165
    new-instance v5, Lcom/android/org/conscrypt/ServerSessionContext;

    #@e
    invoke-direct {v5}, Lcom/android/org/conscrypt/ServerSessionContext;-><init>()V

    #@11
    move-object v2, v1

    #@12
    move-object v3, v1

    #@13
    move-object v6, v1

    #@14
    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    #@17
    .restart local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@19
    .line 168
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@1f
    return-object v1
.end method

.method private static getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .locals 6
    .param p0, "x509CipherSuitesNeeded"    # Z
    .param p1, "pskCipherSuitesNeeded"    # Z

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 988
    if-eqz p0, :cond_1

    #@5
    .line 990
    if-eqz p1, :cond_0

    #@7
    .line 997
    const/4 v0, 0x3

    #@8
    new-array v0, v0, [[Ljava/lang/String;

    #@a
    .line 998
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    #@c
    aput-object v1, v0, v3

    #@e
    .line 999
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    #@10
    aput-object v1, v0, v4

    #@12
    .line 1000
    new-array v1, v4, [Ljava/lang/String;

    #@14
    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@17
    aput-object v2, v1, v3

    #@19
    aput-object v1, v0, v5

    #@1b
    .line 997
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0

    #@20
    .line 1003
    :cond_0
    new-array v0, v5, [[Ljava/lang/String;

    #@22
    .line 1004
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    #@24
    aput-object v1, v0, v3

    #@26
    .line 1005
    new-array v1, v4, [Ljava/lang/String;

    #@28
    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@2b
    aput-object v2, v1, v3

    #@2d
    aput-object v1, v0, v4

    #@2f
    .line 1003
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0

    #@34
    .line 1007
    :cond_1
    if-eqz p1, :cond_2

    #@36
    .line 1009
    new-array v0, v5, [[Ljava/lang/String;

    #@38
    .line 1010
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    #@3a
    aput-object v1, v0, v3

    #@3c
    .line 1011
    new-array v1, v4, [Ljava/lang/String;

    #@3e
    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@41
    aput-object v2, v1, v3

    #@43
    aput-object v1, v0, v4

    #@45
    .line 1009
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0

    #@4a
    .line 1014
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    #@4c
    const-string/jumbo v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@4f
    aput-object v1, v0, v3

    #@51
    return-object v0
.end method

.method private static getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 780
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@2
    .line 781
    .local v0, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_0

    #@4
    .line 783
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@a
    .line 785
    :cond_0
    return-object v0
.end method

.method public static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 847
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@2
    .line 848
    .local v0, "result":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_0

    #@4
    .line 850
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@a
    .line 852
    :cond_0
    return-object v0
.end method

.method private static getServerX509KeyType(J)Ljava/lang/String;
    .locals 2
    .param p0, "sslCipherNative"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 919
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 920
    .local v0, "kx_name":Ljava/lang/String;
    const-string/jumbo v1, "RSA"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const-string/jumbo v1, "DHE_RSA"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    const-string/jumbo v1, "ECDHE_RSA"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 921
    :cond_0
    const-string/jumbo v1, "RSA"

    #@22
    return-object v1

    #@23
    .line 922
    :cond_1
    const-string/jumbo v1, "ECDHE_ECDSA"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 923
    const-string/jumbo v1, "EC"

    #@2f
    return-object v1

    #@30
    .line 924
    :cond_2
    const-string/jumbo v1, "ECDH_RSA"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 925
    const-string/jumbo v1, "EC_RSA"

    #@3c
    return-object v1

    #@3d
    .line 926
    :cond_3
    const-string/jumbo v1, "ECDH_ECDSA"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_4

    #@46
    .line 927
    const-string/jumbo v1, "EC_EC"

    #@49
    return-object v1

    #@4a
    .line 928
    :cond_4
    const-string/jumbo v1, "DH_RSA"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_5

    #@53
    .line 929
    const-string/jumbo v1, "DH_RSA"

    #@56
    return-object v1

    #@57
    .line 931
    :cond_5
    const/4 v1, 0x0

    #@58
    return-object v1
.end method

.method public static getSupportedClientKeyTypes([B)Ljava/util/Set;
    .locals 5
    .param p0, "clientCertificateTypes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 973
    new-instance v2, Ljava/util/HashSet;

    #@2
    array-length v3, p0

    #@3
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@6
    .line 974
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@7
    array-length v4, p0

    #@8
    :goto_0
    if-ge v3, v4, :cond_1

    #@a
    aget-byte v1, p0, v3

    #@c
    .line 975
    .local v1, "keyTypeCode":B
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientKeyType(B)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 976
    .local v0, "keyType":Ljava/lang/String;
    if-nez v0, :cond_0

    #@12
    .line 974
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 980
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@18
    goto :goto_1

    #@19
    .line 982
    .end local v0    # "keyType":Ljava/lang/String;
    .end local v1    # "keyTypeCode":B
    :cond_1
    return-object v2
.end method

.method private isSniEnabledByDefault()Z
    .locals 3

    #@0
    .prologue
    .line 540
    const-string/jumbo v1, "jsse.enableSNIExtension"

    #@3
    const-string/jumbo v2, "true"

    #@6
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 541
    .local v0, "enableSNI":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 542
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 543
    :cond_0
    const-string/jumbo v1, "false"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 544
    const/4 v1, 0x0

    #@1f
    return v1

    #@20
    .line 546
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@22
    .line 547
    const-string/jumbo v2, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    #@25
    .line 546
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method


# virtual methods
.method chooseClientCertificate([B[[BJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V
    .locals 9
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .param p3, "sslNativePointer"    # J
    .param p5, "chooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 619
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSupportedClientKeyTypes([B)Ljava/util/Set;

    #@3
    move-result-object v5

    #@4
    .line 620
    .local v5, "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    #@7
    move-result v6

    #@8
    new-array v6, v6, [Ljava/lang/String;

    #@a
    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    check-cast v4, [Ljava/lang/String;

    #@10
    .line 623
    .local v4, "keyTypes":[Ljava/lang/String;
    if-nez p2, :cond_1

    #@12
    .line 624
    const/4 v2, 0x0

    #@13
    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@16
    move-result-object v3

    #@17
    .line 632
    .local v3, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_2

    #@19
    invoke-interface {p5, v3, v2, v4}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 634
    :goto_0
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V

    #@20
    .line 618
    return-void

    #@21
    .line 626
    .end local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_1
    array-length v6, p2

    #@22
    new-array v2, v6, [Ljavax/security/auth/x500/X500Principal;

    #@24
    .line 627
    .local v2, "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_1
    array-length v6, p2

    #@26
    if-ge v1, v6, :cond_0

    #@28
    .line 628
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    #@2a
    aget-object v7, p2, v1

    #@2c
    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@2f
    aput-object v6, v2, v1

    #@31
    .line 627
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_1

    #@34
    .line 633
    .end local v1    # "i":I
    .end local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    .restart local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_2
    const/4 v0, 0x0

    #@35
    .local v0, "alias":Ljava/lang/String;
    goto :goto_0
.end method

.method clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 9
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identityBytesOut"    # [B
    .param p3, "key"    # [B
    .param p4, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 642
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    #@4
    move-result-object v3

    #@5
    .line 643
    .local v3, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v3, :cond_0

    #@7
    .line 644
    return v8

    #@8
    .line 647
    :cond_0
    invoke-interface {p4, v3, p1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 650
    .local v1, "identity":Ljava/lang/String;
    if-nez v1, :cond_1

    #@e
    .line 651
    const-string/jumbo v1, ""

    #@11
    .line 652
    sget-object v2, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@13
    .line 662
    .local v2, "identityBytes":[B
    :goto_0
    array-length v6, v2

    #@14
    add-int/lit8 v6, v6, 0x1

    #@16
    array-length v7, p2

    #@17
    if-le v6, v7, :cond_3

    #@19
    .line 664
    return v8

    #@1a
    .line 653
    .end local v2    # "identityBytes":[B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_2

    #@20
    .line 654
    sget-object v2, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@22
    .restart local v2    # "identityBytes":[B
    goto :goto_0

    #@23
    .line 657
    .end local v2    # "identityBytes":[B
    :cond_2
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    #@26
    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v2

    #@2a
    .restart local v2    # "identityBytes":[B
    goto :goto_0

    #@2b
    .line 658
    .end local v2    # "identityBytes":[B
    :catch_0
    move-exception v0

    #@2c
    .line 659
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v7, "UTF-8 encoding not supported"

    #@31
    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v6

    #@35
    .line 666
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "identityBytes":[B
    :cond_3
    array-length v6, v2

    #@36
    if-lez v6, :cond_4

    #@38
    .line 667
    array-length v6, v2

    #@39
    invoke-static {v2, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3c
    .line 669
    :cond_4
    array-length v6, v2

    #@3d
    aput-byte v8, p2, v6

    #@3f
    .line 671
    invoke-interface {p4, v3, p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    #@42
    move-result-object v4

    #@43
    .line 672
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@46
    move-result-object v5

    #@47
    .line 673
    .local v5, "secretKeyBytes":[B
    if-nez v5, :cond_5

    #@49
    .line 674
    return v8

    #@4a
    .line 675
    :cond_5
    array-length v6, v5

    #@4b
    array-length v7, p3

    #@4c
    if-le v6, v7, :cond_6

    #@4e
    .line 677
    return v8

    #@4f
    .line 679
    :cond_6
    array-length v6, v5

    #@50
    invoke-static {v5, v8, p3, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@53
    .line 680
    array-length v6, v5

    #@54
    return v6
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 773
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 774
    :catch_0
    move-exception v0

    #@6
    .line 775
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 11
    .param p1, "sessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 708
    if-nez p2, :cond_0

    #@2
    .line 709
    const/4 v7, 0x0

    #@3
    return-object v7

    #@4
    .line 711
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    #@7
    move-result-object v6

    #@8
    check-cast v6, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@a
    .line 712
    .local v6, "session":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-nez v6, :cond_1

    #@c
    .line 713
    const/4 v7, 0x0

    #@d
    return-object v7

    #@e
    .line 716
    :cond_1
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    .line 717
    .local v4, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    #@13
    .line 718
    .local v5, "protocolFound":Z
    iget-object v8, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    #@15
    const/4 v7, 0x0

    #@16
    array-length v9, v8

    #@17
    :goto_0
    if-ge v7, v9, :cond_2

    #@19
    aget-object v3, v8, v7

    #@1b
    .line 719
    .local v3, "enabledProtocol":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v10

    #@1f
    if-eqz v10, :cond_3

    #@21
    .line 720
    const/4 v5, 0x1

    #@22
    .line 724
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_4

    #@24
    .line 725
    const/4 v7, 0x0

    #@25
    return-object v7

    #@26
    .line 718
    .restart local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@28
    goto :goto_0

    #@29
    .line 728
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 729
    .local v0, "cipherSuite":Ljava/lang/String;
    const/4 v1, 0x0

    #@2e
    .line 730
    .local v1, "cipherSuiteFound":Z
    iget-object v8, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@30
    const/4 v7, 0x0

    #@31
    array-length v9, v8

    #@32
    :goto_1
    if-ge v7, v9, :cond_5

    #@34
    aget-object v2, v8, v7

    #@36
    .line 731
    .local v2, "enabledCipherSuite":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v10

    #@3a
    if-eqz v10, :cond_6

    #@3c
    .line 732
    const/4 v1, 0x1

    #@3d
    .line 736
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_7

    #@3f
    .line 737
    const/4 v7, 0x0

    #@40
    return-object v7

    #@41
    .line 730
    .restart local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@43
    goto :goto_1

    #@44
    .line 740
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_7
    return-object v6
.end method

.method protected getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@2
    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .locals 1

    #@0
    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    #@2
    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@2
    return v0
.end method

.method protected getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@2
    return-object v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    #@0
    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 218
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@6
    return-object v1

    #@7
    .line 220
    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    #@9
    .line 221
    .local v0, "result":Ljava/security/SecureRandom;
    if-nez v0, :cond_1

    #@b
    .line 223
    new-instance v0, Ljava/security/SecureRandom;

    #@d
    .end local v0    # "result":Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@10
    .restart local v0    # "result":Ljava/security/SecureRandom;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    #@12
    .line 225
    :cond_1
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@14
    .line 226
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@16
    return-object v1
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method

.method protected getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@2
    return-object v0
.end method

.method public getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@9
    goto :goto_0
.end method

.method getSessionToReuse(JLjava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 5
    .param p1, "sslNativePointer"    # J
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    iget-boolean v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 377
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@6
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/org/conscrypt/SSLParametersImpl;->getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@9
    move-result-object v0

    #@a
    .line 378
    .local v0, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-eqz v0, :cond_0

    #@c
    .line 380
    iget-wide v2, v0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@e
    .line 379
    invoke-static {p1, p2, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session(JJ)V

    #@11
    .line 385
    .end local v0    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :cond_0
    :goto_0
    return-object v0

    #@12
    .line 383
    :cond_1
    const/4 v0, 0x0

    #@13
    .local v0, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    goto :goto_0
.end method

.method protected getUseClientMode()Z
    .locals 1

    #@0
    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@2
    return v0
.end method

.method protected getUseSni()Z
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    #@6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method protected getWantClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@2
    return v0
.end method

.method protected getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@2
    return-object v0
.end method

.method protected getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@2
    return-object v0
.end method

.method serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 6
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B
    .param p4, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 688
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    #@4
    move-result-object v0

    #@5
    .line 689
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v0, :cond_0

    #@7
    .line 690
    return v5

    #@8
    .line 692
    :cond_0
    invoke-interface {p4, v0, p1, p2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    #@b
    move-result-object v1

    #@c
    .line 693
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@f
    move-result-object v2

    #@10
    .line 694
    .local v2, "secretKeyBytes":[B
    if-nez v2, :cond_1

    #@12
    .line 695
    return v5

    #@13
    .line 696
    :cond_1
    array-length v3, v2

    #@14
    array-length v4, p3

    #@15
    if-le v3, v4, :cond_2

    #@17
    .line 697
    return v5

    #@18
    .line 699
    :cond_2
    array-length v3, v2

    #@19
    invoke-static {v2, v5, p3, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 700
    array-length v3, v2

    #@1d
    return v3
.end method

.method setCertificate(JLjava/lang/String;)V
    .locals 15
    .param p1, "sslNativePointer"    # J
    .param p3, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 408
    if-nez p3, :cond_0

    #@3
    .line 409
    return-void

    #@4
    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@7
    move-result-object v6

    #@8
    .line 412
    .local v6, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-nez v6, :cond_1

    #@a
    .line 413
    return-void

    #@b
    .line 415
    :cond_1
    move-object/from16 v0, p3

    #@d
    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    #@10
    move-result-object v9

    #@11
    .line 416
    .local v9, "privateKey":Ljava/security/PrivateKey;
    if-nez v9, :cond_2

    #@13
    .line 417
    return-void

    #@14
    .line 419
    :cond_2
    move-object/from16 v0, p3

    #@16
    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@19
    move-result-object v2

    #@1a
    .line 420
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_3

    #@1c
    .line 421
    return-void

    #@1d
    .line 423
    :cond_3
    array-length v12, v2

    #@1e
    if-lez v12, :cond_4

    #@20
    aget-object v12, v2, v13

    #@22
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@25
    move-result-object v10

    #@26
    .line 431
    :goto_0
    array-length v12, v2

    #@27
    new-array v8, v12, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@29
    .line 432
    .local v8, "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v12, v2

    #@2a
    new-array v11, v12, [J

    #@2c
    .line 433
    .local v11, "x509refs":[J
    const/4 v4, 0x0

    #@2d
    .local v4, "i":I
    :goto_1
    array-length v12, v2

    #@2e
    if-ge v4, v12, :cond_5

    #@30
    .line 435
    aget-object v12, v2, v4

    #@32
    .line 434
    invoke-static {v12}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@35
    move-result-object v7

    #@36
    .line 436
    .local v7, "openSslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    aput-object v7, v8, v4

    #@38
    .line 437
    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@3b
    move-result-wide v12

    #@3c
    aput-wide v12, v11, v4

    #@3e
    .line 433
    add-int/lit8 v4, v4, 0x1

    #@40
    goto :goto_1

    #@41
    .line 423
    .end local v4    # "i":I
    .end local v7    # "openSslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v8    # "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v11    # "x509refs":[J
    :cond_4
    const/4 v10, 0x0

    #@42
    .local v10, "publicKey":Ljava/security/PublicKey;
    goto :goto_0

    #@43
    .line 442
    .end local v10    # "publicKey":Ljava/security/PublicKey;
    .restart local v4    # "i":I
    .restart local v8    # "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v11    # "x509refs":[J
    :cond_5
    move-wide/from16 v0, p1

    #@45
    invoke-static {v0, v1, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_certificate(J[J)V

    #@48
    .line 446
    :try_start_0
    invoke-static {v9, v10}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@4b
    move-result-object v5

    #@4c
    .line 447
    .local v5, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@4f
    move-result-object v12

    #@50
    move-wide/from16 v0, p1

    #@52
    invoke-static {v0, v1, v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_PrivateKey(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    .line 454
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->isWrapped()Z

    #@58
    move-result v12

    #@59
    if-nez v12, :cond_6

    #@5b
    .line 457
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_check_private_key(J)V

    #@5e
    .line 407
    :cond_6
    return-void

    #@5f
    .line 448
    .end local v5    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v3

    #@60
    .line 449
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v12, Ljavax/net/ssl/SSLException;

    #@62
    invoke-direct {v12, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    #@65
    throw v12
.end method

.method setCertificateValidation(J)V
    .locals 7
    .param p1, "sslNativePointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 553
    iget-boolean v5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 556
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 558
    const/4 v5, 0x3

    #@c
    .line 557
    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    #@f
    .line 560
    const/4 v0, 0x1

    #@10
    .line 571
    .local v0, "certRequested":Z
    :goto_0
    if-eqz v0, :cond_0

    #@12
    .line 572
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@15
    move-result-object v4

    #@16
    .line 573
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    #@19
    move-result-object v2

    #@1a
    .line 574
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    #@1c
    array-length v5, v2

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 577
    :try_start_0
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v3

    #@23
    .line 581
    .local v3, "issuersBytes":[[B
    invoke-static {p1, p2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(J[[B)V

    #@26
    .line 551
    .end local v0    # "certRequested":Z
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "issuersBytes":[[B
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-void

    #@27
    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_2

    #@2d
    .line 563
    const/4 v5, 0x1

    #@2e
    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    #@31
    .line 564
    const/4 v0, 0x1

    #@32
    .restart local v0    # "certRequested":Z
    goto :goto_0

    #@33
    .line 567
    .end local v0    # "certRequested":Z
    :cond_2
    invoke-static {p1, p2, v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    #@36
    .line 568
    const/4 v0, 0x0

    #@37
    .restart local v0    # "certRequested":Z
    goto :goto_0

    #@38
    .line 578
    .restart local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    #@39
    .line 579
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    #@3b
    const-string/jumbo v6, "Problem encoding principals"

    #@3e
    invoke-direct {v5, v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    throw v5
.end method

.method protected setEnableSessionCreation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    #@2
    .line 319
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 247
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/lang/String;

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@c
    .line 246
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [Ljava/lang/String;

    #@a
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    #@c
    .line 261
    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "endpointIdentificationAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 895
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    #@2
    .line 894
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    #@0
    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@2
    .line 287
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@5
    .line 284
    return-void
.end method

.method setSSLParameters(JJLcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V
    .locals 21
    .param p1, "sslCtxNativePointer"    # J
    .param p3, "sslNativePointer"    # J
    .param p5, "chooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p6, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    .param p7, "sniHostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@4
    move-object/from16 v16, v0

    #@6
    if-eqz v16, :cond_0

    #@8
    .line 464
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_enable_npn(J)V

    #@b
    .line 467
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@f
    move/from16 v16, v0

    #@11
    if-eqz v16, :cond_1

    #@13
    move-object/from16 v0, p0

    #@15
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    #@17
    move-object/from16 v16, v0

    #@19
    if-eqz v16, :cond_1

    #@1b
    .line 468
    move-object/from16 v0, p0

    #@1d
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    #@1f
    move-object/from16 v16, v0

    #@21
    move-wide/from16 v0, p3

    #@23
    move-object/from16 v2, v16

    #@25
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_alpn_protos(J[B)I

    #@28
    .line 471
    :cond_1
    move-object/from16 v0, p0

    #@2a
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    #@2c
    move-object/from16 v16, v0

    #@2e
    move-wide/from16 v0, p3

    #@30
    move-object/from16 v2, v16

    #@32
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledProtocols(J[Ljava/lang/String;)V

    #@35
    .line 472
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@39
    move-object/from16 v16, v0

    #@3b
    move-wide/from16 v0, p3

    #@3d
    move-object/from16 v2, v16

    #@3f
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledCipherSuites(J[Ljava/lang/String;)V

    #@42
    .line 476
    move-object/from16 v0, p0

    #@44
    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@46
    move/from16 v16, v0

    #@48
    if-nez v16, :cond_4

    #@4a
    .line 477
    new-instance v11, Ljava/util/HashSet;

    #@4c
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    #@4f
    .line 478
    .local v11, "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ciphers(J)[J

    #@52
    move-result-object v17

    #@53
    const/16 v16, 0x0

    #@55
    move-object/from16 v0, v17

    #@57
    array-length v0, v0

    #@58
    move/from16 v18, v0

    #@5a
    :goto_0
    move/from16 v0, v16

    #@5c
    move/from16 v1, v18

    #@5e
    if-ge v0, v1, :cond_3

    #@60
    aget-wide v14, v17, v16

    #@62
    .line 479
    .local v14, "sslCipherNativePointer":J
    invoke-static {v14, v15}, Lcom/android/org/conscrypt/SSLParametersImpl;->getServerX509KeyType(J)Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    .line 480
    .local v9, "keyType":Ljava/lang/String;
    if-eqz v9, :cond_2

    #@68
    .line 481
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6b
    .line 478
    :cond_2
    add-int/lit8 v16, v16, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 484
    .end local v9    # "keyType":Ljava/lang/String;
    .end local v14    # "sslCipherNativePointer":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@71
    move-result-object v8

    #@72
    .line 485
    .local v8, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v8, :cond_4

    #@74
    .line 486
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@77
    move-result-object v10

    #@78
    .local v10, "keyType$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@7b
    move-result v16

    #@7c
    if-eqz v16, :cond_4

    #@7e
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v9

    #@82
    check-cast v9, Ljava/lang/String;

    #@84
    .line 489
    .restart local v9    # "keyType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@88
    move-object/from16 v16, v0

    #@8a
    move-object/from16 v0, p5

    #@8c
    move-object/from16 v1, v16

    #@8e
    invoke-interface {v0, v1, v9}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v16

    #@92
    .line 488
    move-object/from16 v0, p0

    #@94
    move-wide/from16 v1, p3

    #@96
    move-object/from16 v3, v16

    #@98
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@9b
    goto :goto_1

    #@9c
    .line 490
    :catch_0
    move-exception v4

    #@9d
    .line 491
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v16, Ljava/io/IOException;

    #@9f
    move-object/from16 v0, v16

    #@a1
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@a4
    throw v16

    #@a5
    .line 498
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v8    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    .end local v9    # "keyType":Ljava/lang/String;
    .end local v10    # "keyType$iterator":Ljava/util/Iterator;
    .end local v11    # "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    #@a8
    move-result-object v13

    #@a9
    .line 499
    .local v13, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-eqz v13, :cond_6

    #@ab
    .line 500
    const/4 v12, 0x0

    #@ac
    .line 501
    .local v12, "pskEnabled":Z
    move-object/from16 v0, p0

    #@ae
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@b0
    move-object/from16 v17, v0

    #@b2
    const/16 v16, 0x0

    #@b4
    move-object/from16 v0, v17

    #@b6
    array-length v0, v0

    #@b7
    move/from16 v18, v0

    #@b9
    :goto_2
    move/from16 v0, v16

    #@bb
    move/from16 v1, v18

    #@bd
    if-ge v0, v1, :cond_5

    #@bf
    aget-object v6, v17, v16

    #@c1
    .line 502
    .local v6, "enabledCipherSuite":Ljava/lang/String;
    if-eqz v6, :cond_a

    #@c3
    const-string/jumbo v19, "PSK"

    #@c6
    move-object/from16 v0, v19

    #@c8
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@cb
    move-result v19

    #@cc
    if-eqz v19, :cond_a

    #@ce
    .line 503
    const/4 v12, 0x1

    #@cf
    .line 507
    .end local v6    # "enabledCipherSuite":Ljava/lang/String;
    :cond_5
    if-eqz v12, :cond_6

    #@d1
    .line 508
    move-object/from16 v0, p0

    #@d3
    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@d5
    move/from16 v16, v0

    #@d7
    if-eqz v16, :cond_b

    #@d9
    .line 509
    const/16 v16, 0x1

    #@db
    move-wide/from16 v0, p3

    #@dd
    move/from16 v2, v16

    #@df
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JZ)V

    #@e2
    .line 518
    .end local v12    # "pskEnabled":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    #@e4
    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    #@e6
    move/from16 v16, v0

    #@e8
    if-eqz v16, :cond_7

    #@ea
    .line 519
    const-wide/16 v16, 0x4000

    #@ec
    move-wide/from16 v0, p3

    #@ee
    move-wide/from16 v2, v16

    #@f0
    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    #@f3
    .line 521
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    #@f6
    move-result v16

    #@f7
    if-eqz v16, :cond_8

    #@f9
    invoke-static/range {p7 .. p7}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    #@fc
    move-result v16

    #@fd
    if-eqz v16, :cond_8

    #@ff
    .line 522
    move-wide/from16 v0, p3

    #@101
    move-object/from16 v2, p7

    #@103
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLjava/lang/String;)V

    #@106
    .line 527
    :cond_8
    const-wide/16 v16, 0x100

    #@108
    move-wide/from16 v0, p3

    #@10a
    move-wide/from16 v2, v16

    #@10c
    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    #@10f
    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    #@112
    move-result v5

    #@113
    .line 530
    .local v5, "enableSessionCreation":Z
    if-nez v5, :cond_9

    #@115
    .line 531
    move-wide/from16 v0, p3

    #@117
    invoke-static {v0, v1, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    #@11a
    .line 462
    :cond_9
    return-void

    #@11b
    .line 501
    .end local v5    # "enableSessionCreation":Z
    .restart local v6    # "enabledCipherSuite":Ljava/lang/String;
    .restart local v12    # "pskEnabled":Z
    :cond_a
    add-int/lit8 v16, v16, 0x1

    #@11d
    goto :goto_2

    #@11e
    .line 511
    .end local v6    # "enabledCipherSuite":Ljava/lang/String;
    :cond_b
    const/16 v16, 0x1

    #@120
    move-wide/from16 v0, p3

    #@122
    move/from16 v2, v16

    #@124
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JZ)V

    #@127
    .line 512
    move-object/from16 v0, p6

    #@129
    invoke-interface {v0, v13}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    #@12c
    move-result-object v7

    #@12d
    .line 513
    .local v7, "identityHint":Ljava/lang/String;
    move-wide/from16 v0, p3

    #@12f
    invoke-static {v0, v1, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLjava/lang/String;)V

    #@132
    goto :goto_3
.end method

.method setTlsChannelId(JLcom/android/org/conscrypt/OpenSSLKey;)V
    .locals 3
    .param p1, "sslNativePointer"    # J
    .param p3, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 392
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 394
    if-nez p3, :cond_0

    #@a
    .line 395
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@c
    const-string/jumbo v1, "Invalid TLS channel ID key specified"

    #@f
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 398
    :cond_0
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@16
    move-result-object v0

    #@17
    .line 397
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    #@1a
    .line 389
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 401
    :cond_2
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(J)V

    #@1e
    goto :goto_0
.end method

.method protected setUseClientMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@2
    .line 269
    return-void
.end method

.method protected setUseSni(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 336
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    #@6
    .line 335
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    #@0
    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@2
    .line 304
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@5
    .line 301
    return-void
.end method

.method setupSession(JJLcom/android/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .locals 9
    .param p1, "sslSessionNativePointer"    # J
    .param p3, "sslNativePointer"    # J
    .param p5, "sessionToReuse"    # Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    .param p6, "hostname"    # Ljava/lang/String;
    .param p7, "port"    # I
    .param p8, "handshakeCompleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    const/4 v1, 0x0

    #@1
    .line 591
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    #@4
    move-result-object v0

    #@5
    .line 592
    .local v0, "sessionId":[B
    if-eqz p5, :cond_1

    #@7
    invoke-virtual {p5}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->getId()[B

    #@a
    move-result-object v2

    #@b
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 593
    move-object v1, p5

    #@12
    .line 594
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    #@18
    .line 595
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    #@1b
    .line 613
    :cond_0
    :goto_0
    return-object v1

    #@1c
    .line 597
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_2

    #@22
    .line 600
    new-instance v2, Ljava/lang/IllegalStateException;

    #@24
    const-string/jumbo v3, "SSL Session may not be created"

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 602
    :cond_2
    invoke-static {p3, p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_certificate(J)[J

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@32
    move-result-object v4

    #@33
    .line 604
    .local v4, "localCertificates":[Ljava/security/cert/X509Certificate;
    invoke-static {p3, p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_peer_cert_chain(J)[J

    #@36
    move-result-object v2

    #@37
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@3a
    move-result-object v5

    #@3b
    .line 606
    .local v5, "peerCertificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@3d
    .line 607
    .end local v1    # "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    #@40
    move-result-object v8

    #@41
    move-wide v2, p1

    #@42
    move-object v6, p6

    #@43
    move/from16 v7, p7

    #@45
    .line 606
    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    #@48
    .line 609
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-eqz p8, :cond_0

    #@4a
    .line 610
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@51
    goto :goto_0
.end method
