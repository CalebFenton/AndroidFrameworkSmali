.class public Lorg/apache/harmony/security/fortress/Services;
.super Ljava/lang/Object;
.source "Services.java"


# static fields
.field private static cacheVersion:I

.field private static cachedSecureRandomService:Ljava/security/Provider$Service;

.field private static needRefresh:Z

.field private static final providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final providersNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x14

    #@2
    .line 48
    const/4 v4, 0x1

    #@3
    sput v4, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    #@5
    .line 53
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    sput-object v4, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@c
    .line 76
    new-instance v4, Ljava/util/HashMap;

    #@e
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    #@11
    .line 75
    sput-object v4, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    #@13
    .line 78
    const/4 v3, 0x0

    #@14
    .line 79
    .local v3, "providerClassName":Ljava/lang/String;
    const/4 v1, 0x1

    #@15
    .line 80
    .local v1, "i":I
    const-class v4, Lorg/apache/harmony/security/fortress/Services;

    #@17
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1a
    move-result-object v0

    #@1b
    .line 82
    .end local v3    # "providerClassName":Ljava/lang/String;
    .local v0, "cl":Ljava/lang/ClassLoader;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "security.provider."

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    add-int/lit8 v2, v1, 0x1

    #@29
    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v4}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .local v3, "providerClassName":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@37
    .line 83
    invoke-static {v3, v0}, Lorg/apache/harmony/security/fortress/Services;->initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_0

    #@3d
    .line 87
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@40
    move-result-object v4

    #@41
    invoke-static {v3, v4}, Lorg/apache/harmony/security/fortress/Services;->initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_0

    #@47
    :cond_0
    move v1, v2

    #@48
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@49
    .line 92
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    sget-object v4, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    #@4b
    invoke-interface {v4}, Lorg/apache/harmony/security/fortress/SecurityAccess;->renumProviders()V

    #@4e
    .line 93
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V

    #@51
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getCacheVersion()I
    .locals 2

    #@0
    .prologue
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    #@2
    monitor-enter v1

    #@3
    .line 195
    :try_start_0
    sget-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 196
    sget v0, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    sput v0, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I

    #@d
    .line 197
    const-string/jumbo v0, "SecureRandom"

    #@10
    invoke-static {v0}, Lorg/apache/harmony/security/fortress/Services;->getFirstServiceOfType(Ljava/lang/String;)Ljava/security/Provider$Service;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;

    #@16
    .line 198
    const/4 v0, 0x0

    #@17
    sput-boolean v0, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z

    #@19
    .line 200
    :cond_0
    sget v0, Lorg/apache/harmony/security/fortress/Services;->cacheVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    return v0

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method private static declared-synchronized getFirstServiceOfType(Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const-class v4, Lorg/apache/harmony/security/fortress/Services;

    #@3
    monitor-enter v4

    #@4
    .line 163
    :try_start_0
    sget-object v3, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/security/Provider;

    #@16
    .line 164
    .local v0, "p":Ljava/security/Provider;
    sget-object v3, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    #@18
    invoke-interface {v3, v0, p0}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 165
    .local v2, "s":Ljava/security/Provider$Service;
    if-eqz v2, :cond_0

    #@1e
    monitor-exit v4

    #@1f
    .line 166
    return-object v2

    #@20
    .end local v0    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_1
    monitor-exit v4

    #@21
    .line 169
    return-object v5

    #@22
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    #@3
    monitor-enter v1

    #@4
    .line 107
    if-nez p0, :cond_0

    #@6
    monitor-exit v1

    #@7
    .line 108
    return-object v0

    #@8
    .line 110
    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static declared-synchronized getProviders()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const-class v0, Lorg/apache/harmony/security/fortress/Services;

    #@2
    monitor-enter v0

    #@3
    .line 100
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static declared-synchronized getSecureRandomService()Ljava/security/Provider$Service;
    .locals 2

    #@0
    .prologue
    const-class v1, Lorg/apache/harmony/security/fortress/Services;

    #@2
    monitor-enter v1

    #@3
    .line 176
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getCacheVersion()I

    #@6
    .line 177
    sget-object v0, Lorg/apache/harmony/security/fortress/Services;->cachedSecureRandomService:Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static declared-synchronized getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    const-class v6, Lorg/apache/harmony/security/fortress/Services;

    #@2
    monitor-enter v6

    #@3
    .line 146
    const/4 v3, 0x0

    #@4
    .line 147
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    :try_start_0
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v1

    #@a
    .local v1, "p$iterator":Ljava/util/Iterator;
    move-object v4, v3

    #@b
    .end local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/security/Provider;

    #@17
    .line 148
    .local v0, "p":Ljava/security/Provider;
    invoke-virtual {v0, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@1a
    move-result-object v2

    #@1b
    .line 149
    .local v2, "s":Ljava/security/Provider$Service;
    if-eqz v2, :cond_2

    #@1d
    .line 150
    if-nez v4, :cond_1

    #@1f
    .line 151
    new-instance v3, Ljava/util/ArrayList;

    #@21
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v5

    #@27
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    .line 153
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    :goto_2
    move-object v4, v3

    #@2e
    .end local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .restart local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    goto :goto_0

    #@2f
    .end local v0    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_0
    monitor-exit v6

    #@30
    .line 156
    return-object v4

    #@31
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    :catchall_0
    move-exception v5

    #@32
    :goto_3
    monitor-exit v6

    #@33
    throw v5

    #@34
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    .restart local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    :catchall_1
    move-exception v5

    #@35
    move-object v3, v4

    #@36
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .restart local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    goto :goto_3

    #@37
    .end local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .restart local v0    # "p":Ljava/security/Provider;
    .restart local v2    # "s":Ljava/security/Provider$Service;
    .restart local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    :cond_1
    move-object v3, v4

    #@38
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .restart local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    goto :goto_1

    #@39
    .end local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .restart local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    :cond_2
    move-object v3, v4

    #@3a
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    .restart local v3    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/Provider$Service;>;"
    goto :goto_2
.end method

.method private static initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 8
    .param p0, "providerClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    const/4 v6, 0x1

    #@6
    invoke-static {v5, v6, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@9
    move-result-object v4

    #@a
    .line 61
    .local v4, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Ljava/security/Provider;

    #@10
    .line 62
    .local v3, "p":Ljava/security/Provider;
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 63
    sget-object v5, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    #@17
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    #@1e
    .line 64
    return v7

    #@1f
    .line 65
    .end local v3    # "p":Ljava/security/Provider;
    .end local v4    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@20
    .line 69
    :goto_0
    const/4 v5, 0x0

    #@21
    return v5

    #@22
    .line 66
    :catch_1
    move-exception v1

    #@23
    .local v1, "ignored":Ljava/lang/IllegalAccessException;
    goto :goto_0

    #@24
    .line 67
    .end local v1    # "ignored":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    #@25
    .local v2, "ignored":Ljava/lang/InstantiationException;
    goto :goto_0
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .locals 4
    .param p0, "provider"    # Ljava/security/Provider;
    .param p1, "position"    # I

    #@0
    .prologue
    const-class v2, Lorg/apache/harmony/security/fortress/Services;

    #@2
    monitor-enter v2

    #@3
    .line 117
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    .line 118
    .local v0, "size":I
    const/4 v1, 0x1

    #@a
    if-lt p1, v1, :cond_0

    #@c
    if-le p1, v0, :cond_1

    #@e
    .line 119
    :cond_0
    add-int/lit8 p1, v0, 0x1

    #@10
    .line 121
    :cond_1
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@12
    add-int/lit8 v3, p1, -0x1

    #@14
    invoke-virtual {v1, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@17
    .line 122
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    #@19
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 123
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 124
    return p1

    #@25
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public static declared-synchronized removeProvider(I)V
    .locals 4
    .param p0, "providerNumber"    # I

    #@0
    .prologue
    const-class v2, Lorg/apache/harmony/security/fortress/Services;

    #@2
    monitor-enter v2

    #@3
    .line 131
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providers:Ljava/util/ArrayList;

    #@5
    add-int/lit8 v3, p0, -0x1

    #@7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/security/Provider;

    #@d
    .line 132
    .local v0, "p":Ljava/security/Provider;
    sget-object v1, Lorg/apache/harmony/security/fortress/Services;->providersNames:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 133
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->setNeedRefresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 130
    return-void

    #@1b
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method public static declared-synchronized setNeedRefresh()V
    .locals 2

    #@0
    .prologue
    const-class v0, Lorg/apache/harmony/security/fortress/Services;

    #@2
    monitor-enter v0

    #@3
    .line 187
    const/4 v1, 0x1

    #@4
    :try_start_0
    sput-boolean v1, Lorg/apache/harmony/security/fortress/Services;->needRefresh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 186
    return-void

    #@8
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method
