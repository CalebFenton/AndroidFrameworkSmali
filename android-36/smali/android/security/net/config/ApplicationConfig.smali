.class public final Landroid/security/net/config/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static greylist-max-o sInstance:Landroid/security/net/config/ApplicationConfig;

.field private static greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mConfigSource:Landroid/security/net/config/ConfigSource;

.field private greylist-max-o mConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private greylist-max-o mInitialized:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/security/net/config/ConfigSource;)V
    .registers 3
    .param p1, "configSource"    # Landroid/security/net/config/ConfigSource;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    .line 53
    return-void
.end method

.method private greylist-max-o ensureInitialized()V
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    if-eqz v1, :cond_9

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_9
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v1}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    .line 197
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v1}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 199
    new-instance v1, Landroid/security/net/config/RootTrustManager;

    invoke-direct {v1, p0}, Landroid/security/net/config/RootTrustManager;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    .line 201
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public static greylist-max-o getDefaultInstance()Landroid/security/net/config/ApplicationConfig;
    .registers 2

    .line 211
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    sget-object v1, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;

    monitor-exit v0

    return-object v1

    .line 213
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static greylist-max-o setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V
    .registers 3
    .param p0, "config"    # Landroid/security/net/config/ApplicationConfig;

    .line 205
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    sput-object p0, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public greylist-max-o getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;
    .registers 10
    .param p1, "hostname"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 77
    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-nez v0, :cond_11

    goto/16 :goto_a4

    .line 80
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_9b

    .line 84
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_36

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_36
    const/4 v0, 0x0

    .line 94
    .local v0, "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 95
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/Domain;

    .line 96
    .local v4, "domain":Landroid/security/net/config/Domain;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig;

    .line 98
    .local v5, "config":Landroid/security/net/config/NetworkSecurityConfig;
    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 99
    return-object v5

    .line 103
    :cond_5a
    iget-boolean v6, v4, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v6, :cond_90

    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_90

    .line 106
    if-nez v0, :cond_7d

    .line 107
    move-object v0, v3

    goto :goto_90

    .line 108
    :cond_7d
    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/security/net/config/Domain;

    iget-object v7, v7, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_90

    .line 109
    move-object v0, v3

    .line 112
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    .end local v4    # "domain":Landroid/security/net/config/Domain;
    .end local v5    # "config":Landroid/security/net/config/NetworkSecurityConfig;
    :cond_90
    :goto_90
    goto :goto_3d

    .line 113
    :cond_91
    if-eqz v0, :cond_98

    .line 114
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/security/net/config/NetworkSecurityConfig;

    return-object v1

    .line 117
    :cond_98
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v1

    .line 81
    .end local v0    # "bestMatch":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hostname must not begin with a ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_a4
    :goto_a4
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public greylist-max-o getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 125
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 126
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 6

    .line 172
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    if-nez v1, :cond_9

    .line 176
    monitor-exit v0

    return-void

    .line 178
    :cond_9
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    .line 179
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v1, :cond_41

    .line 180
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    .line 181
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 182
    .local v1, "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 183
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 184
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v4}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    .line 186
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_40
    goto :goto_23

    .line 188
    .end local v1    # "updatedConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_41
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public greylist-max-o hasPerDomainConfigs()Z
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 60
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public blacklist isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->certificateTransparencyConfiguration()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 167
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCertificateTransparencyVerificationRequired()Z

    move-result v0

    goto :goto_10

    .line 168
    :cond_f
    const/4 v0, 0x0

    .line 166
    :goto_10
    return v0
.end method

.method public greylist-max-o isCleartextTrafficPermitted()Z
    .registers 4

    .line 135
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 136
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_26

    .line 137
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 138
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v2}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v2

    if-nez v2, :cond_25

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/security/net/config/Domain;Landroid/security/net/config/NetworkSecurityConfig;>;"
    :cond_25
    goto :goto_d

    .line 144
    :cond_26
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 152
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method
