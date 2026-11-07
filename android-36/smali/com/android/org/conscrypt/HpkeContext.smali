.class public abstract Lcom/android/org/conscrypt/HpkeContext;
.super Ljava/lang/Object;
.source "HpkeContext.java"


# instance fields
.field protected final blacklist spi:Lcom/android/org/conscrypt/HpkeSpi;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/conscrypt/HpkeSpi;)V
    .registers 2
    .param p1, "spi"    # Lcom/android/org/conscrypt/HpkeSpi;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/org/conscrypt/HpkeContext;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    .line 46
    return-void
.end method

.method private static blacklist findFirstProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 80
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 81
    .local v3, "p":Ljava/security/Provider;
    const-string v4, "ConscryptHpke"

    invoke-virtual {v3, v4, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    .line 82
    .local v4, "service":Ljava/security/Provider$Service;
    if-eqz v4, :cond_17

    .line 83
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0

    .line 80
    .end local v3    # "p":Ljava/security/Provider;
    .end local v4    # "service":Ljava/security/Provider$Service;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 86
    :cond_1a
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Provider found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist findSpi(Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSpi;
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 72
    if-eqz p0, :cond_b

    .line 76
    invoke-static {p0}, Lcom/android/org/conscrypt/HpkeContext;->findFirstProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/HpkeContext;->findSpi(Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v0

    return-object v0

    .line 74
    :cond_b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "null algorithm"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist findSpi(Ljava/lang/String;Ljava/lang/String;)Lcom/android/org/conscrypt/HpkeSpi;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 91
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 95
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 96
    .local v0, "provider":Ljava/security/Provider;
    if-eqz v0, :cond_13

    .line 99
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/HpkeContext;->findSpi(Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/conscrypt/HpkeSpi;

    move-result-object v1

    return-object v1

    .line 97
    :cond_13
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "provider":Ljava/security/Provider;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid provider name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist findSpi(Ljava/lang/String;Ljava/security/Provider;)Lcom/android/org/conscrypt/HpkeSpi;
    .registers 8
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 104
    if-eqz p1, :cond_3b

    .line 107
    const-string v0, "ConscryptHpke"

    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 108
    .local v0, "service":Ljava/security/Provider$Service;
    if-eqz v0, :cond_33

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "instance":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/org/conscrypt/HpkeSpi;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lcom/android/org/conscrypt/HpkeSpi;

    goto :goto_1b

    .line 113
    :cond_17
    invoke-static {v1}, Lcom/android/org/conscrypt/DuckTypedHpkeSpi;->newInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedHpkeSpi;

    move-result-object v2

    :goto_1b
    nop

    .line 114
    .local v2, "spi":Lcom/android/org/conscrypt/HpkeSpi;
    if-eqz v2, :cond_1f

    .line 115
    return-object v2

    .line 117
    :cond_1f
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 118
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Provider %s is providing incorrect instances"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "spi":Lcom/android/org/conscrypt/HpkeSpi;
    :cond_33
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "Unknown algorithm"

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "service":Ljava/security/Provider$Service;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null Provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist export(I[B)[B
    .registers 4
    .param p1, "length"    # I
    .param p2, "context"    # [B

    .line 59
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContext;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    invoke-interface {v0, p1, p2}, Lcom/android/org/conscrypt/HpkeSpi;->engineExport(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpi()Lcom/android/org/conscrypt/HpkeSpi;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/HpkeContext;->spi:Lcom/android/org/conscrypt/HpkeSpi;

    return-object v0
.end method
