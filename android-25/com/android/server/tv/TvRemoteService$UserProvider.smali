.class final Lcom/android/server/tv/TvRemoteService$UserProvider;
.super Ljava/lang/Object;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
.implements Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserProvider"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/tv/TvRemoteService;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteService;
    .param p2, "service"    # Lcom/android/server/tv/TvRemoteService;

    #@0
    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 259
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@7
    .line 258
    return-void
.end method


# virtual methods
.method public addProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 372
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->setProviderSink(Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;)V

    #@a
    .line 373
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@c
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 374
    const-string/jumbo v0, "TvRemoteService"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "provider: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    monitor-exit v1

    #@32
    .line 369
    return-void

    #@33
    .line 371
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0
.end method

.method public clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 295
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2}, Lcom/android/server/tv/TvRemoteService;->-wrap0(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 291
    return-void

    #@1a
    .line 293
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 284
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2}, Lcom/android/server/tv/TvRemoteService;->-wrap1(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V

    #@18
    .line 285
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@1a
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get2(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_0
    monitor-exit v1

    #@22
    .line 280
    return-void

    #@23
    .line 282
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method

.method public openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 8
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxPointers"    # I

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 273
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    move-object v1, p1

    #@16
    move-object v2, p2

    #@17
    move-object v3, p3

    #@18
    move v4, p4

    #@19
    move v5, p5

    #@1a
    move v6, p6

    #@1b
    invoke-static/range {v0 .. v6}, Lcom/android/server/tv/TvRemoteService;->-wrap2(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    monitor-exit v7

    #@1f
    .line 264
    return-void

    #@20
    .line 271
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v7

    #@22
    throw v0
.end method

.method public removeProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 383
    const-string/jumbo v0, "TvRemoteService"

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Unknown provider "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_0
    monitor-exit v1

    #@2e
    .line 379
    return-void

    #@2f
    .line 381
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method public sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "keyCode"    # I

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 316
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2, p3}, Lcom/android/server/tv/TvRemoteService;->-wrap3(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 310
    return-void

    #@1a
    .line 314
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "keyCode"    # I

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 328
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2, p3}, Lcom/android/server/tv/TvRemoteService;->-wrap4(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 322
    return-void

    #@1a
    .line 326
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pointerId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 341
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/server/tv/TvRemoteService;->-wrap5(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 335
    return-void

    #@1a
    .line 339
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 363
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2}, Lcom/android/server/tv/TvRemoteService;->-wrap6(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 359
    return-void

    #@1a
    .line 361
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pointerId"    # I

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 353
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2, p3}, Lcom/android/server/tv/TvRemoteService;->-wrap7(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 347
    return-void

    #@1a
    .line 351
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "timestamp"    # J

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 304
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    #@15
    invoke-static {v0, p2, p3, p4}, Lcom/android/server/tv/TvRemoteService;->-wrap8(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v1

    #@19
    .line 301
    return-void

    #@1a
    .line 302
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
