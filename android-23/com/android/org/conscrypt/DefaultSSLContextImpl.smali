.class public final Lcom/android/org/conscrypt/DefaultSSLContextImpl;
.super Lcom/android/org/conscrypt/OpenSSLContextImpl;
.source "DefaultSSLContextImpl.java"


# static fields
.field private static KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLContextImpl;-><init>()V

    #@3
    .line 57
    return-void
.end method


# virtual methods
.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/security/KeyManagementException;

    #@2
    const-string/jumbo v1, "Do not init() the default SSLContext "

    #@5
    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 63
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    #@3
    if-eqz v8, :cond_0

    #@5
    .line 64
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    #@7
    return-object v8

    #@8
    .line 67
    :cond_0
    const-string/jumbo v8, "javax.net.ssl.keyStore"

    #@b
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 68
    .local v2, "keystore":Ljava/lang/String;
    if-nez v2, :cond_1

    #@11
    .line 69
    return-object v9

    #@12
    .line 71
    :cond_1
    const-string/jumbo v8, "javax.net.ssl.keyStorePassword"

    #@15
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 72
    .local v3, "keystorepwd":Ljava/lang/String;
    if-nez v3, :cond_3

    #@1b
    const/4 v7, 0x0

    #@1c
    .line 74
    :goto_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@23
    move-result-object v6

    #@24
    .line 75
    .local v6, "ks":Ljava/security/KeyStore;
    const/4 v0, 0x0

    #@25
    .line 77
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    #@27
    new-instance v8, Ljava/io/FileInputStream;

    #@29
    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 78
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6, v1, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .line 80
    .end local v0    # "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    #@34
    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@37
    .line 85
    :cond_2
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 86
    .local v5, "kmfAlg":Ljava/lang/String;
    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    #@3e
    move-result-object v4

    #@3f
    .line 87
    .local v4, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v4, v6, v7}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    #@42
    .line 88
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@45
    move-result-object v8

    #@46
    sput-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    #@48
    .line 89
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    #@4a
    return-object v8

    #@4b
    .line 72
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v5    # "kmfAlg":Ljava/lang/String;
    .end local v6    # "ks":Ljava/security/KeyStore;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    #@4e
    move-result-object v7

    #@4f
    .local v7, "pwd":[C
    goto :goto_0

    #@50
    .line 79
    .end local v7    # "pwd":[C
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v6    # "ks":Ljava/security/KeyStore;
    :catchall_0
    move-exception v8

    #@51
    .line 80
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v0, :cond_4

    #@53
    .line 81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@56
    .line 79
    :cond_4
    throw v8

    #@57
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    #@58
    move-object v0, v1

    #@59
    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 94
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    #@3
    if-eqz v8, :cond_0

    #@5
    .line 95
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    #@7
    return-object v8

    #@8
    .line 99
    :cond_0
    const-string/jumbo v8, "javax.net.ssl.trustStore"

    #@b
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 100
    .local v2, "keystore":Ljava/lang/String;
    if-nez v2, :cond_1

    #@11
    .line 101
    return-object v9

    #@12
    .line 103
    :cond_1
    const-string/jumbo v8, "javax.net.ssl.trustStorePassword"

    #@15
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 104
    .local v3, "keystorepwd":Ljava/lang/String;
    if-nez v3, :cond_3

    #@1b
    const/4 v5, 0x0

    #@1c
    .line 107
    :goto_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@23
    move-result-object v4

    #@24
    .line 108
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v0, 0x0

    #@25
    .line 110
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    #@27
    new-instance v8, Ljava/io/FileInputStream;

    #@29
    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 111
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .line 113
    .end local v0    # "is":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    #@34
    .line 114
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@37
    .line 117
    :cond_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 118
    .local v7, "tmfAlg":Ljava/lang/String;
    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@3e
    move-result-object v6

    #@3f
    .line 119
    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v6, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@42
    .line 120
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@45
    move-result-object v8

    #@46
    sput-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    #@48
    .line 121
    sget-object v8, Lcom/android/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    #@4a
    return-object v8

    #@4b
    .line 104
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v7    # "tmfAlg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    #@4e
    move-result-object v5

    #@4f
    .local v5, "pwd":[C
    goto :goto_0

    #@50
    .line 112
    .end local v5    # "pwd":[C
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    :catchall_0
    move-exception v8

    #@51
    .line 113
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_1
    if-eqz v0, :cond_4

    #@53
    .line 114
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@56
    .line 112
    :cond_4
    throw v8

    #@57
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    #@58
    move-object v0, v1

    #@59
    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    goto :goto_1
.end method
