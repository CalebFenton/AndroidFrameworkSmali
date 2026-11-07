.class Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;
.super Ljava/lang/Object;
.source "SharedPreferencesSyncManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/SharedPreferencesSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Landroid/app/sdksandbox/SharedPreferencesSyncManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;-><init>(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 12
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v0}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmLock(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 224
    :try_start_7
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmWaitingForSandbox(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 225
    monitor-exit v0

    return-void

    .line 228
    :cond_11
    if-nez p2, :cond_1a

    .line 230
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$mbulkSyncData(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)V

    .line 231
    monitor-exit v0

    return-void

    .line 234
    :cond_1a
    iget-object v1, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v1}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmKeysToSync(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 235
    monitor-exit v0

    return-void

    .line 238
    :cond_28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v1, "data":Landroid/os/Bundle;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_3e

    .line 242
    iget-object v3, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v3, v1, p2, v2}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$mupdateBundle(Landroid/app/sdksandbox/SharedPreferencesSyncManager;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/sdksandbox/SharedPreferencesKey;

    move-result-object v3

    .local v3, "keyWithType":Landroid/app/sdksandbox/SharedPreferencesKey;
    goto :goto_44

    .line 244
    .end local v3    # "keyWithType":Landroid/app/sdksandbox/SharedPreferencesKey;
    :cond_3e
    new-instance v3, Landroid/app/sdksandbox/SharedPreferencesKey;

    const/4 v4, 0x5

    invoke-direct {v3, p2, v4}, Landroid/app/sdksandbox/SharedPreferencesKey;-><init>(Ljava/lang/String;I)V

    .line 248
    .restart local v3    # "keyWithType":Landroid/app/sdksandbox/SharedPreferencesKey;
    :goto_44
    new-instance v4, Landroid/app/sdksandbox/SharedPreferencesUpdate;

    .line 249
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/app/sdksandbox/SharedPreferencesUpdate;-><init>(Ljava/util/Collection;Landroid/os/Bundle;)V
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_93

    .line 251
    .local v4, "update":Landroid/app/sdksandbox/SharedPreferencesUpdate;
    :try_start_4d
    new-instance v5, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(I)V

    .line 253
    .local v5, "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/sdksandbox/SandboxLatencyInfo;->setTimeAppCalledSystemServer(J)V

    .line 254
    iget-object v6, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v6}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmService(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/app/sdksandbox/ISdkSandboxManager;

    move-result-object v6

    iget-object v7, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v7}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmContext(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/content/Context;

    move-result-object v7

    .line 255
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/app/sdksandbox/SharedPreferencesSyncManager$ChangeListener;->this$0:Landroid/app/sdksandbox/SharedPreferencesSyncManager;

    invoke-static {v8}, Landroid/app/sdksandbox/SharedPreferencesSyncManager;->-$$Nest$fgetmCallback(Landroid/app/sdksandbox/SharedPreferencesSyncManager;)Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;

    move-result-object v8

    .line 254
    invoke-interface {v6, v7, v5, v4, v8}, Landroid/app/sdksandbox/ISdkSandboxManager;->syncDataFromClient(Ljava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;Landroid/app/sdksandbox/SharedPreferencesUpdate;Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_73} :catch_74
    .catchall {:try_start_4d .. :try_end_73} :catchall_93

    .line 258
    .end local v5    # "sandboxLatencyInfo":Landroid/app/sdksandbox/SandboxLatencyInfo;
    goto :goto_91

    .line 256
    :catch_74
    move-exception v5

    .line 257
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_75
    const-string v6, "SdkSandboxSyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t connect to SdkSandboxManagerService: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "keyWithType":Landroid/app/sdksandbox/SharedPreferencesKey;
    .end local v4    # "update":Landroid/app/sdksandbox/SharedPreferencesUpdate;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_91
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_75 .. :try_end_95} :catchall_93

    throw v1
.end method
