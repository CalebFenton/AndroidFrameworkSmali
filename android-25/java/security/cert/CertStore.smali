.class public Ljava/security/cert/CertStore;
.super Ljava/lang/Object;
.source "CertStore.java"


# static fields
.field private static final CERTSTORE_TYPE:Ljava/lang/String; = "certstore.type"


# instance fields
.field private params:Ljava/security/cert/CertStoreParameters;

.field private provider:Ljava/security/Provider;

.field private storeSpi:Ljava/security/cert/CertStoreSpi;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .locals 1
    .param p1, "storeSpi"    # Ljava/security/cert/CertStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/security/cert/CertStoreParameters;

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    iput-object p1, p0, Ljava/security/cert/CertStore;->storeSpi:Ljava/security/cert/CertStoreSpi;

    #@5
    .line 127
    iput-object p2, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    #@7
    .line 128
    iput-object p3, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    #@9
    .line 129
    if-eqz p4, :cond_0

    #@b
    .line 130
    invoke-interface {p4}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/security/cert/CertStoreParameters;

    #@11
    iput-object v0, p0, Ljava/security/cert/CertStore;->params:Ljava/security/cert/CertStoreParameters;

    #@13
    .line 125
    :cond_0
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 423
    new-instance v1, Ljava/security/cert/CertStore$1;

    #@2
    invoke-direct {v1}, Ljava/security/cert/CertStore$1;-><init>()V

    #@5
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 428
    .local v0, "cstype":Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    .line 429
    const-string/jumbo v0, "LDAP"

    #@10
    .line 431
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    :try_start_0
    const-string/jumbo v2, "CertStore"

    #@3
    .line 238
    const-class v3, Ljava/security/cert/CertStoreSpi;

    #@5
    .line 237
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v1

    #@9
    .line 239
    .local v1, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/cert/CertStore;

    #@b
    iget-object v2, v1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v2, Ljava/security/cert/CertStoreSpi;

    #@f
    .line 240
    iget-object v4, v1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 239
    invoke-direct {v3, v2, v4, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    return-object v3

    #@15
    .line 241
    .end local v1    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    #@16
    .line 242
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Ljava/security/cert/CertStore;->handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 5
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

    #@0
    .prologue
    .line 307
    :try_start_0
    const-string/jumbo v2, "CertStore"

    #@3
    .line 308
    const-class v3, Ljava/security/cert/CertStoreSpi;

    #@5
    .line 307
    invoke-static {v2, v3, p0, p1, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v1

    #@9
    .line 309
    .local v1, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/cert/CertStore;

    #@b
    iget-object v2, v1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v2, Ljava/security/cert/CertStoreSpi;

    #@f
    .line 310
    iget-object v4, v1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 309
    invoke-direct {v3, v2, v4, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    return-object v3

    #@15
    .line 311
    .end local v1    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    #@16
    .line 312
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Ljava/security/cert/CertStore;->handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    :try_start_0
    const-string/jumbo v2, "CertStore"

    #@3
    .line 362
    const-class v3, Ljava/security/cert/CertStoreSpi;

    #@5
    .line 361
    invoke-static {v2, v3, p0, p1, p2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    #@8
    move-result-object v1

    #@9
    .line 363
    .local v1, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/cert/CertStore;

    #@b
    iget-object v2, v1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    #@d
    check-cast v2, Ljava/security/cert/CertStoreSpi;

    #@f
    .line 364
    iget-object v4, v1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    #@11
    .line 363
    invoke-direct {v3, v2, v4, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    return-object v3

    #@15
    .line 365
    .end local v1    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    #@16
    .line 366
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Ljava/security/cert/CertStore;->handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method private static handleException(Ljava/security/NoSuchAlgorithmException;)Ljava/security/cert/CertStore;
    .locals 2
    .param p0, "e"    # Ljava/security/NoSuchAlgorithmException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    .line 249
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 250
    nop

    #@9
    nop

    #@a
    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    #@b
    .line 252
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    throw p0
.end method


# virtual methods
.method public final getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 1
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Ljava/security/cert/CertStore;->storeSpi:Ljava/security/cert/CertStoreSpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getCertStoreParameters()Ljava/security/cert/CertStoreParameters;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 379
    iget-object v1, p0, Ljava/security/cert/CertStore;->params:Ljava/security/cert/CertStoreParameters;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/security/cert/CertStore;->params:Ljava/security/cert/CertStoreParameters;

    #@8
    invoke-interface {v0}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/security/cert/CertStoreParameters;

    #@e
    goto :goto_0
.end method

.method public final getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 1
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Ljava/security/cert/CertStore;->storeSpi:Ljava/security/cert/CertStoreSpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method
