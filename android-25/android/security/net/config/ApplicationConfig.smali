.class public final Landroid/security/net/config/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static sInstance:Landroid/security/net/config/ApplicationConfig;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private mConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/security/net/config/ConfigSource;)V
    .locals 1
    .param p1, "configSource"    # Landroid/security/net/config/ConfigSource;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    #@a
    .line 46
    iput-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    #@c
    .line 47
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    #@f
    .line 45
    return-void
.end method

.method private ensureInitialized()V
    .locals 2

    #@0
    .prologue
    .line 165
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 166
    :try_start_0
    iget-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 167
    return-void

    #@9
    .line 169
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    #@b
    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@11
    .line 170
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    #@13
    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@19
    .line 171
    const/4 v0, 0x0

    #@1a
    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    #@1c
    .line 172
    new-instance v0, Landroid/security/net/config/RootTrustManager;

    #@1e
    invoke-direct {v0, p0}, Landroid/security/net/config/RootTrustManager;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    #@21
    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@23
    .line 173
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 164
    return-void

    #@28
    .line 165
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public static getDefaultInstance()Landroid/security/net/config/ApplicationConfig;
    .locals 2

    #@0
    .prologue
    .line 184
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 185
    :try_start_0
    sget-object v1, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 184
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V
    .locals 2
    .param p0, "config"    # Landroid/security/net/config/ApplicationConfig;

    #@0
    .prologue
    .line 178
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 179
    :try_start_0
    sput-object p0, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 177
    return-void

    #@7
    .line 178
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method


# virtual methods
.method public getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v7, 0x2e

    #@3
    .line 71
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    #@6
    .line 72
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@10
    if-nez v5, :cond_1

    #@12
    .line 73
    :cond_0
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@14
    return-object v5

    #@15
    .line 75
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v5

    #@19
    if-ne v5, v7, :cond_2

    #@1b
    .line 76
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v6, "hostname must not begin with a ."

    #@20
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v5

    #@24
    .line 79
    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@26
    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2d
    move-result v5

    #@2e
    add-int/lit8 v5, v5, -0x1

    #@30
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v5

    #@34
    if-ne v5, v7, :cond_3

    #@36
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@39
    move-result v5

    #@3a
    add-int/lit8 v5, v5, -0x1

    #@3c
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    .line 88
    :cond_3
    const/4 v0, 0x0

    #@41
    .line 89
    .local v0, "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@43
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v4

    #@47
    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_7

    #@4d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Landroid/util/Pair;

    #@53
    .line 90
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@55
    check-cast v2, Landroid/security/net/config/Domain;

    #@57
    .line 91
    .local v2, "domain":Landroid/security/net/config/Domain;
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@59
    check-cast v1, Landroid/security/net/config/NetworkSecurityConfig;

    #@5b
    .line 93
    .local v1, "config":Landroid/security/net/config/NetworkSecurityConfig;
    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@5d
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v5

    #@61
    if-eqz v5, :cond_5

    #@63
    .line 94
    return-object v1

    #@64
    .line 98
    :cond_5
    iget-boolean v5, v2, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    #@66
    if-eqz v5, :cond_4

    #@68
    .line 99
    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@6a
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@6d
    move-result v5

    #@6e
    .line 98
    if-eqz v5, :cond_4

    #@70
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@73
    move-result v5

    #@74
    iget-object v6, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@76
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@79
    move-result v6

    #@7a
    sub-int/2addr v5, v6

    #@7b
    add-int/lit8 v5, v5, -0x1

    #@7d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@80
    move-result v5

    #@81
    if-ne v5, v7, :cond_4

    #@83
    .line 101
    if-nez v0, :cond_6

    #@85
    .line 102
    move-object v0, v3

    #@86
    .local v0, "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    goto :goto_0

    #@87
    .line 103
    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_6
    iget-object v5, v2, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@8c
    move-result v6

    #@8d
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@8f
    check-cast v5, Landroid/security/net/config/Domain;

    #@91
    iget-object v5, v5, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    #@93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@96
    move-result v5

    #@97
    if-le v6, v5, :cond_4

    #@99
    .line 104
    move-object v0, v3

    #@9a
    .restart local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    goto :goto_0

    #@9b
    .line 108
    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v1    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    .end local v2    # "domain":Landroid/security/net/config/Domain;
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_7
    if-eqz v0, :cond_8

    #@9d
    .line 109
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@9f
    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig;

    #@a1
    return-object v5

    #@a2
    .line 112
    :cond_8
    iget-object v5, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@a4
    return-object v5
.end method

.method public getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    #@3
    .line 121
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    #@5
    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 4

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    #@3
    .line 152
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@5
    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    #@8
    .line 153
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 155
    new-instance v2, Ljava/util/HashSet;

    #@e
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@10
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@13
    move-result v3

    #@14
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    #@17
    .line 156
    .local v2, "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v3, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/util/Pair;

    #@29
    .line 157
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@2b
    check-cast v3, Landroid/security/net/config/NetworkSecurityConfig;

    #@2d
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_0

    #@33
    .line 158
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@35
    check-cast v3, Landroid/security/net/config/NetworkSecurityConfig;

    #@37
    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    #@3a
    goto :goto_0

    #@3b
    .line 150
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_1
    return-void
.end method

.method public hasPerDomainConfigs()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    #@4
    .line 55
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 3

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    #@3
    .line 131
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 132
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/util/Pair;

    #@19
    .line 133
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1b
    check-cast v2, Landroid/security/net/config/NetworkSecurityConfig;

    #@1d
    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_0

    #@23
    .line 134
    const/4 v2, 0x0

    #@24
    return v2

    #@25
    .line 139
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    #@27
    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    #@2a
    move-result v2

    #@2b
    return v2
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    #@7
    move-result v0

    #@8
    return v0
.end method
