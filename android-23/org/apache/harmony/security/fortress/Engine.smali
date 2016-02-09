.class public final Lorg/apache/harmony/security/fortress/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;,
        Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    }
.end annotation


# static fields
.field public static door:Lorg/apache/harmony/security/fortress/SecurityAccess;


# instance fields
.field private volatile serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    #@5
    .line 123
    return-void
.end method

.method private notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 191
    const-string/jumbo v2, " implementation not found"

    #@19
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    if-nez p1, :cond_0

    #@2
    .line 179
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@4
    const-string/jumbo v2, "algorithm == null"

    #@7
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 181
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    #@d
    invoke-virtual {p2, v1, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@10
    move-result-object v0

    #@11
    .line 182
    .local v0, "service":Ljava/security/Provider$Service;
    if-nez v0, :cond_1

    #@13
    .line 183
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    #@15
    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    #@18
    move-result-object v1

    #@19
    throw v1

    #@1a
    .line 185
    :cond_1
    invoke-virtual {v0, p3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 134
    if-nez p1, :cond_0

    #@4
    .line 135
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@6
    const-string/jumbo v2, "Null algorithm name"

    #@9
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/fortress/Engine;->getServices(Ljava/lang/String;)Ljava/util/ArrayList;

    #@10
    move-result-object v0

    #@11
    .line 138
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    if-nez v0, :cond_1

    #@13
    .line 139
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    #@15
    invoke-direct {p0, v1, p1}, Lorg/apache/harmony/security/fortress/Engine;->notFound(Ljava/lang/String;Ljava/lang/String;)Ljava/security/NoSuchAlgorithmException;

    #@18
    move-result-object v1

    #@19
    throw v1

    #@1a
    .line 141
    :cond_1
    new-instance v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@1c
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/security/Provider$Service;

    #@22
    invoke-virtual {v1, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Ljava/security/Provider$Service;

    #@2c
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v2, v3, v1, v4}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;)V

    #@33
    return-object v2
.end method

.method public getInstance(Ljava/security/Provider$Service;Ljava/lang/String;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    .locals 4
    .param p1, "service"    # Ljava/security/Provider$Service;
    .param p2, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@2
    invoke-virtual {p1, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;-><init>(Ljava/lang/Object;Ljava/security/Provider;Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;)V

    #@e
    return-object v0
.end method

.method public getServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 159
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    #@4
    move-result v2

    #@5
    .line 160
    .local v2, "newCacheVersion":I
    iget-object v1, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    #@7
    .line 161
    .local v1, "cacheEntry":Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@9
    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 162
    .local v0, "algoUC":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@f
    .line 163
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->-get0(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v4

    #@17
    .line 162
    if-eqz v4, :cond_0

    #@19
    .line 164
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->-get1(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)I

    #@1c
    move-result v4

    #@1d
    if-ne v2, v4, :cond_0

    #@1f
    .line 165
    invoke-static {v1}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;->-get2(Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)Ljava/util/ArrayList;

    #@22
    move-result-object v4

    #@23
    return-object v4

    #@24
    .line 167
    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceName:Ljava/lang/String;

    #@26
    invoke-static {v4, v0}, Lorg/apache/harmony/security/fortress/Services;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    #@29
    move-result-object v3

    #@2a
    .line 168
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    new-instance v4, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    #@2c
    invoke-direct {v4, v0, v2, v3, v5}, Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;)V

    #@2f
    iput-object v4, p0, Lorg/apache/harmony/security/fortress/Engine;->serviceCache:Lorg/apache/harmony/security/fortress/Engine$ServiceCacheEntry;

    #@31
    .line 169
    return-object v3
.end method
