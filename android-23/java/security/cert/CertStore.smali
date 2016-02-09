.class public Ljava/security/cert/CertStore;
.super Ljava/lang/Object;
.source "CertStore.java"


# static fields
.field private static final DEFAULT_PROPERTY:Ljava/lang/String; = "LDAP"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final PROPERTY_NAME:Ljava/lang/String; = "certstore.type"

.field private static final SERVICE:Ljava/lang/String; = "CertStore"


# instance fields
.field private final certStoreParams:Ljava/security/cert/CertStoreParameters;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertStoreSpi;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "CertStore"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .locals 0
    .param p1, "storeSpi"    # Ljava/security/cert/CertStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/security/cert/CertStoreParameters;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p2, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    #@5
    .line 75
    iput-object p3, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    #@7
    .line 76
    iput-object p1, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    #@9
    .line 77
    iput-object p4, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    #@b
    .line 73
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 271
    const-string/jumbo v1, "certstore.type"

    #@3
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 272
    .local v0, "defaultType":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "LDAP"

    #@c
    .end local v0    # "defaultType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    .locals 6
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
    .line 99
    if-nez p0, :cond_0

    #@2
    .line 100
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "type == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 103
    :cond_0
    :try_start_0
    sget-object v3, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@d
    invoke-virtual {v3, p0, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@10
    move-result-object v1

    #@11
    .line 104
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v4, Ljava/security/cert/CertStore;

    #@13
    iget-object v3, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@15
    check-cast v3, Ljava/security/cert/CertStoreSpi;

    #@17
    iget-object v5, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@19
    invoke-direct {v4, v3, v5, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    return-object v4

    #@1d
    .line 105
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@1e
    .line 106
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    #@21
    move-result-object v2

    #@22
    .line 107
    .local v2, "th":Ljava/lang/Throwable;
    if-nez v2, :cond_1

    #@24
    .line 108
    throw v0

    #@25
    .line 110
    :cond_1
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@27
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    throw v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 3
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
    .line 142
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 143
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "provider == null || provider.isEmpty()"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 145
    :cond_1
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@14
    move-result-object v0

    #@15
    .line 146
    .local v0, "impProvider":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@17
    .line 147
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@19
    invoke-direct {v1, p2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1

    #@1d
    .line 149
    :cond_2
    invoke-static {p0, p1, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    #@20
    move-result-object v1

    #@21
    return-object v1
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
    .line 176
    if-nez p2, :cond_0

    #@2
    .line 177
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "provider == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 179
    :cond_0
    if-nez p0, :cond_1

    #@d
    .line 180
    new-instance v3, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v4, "type == null"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 183
    :cond_1
    :try_start_0
    sget-object v3, Ljava/security/cert/CertStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@18
    invoke-virtual {v3, p0, p2, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 184
    .local v1, "spi":Ljava/lang/Object;
    new-instance v3, Ljava/security/cert/CertStore;

    #@1e
    check-cast v1, Ljava/security/cert/CertStoreSpi;

    #@20
    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v3, v1, p2, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    return-object v3

    #@24
    .line 185
    :catch_0
    move-exception v0

    #@25
    .line 186
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    #@28
    move-result-object v2

    #@29
    .line 187
    .local v2, "th":Ljava/lang/Throwable;
    if-nez v2, :cond_2

    #@2b
    .line 188
    throw v0

    #@2c
    .line 190
    :cond_2
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    #@2e
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-direct {v3, v4, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@35
    throw v3
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
    .line 259
    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

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
    const/4 v1, 0x0

    #@1
    .line 221
    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 222
    return-object v1

    #@6
    .line 224
    :cond_0
    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    #@8
    invoke-interface {v0}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/security/cert/CertStoreParameters;

    #@e
    return-object v0
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
    .line 242
    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

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
    .line 210
    iget-object v0, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method
