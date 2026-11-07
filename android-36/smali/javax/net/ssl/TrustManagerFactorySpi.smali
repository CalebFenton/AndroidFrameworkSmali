.class public abstract Ljavax/net/ssl/TrustManagerFactorySpi;
.super Ljava/lang/Object;
.source "TrustManagerFactorySpi.java"


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
.end method

.method protected abstract whitelist test-api engineInit(Ljava/security/KeyStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
