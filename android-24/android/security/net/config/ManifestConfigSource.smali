.class public Landroid/security/net/config/ManifestConfigSource;
.super Ljava/lang/Object;
.source "ManifestConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSecurityConfig"


# instance fields
.field private final mApplicationInfoFlags:I

.field private final mConfigResourceId:I

.field private mConfigSource:Landroid/security/net/config/ConfigSource;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    #@a
    .line 39
    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    #@c
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@f
    move-result-object v0

    #@10
    .line 42
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@12
    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    #@14
    .line 43
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@16
    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    #@18
    .line 44
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    #@1a
    iput v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    #@1c
    .line 38
    return-void
.end method

.method private getConfigSource()Landroid/security/net/config/ConfigSource;
    .locals 8

    #@0
    .prologue
    .line 58
    iget-object v4, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 59
    :try_start_0
    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 60
    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v4

    #@a
    return-object v3

    #@b
    .line 64
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 65
    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    #@11
    and-int/lit8 v3, v3, 0x2

    #@13
    if-eqz v3, :cond_1

    #@15
    const/4 v0, 0x1

    #@16
    .line 67
    .local v0, "debugBuild":Z
    :goto_0
    const-string/jumbo v3, "NetworkSecurityConfig"

    #@19
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v6, "Using Network Security Config from resource "

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    .line 68
    iget-object v6, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v6

    #@2b
    iget v7, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    #@2d
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 69
    const-string/jumbo v6, " debugBuild: "

    #@38
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 71
    new-instance v1, Landroid/security/net/config/XmlConfigSource;

    #@49
    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    #@4b
    iget v5, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigResourceId:I

    #@4d
    .line 72
    iget v6, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    #@4f
    .line 71
    invoke-direct {v1, v3, v5, v0, v6}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;IZI)V

    #@52
    .line 81
    .end local v0    # "debugBuild":Z
    .local v1, "source":Landroid/security/net/config/ConfigSource;
    :goto_1
    iput-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    #@54
    .line 82
    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    monitor-exit v4

    #@57
    return-object v3

    #@58
    .line 65
    .end local v1    # "source":Landroid/security/net/config/ConfigSource;
    :cond_1
    const/4 v0, 0x0

    #@59
    .restart local v0    # "debugBuild":Z
    goto :goto_0

    #@5a
    .line 75
    .end local v0    # "debugBuild":Z
    :cond_2
    :try_start_2
    const-string/jumbo v3, "NetworkSecurityConfig"

    #@5d
    const-string/jumbo v5, "No Network Security Config specified, using platform default"

    #@60
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 78
    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfoFlags:I

    #@65
    const/high16 v5, 0x8000000

    #@67
    and-int/2addr v3, v5

    #@68
    if-eqz v3, :cond_3

    #@6a
    const/4 v2, 0x1

    #@6b
    .line 79
    .local v2, "usesCleartextTraffic":Z
    :goto_2
    new-instance v1, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;

    #@6d
    iget v3, p0, Landroid/security/net/config/ManifestConfigSource;->mTargetSdkVersion:I

    #@6f
    invoke-direct {v1, v2, v3}, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;-><init>(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@72
    .restart local v1    # "source":Landroid/security/net/config/ConfigSource;
    goto :goto_1

    #@73
    .line 78
    .end local v1    # "source":Landroid/security/net/config/ConfigSource;
    .end local v2    # "usesCleartextTraffic":Z
    :cond_3
    const/4 v2, 0x0

    #@74
    .restart local v2    # "usesCleartextTraffic":Z
    goto :goto_2

    #@75
    .line 58
    .end local v2    # "usesCleartextTraffic":Z
    :catchall_0
    move-exception v3

    #@76
    monitor-exit v4

    #@77
    throw v3
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
