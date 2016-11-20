.class public Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 4

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "KeyManagerFactory is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 113
    :cond_0
    const/4 v0, 0x1

    #@e
    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    #@10
    new-instance v1, Lcom/android/org/conscrypt/KeyManagerImpl;

    #@12
    iget-object v2, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@14
    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    #@16
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    #@19
    const/4 v2, 0x0

    #@1a
    aput-object v1, v0, v2

    #@1c
    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 8
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    if-eqz p1, :cond_1

    #@2
    .line 54
    iput-object p1, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@4
    .line 55
    if-eqz p2, :cond_0

    #@6
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v5

    #@a
    check-cast v5, [C

    #@c
    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    #@e
    .line 52
    :goto_0
    return-void

    #@f
    .line 58
    :cond_0
    sget-object v5, Lcom/android/org/conscrypt/util/EmptyArray;->CHAR:[C

    #@11
    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    #@13
    goto :goto_0

    #@14
    .line 61
    :cond_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@1b
    move-result-object v5

    #@1c
    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@1e
    .line 62
    const-string/jumbo v5, "javax.net.ssl.keyStore"

    #@21
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 63
    .local v3, "keyStoreName":Ljava/lang/String;
    const/4 v4, 0x0

    #@26
    .line 64
    .local v4, "keyStorePwd":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@28
    const-string/jumbo v5, "NONE"

    #@2b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_2

    #@31
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_3

    #@37
    .line 66
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@39
    const/4 v6, 0x0

    #@3a
    const/4 v7, 0x0

    #@3b
    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    #@3e
    goto :goto_0

    #@3f
    .line 67
    :catch_0
    move-exception v1

    #@40
    .line 68
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/KeyStoreException;

    #@42
    invoke-direct {v5, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@45
    throw v5

    #@46
    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    #@47
    .line 70
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/KeyStoreException;

    #@49
    invoke-direct {v5, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@4c
    throw v5

    #@4d
    .line 73
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_3
    const-string/jumbo v5, "javax.net.ssl.keyStorePassword"

    #@50
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    .line 74
    .local v4, "keyStorePwd":Ljava/lang/String;
    if-nez v4, :cond_4

    #@56
    .line 75
    sget-object v5, Lcom/android/org/conscrypt/util/EmptyArray;->CHAR:[C

    #@58
    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    #@5a
    .line 80
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@5c
    new-instance v6, Ljava/io/FileInputStream;

    #@5e
    new-instance v7, Ljava/io/File;

    #@60
    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@63
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@66
    iget-object v7, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    #@68
    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3

    #@6b
    goto :goto_0

    #@6c
    .line 81
    :catch_2
    move-exception v0

    #@6d
    .line 82
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/security/KeyStoreException;

    #@6f
    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@72
    throw v5

    #@73
    .line 77
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    #@76
    move-result-object v5

    #@77
    iput-object v5, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    #@79
    goto :goto_1

    #@7a
    .line 85
    :catch_3
    move-exception v2

    #@7b
    .line 86
    .restart local v2    # "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/KeyStoreException;

    #@7d
    invoke-direct {v5, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@80
    throw v5

    #@81
    .line 83
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v1

    #@82
    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/KeyStoreException;

    #@84
    invoke-direct {v5, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@87
    throw v5
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2
    .line 101
    const-string/jumbo v1, "ManagerFactoryParameters not supported"

    #@5
    .line 100
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
