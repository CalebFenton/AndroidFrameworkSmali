.class final Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;
.super Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;
.source "SharedConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedConnectivityCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Jg2JMjuYY_3U6dNbQVTEpAt_40I(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OPzlg8EwLW-YptWU2rQbOzKqveQ(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onSharedConnectivitySettingsChanged$4(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PVEikJ4ExyY0GmWaaxzFasOAGJM(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onServiceConnected$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XS9V_XcBD49_tgc4wgpuQZgKKuk(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onHotspotNetworkConnectionStatusChanged$5(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gP7Emty7sklkJVgXvNEZ-yhOEpI(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onHotspotNetworksUpdated$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gzbM9Bpa5g-uiod0FCrXhSa9cUo(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onKnownNetworkConnectionStatusChanged$6(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xR6LaF0IwNxkJWG1FRfZoWauTlw(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->lambda$onKnownNetworksUpdated$3(Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    .line 83
    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 85
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    .line 86
    return-void
.end method

.method private synthetic blacklist lambda$onHotspotNetworkConnectionStatusChanged$5(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 3
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 156
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    return-void
.end method

.method private synthetic blacklist lambda$onHotspotNetworksUpdated$2(Ljava/util/List;)V
    .registers 3
    .param p1, "networks"    # Ljava/util/List;

    .line 117
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onHotspotNetworksUpdated(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onKnownNetworkConnectionStatusChanged$6(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 3
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 170
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    return-void
.end method

.method private synthetic blacklist lambda$onKnownNetworksUpdated$3(Ljava/util/List;)V
    .registers 3
    .param p1, "networks"    # Ljava/util/List;

    .line 129
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onKnownNetworksUpdated(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$0()V
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onServiceConnected()V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceDisconnected$1()V
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onServiceDisconnected()V

    return-void
.end method

.method private synthetic blacklist lambda$onSharedConnectivitySettingsChanged$4(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 3
    .param p1, "state"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 142
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    return-void
.end method


# virtual methods
.method public blacklist onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .registers 6
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 152
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 155
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    goto :goto_1b

    .line 158
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    throw v2

    .line 161
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist onHotspotNetworksUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;>;"
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    goto :goto_1b

    .line 119
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw v2

    .line 122
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .registers 6
    .param p1, "status"    # Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 166
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 169
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    goto :goto_1b

    .line 172
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    throw v2

    .line 175
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist onKnownNetworksUpdated(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;>;"
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    goto :goto_1b

    .line 131
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw v2

    .line 134
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist onServiceConnected()V
    .registers 5

    .line 90
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 93
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 95
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    goto :goto_1b

    .line 95
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    throw v2

    .line 98
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist onServiceDisconnected()V
    .registers 5

    .line 102
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    goto :goto_1b

    .line 107
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    throw v2

    .line 110
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .registers 6
    .param p1, "state"    # Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 139
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mCallback:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;

    if-eqz v0, :cond_1b

    .line 140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 142
    .local v0, "token":J
    :try_start_8
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    goto :goto_1b

    .line 144
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    throw v2

    .line 147
    .end local v0    # "token":J
    :cond_1b
    :goto_1b
    return-void
.end method
