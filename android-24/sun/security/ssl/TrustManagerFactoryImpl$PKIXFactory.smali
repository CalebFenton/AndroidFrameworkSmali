.class public final Lsun/security/ssl/TrustManagerFactoryImpl$PKIXFactory;
.super Lsun/security/ssl/TrustManagerFactoryImpl;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/TrustManagerFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PKIXFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Lsun/security/ssl/TrustManagerFactoryImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 2
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    new-instance v0, Lsun/security/ssl/X509TrustManagerImpl;

    #@2
    const-string/jumbo v1, "PKIX"

    #@5
    invoke-direct {v0, v1, p1}, Lsun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    #@8
    return-object v0
.end method

.method getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    instance-of v2, p1, Ljavax/net/ssl/CertPathTrustManagerParameters;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 257
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    .line 258
    const-string/jumbo v3, "Parameters must be CertPathTrustManagerParameters"

    #@9
    .line 257
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 261
    :cond_0
    nop

    #@e
    nop

    #@f
    .end local p1    # "spec":Ljavax/net/ssl/ManagerFactoryParameters;
    invoke-virtual {p1}, Ljavax/net/ssl/CertPathTrustManagerParameters;->getParameters()Ljava/security/cert/CertPathParameters;

    #@12
    move-result-object v0

    #@13
    .line 262
    .local v0, "params":Ljava/security/cert/CertPathParameters;
    instance-of v2, v0, Ljava/security/cert/PKIXBuilderParameters;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 263
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    #@19
    .line 264
    const-string/jumbo v3, "Encapsulated parameters must be PKIXBuilderParameters"

    #@1c
    .line 263
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    :cond_1
    move-object v1, v0

    #@21
    .line 266
    nop

    #@22
    nop

    #@23
    .line 267
    .local v1, "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    new-instance v2, Lsun/security/ssl/X509TrustManagerImpl;

    #@25
    const-string/jumbo v3, "PKIX"

    #@28
    invoke-direct {v2, v3, v1}, Lsun/security/ssl/X509TrustManagerImpl;-><init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V

    #@2b
    return-object v2
.end method
