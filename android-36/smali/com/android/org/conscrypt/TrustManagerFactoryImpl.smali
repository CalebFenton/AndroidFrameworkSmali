.class public Lcom/android/org/conscrypt/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private blacklist keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_12

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 85
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineInit(Ljava/security/KeyStore;)V
    .registers 3
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 62
    if-eqz p1, :cond_5

    .line 63
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    goto :goto_b

    .line 65
    :cond_5
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getDefaultCertKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 67
    :goto_b
    return-void
.end method

.method public whitelist test-api engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
