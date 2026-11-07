.class public Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private blacklist keyStore:Ljava/security/KeyStore;

.field private blacklist pwd:[C


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_14

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    new-instance v1, Lcom/android/org/conscrypt/KeyManagerImpl;

    iget-object v2, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 120
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/KeyStore;[C)V
    .registers 8
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 58
    if-eqz p1, :cond_15

    .line 59
    iput-object p1, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 60
    if-eqz p2, :cond_10

    .line 61
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto/16 :goto_83

    .line 63
    :cond_10
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->CHAR:[C

    iput-object v0, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_83

    .line 66
    :cond_15
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 67
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "keyStoreName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 69
    .local v1, "keyStorePwd":Ljava/lang/String;
    if-eqz v0, :cond_7c

    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_7c

    .line 78
    :cond_37
    const-string v2, "javax.net.ssl.keyStorePassword"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    if-nez v1, :cond_44

    .line 80
    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->CHAR:[C

    iput-object v2, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_4a

    .line 82
    :cond_44
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    .line 84
    :goto_4a
    const/4 v2, 0x0

    .line 86
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_4b
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 87
    iget-object v3, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_5d} :catch_71
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_5d} :catch_6a
    .catch Ljava/security/cert/CertificateException; {:try_start_4b .. :try_end_5d} :catch_63
    .catchall {:try_start_4b .. :try_end_5d} :catchall_61

    .line 95
    invoke-static {v2}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    goto :goto_83

    .line 95
    :catchall_61
    move-exception v3

    goto :goto_78

    .line 92
    :catch_63
    move-exception v3

    .line 93
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_64
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
    .end local p1    # "ks":Ljava/security/KeyStore;
    .end local p2    # "password":[C
    throw v4

    .line 90
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
    .restart local p1    # "ks":Ljava/security/KeyStore;
    .restart local p2    # "password":[C
    :catch_6a
    move-exception v3

    .line 91
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
    .end local p1    # "ks":Ljava/security/KeyStore;
    .end local p2    # "password":[C
    throw v4

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
    .restart local p1    # "ks":Ljava/security/KeyStore;
    .restart local p2    # "password":[C
    :catch_71
    move-exception v3

    .line 89
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
    .end local p1    # "ks":Ljava/security/KeyStore;
    .end local p2    # "password":[C
    throw v4
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_61

    .line 95
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/org/conscrypt/KeyManagerFactoryImpl;
    .restart local p1    # "ks":Ljava/security/KeyStore;
    .restart local p2    # "password":[C
    :goto_78
    invoke-static {v2}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    throw v3

    .line 71
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_7c
    :goto_7c
    :try_start_7c
    iget-object v2, p0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_82} :catch_8b
    .catch Ljava/security/cert/CertificateException; {:try_start_7c .. :try_end_82} :catch_84

    .line 76
    nop

    .line 101
    .end local v0    # "keyStoreName":Ljava/lang/String;
    .end local v1    # "keyStorePwd":Ljava/lang/String;
    :goto_83
    return-void

    .line 74
    .restart local v0    # "keyStoreName":Ljava/lang/String;
    .restart local v1    # "keyStorePwd":Ljava/lang/String;
    :catch_84
    move-exception v2

    .line 75
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 72
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_8b
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected whitelist test-api engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
