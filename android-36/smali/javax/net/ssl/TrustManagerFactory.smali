.class public Ljavax/net/ssl/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

.field private greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "factorySpi"    # Ljavax/net/ssl/TrustManagerFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 105
    iput-object p2, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    .line 106
    iput-object p3, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static final whitelist test-api getDefaultAlgorithm()Ljava/lang/String;
    .registers 1

    .line 82
    new-instance v0, Ljavax/net/ssl/TrustManagerFactory$1;

    invoke-direct {v0}, Ljavax/net/ssl/TrustManagerFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 90
    const-string v0, "SunX509"

    .line 92
    :cond_f
    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 154
    const-class v0, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 155
    const-string v1, "TrustManagerFactory"

    invoke-static {v1, v0, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 157
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/net/ssl/TrustManagerFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 198
    const-class v0, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 199
    const-string v1, "TrustManagerFactory"

    invoke-static {v1, v0, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 201
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/net/ssl/TrustManagerFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/TrustManagerFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 235
    const-class v0, Ljavax/net/ssl/TrustManagerFactorySpi;

    .line 236
    const-string v1, "TrustManagerFactory"

    invoke-static {v1, v0, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 238
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/net/ssl/TrustManagerFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/net/ssl/TrustManagerFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 248
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 2

    .line 301
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api init(Ljava/security/KeyStore;)V
    .registers 3
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljava/security/KeyStore;)V

    .line 267
    return-void
.end method

.method public final whitelist test-api init(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 3
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Ljavax/net/ssl/TrustManagerFactory;->factorySpi:Ljavax/net/ssl/TrustManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 290
    return-void
.end method
