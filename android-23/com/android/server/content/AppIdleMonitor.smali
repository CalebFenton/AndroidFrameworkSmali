.class Lcom/android/server/content/AppIdleMonitor;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppIdleMonitor.java"


# instance fields
.field private mAppIdleParoleOn:Z

.field private final mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 1
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Lcom/android/server/content/AppIdleMonitor;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@5
    .line 37
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@d
    iput-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@f
    .line 38
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@11
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    #@14
    move-result v0

    #@15
    iput-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    #@17
    .line 40
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@19
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    #@1c
    .line 35
    return-void
.end method


# virtual methods
.method isAppIdle(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 60
    if-eqz p3, :cond_0

    #@2
    return-void

    #@3
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncManager;->onAppNotIdle(Ljava/lang/String;I)V

    #@8
    .line 58
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .locals 0
    .param p1, "isParoleOn"    # Z

    #@0
    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/content/AppIdleMonitor;->setAppIdleParoleOn(Z)V

    #@3
    .line 65
    return-void
.end method

.method setAppIdleParoleOn(Z)V
    .locals 3
    .param p1, "appIdleParoleOn"    # Z

    #@0
    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 45
    return-void

    #@5
    .line 47
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    #@7
    .line 48
    iget-boolean v0, p0, Lcom/android/server/content/AppIdleMonitor;->mAppIdleParoleOn:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 49
    iget-object v0, p0, Lcom/android/server/content/AppIdleMonitor;->mSyncManager:Lcom/android/server/content/SyncManager;

    #@d
    const/4 v1, 0x0

    #@e
    const/4 v2, -0x1

    #@f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncManager;->onAppNotIdle(Ljava/lang/String;I)V

    #@12
    .line 43
    :cond_1
    return-void
.end method
