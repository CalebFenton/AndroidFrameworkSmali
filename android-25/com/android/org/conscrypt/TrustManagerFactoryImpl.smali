.class public Lcom/android/org/conscrypt/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 78
    const-string/jumbo v1, "TrustManagerFactory is not initialized"

    #@9
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 80
    :cond_0
    const/4 v0, 0x1

    #@e
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    #@10
    new-instance v1, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@12
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@14
    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    #@17
    const/4 v2, 0x0

    #@18
    aput-object v1, v0, v2

    #@1a
    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 6
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    if-eqz p1, :cond_0

    #@2
    .line 46
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@4
    .line 44
    :goto_0
    return-void

    #@5
    .line 48
    :cond_0
    const-string/jumbo v3, "AndroidCAStore"

    #@8
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@b
    move-result-object v3

    #@c
    iput-object v3, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@e
    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    #@15
    goto :goto_0

    #@16
    .line 51
    :catch_0
    move-exception v0

    #@17
    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    #@19
    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@1c
    throw v3

    #@1d
    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@1e
    .line 56
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/KeyStoreException;

    #@20
    invoke-direct {v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@23
    throw v3

    #@24
    .line 53
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    #@25
    .line 54
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    #@27
    invoke-direct {v3, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v3
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@2
    .line 68
    const-string/jumbo v1, "ManagerFactoryParameters not supported"

    #@5
    .line 67
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
