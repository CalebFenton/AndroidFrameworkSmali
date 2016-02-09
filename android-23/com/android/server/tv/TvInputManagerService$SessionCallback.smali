.class final Lcom/android/server/tv/TvInputManagerService$SessionCallback;
.super Landroid/media/tv/ITvInputSessionCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionCallback"
.end annotation


# instance fields
.field private final mChannels:[Landroid/view/InputChannel;

.field private final mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "sessionState"    # Lcom/android/server/tv/TvInputManagerService$SessionState;
    .param p3, "channels"    # [Landroid/view/InputChannel;

    #@0
    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;-><init>()V

    #@5
    .line 2129
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@7
    .line 2130
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    #@9
    .line 2128
    return-void
.end method

.method private addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z
    .locals 8
    .param p1, "session"    # Landroid/media/tv/ITvInputSession;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2156
    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    #@4
    move-result-object v4

    #@5
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@7
    const/4 v6, 0x0

    #@8
    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2162
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@d
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@10
    move-result-object v4

    #@11
    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    .line 2163
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@19
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@1c
    move-result v5

    #@1d
    invoke-static {v4, v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@20
    move-result-object v3

    #@21
    .line 2164
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ClientState;

    #@2b
    .line 2165
    .local v0, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-nez v0, :cond_0

    #@2d
    .line 2166
    new-instance v0, Lcom/android/server/tv/TvInputManagerService$ClientState;

    #@2f
    .end local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@31
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@33
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@36
    move-result v5

    #@37
    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/tv/TvInputManagerService$ClientState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    #@3a
    .line 2168
    .restart local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    const/4 v4, 0x0

    #@3b
    :try_start_1
    invoke-interface {v1, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@3e
    .line 2173
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get1(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    #@41
    move-result-object v4

    #@42
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 2175
    :cond_0
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ClientState;->-get1(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    #@48
    move-result-object v4

    #@49
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@4b
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@4e
    move-result-object v5

    #@4f
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    .line 2176
    const/4 v4, 0x1

    #@53
    return v4

    #@54
    .line 2157
    .end local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v1    # "clientToken":Landroid/os/IBinder;
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_0
    move-exception v2

    #@55
    .line 2158
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TvInputManagerService"

    #@58
    const-string/jumbo v5, "session process has already died"

    #@5b
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    .line 2159
    return v7

    #@5f
    .line 2169
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .restart local v1    # "clientToken":Landroid/os/IBinder;
    .restart local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_1
    move-exception v2

    #@60
    .line 2170
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TvInputManagerService"

    #@63
    const-string/jumbo v5, "client process has already died"

    #@66
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    .line 2171
    return v7
.end method


# virtual methods
.method public onChannelRetuned(Landroid/net/Uri;)V
    .locals 4
    .param p1, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2181
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2186
    return-void

    #@19
    .line 2193
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onChannelRetuned(Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2180
    return-void

    #@2a
    .line 2194
    :catch_0
    move-exception v0

    #@2b
    .line 2195
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onChannelRetuned"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2181
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onContentAllowed()V
    .locals 4

    #@0
    .prologue
    .line 2270
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2275
    return-void

    #@19
    .line 2278
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, v3}, Landroid/media/tv/ITvInputClient;->onContentAllowed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2269
    return-void

    #@2a
    .line 2279
    :catch_0
    move-exception v0

    #@2b
    .line 2280
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onContentAllowed"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2270
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onContentBlocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "rating"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2287
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2292
    return-void

    #@19
    .line 2295
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onContentBlocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2286
    return-void

    #@2a
    .line 2296
    :catch_0
    move-exception v0

    #@2b
    .line 2297
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onContentBlocked"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2287
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onLayoutSurface(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    .line 2309
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_1

    #@17
    :cond_0
    monitor-exit v7

    #@18
    .line 2310
    return-void

    #@19
    .line 2313
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v0

    #@1f
    .line 2314
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v5

    #@25
    move v1, p1

    #@26
    move v2, p2

    #@27
    move v3, p3

    #@28
    move v4, p4

    #@29
    .line 2313
    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputClient;->onLayoutSurface(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    :goto_0
    monitor-exit v7

    #@2d
    .line 2303
    return-void

    #@2e
    .line 2315
    :catch_0
    move-exception v6

    #@2f
    .line 2316
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v0, "TvInputManagerService"

    #@32
    const-string/jumbo v1, "error in onLayoutSurface"

    #@35
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 2304
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit v7

    #@3b
    throw v0
.end method

.method public onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "session"    # Landroid/media/tv/ITvInputSession;
    .param p2, "hardwareSessionToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 2139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@c
    .line 2140
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@e
    invoke-static {v0, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-set0(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@11
    .line 2141
    if-eqz p1, :cond_0

    #@13
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 2142
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@1b
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1d
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@20
    move-result-object v1

    #@21
    .line 2143
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@23
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@2d
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@30
    move-result-object v3

    #@31
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    #@33
    const/4 v5, 0x0

    #@34
    aget-object v4, v4, v5

    #@36
    .line 2144
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@38
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@3b
    move-result v5

    #@3c
    .line 2142
    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap16(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    #@3f
    .line 2150
    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    #@41
    const/4 v1, 0x0

    #@42
    aget-object v0, v0, v1

    #@44
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    monitor-exit v6

    #@48
    .line 2134
    return-void

    #@49
    .line 2146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@4b
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@4d
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@53
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@56
    move-result v2

    #@57
    invoke-static {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap14(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    #@5a
    .line 2147
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@5c
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@5e
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@61
    move-result-object v1

    #@62
    .line 2148
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@64
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@6e
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@71
    move-result v5

    #@72
    const/4 v3, 0x0

    #@73
    const/4 v4, 0x0

    #@74
    .line 2147
    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->-wrap16(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    goto :goto_0

    #@78
    .line 2138
    :catchall_0
    move-exception v0

    #@79
    monitor-exit v6

    #@7a
    throw v0
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2323
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2328
    return-void

    #@19
    .line 2331
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2322
    return-void

    #@2a
    .line 2332
    :catch_0
    move-exception v0

    #@2b
    .line 2333
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onSessionEvent"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2323
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onTimeShiftCurrentPositionChanged(J)V
    .locals 5
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 2374
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2379
    return-void

    #@19
    .line 2382
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    .line 2383
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    .line 2382
    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onTimeShiftCurrentPositionChanged(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2373
    return-void

    #@2a
    .line 2384
    :catch_0
    move-exception v0

    #@2b
    .line 2385
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onTimeShiftCurrentPositionChanged"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2374
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onTimeShiftStartPositionChanged(J)V
    .locals 5
    .param p1, "timeMs"    # J

    #@0
    .prologue
    .line 2357
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2362
    return-void

    #@19
    .line 2365
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onTimeShiftStartPositionChanged(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2356
    return-void

    #@2a
    .line 2366
    :catch_0
    move-exception v0

    #@2b
    .line 2367
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onTimeShiftStartPositionChanged"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2357
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onTimeShiftStatusChanged(I)V
    .locals 4
    .param p1, "status"    # I

    #@0
    .prologue
    .line 2340
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2344
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2345
    return-void

    #@19
    .line 2348
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onTimeShiftStatusChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2339
    return-void

    #@2a
    .line 2349
    :catch_0
    move-exception v0

    #@2b
    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onTimeShiftStatusChanged"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2340
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onTrackSelected(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2219
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2224
    return-void

    #@19
    .line 2227
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, p2, v3}, Landroid/media/tv/ITvInputClient;->onTrackSelected(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2218
    return-void

    #@2a
    .line 2228
    :catch_0
    move-exception v0

    #@2b
    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onTrackSelected"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2219
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onTracksChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2202
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2207
    return-void

    #@19
    .line 2210
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onTracksChanged(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2201
    return-void

    #@2a
    .line 2211
    :catch_0
    move-exception v0

    #@2b
    .line 2212
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onTracksChanged"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2202
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onVideoAvailable()V
    .locals 4

    #@0
    .prologue
    .line 2236
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2241
    return-void

    #@19
    .line 2244
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, v3}, Landroid/media/tv/ITvInputClient;->onVideoAvailable(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2235
    return-void

    #@2a
    .line 2245
    :catch_0
    move-exception v0

    #@2b
    .line 2246
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onVideoAvailable"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2236
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public onVideoUnavailable(I)V
    .locals 4
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 2253
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2257
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@9
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@11
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    if-nez v1, :cond_1

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 2258
    return-void

    #@19
    .line 2261
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@1b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    #@21
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->-get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    #@24
    move-result v3

    #@25
    invoke-interface {v1, p1, v3}, Landroid/media/tv/ITvInputClient;->onVideoUnavailable(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :goto_0
    monitor-exit v2

    #@29
    .line 2252
    return-void

    #@2a
    .line 2262
    :catch_0
    move-exception v0

    #@2b
    .line 2263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "TvInputManagerService"

    #@2e
    const-string/jumbo v3, "error in onVideoUnavailable"

    #@31
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 2253
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method
