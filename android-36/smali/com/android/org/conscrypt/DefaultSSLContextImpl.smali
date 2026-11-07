.class public Lcom/android/org/conscrypt/DefaultSSLContextImpl;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/DefaultSSLContextImpl$TLSv12;,
        Lcom/android/org/conscrypt/DefaultSSLContextImpl$TLSv13;
    }
.end annotation


# static fields
.field private static blacklist KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static blacklist TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method private constructor blacklist <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>([Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>([Ljava/lang/String;Lcom/android/org/conscrypt/DefaultSSLContextImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/DefaultSSLContextImpl;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Do not init() the default SSLContext "

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v0, :cond_7

    .line 65
    sget-object v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    return-object v0

    .line 68
    :cond_7
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "keystore":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 70
    return-object v1

    .line 72
    :cond_11
    const-string v2, "javax.net.ssl.keyStorePassword"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "keystorepwd":Ljava/lang/String;
    if-nez v2, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 75
    .local v1, "pwd":[C
    :goto_1e
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 76
    .local v3, "ks":Ljava/security/KeyStore;
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v4, "is":Ljava/io/InputStream;
    :try_start_30
    invoke-virtual {v3, v4, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4a

    .line 78
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 80
    .end local v4    # "is":Ljava/io/InputStream;
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "kmfAlg":Ljava/lang/String;
    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .line 82
    .local v5, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v5, v3, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 83
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    sput-object v6, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 84
    sget-object v6, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    return-object v6

    .line 76
    .end local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .local v4, "is":Ljava/io/InputStream;
    :catchall_4a
    move-exception v5

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw v5
.end method

.method blacklist getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v0, :cond_7

    .line 90
    sget-object v0, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v0

    .line 94
    :cond_7
    const-string v0, "javax.net.ssl.trustStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "keystore":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 96
    return-object v1

    .line 98
    :cond_11
    const-string v2, "javax.net.ssl.trustStorePassword"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "keystorepwd":Ljava/lang/String;
    if-nez v2, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 102
    .local v1, "pwd":[C
    :goto_1e
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 103
    .local v3, "ks":Ljava/security/KeyStore;
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 104
    .local v4, "is":Ljava/io/InputStream;
    :try_start_30
    invoke-virtual {v3, v4, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4a

    .line 105
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    .end local v4    # "is":Ljava/io/InputStream;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "tmfAlg":Ljava/lang/String;
    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 108
    .local v5, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v5, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 109
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    sput-object v6, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 110
    sget-object v6, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v6

    .line 103
    .end local v5    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .local v4, "is":Ljava/io/InputStream;
    :catchall_4a
    move-exception v5

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw v5
.end method
