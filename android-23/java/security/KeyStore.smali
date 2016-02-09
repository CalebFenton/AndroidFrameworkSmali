.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$TrustedCertificateEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEYSTORE_TYPE:Ljava/lang/String; = "jks"

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;

.field private static final PROPERTY_NAME:Ljava/lang/String; = "keystore.type"

.field private static final SERVICE:Ljava/lang/String; = "KeyStore"


# instance fields
.field private final implSpi:Ljava/security/KeyStoreSpi;

.field private isInit:Z

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/KeyStore;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 55
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "KeyStore"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStoreSpi"    # Ljava/security/KeyStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    #@5
    .line 87
    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    #@7
    .line 88
    iput-object p1, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    .line 89
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@c
    .line 85
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 208
    const-string/jumbo v1, "keystore.type"

    #@3
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 209
    .local v0, "dt":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "jks"

    #@c
    .end local v0    # "dt":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    if-nez p0, :cond_0

    #@2
    .line 113
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "type == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 116
    :cond_0
    :try_start_0
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v1

    #@12
    .line 117
    .local v1, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    new-instance v3, Ljava/security/KeyStore;

    #@14
    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@16
    check-cast v2, Ljava/security/KeyStoreSpi;

    #@18
    iget-object v4, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@1a
    invoke-direct {v3, v2, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v3

    #@1e
    .line 118
    .end local v1    # "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    :catch_0
    move-exception v0

    #@1f
    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    #@21
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 147
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v2

    #@e
    .line 149
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@11
    move-result-object v1

    #@12
    .line 150
    .local v1, "impProvider":Ljava/security/Provider;
    if-nez v1, :cond_2

    #@14
    .line 151
    new-instance v2, Ljava/security/NoSuchProviderException;

    #@16
    invoke-direct {v2, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 154
    :cond_2
    :try_start_0
    invoke-static {p0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 155
    :catch_0
    move-exception v0

    #@20
    .line 156
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    #@22
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    if-nez p1, :cond_0

    #@2
    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "provider == null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 185
    :cond_0
    if-nez p0, :cond_1

    #@d
    .line 186
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v3, "type == null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 190
    :cond_1
    :try_start_0
    sget-object v2, Ljava/security/KeyStore;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    .line 191
    .local v1, "spi":Ljava/lang/Object;
    new-instance v2, Ljava/security/KeyStore;

    #@1f
    check-cast v1, Ljava/security/KeyStoreSpi;

    #@21
    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v2, v1, p1, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    return-object v2

    #@25
    .line 192
    :catch_0
    move-exception v0

    #@26
    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    #@28
    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v2
.end method

.method private static throwNotInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/security/KeyStoreException;

    #@2
    const-string/jumbo v1, "KeyStore was not initialized"

    #@5
    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method


# virtual methods
.method public final aliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 424
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 426
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final containsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 440
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 442
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 408
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 410
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    #@c
    .line 406
    return-void
.end method

.method public final entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 697
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-nez p1, :cond_0

    #@2
    .line 698
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 700
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 701
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "entryClass == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 704
    :cond_1
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 705
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@1d
    .line 707
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@1f
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    #@22
    move-result v0

    #@23
    return v0
.end method

.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 285
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 287
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 506
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 507
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 509
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 268
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 270
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 302
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 304
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 639
    if-nez p1, :cond_0

    #@2
    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "alias == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 642
    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@d
    if-nez v0, :cond_1

    #@f
    .line 643
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@12
    .line 645
    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@14
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public final getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 251
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 253
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final isCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 489
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 491
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public final isKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 471
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 473
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public final load(Ljava/io/InputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    #@5
    .line 591
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@8
    .line 589
    return-void
.end method

.method public final load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@5
    .line 614
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@8
    .line 612
    return-void
.end method

.method public final setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 391
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 393
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    #@c
    .line 389
    return-void
.end method

.method public final setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 669
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 670
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 672
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 673
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "alias == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 675
    :cond_1
    if-nez p2, :cond_2

    #@14
    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    #@16
    const-string/jumbo v1, "entry == null"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 678
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@1f
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    #@22
    .line 668
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 330
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 331
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 335
    :cond_0
    if-eqz p2, :cond_2

    #@9
    instance-of v0, p2, Ljava/security/PrivateKey;

    #@b
    if-eqz v0, :cond_2

    #@d
    if-eqz p4, :cond_1

    #@f
    array-length v0, p4

    #@10
    if-nez v0, :cond_2

    #@12
    .line 336
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Certificate chain is not defined for Private key"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 338
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@1d
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    #@20
    .line 329
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 368
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 370
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    #@c
    .line 366
    return-void
.end method

.method public final size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 454
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 456
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public final store(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 533
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 534
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 538
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    #@c
    .line 532
    return-void
.end method

.method public final store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 562
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 563
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    #@7
    .line 565
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    #@9
    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    #@c
    .line 561
    return-void
.end method
