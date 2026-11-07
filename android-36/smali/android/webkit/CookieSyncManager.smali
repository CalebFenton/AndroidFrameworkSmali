.class public final Landroid/webkit/CookieSyncManager;
.super Landroid/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o sGetInstanceAllowed:Z

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sRef:Landroid/webkit/CookieSyncManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/CookieSyncManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/webkit/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private static greylist-max-o checkInstanceIsAllowed()V
    .registers 2

    .line 159
    sget-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    if-eqz v0, :cond_5

    .line 164
    return-void

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    sget-object v0, Landroid/webkit/CookieSyncManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    if-eqz p0, :cond_10

    .line 101
    :try_start_5
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    .line 102
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 103
    :catchall_e
    move-exception v1

    goto :goto_18

    .line 99
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid context argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1

    .line 103
    .restart local p0    # "context":Landroid/content/Context;
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_e

    throw v1
.end method

.method public static whitelist getInstance()Landroid/webkit/CookieSyncManager;
    .registers 2

    .line 82
    sget-object v0, Landroid/webkit/CookieSyncManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->checkInstanceIsAllowed()V

    .line 84
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    if-nez v1, :cond_11

    .line 85
    new-instance v1, Landroid/webkit/CookieSyncManager;

    invoke-direct {v1}, Landroid/webkit/CookieSyncManager;-><init>()V

    sput-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    .line 87
    :cond_11
    sget-object v1, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method static greylist-max-o setGetInstanceIsAllowed()V
    .registers 1

    .line 152
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist resetSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    return-void
.end method

.method public bridge synthetic whitelist test-api run()V
    .registers 1

    .line 63
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->run()V

    return-void
.end method

.method public whitelist startSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    return-void
.end method

.method public whitelist stopSync()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    return-void
.end method

.method public whitelist sync()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 113
    return-void
.end method

.method protected whitelist syncFromRamToFlash()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 121
    return-void
.end method
