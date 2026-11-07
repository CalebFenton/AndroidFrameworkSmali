.class public Lcom/android/org/conscrypt/PakeTrustManagerFactory;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "PakeTrustManagerFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 4

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/android/org/conscrypt/Spake2PlusTrustManager;

    invoke-direct {v1}, Lcom/android/org/conscrypt/Spake2PlusTrustManager;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public whitelist test-api engineInit(Ljava/security/KeyStore;)V
    .registers 4
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 48
    if-nez p1, :cond_3

    .line 51
    return-void

    .line 49
    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "KeyStore not supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 59
    if-nez p1, :cond_3

    .line 62
    return-void

    .line 60
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
