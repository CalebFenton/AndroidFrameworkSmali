.class public Landroid/service/settings/preferences/SettingsPreferenceServiceClient;
.super Ljava/lang/Object;
.source "SettingsPreferenceServiceClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private final blacklist mServiceIntent:Landroid/content/Intent;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmRemoteService(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Landroid/service/settings/preferences/ISettingsPreferenceService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/SettingsPreferenceServiceClient;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p4, "clientReadyCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/lang/Exception;>;"
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "callbackExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "clientReadyCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/lang/Exception;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "packageName":Ljava/lang/String;
    .local v4, "callbackExecutor":Ljava/util/concurrent/Executor;
    .local v5, "clientReadyCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/lang/Exception;>;"
    invoke-direct/range {v0 .. v5}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "systemOnly"    # Z
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/SettingsPreferenceServiceClient;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p5, "clientReadyCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/lang/Exception;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.settings.preferences.action.PREFERENCE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mServiceIntent:Landroid/content/Intent;

    .line 99
    invoke-direct {p0, p4, p5}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->createServiceConnection(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 100
    invoke-direct {p0, p3, p4, p5}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->connect(ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 101
    return-void
.end method

.method private blacklist connect(ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "matchSystemOnly"    # Z
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/SettingsPreferenceServiceClient;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p3, "clientCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 225
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_10

    .line 226
    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .local v1, "flags":Landroid/content/pm/PackageManager$ResolveInfoFlags;
    goto :goto_17

    .line 228
    .end local v1    # "flags":Landroid/content/pm/PackageManager$ResolveInfoFlags;
    :cond_10
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 230
    .restart local v1    # "flags":Landroid/content/pm/PackageManager$ResolveInfoFlags;
    :goto_17
    iget-object v2, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v2

    .line 231
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mServiceIntent:Landroid/content/Intent;

    iget-object v6, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 232
    invoke-virtual {v3, v5, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 234
    :cond_30
    new-instance v3, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 237
    :cond_38
    return-void
.end method

.method private blacklist createServiceConnection(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)Landroid/content/ServiceConnection;
    .registers 4
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/SettingsPreferenceServiceClient;",
            "Ljava/lang/Exception;",
            ">;)",
            "Landroid/content/ServiceConnection;"
        }
    .end annotation

    .line 243
    .local p2, "clientCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/lang/Exception;>;"
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$4;-><init>(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$connect$6(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "clientCallback"    # Landroid/os/OutcomeReceiver;

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to bind service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getAllPreferenceMetadata$0(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getAllPreferenceMetadata$1(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 132
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getPreferenceValue$2(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getPreferenceValue$3(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 164
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$setPreferenceValue$4(Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$setPreferenceValue$5(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "receiver"    # Landroid/os/OutcomeReceiver;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 196
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 208
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    if-eqz v0, :cond_e

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    .line 210
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 212
    :cond_e
    return-void
.end method

.method public whitelist getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "request"    # Landroid/service/settings/preferences/MetadataRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/MetadataRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/MetadataResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/MetadataResult;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    if-nez v0, :cond_d

    .line 114
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda3;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void

    .line 119
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$1;-><init>(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/service/settings/preferences/ISettingsPreferenceService;->getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/service/settings/preferences/IMetadataCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_17} :catch_18

    .line 133
    goto :goto_21

    .line 131
    :catch_18
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p3, v0}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public whitelist getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "request"    # Landroid/service/settings/preferences/GetValueRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/GetValueRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/GetValueResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/GetValueResult;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    if-nez v0, :cond_d

    .line 146
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void

    .line 151
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$2;-><init>(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/service/settings/preferences/ISettingsPreferenceService;->getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/service/settings/preferences/IGetValueCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_17} :catch_18

    .line 165
    goto :goto_21

    .line 163
    :catch_18
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, v0}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public whitelist setPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "request"    # Landroid/service/settings/preferences/SetValueRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/settings/preferences/SetValueRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/settings/preferences/SetValueResult;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/service/settings/preferences/SetValueResult;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    if-nez v0, :cond_d

    .line 178
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda5;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void

    .line 183
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceServiceClient;->mRemoteService:Landroid/service/settings/preferences/ISettingsPreferenceService;

    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$3;

    invoke-direct {v1, p0, p2, p3}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$3;-><init>(Landroid/service/settings/preferences/SettingsPreferenceServiceClient;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/service/settings/preferences/ISettingsPreferenceService;->setPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/service/settings/preferences/ISetValueCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_17} :catch_18

    .line 197
    goto :goto_21

    .line 195
    :catch_18
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3, v0}, Landroid/service/settings/preferences/SettingsPreferenceServiceClient$$ExternalSyntheticLambda6;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method
