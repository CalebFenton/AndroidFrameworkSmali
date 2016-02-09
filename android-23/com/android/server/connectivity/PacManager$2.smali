.class Lcom/android/server/connectivity/PacManager$2;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    #@0
    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 283
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 285
    :try_start_0
    const-string/jumbo v2, "PacManager"

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Adding service com.android.net.IProxyService "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    .line 286
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 290
    :goto_0
    :try_start_1
    const-string/jumbo v2, "com.android.net.IProxyService"

    #@28
    invoke-static {v2, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@2b
    .line 291
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2d
    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    #@30
    move-result-object v4

    #@31
    invoke-static {v2, v4}, Lcom/android/server/connectivity/PacManager;->-set3(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    #@34
    .line 292
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@36
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get5(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    #@39
    move-result-object v2

    #@3a
    if-nez v2, :cond_0

    #@3c
    .line 293
    const-string/jumbo v2, "PacManager"

    #@3f
    const-string/jumbo v4, "No proxy service"

    #@42
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    :goto_1
    monitor-exit v3

    #@46
    .line 282
    return-void

    #@47
    .line 287
    :catch_0
    move-exception v1

    #@48
    .line 288
    .local v1, "e1":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "PacManager"

    #@4b
    const-string/jumbo v4, "Remote Exception"

    #@4e
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 283
    .end local v1    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@53
    monitor-exit v3

    #@54
    throw v2

    #@55
    .line 296
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@57
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-get5(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    #@5a
    move-result-object v2

    #@5b
    invoke-interface {v2}, Lcom/android/net/IProxyService;->startPacSystem()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5e
    .line 300
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    #@61
    move-result-object v2

    #@62
    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@64
    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->-get2(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@6b
    goto :goto_1

    #@6c
    .line 297
    :catch_1
    move-exception v0

    #@6d
    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PacManager"

    #@70
    const-string/jumbo v4, "Unable to reach ProxyService - PAC will not be started"

    #@73
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@76
    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2}, Lcom/android/server/connectivity/PacManager;->-set3(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 275
    return-void

    #@f
    .line 276
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method
