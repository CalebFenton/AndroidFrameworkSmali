.class public final Landroid/webkit/CookieSyncManager;
.super Landroid/webkit/WebSyncManager;
.source "CookieSyncManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sGetInstanceAllowed:Z

.field private static sRef:Landroid/webkit/CookieSyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    #@3
    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    invoke-direct {p0, v0, v0}, Landroid/webkit/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@4
    .line 69
    return-void
.end method

.method private static checkInstanceIsAllowed()V
    .locals 2

    #@0
    .prologue
    .line 154
    sget-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 156
    const-string/jumbo v1, "CookieSyncManager::createInstance() needs to be called before CookieSyncManager::getInstance()"

    #@9
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 150
    :cond_0
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-class v1, Landroid/webkit/CookieSyncManager;

    #@2
    monitor-enter v1

    #@3
    .line 94
    if-nez p0, :cond_0

    #@5
    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "Invalid context argument"

    #@a
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0

    #@11
    .line 97
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    #@14
    .line 98
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v0

    #@18
    monitor-exit v1

    #@19
    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieSyncManager;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/webkit/CookieSyncManager;

    #@2
    monitor-enter v1

    #@3
    .line 81
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->checkInstanceIsAllowed()V

    #@6
    .line 82
    sget-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 83
    new-instance v0, Landroid/webkit/CookieSyncManager;

    #@c
    invoke-direct {v0}, Landroid/webkit/CookieSyncManager;-><init>()V

    #@f
    sput-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;

    #@11
    .line 85
    :cond_0
    sget-object v0, Landroid/webkit/CookieSyncManager;->sRef:Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method static setGetInstanceIsAllowed()V
    .locals 1

    #@0
    .prologue
    .line 147
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Landroid/webkit/CookieSyncManager;->sGetInstanceAllowed:Z

    #@3
    .line 146
    return-void
.end method


# virtual methods
.method public resetSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 124
    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/webkit/WebSyncManager;->run()V

    #@3
    return-void
.end method

.method public startSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public stopSync()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 143
    return-void
.end method

.method public sync()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    #@7
    .line 106
    return-void
.end method

.method protected syncFromRamToFlash()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    #@7
    .line 114
    return-void
.end method
