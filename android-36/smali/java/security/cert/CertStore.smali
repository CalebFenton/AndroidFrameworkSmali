.class public Ljava/security/cert/CertStore;
.super Ljava/lang/Object;
.source "CertStore.java"


# static fields
.field private static final greylist-max-o CERTSTORE_TYPE:Ljava/lang/String; = "certstore.type"


# instance fields
.field private greylist-max-o params:Ljava/security/cert/CertStoreParameters;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o storeSpi:Ljava/security/cert/CertStoreSpi;

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .registers 6
    .param p1, "storeSpi"    # Ljava/security/cert/CertStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/security/cert/CertStoreParameters;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Ljava/security/cert/CertStore;->storeSpi:Ljava/security/cert/CertStoreSpi;

    .line 119
    iput-object p2, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    .line 120
    iput-object p3, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    .line 121
    if-eqz p4, :cond_13

    .line 122
    invoke-interface {p4}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStoreParameters;

    iput-object v0, p0, Ljava/security/cert/CertStore;->params:Ljava/security/cert/CertStoreParameters;

    .line 123
    :cond_13
    return-void
.end method

.method public static final whitelist test-api getDefaultType()Ljava/lang/String;
    .registers 1

    .line 431
    new-instance v0, Ljava/security/cert/CertStore$1;

    invoke-direct {v0}, Ljava/security/cert/CertStore$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 436
    .local v0, "cstype":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 437
    const-string v0, "LDAP"

    .line 439
    :cond_f
    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 238
    const-string v0, "null type name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    :try_start_5
    const-string v0, "CertStore"

    const-class v1, Ljava/security/cert/CertStoreSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 242
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertStore;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertStoreSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_18} :catch_19

    return-object v1

    .line 244
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_19
    move-exception v0

    .line 245
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Ljava/security/cert/CertStore;->handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 312
    const-string v0, "null type name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    :try_start_5
    const-string v0, "CertStore"

    const-class v1, Ljava/security/cert/CertStoreSpi;

    invoke-static {v0, v1, p0, p1, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 316
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertStore;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertStoreSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_18} :catch_19

    return-object v1

    .line 318
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_19
    move-exception v0

    .line 319
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Ljava/security/cert/CertStore;->handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 369
    const-string v0, "null type name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    :try_start_5
    const-string v0, "CertStore"

    const-class v1, Ljava/security/cert/CertStoreSpi;

    invoke-static {v0, v1, p0, p1, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 373
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertStore;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertStoreSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_18} :catch_19

    return-object v1

    .line 375
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_19
    move-exception v0

    .line 376
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Ljava/security/cert/CertStore;->handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;
    .registers 3
    .param p0, "e"    # Ljava/security/NoSuchAlgorithmException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 253
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v1, :cond_c

    .line 254
    move-object v1, v0

    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    throw v1

    .line 256
    :cond_c
    throw p0
.end method


# virtual methods
.method public final whitelist test-api getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 3
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Ljava/security/cert/CertStore;->storeSpi:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getCertStoreParameters()Ljava/security/cert/CertStoreParameters;
    .registers 2

    .line 389
    iget-object v0, p0, Ljava/security/cert/CertStore;->params:Ljava/security/cert/CertStoreParameters;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Ljava/security/cert/CertStore;->params:Ljava/security/cert/CertStoreParameters;

    invoke-interface {v0}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStoreParameters;

    :goto_e
    return-object v0
.end method

.method public final whitelist test-api getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 3
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Ljava/security/cert/CertStore;->storeSpi:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 407
    iget-object v0, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 398
    iget-object v0, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    return-object v0
.end method
