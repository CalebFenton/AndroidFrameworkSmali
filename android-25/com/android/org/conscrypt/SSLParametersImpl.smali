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

.field private static volatile defaultCTVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

.field private static volatile defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field alpnProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private ctVerificationEnabled:Z

.field private ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

.field private enable_session_creation:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field private need_client_auth:Z

.field npnProtocols:[B

.field private ocspResponse:[B

.field private final pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

.field private sctExtension:[B

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

.field private useCipherSuitesOrder:Z

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
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 97
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@8
    .line 99
    iput-boolean v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@a
    .line 101
    iput-boolean v3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@c
    .line 103
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    #@e
    .line 141
    iput-object p5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@10
    .line 142
    iput-object p4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@12
    .line 145
    if-nez p1, :cond_2

    #@14
    .line 146
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@1a
    .line 148
    iput-object v4, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@1c
    .line 155
    :goto_0
    if-nez p2, :cond_3

    #@1e
    .line 156
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@24
    .line 166
    :goto_1
    iput-object p3, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@26
    .line 170
    if-nez p6, :cond_0

    #@28
    sget-object p6, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    #@2a
    .line 169
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
    .line 171
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
    .line 172
    .local v1, "x509CipherSuitesNeeded":Z
    :goto_2
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@41
    if-eqz v2, :cond_5

    #@43
    .line 173
    .local v0, "pskCipherSuitesNeeded":Z
    :goto_3
    invoke-static {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@49
    .line 140
    return-void

    #@4a
    .line 150
    .end local v0    # "pskCipherSuitesNeeded":Z
    .end local v1    # "x509CipherSuitesNeeded":Z
    .restart local p6    # "protocols":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    #@4d
    move-result-object v2

    #@4e
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@50
    .line 151
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/android/org/conscrypt/PSKKeyManager;

    #@53
    move-result-object v2

    #@54
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@56
    goto :goto_0

    #@57
    .line 158
    :cond_3
    invoke-static {p2}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    #@5a
    move-result-object v2

    #@5b
    iput-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@5d
    goto :goto_1

    #@5e
    .line 171
    .end local p6    # "protocols":[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@5f
    .restart local v1    # "x509CipherSuitesNeeded":Z
    goto :goto_2

    #@60
    :cond_5
    move v0, v3

    #@61
    .line 172
    goto :goto_3
.end method

.method private static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "arrays"    # [[Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1101
    const/4 v2, 0x0

    #@2
    .line 1102
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
    .line 1103
    .local v0, "array":[Ljava/lang/String;
    array-length v7, v0

    #@9
    add-int/2addr v2, v7

    #@a
    .line 1102
    add-int/lit8 v4, v4, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1105
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    #@f
    .line 1106
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    #@10
    .line 1107
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
    .line 1108
    .restart local v0    # "array":[Ljava/lang/String;
    array-length v7, v0

    #@17
    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 1109
    array-length v7, v0

    #@1b
    add-int/2addr v3, v7

    #@1c
    .line 1107
    add-int/lit8 v4, v4, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 1111
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
    .line 414
    if-nez p0, :cond_0

    #@3
    .line 415
    return-object v2

    #@4
    .line 417
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@7
    .line 418
    .local v0, "certificates":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 419
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@d
    aget-wide v4, p0, v1

    #@f
    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    #@12
    aput-object v2, v0, v1

    #@14
    .line 418
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 421
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
    .line 861
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 862
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    #@7
    move-result-object v4

    #@8
    .line 863
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v7, 0x0

    #@9
    const/4 v8, 0x0

    #@a
    invoke-virtual {v4, v7, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    #@d
    .line 864
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@10
    move-result-object v5

    #@11
    .line 865
    .local v5, "kms":[Ljavax/net/ssl/KeyManager;
    invoke-static {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    #@14
    move-result-object v6

    #@15
    .line 866
    .local v6, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v6, :cond_0

    #@17
    .line 867
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
    .line 868
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v9

    #@29
    .line 867
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
    .line 871
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_0
    move-exception v2

    #@36
    .line 872
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/KeyManagementException;

    #@38
    invoke-direct {v7, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@3b
    throw v7

    #@3c
    .line 870
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :cond_0
    return-object v6

    #@3d
    .line 875
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_1
    move-exception v3

    #@3e
    .line 876
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v7, Ljava/security/KeyManagementException;

    #@40
    invoke-direct {v7, v3}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@43
    throw v7

    #@44
    .line 873
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_2
    move-exception v1

    #@45
    .line 874
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
    .line 930
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 931
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@7
    move-result-object v3

    #@8
    .line 932
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v6, 0x0

    #@9
    check-cast v6, Ljava/security/KeyStore;

    #@b
    invoke-virtual {v3, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@e
    .line 933
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@11
    move-result-object v4

    #@12
    .line 934
    .local v4, "tms":[Ljavax/net/ssl/TrustManager;
    invoke-static {v4}, Lcom/android/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    #@15
    move-result-object v5

    #@16
    .line 935
    .local v5, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v5, :cond_0

    #@18
    .line 936
    new-instance v6, Ljava/security/KeyManagementException;

    #@1a
    .line 937
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
    .line 938
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    .line 937
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v7

    #@32
    .line 936
    invoke-direct {v6, v7}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@35
    throw v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    #@36
    .line 941
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v2

    #@37
    .line 942
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/KeyManagementException;

    #@39
    invoke-direct {v6, v2}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v6

    #@3d
    .line 940
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .restart local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-object v5

    #@3e
    .line 943
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v5    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v1

    #@3f
    .line 944
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
    .line 401
    array-length v2, p0

    #@1
    new-array v1, v2, [[B

    #@3
    .line 402
    .local v1, "principalBytes":[[B
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 403
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
    .line 402
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 405
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
    .line 900
    const/4 v2, 0x0

    #@2
    array-length v3, p0

    #@3
    :goto_0
    if-ge v2, v3, :cond_2

    #@5
    aget-object v1, p0, v2

    #@7
    .line 901
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    instance-of v4, v1, Lcom/android/org/conscrypt/PSKKeyManager;

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 902
    check-cast v1, Lcom/android/org/conscrypt/PSKKeyManager;

    #@d
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    return-object v1

    #@e
    .line 903
    .restart local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    if-eqz v1, :cond_1

    #@10
    .line 905
    :try_start_0
    invoke-static {v1}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 906
    :catch_0
    move-exception v0

    #@16
    .line 900
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 909
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_2
    return-object v5
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    #@0
    .prologue
    .line 886
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_1

    #@4
    aget-object v0, p0, v1

    #@6
    .line 887
    .local v0, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v0, Ljavax/net/ssl/X509KeyManager;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 888
    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    #@c
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    return-object v0

    #@d
    .line 886
    .restart local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 891
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
    .line 956
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_1

    #@4
    aget-object v0, p0, v1

    #@6
    .line 957
    .local v0, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 958
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    #@c
    .end local v0    # "tm":Ljavax/net/ssl/TrustManager;
    return-object v0

    #@d
    .line 956
    .restart local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 961
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
    .line 1027
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1039
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 1029
    :sswitch_0
    const-string/jumbo v0, "RSA"

    #@8
    return-object v0

    #@9
    .line 1031
    :sswitch_1
    const-string/jumbo v0, "DH_RSA"

    #@c
    return-object v0

    #@d
    .line 1033
    :sswitch_2
    const-string/jumbo v0, "EC"

    #@10
    return-object v0

    #@11
    .line 1035
    :sswitch_3
    const-string/jumbo v0, "EC_RSA"

    #@14
    return-object v0

    #@15
    .line 1037
    :sswitch_4
    const-string/jumbo v0, "EC_EC"

    #@18
    return-object v0

    #@19
    .line 1027
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
    .line 178
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@3
    .line 179
    .local v0, "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    if-nez v0, :cond_0

    #@5
    .line 181
    new-instance v0, Lcom/android/org/conscrypt/SSLParametersImpl;

    #@7
    .line 184
    .end local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    new-instance v4, Lcom/android/org/conscrypt/ClientSessionContext;

    #@9
    invoke-direct {v4}, Lcom/android/org/conscrypt/ClientSessionContext;-><init>()V

    #@c
    .line 185
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
    .line 181
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/android/org/conscrypt/ClientSessionContext;Lcom/android/org/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    #@17
    .restart local v0    # "result":Lcom/android/org/conscrypt/SSLParametersImpl;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    #@19
    .line 188
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
    .line 1070
    if-eqz p0, :cond_1

    #@5
    .line 1072
    if-eqz p1, :cond_0

    #@7
    .line 1079
    const/4 v0, 0x3

    #@8
    new-array v0, v0, [[Ljava/lang/String;

    #@a
    .line 1080
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    #@c
    aput-object v1, v0, v3

    #@e
    .line 1081
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    #@10
    aput-object v1, v0, v4

    #@12
    .line 1082
    new-array v1, v4, [Ljava/lang/String;

    #@14
    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@17
    aput-object v2, v1, v3

    #@19
    aput-object v1, v0, v5

    #@1b
    .line 1079
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0

    #@20
    .line 1085
    :cond_0
    new-array v0, v5, [[Ljava/lang/String;

    #@22
    .line 1086
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    #@24
    aput-object v1, v0, v3

    #@26
    .line 1087
    new-array v1, v4, [Ljava/lang/String;

    #@28
    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@2b
    aput-object v2, v1, v3

    #@2d
    aput-object v1, v0, v4

    #@2f
    .line 1085
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0

    #@34
    .line 1089
    :cond_1
    if-eqz p1, :cond_2

    #@36
    .line 1091
    new-array v0, v5, [[Ljava/lang/String;

    #@38
    .line 1092
    sget-object v1, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    #@3a
    aput-object v1, v0, v3

    #@3c
    .line 1093
    new-array v1, v4, [Ljava/lang/String;

    #@3e
    const-string/jumbo v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    #@41
    aput-object v2, v1, v3

    #@43
    aput-object v1, v0, v4

    #@45
    .line 1091
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0

    #@4a
    .line 1096
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
    .line 852
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@2
    .line 853
    .local v0, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_0

    #@4
    .line 855
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@a
    .line 857
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
    .line 919
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@2
    .line 920
    .local v0, "result":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_0

    #@4
    .line 922
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@a
    .line 924
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
    .line 1001
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1002
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
    .line 1003
    :cond_0
    const-string/jumbo v1, "RSA"

    #@22
    return-object v1

    #@23
    .line 1004
    :cond_1
    const-string/jumbo v1, "ECDHE_ECDSA"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 1005
    const-string/jumbo v1, "EC"

    #@2f
    return-object v1

    #@30
    .line 1006
    :cond_2
    const-string/jumbo v1, "ECDH_RSA"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 1007
    const-string/jumbo v1, "EC_RSA"

    #@3c
    return-object v1

    #@3d
    .line 1008
    :cond_3
    const-string/jumbo v1, "ECDH_ECDSA"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_4

    #@46
    .line 1009
    const-string/jumbo v1, "EC_EC"

    #@49
    return-object v1

    #@4a
    .line 1010
    :cond_4
    const-string/jumbo v1, "DH_RSA"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_5

    #@53
    .line 1011
    const-string/jumbo v1, "DH_RSA"

    #@56
    return-object v1

    #@57
    .line 1013
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
    .line 1055
    new-instance v2, Ljava/util/HashSet;

    #@2
    array-length v3, p0

    #@3
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@6
    .line 1056
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
    .line 1057
    .local v1, "keyTypeCode":B
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientKeyType(B)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1058
    .local v0, "keyType":Ljava/lang/String;
    if-nez v0, :cond_0

    #@12
    .line 1056
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1062
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@18
    goto :goto_1

    #@19
    .line 1064
    .end local v0    # "keyType":Ljava/lang/String;
    .end local v1    # "keyTypeCode":B
    :cond_1
    return-object v2
.end method

.method private isSniEnabledByDefault()Z
    .locals 3

    #@0
    .prologue
    .line 612
    const-string/jumbo v1, "jsse.enableSNIExtension"

    #@3
    const-string/jumbo v2, "true"

    #@6
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 613
    .local v0, "enableSNI":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 614
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 615
    :cond_0
    const-string/jumbo v1, "false"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 616
    const/4 v1, 0x0

    #@1f
    return v1

    #@20
    .line 618
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@22
    .line 619
    const-string/jumbo v2, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    #@25
    .line 618
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
    const/4 v0, 0x0

    #@1
    .line 690
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSupportedClientKeyTypes([B)Ljava/util/Set;

    #@4
    move-result-object v5

    #@5
    .line 691
    .local v5, "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    #@8
    move-result v6

    #@9
    new-array v6, v6, [Ljava/lang/String;

    #@b
    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@e
    move-result-object v4

    #@f
    check-cast v4, [Ljava/lang/String;

    #@11
    .line 694
    .local v4, "keyTypes":[Ljava/lang/String;
    if-nez p2, :cond_2

    #@13
    .line 695
    const/4 v2, 0x0

    #@14
    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@17
    move-result-object v3

    #@18
    .line 703
    .local v3, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_1

    #@1a
    invoke-interface {p5, v3, v2, v4}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 705
    .local v0, "alias":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V

    #@21
    .line 689
    return-void

    #@22
    .line 697
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_2
    array-length v6, p2

    #@23
    new-array v2, v6, [Ljavax/security/auth/x500/X500Principal;

    #@25
    .line 698
    .local v2, "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    array-length v6, p2

    #@27
    if-ge v1, v6, :cond_0

    #@29
    .line 699
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    #@2b
    aget-object v7, p2, v1

    #@2d
    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@30
    aput-object v6, v2, v1

    #@32
    .line 698
    add-int/lit8 v1, v1, 0x1

    #@34
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
    .line 713
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    #@4
    move-result-object v3

    #@5
    .line 714
    .local v3, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v3, :cond_0

    #@7
    .line 715
    return v8

    #@8
    .line 718
    :cond_0
    invoke-interface {p4, v3, p1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 721
    .local v1, "identity":Ljava/lang/String;
    if-nez v1, :cond_1

    #@e
    .line 722
    const-string/jumbo v1, ""

    #@11
    .line 723
    sget-object v2, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@13
    .line 733
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
    .line 735
    return v8

    #@1a
    .line 724
    .end local v2    # "identityBytes":[B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_2

    #@20
    .line 725
    sget-object v2, Lcom/android/org/conscrypt/util/EmptyArray;->BYTE:[B

    #@22
    .restart local v2    # "identityBytes":[B
    goto :goto_0

    #@23
    .line 728
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
    .line 729
    .end local v2    # "identityBytes":[B
    :catch_0
    move-exception v0

    #@2c
    .line 730
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v7, "UTF-8 encoding not supported"

    #@31
    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v6

    #@35
    .line 737
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "identityBytes":[B
    :cond_3
    array-length v6, v2

    #@36
    if-lez v6, :cond_4

    #@38
    .line 738
    array-length v6, v2

    #@39
    invoke-static {v2, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3c
    .line 740
    :cond_4
    array-length v6, v2

    #@3d
    aput-byte v8, p2, v6

    #@3f
    .line 742
    invoke-interface {p4, v3, p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    #@42
    move-result-object v4

    #@43
    .line 743
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@46
    move-result-object v5

    #@47
    .line 744
    .local v5, "secretKeyBytes":[B
    if-nez v5, :cond_5

    #@49
    .line 745
    return v8

    #@4a
    .line 746
    :cond_5
    array-length v6, v5

    #@4b
    array-length v7, p3

    #@4c
    if-le v6, v7, :cond_6

    #@4e
    .line 748
    return v8

    #@4f
    .line 750
    :cond_6
    array-length v6, v5

    #@50
    invoke-static {v5, v8, p3, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@53
    .line 751
    array-length v6, v5

    #@54
    return v6
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 845
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 846
    :catch_0
    move-exception v0

    #@6
    .line 847
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method protected getCTVerifier()Lcom/android/org/conscrypt/ct/CTVerifier;
    .locals 2

    #@0
    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 261
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    #@6
    return-object v1

    #@7
    .line 263
    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultCTVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    #@9
    .line 264
    .local v0, "result":Lcom/android/org/conscrypt/ct/CTVerifier;
    if-nez v0, :cond_1

    #@b
    .line 266
    new-instance v0, Lcom/android/org/conscrypt/ct/CTVerifier;

    #@d
    .end local v0    # "result":Lcom/android/org/conscrypt/ct/CTVerifier;
    new-instance v1, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;

    #@f
    invoke-direct {v1}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>()V

    #@12
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ct/CTVerifier;-><init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V

    #@15
    .restart local v0    # "result":Lcom/android/org/conscrypt/ct/CTVerifier;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultCTVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    #@17
    .line 268
    :cond_1
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    #@19
    .line 269
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    #@1b
    return-object v1
.end method

.method getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 11
    .param p1, "sessionContext"    # Lcom/android/org/conscrypt/ClientSessionContext;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 779
    if-nez p2, :cond_0

    #@2
    .line 780
    const/4 v7, 0x0

    #@3
    return-object v7

    #@4
    .line 783
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    #@7
    move-result-object v6

    #@8
    .line 784
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-nez v6, :cond_1

    #@a
    .line 785
    const/4 v7, 0x0

    #@b
    return-object v7

    #@c
    .line 788
    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 789
    .local v4, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    #@11
    .line 790
    .local v5, "protocolFound":Z
    iget-object v8, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    #@13
    const/4 v7, 0x0

    #@14
    array-length v9, v8

    #@15
    :goto_0
    if-ge v7, v9, :cond_2

    #@17
    aget-object v3, v8, v7

    #@19
    .line 791
    .local v3, "enabledProtocol":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v10

    #@1d
    if-eqz v10, :cond_3

    #@1f
    .line 792
    const/4 v5, 0x1

    #@20
    .line 796
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_4

    #@22
    .line 797
    const/4 v7, 0x0

    #@23
    return-object v7

    #@24
    .line 790
    .restart local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@26
    goto :goto_0

    #@27
    .line 800
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 801
    .local v0, "cipherSuite":Ljava/lang/String;
    const/4 v1, 0x0

    #@2c
    .line 802
    .local v1, "cipherSuiteFound":Z
    iget-object v8, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@2e
    const/4 v7, 0x0

    #@2f
    array-length v9, v8

    #@30
    :goto_1
    if-ge v7, v9, :cond_5

    #@32
    aget-object v2, v8, v7

    #@34
    .line 803
    .local v2, "enabledCipherSuite":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v10

    #@38
    if-eqz v10, :cond_6

    #@3a
    .line 804
    const/4 v1, 0x1

    #@3b
    .line 808
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_7

    #@3d
    .line 809
    const/4 v7, 0x0

    #@3e
    return-object v7

    #@3f
    .line 802
    .restart local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@41
    goto :goto_1

    #@42
    .line 812
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_7
    return-object v6
.end method

.method protected getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@2
    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .locals 1

    #@0
    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    #@2
    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 276
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
    .line 290
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
    .line 965
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .locals 1

    #@0
    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@2
    return v0
.end method

.method protected getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/android/org/conscrypt/PSKKeyManager;

    #@2
    return-object v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    #@0
    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 238
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@6
    return-object v1

    #@7
    .line 240
    :cond_0
    sget-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    #@9
    .line 241
    .local v0, "result":Ljava/security/SecureRandom;
    if-nez v0, :cond_1

    #@b
    .line 243
    new-instance v0, Ljava/security/SecureRandom;

    #@d
    .end local v0    # "result":Ljava/security/SecureRandom;
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@10
    .restart local v0    # "result":Ljava/security/SecureRandom;
    sput-object v0, Lcom/android/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    #@12
    .line 245
    :cond_1
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@14
    .line 246
    iget-object v1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@16
    return-object v1
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    #@2
    return-object v0
.end method

.method protected getServerSessionContext()Lcom/android/org/conscrypt/ServerSessionContext;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/android/org/conscrypt/ServerSessionContext;

    #@2
    return-object v0
.end method

.method public getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .locals 1

    #@0
    .prologue
    .line 195
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
    .line 426
    const/4 v1, 0x0

    #@1
    .line 428
    .local v1, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    iget-boolean v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 430
    iget-object v2, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/android/org/conscrypt/ClientSessionContext;

    #@7
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/org/conscrypt/SSLParametersImpl;->getCachedClientSession(Lcom/android/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    #@a
    move-result-object v0

    #@b
    .line 431
    .local v0, "cachedSession":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_1

    #@d
    .line 432
    instance-of v2, v0, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@f
    if-eqz v2, :cond_2

    #@11
    move-object v1, v0

    #@12
    .line 433
    check-cast v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@14
    .line 438
    .end local v0    # "cachedSession":Ljavax/net/ssl/SSLSession;
    .end local v1    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@16
    .line 440
    iget-wide v2, v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    #@18
    .line 439
    invoke-static {p1, p2, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session(JJ)V

    #@1b
    .line 445
    :cond_1
    return-object v1

    #@1c
    .line 434
    .restart local v0    # "cachedSession":Ljavax/net/ssl/SSLSession;
    .restart local v1    # "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :cond_2
    instance-of v2, v0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 435
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;

    #@22
    .end local v0    # "cachedSession":Ljavax/net/ssl/SSLSession;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLExtendedSessionImpl;->getDelegate()Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@25
    move-result-object v1

    #@26
    .local v1, "sessionToReuse":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    goto :goto_0
.end method

.method public getUseCipherSuitesOrder()Z
    .locals 1

    #@0
    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    #@2
    return v0
.end method

.method protected getUseClientMode()Z
    .locals 1

    #@0
    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@2
    return v0
.end method

.method protected getUseSni()Z
    .locals 1

    #@0
    .prologue
    .line 380
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
    .line 348
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@2
    return v0
.end method

.method protected getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    #@2
    return-object v0
.end method

.method protected getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    #@2
    return-object v0
.end method

.method public isCTVerificationEnabled(Ljava/lang/String;)Z
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1131
    if-nez p1, :cond_0

    #@3
    .line 1132
    return v7

    #@4
    .line 1136
    :cond_0
    iget-boolean v6, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    #@6
    if-eqz v6, :cond_1

    #@8
    .line 1137
    const/4 v6, 0x1

    #@9
    return v6

    #@a
    .line 1140
    :cond_1
    const-string/jumbo v6, "conscrypt.ct.enable"

    #@d
    invoke-static {v6}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 1141
    .local v4, "property":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@13
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_3

    #@21
    .line 1142
    :cond_2
    return v7

    #@22
    .line 1145
    :cond_3
    const-string/jumbo v6, "\\."

    #@25
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2c
    move-result-object v3

    #@2d
    .line 1146
    .local v3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    #@30
    .line 1148
    const/4 v0, 0x0

    #@31
    .line 1149
    .local v0, "enable":Z
    const-string/jumbo v5, "conscrypt.ct.enforce"

    #@34
    .line 1152
    .local v5, "propertyName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v2

    #@38
    .end local v0    # "enable":Z
    .local v2, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_5

    #@3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v1

    #@42
    check-cast v1, Ljava/lang/String;

    #@44
    .line 1153
    .local v1, "part":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    const-string/jumbo v7, ".*"

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v6}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 1154
    if-eqz v4, :cond_4

    #@5e
    .line 1155
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@69
    move-result v0

    #@6a
    .line 1158
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    const-string/jumbo v7, "."

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    goto :goto_0

    #@83
    .line 1161
    .end local v1    # "part":Ljava/lang/String;
    :cond_5
    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    .line 1162
    if-eqz v4, :cond_6

    #@89
    .line 1163
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@90
    move-result-object v6

    #@91
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@94
    move-result v0

    #@95
    .line 1166
    :cond_6
    return v0
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
    .line 759
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    #@4
    move-result-object v0

    #@5
    .line 760
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v0, :cond_0

    #@7
    .line 761
    return v5

    #@8
    .line 763
    :cond_0
    invoke-interface {p4, v0, p1, p2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    #@b
    move-result-object v1

    #@c
    .line 764
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@f
    move-result-object v2

    #@10
    .line 765
    .local v2, "secretKeyBytes":[B
    if-nez v2, :cond_1

    #@12
    .line 766
    return v5

    #@13
    .line 767
    :cond_1
    array-length v3, v2

    #@14
    array-length v4, p3

    #@15
    if-le v3, v4, :cond_2

    #@17
    .line 768
    return v5

    #@18
    .line 770
    :cond_2
    array-length v3, v2

    #@19
    invoke-static {v2, v5, p3, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 771
    array-length v3, v2

    #@1d
    return v3
.end method

.method public setCTVerificationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    #@2
    .line 387
    return-void
.end method

.method public setCTVerifier(Lcom/android/org/conscrypt/ct/CTVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lcom/android/org/conscrypt/ct/CTVerifier;

    #@0
    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    #@2
    .line 383
    return-void
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
    .line 468
    if-nez p3, :cond_0

    #@3
    .line 469
    return-void

    #@4
    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@7
    move-result-object v6

    #@8
    .line 472
    .local v6, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-nez v6, :cond_1

    #@a
    .line 473
    return-void

    #@b
    .line 475
    :cond_1
    move-object/from16 v0, p3

    #@d
    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    #@10
    move-result-object v9

    #@11
    .line 476
    .local v9, "privateKey":Ljava/security/PrivateKey;
    if-nez v9, :cond_2

    #@13
    .line 477
    return-void

    #@14
    .line 479
    :cond_2
    move-object/from16 v0, p3

    #@16
    invoke-interface {v6, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    #@19
    move-result-object v2

    #@1a
    .line 480
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_3

    #@1c
    .line 481
    return-void

    #@1d
    .line 483
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
    .line 491
    :goto_0
    array-length v12, v2

    #@27
    new-array v8, v12, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@29
    .line 492
    .local v8, "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v12, v2

    #@2a
    new-array v11, v12, [J

    #@2c
    .line 493
    .local v11, "x509refs":[J
    const/4 v4, 0x0

    #@2d
    .local v4, "i":I
    :goto_1
    array-length v12, v2

    #@2e
    if-ge v4, v12, :cond_5

    #@30
    .line 495
    aget-object v12, v2, v4

    #@32
    .line 494
    invoke-static {v12}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@35
    move-result-object v7

    #@36
    .line 496
    .local v7, "openSslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    aput-object v7, v8, v4

    #@38
    .line 497
    invoke-virtual {v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    #@3b
    move-result-wide v12

    #@3c
    aput-wide v12, v11, v4

    #@3e
    .line 493
    add-int/lit8 v4, v4, 0x1

    #@40
    goto :goto_1

    #@41
    .line 483
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
    .line 502
    .end local v10    # "publicKey":Ljava/security/PublicKey;
    .restart local v4    # "i":I
    .restart local v8    # "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v11    # "x509refs":[J
    :cond_5
    move-wide/from16 v0, p1

    #@45
    invoke-static {v0, v1, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_certificate(J[J)V

    #@48
    .line 506
    :try_start_0
    invoke-static {v9, v10}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    #@4b
    move-result-object v5

    #@4c
    .line 507
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
    .line 514
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->isWrapped()Z

    #@58
    move-result v12

    #@59
    if-nez v12, :cond_6

    #@5b
    .line 517
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_check_private_key(J)V

    #@5e
    .line 467
    :cond_6
    return-void

    #@5f
    .line 508
    .end local v5    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v3

    #@60
    .line 509
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
    .line 625
    iget-boolean v5, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@3
    if-nez v5, :cond_0

    #@5
    .line 628
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 630
    const/4 v5, 0x3

    #@c
    .line 629
    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    #@f
    .line 632
    const/4 v0, 0x1

    #@10
    .line 643
    .local v0, "certRequested":Z
    :goto_0
    if-eqz v0, :cond_0

    #@12
    .line 644
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    #@15
    move-result-object v4

    #@16
    .line 645
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    #@19
    move-result-object v2

    #@1a
    .line 646
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    #@1c
    array-length v5, v2

    #@1d
    if-eqz v5, :cond_0

    #@1f
    .line 649
    :try_start_0
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v3

    #@23
    .line 653
    .local v3, "issuersBytes":[[B
    invoke-static {p1, p2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(J[[B)V

    #@26
    .line 623
    .end local v0    # "certRequested":Z
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "issuersBytes":[[B
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-void

    #@27
    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_2

    #@2d
    .line 635
    const/4 v5, 0x1

    #@2e
    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    #@31
    .line 636
    const/4 v0, 0x1

    #@32
    .restart local v0    # "certRequested":Z
    goto :goto_0

    #@33
    .line 639
    .end local v0    # "certRequested":Z
    :cond_2
    invoke-static {p1, p2, v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    #@36
    .line 640
    const/4 v0, 0x0

    #@37
    .restart local v0    # "certRequested":Z
    goto :goto_0

    #@38
    .line 650
    .restart local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    #@39
    .line 651
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
    .line 356
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    #@2
    .line 355
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 283
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
    .line 282
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 298
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
    .line 297
    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "endpointIdentificationAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    #@2
    .line 968
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    #@0
    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@2
    .line 323
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@5
    .line 320
    return-void
.end method

.method public setOCSPResponse([B)V
    .locals 0
    .param p1, "response"    # [B

    #@0
    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    #@2
    .line 395
    return-void
.end method

.method public setSCTExtension([B)V
    .locals 0
    .param p1, "extension"    # [B

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    #@2
    .line 391
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
    .line 523
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    #@4
    move-object/from16 v16, v0

    #@6
    if-eqz v16, :cond_0

    #@8
    .line 524
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_enable_npn(J)V

    #@b
    .line 527
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
    .line 528
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
    .line 531
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
    .line 532
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
    .line 536
    move-object/from16 v0, p0

    #@44
    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@46
    move/from16 v16, v0

    #@48
    if-nez v16, :cond_7

    #@4a
    .line 537
    new-instance v11, Ljava/util/HashSet;

    #@4c
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    #@4f
    .line 538
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
    .line 539
    .local v14, "sslCipherNativePointer":J
    invoke-static {v14, v15}, Lcom/android/org/conscrypt/SSLParametersImpl;->getServerX509KeyType(J)Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    .line 540
    .local v9, "keyType":Ljava/lang/String;
    if-eqz v9, :cond_2

    #@68
    .line 541
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6b
    .line 538
    :cond_2
    add-int/lit8 v16, v16, 0x1

    #@6d
    goto :goto_0

    #@6e
    .line 544
    .end local v9    # "keyType":Ljava/lang/String;
    .end local v14    # "sslCipherNativePointer":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    #@71
    move-result-object v8

    #@72
    .line 545
    .local v8, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v8, :cond_4

    #@74
    .line 546
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
    .line 549
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
    .line 548
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
    .line 550
    :catch_0
    move-exception v4

    #@9d
    .line 551
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v16, Ljava/io/IOException;

    #@9f
    move-object/from16 v0, v16

    #@a1
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@a4
    throw v16

    #@a5
    .line 556
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v9    # "keyType":Ljava/lang/String;
    .end local v10    # "keyType$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    #@a9
    move-object/from16 v16, v0

    #@ab
    if-eqz v16, :cond_5

    #@ad
    .line 558
    move-object/from16 v0, p0

    #@af
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    #@b1
    move-object/from16 v16, v0

    #@b3
    .line 557
    move-wide/from16 v0, p1

    #@b5
    move-object/from16 v2, v16

    #@b7
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_signed_cert_timestamp_list(J[B)V

    #@ba
    .line 561
    :cond_5
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    #@be
    move-object/from16 v16, v0

    #@c0
    if-eqz v16, :cond_6

    #@c2
    .line 562
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    #@c6
    move-object/from16 v16, v0

    #@c8
    move-wide/from16 v0, p1

    #@ca
    move-object/from16 v2, v16

    #@cc
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_CTX_set_ocsp_response(J[B)V

    #@cf
    .line 566
    :cond_6
    const-wide/32 v16, 0x400000

    #@d2
    .line 565
    move-wide/from16 v0, p3

    #@d4
    move-wide/from16 v2, v16

    #@d6
    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JJ)J

    #@d9
    .line 570
    .end local v8    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    .end local v11    # "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    #@dc
    move-result-object v13

    #@dd
    .line 571
    .local v13, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-eqz v13, :cond_9

    #@df
    .line 572
    const/4 v12, 0x0

    #@e0
    .line 573
    .local v12, "pskEnabled":Z
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    #@e4
    move-object/from16 v17, v0

    #@e6
    const/16 v16, 0x0

    #@e8
    move-object/from16 v0, v17

    #@ea
    array-length v0, v0

    #@eb
    move/from16 v18, v0

    #@ed
    :goto_2
    move/from16 v0, v16

    #@ef
    move/from16 v1, v18

    #@f1
    if-ge v0, v1, :cond_8

    #@f3
    aget-object v6, v17, v16

    #@f5
    .line 574
    .local v6, "enabledCipherSuite":Ljava/lang/String;
    if-eqz v6, :cond_d

    #@f7
    const-string/jumbo v19, "PSK"

    #@fa
    move-object/from16 v0, v19

    #@fc
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@ff
    move-result v19

    #@100
    if-eqz v19, :cond_d

    #@102
    .line 575
    const/4 v12, 0x1

    #@103
    .line 579
    .end local v6    # "enabledCipherSuite":Ljava/lang/String;
    :cond_8
    if-eqz v12, :cond_9

    #@105
    .line 580
    move-object/from16 v0, p0

    #@107
    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@109
    move/from16 v16, v0

    #@10b
    if-eqz v16, :cond_e

    #@10d
    .line 581
    const/16 v16, 0x1

    #@10f
    move-wide/from16 v0, p3

    #@111
    move/from16 v2, v16

    #@113
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JZ)V

    #@116
    .line 590
    .end local v12    # "pskEnabled":Z
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    #@118
    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    #@11a
    move/from16 v16, v0

    #@11c
    if-eqz v16, :cond_a

    #@11e
    .line 591
    const-wide/16 v16, 0x4000

    #@120
    move-wide/from16 v0, p3

    #@122
    move-wide/from16 v2, v16

    #@124
    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    #@127
    .line 593
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    #@12a
    move-result v16

    #@12b
    if-eqz v16, :cond_b

    #@12d
    invoke-static/range {p7 .. p7}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    #@130
    move-result v16

    #@131
    if-eqz v16, :cond_b

    #@133
    .line 594
    move-wide/from16 v0, p3

    #@135
    move-object/from16 v2, p7

    #@137
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLjava/lang/String;)V

    #@13a
    .line 599
    :cond_b
    const-wide/16 v16, 0x100

    #@13c
    move-wide/from16 v0, p3

    #@13e
    move-wide/from16 v2, v16

    #@140
    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    #@143
    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    #@146
    move-result v5

    #@147
    .line 602
    .local v5, "enableSessionCreation":Z
    if-nez v5, :cond_c

    #@149
    .line 603
    move-wide/from16 v0, p3

    #@14b
    invoke-static {v0, v1, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    #@14e
    .line 522
    :cond_c
    return-void

    #@14f
    .line 573
    .end local v5    # "enableSessionCreation":Z
    .restart local v6    # "enabledCipherSuite":Ljava/lang/String;
    .restart local v12    # "pskEnabled":Z
    :cond_d
    add-int/lit8 v16, v16, 0x1

    #@151
    goto :goto_2

    #@152
    .line 583
    .end local v6    # "enabledCipherSuite":Ljava/lang/String;
    :cond_e
    const/16 v16, 0x1

    #@154
    move-wide/from16 v0, p3

    #@156
    move/from16 v2, v16

    #@158
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JZ)V

    #@15b
    .line 584
    move-object/from16 v0, p6

    #@15d
    invoke-interface {v0, v13}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    #@160
    move-result-object v7

    #@161
    .line 585
    .local v7, "identityHint":Ljava/lang/String;
    move-wide/from16 v0, p3

    #@163
    invoke-static {v0, v1, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLjava/lang/String;)V

    #@166
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
    .line 451
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 452
    iget-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 454
    if-nez p3, :cond_0

    #@a
    .line 455
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@c
    const-string/jumbo v1, "Invalid TLS channel ID key specified"

    #@f
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 458
    :cond_0
    invoke-virtual {p3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    #@16
    move-result-object v0

    #@17
    .line 457
    invoke-static {p1, p2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    #@1a
    .line 449
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 461
    :cond_2
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(J)V

    #@1e
    goto :goto_0
.end method

.method public setUseCipherSuitesOrder(Z)V
    .locals 0
    .param p1, "useCipherSuitesOrder"    # Z

    #@0
    .prologue
    .line 977
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    #@2
    .line 976
    return-void
.end method

.method protected setUseClientMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    #@0
    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->client_mode:Z

    #@2
    .line 305
    return-void
.end method

.method protected setUseSni(Z)V
    .locals 1
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 372
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    #@6
    .line 371
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    #@0
    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    #@2
    .line 340
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/android/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    #@5
    .line 337
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
    .line 662
    const/4 v1, 0x0

    #@1
    .line 663
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-eqz p5, :cond_1

    #@3
    invoke-static {p3, p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_session_reused(J)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 664
    move-object v1, p5

    #@a
    .line 665
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v2

    #@e
    iput-wide v2, p5, Lcom/android/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    #@10
    .line 666
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    #@13
    .line 684
    :cond_0
    :goto_0
    return-object v1

    #@14
    .line 668
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 671
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1c
    const-string/jumbo v2, "SSL Session may not be created"

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 673
    :cond_2
    invoke-static {p3, p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_certificate(J)[J

    #@26
    move-result-object v0

    #@27
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@2a
    move-result-object v4

    #@2b
    .line 675
    .local v4, "localCertificates":[Ljava/security/cert/X509Certificate;
    invoke-static {p3, p4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_peer_cert_chain(J)[J

    #@2e
    move-result-object v0

    #@2f
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    #@32
    move-result-object v5

    #@33
    .line 677
    .local v5, "peerCertificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLSessionImpl;

    #@35
    .line 678
    .end local v1    # "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    #@38
    move-result-object v8

    #@39
    move-wide v2, p1

    #@3a
    move-object v6, p6

    #@3b
    move/from16 v7, p7

    #@3d
    .line 677
    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/android/org/conscrypt/AbstractSessionContext;)V

    #@40
    .line 680
    .local v1, "sslSession":Lcom/android/org/conscrypt/OpenSSLSessionImpl;
    if-eqz p8, :cond_0

    #@42
    .line 681
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    #@49
    goto :goto_0
.end method
