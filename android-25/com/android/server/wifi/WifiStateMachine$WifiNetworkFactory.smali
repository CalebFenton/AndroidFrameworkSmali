.class Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiNetworkFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "f"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 3929
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    .line 3930
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@5
    .line 3929
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 3956
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mConnectionReqCount "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 3955
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 3935
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 3936
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)I

    #@d
    move-result v2

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@13
    move-result v0

    #@14
    if-ne v0, v3, :cond_0

    #@16
    .line 3937
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@20
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get69(Lcom/android/server/wifi/WifiStateMachine;)I

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 3938
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@28
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@2b
    move-result-object v0

    #@2c
    const/4 v2, 0x1

    #@2d
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->enable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :cond_0
    monitor-exit v1

    #@31
    .line 3934
    return-void

    #@32
    .line 3935
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 3946
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 3947
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)I

    #@c
    move-result v2

    #@d
    add-int/lit8 v2, v2, -0x1

    #@f
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 3948
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@1f
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get69(Lcom/android/server/wifi/WifiStateMachine;)I

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_0

    #@25
    .line 3949
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@27
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    #@2a
    move-result-object v0

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->enable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_0
    monitor-exit v1

    #@30
    .line 3945
    return-void

    #@31
    .line 3946
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method
