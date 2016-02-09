.class public abstract Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;
.super Ljava/lang/Object;
.source "BaseConnectionFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/ConnectionFactory;


# instance fields
.field private hasPreviousNetworkSuccessBeenRead:Z

.field private final netAvailablePrefName:Ljava/lang/String;

.field private networkWorked:Z

.field private networkWorkedThisSession:Z

.field protected final store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "netAvailablePrefName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 23
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    #@6
    .line 28
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    #@8
    .line 35
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    #@a
    .line 49
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    #@c
    .line 50
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@16
    .line 51
    return-void
.end method

.method private setNetworkWorked(Z)V
    .locals 1
    .param p1, "worked"    # Z

    #@0
    .prologue
    .line 110
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    #@3
    .line 111
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    #@5
    .line 112
    return-void
.end method


# virtual methods
.method protected checkPreviousNetworkSuccess()V
    .locals 3

    #@0
    .prologue
    .line 58
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@2
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    #@4
    invoke-interface {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    .line 59
    .local v0, "preference":[B
    if-nez v0, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->setNetworkWorked(Z)V

    #@e
    .line 60
    return-void

    #@f
    :cond_0
    const/4 v1, 0x1

    #@10
    .line 59
    goto :goto_0
.end method

.method protected getNetworkPreferenceValue()B
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNetworkWorked()Z
    .locals 1

    #@0
    .prologue
    .line 100
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 103
    :goto_0
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    #@6
    return v0

    #@7
    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->checkPreviousNetworkSuccess()V

    #@a
    goto :goto_0
.end method

.method public getNetworkWorkedThisSession()Z
    .locals 1

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    #@2
    return v0
.end method

.method public notifyFailure()V
    .locals 0

    #@0
    .prologue
    .line 94
    return-void
.end method

.method public declared-synchronized registerNetworkSuccess(Z)Z
    .locals 6
    .param p1, "forcePrefWrite"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 72
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    #@6
    .line 74
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->getNetworkWorked()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 75
    :cond_0
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->networkWorked:Z

    #@f
    .line 76
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@11
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    #@13
    const/4 v2, 0x1

    #@14
    new-array v2, v2, [B

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseConnectionFactory;->getNetworkPreferenceValue()B

    #@1a
    move-result v4

    #@1b
    int-to-byte v4, v4

    #@1c
    aput-byte v4, v2, v3

    #@1e
    invoke-interface {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 78
    return v5

    #@23
    .line 74
    :cond_1
    if-nez p1, :cond_0

    #@25
    monitor-exit p0

    #@26
    .line 80
    return v1

    #@27
    :catchall_0
    move-exception v0

    #@28
    monitor-exit p0

    #@29
    throw v0
.end method

.method public usingMDS()Z
    .locals 1

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    return v0
.end method
