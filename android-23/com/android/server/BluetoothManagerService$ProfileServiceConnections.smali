.class final Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileServiceConnections"
.end annotation


# instance fields
.field mClassName:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mInvokingProxyCallbacks:Z

.field final mProxies:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothProfileServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 0
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 0
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 810
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 804
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@8
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@b
    .line 803
    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@d
    .line 808
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@10
    .line 811
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@12
    .line 812
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    #@14
    .line 813
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    #@16
    .line 810
    return-void
.end method

.method private addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    const/16 v3, 0x191

    #@2
    .line 829
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@4
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@7
    .line 830
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 832
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    #@d
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@f
    invoke-interface {p1, v2, v3}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 828
    :cond_0
    :goto_0
    return-void

    #@13
    .line 833
    :catch_0
    move-exception v0

    #@14
    .line 834
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BluetoothManagerService"

    #@17
    const-string/jumbo v3, "Unable to connect to proxy"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0

    #@1e
    .line 837
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@20
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v3, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(ILjava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    .line 838
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2c
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@33
    move-result-object v1

    #@34
    .line 839
    .local v1, "msg":Landroid/os/Message;
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@36
    .line 840
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@38
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@3f
    goto :goto_0
.end method

.method private bindService()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 817
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 818
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@b
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    #@d
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@f
    invoke-virtual {v1, v2, p0, v4, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@12
    move-result v1

    #@13
    .line 817
    if-eqz v1, :cond_0

    #@15
    .line 819
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@17
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@1a
    move-result-object v1

    #@1b
    const/16 v2, 0x191

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@20
    move-result-object v0

    #@21
    .line 820
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    .line 821
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@25
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@28
    move-result-object v1

    #@29
    const-wide/16 v2, 0xbb8

    #@2b
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@2e
    .line 822
    const/4 v1, 0x1

    #@2f
    return v1

    #@30
    .line 824
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v1, "BluetoothManagerService"

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "Unable to bind with intent: "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 825
    return v4
.end method

.method private removeAllProxies()V
    .locals 1

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    #@5
    .line 861
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@7
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    #@a
    .line 859
    return-void
.end method

.method private removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 3
    .param p1, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@0
    .prologue
    .line 846
    if-eqz p1, :cond_1

    #@2
    .line 847
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@4
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    #@c
    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 845
    :cond_0
    :goto_0
    return-void

    #@10
    .line 850
    :catch_0
    move-exception v0

    #@11
    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    #@14
    const-string/jumbo v2, "Unable to disconnect proxy"

    #@17
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0

    #@1b
    .line 855
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@1e
    const-string/jumbo v2, "Trying to remove a null proxy"

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 931
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    #@2
    invoke-virtual {p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    #@5
    .line 933
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@7
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@a
    move-result-object v1

    #@b
    const/16 v2, 0x191

    #@d
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    .line 934
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@13
    .line 935
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@15
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@18
    move-result-object v1

    #@19
    const-wide/16 v2, 0xbb8

    #@1b
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1e
    .line 926
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 867
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@6
    move-result-object v3

    #@7
    const/16 v4, 0x191

    #@9
    invoke-virtual {v3, v4, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    #@c
    .line 868
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@e
    .line 869
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    #@10
    .line 871
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 876
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 877
    const-string/jumbo v3, "BluetoothManagerService"

    #@1d
    const-string/jumbo v4, "Proxy callbacks already in progress."

    #@20
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 878
    return-void

    #@24
    .line 872
    :catch_0
    move-exception v0

    #@25
    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "BluetoothManagerService"

    #@28
    const-string/jumbo v4, "Unable to linkToDeath"

    #@2b
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0

    #@2f
    .line 880
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x1

    #@30
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@32
    .line 882
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@34
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@37
    move-result v2

    #@38
    .line 884
    .local v2, "n":I
    const/4 v1, 0x0

    #@39
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    #@3b
    .line 886
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@3d
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@43
    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 884
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    .line 887
    :catch_1
    move-exception v0

    #@4a
    .line 888
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    #@4d
    const-string/jumbo v4, "Unable to connect to proxy"

    #@50
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_2

    #@54
    .line 891
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@55
    .line 892
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@57
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@5a
    .line 893
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@5c
    .line 891
    throw v3

    #@5d
    .line 892
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@5f
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@62
    .line 893
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@64
    .line 865
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 899
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@4
    if-nez v3, :cond_0

    #@6
    return-void

    #@7
    .line 900
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@9
    invoke-interface {v3, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@c
    .line 901
    iput-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    #@e
    .line 902
    iput-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    #@10
    .line 904
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 905
    const-string/jumbo v3, "BluetoothManagerService"

    #@17
    const-string/jumbo v4, "Proxy callbacks already in progress."

    #@1a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 906
    return-void

    #@1e
    .line 908
    :cond_1
    const/4 v3, 0x1

    #@1f
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@21
    .line 910
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@23
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@26
    move-result v2

    #@27
    .line 912
    .local v2, "n":I
    const/4 v1, 0x0

    #@28
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@2a
    .line 914
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@2c
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    #@32
    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 912
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 915
    :catch_0
    move-exception v0

    #@39
    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "BluetoothManagerService"

    #@3c
    const-string/jumbo v4, "Unable to disconnect from proxy"

    #@3f
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_1

    #@43
    .line 919
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@44
    .line 920
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@46
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@49
    .line 921
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@4b
    .line 919
    throw v3

    #@4c
    .line 920
    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    #@4e
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@51
    .line 921
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    #@53
    .line 898
    return-void
.end method
