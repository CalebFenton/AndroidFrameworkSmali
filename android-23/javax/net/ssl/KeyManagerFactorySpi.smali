.class public abstract Ljavax/net/ssl/KeyManagerFactorySpi;
.super Ljava/lang/Object;
.source "KeyManagerFactorySpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
.end method

.method protected abstract engineInit(Ljava/security/KeyStore;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
