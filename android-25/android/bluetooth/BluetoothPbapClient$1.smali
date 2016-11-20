.class Landroid/bluetooth/BluetoothPbapClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbapClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPbapClient;

    #@0
    .prologue
    .line 56
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    #@0
    .prologue
    .line 61
    if-nez p1, :cond_1

    #@2
    .line 65
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@4
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    #@7
    move-result-object v2

    #@8
    monitor-enter v2

    #@9
    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothPbapClient;->-set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    #@f
    .line 68
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@11
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get1(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@17
    invoke-static {v3}, Landroid/bluetooth/BluetoothPbapClient;->-get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_0
    :goto_0
    monitor-exit v2

    #@1f
    .line 57
    return-void

    #@20
    .line 69
    :catch_0
    move-exception v0

    #@21
    .line 70
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "BluetoothPbapClient"

    #@24
    const-string/jumbo v3, ""

    #@27
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 65
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1

    #@2e
    .line 74
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@30
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    #@33
    move-result-object v2

    #@34
    monitor-enter v2

    #@35
    .line 76
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@37
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get2(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    #@3a
    move-result-object v1

    #@3b
    if-nez v1, :cond_0

    #@3d
    .line 80
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@3f
    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-wrap0(Landroid/bluetooth/BluetoothPbapClient;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    goto :goto_0

    #@43
    .line 82
    :catch_1
    move-exception v0

    #@44
    .line 83
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "BluetoothPbapClient"

    #@47
    const-string/jumbo v3, ""

    #@4a
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4d
    goto :goto_0

    #@4e
    .line 74
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    #@4f
    monitor-exit v2

    #@50
    throw v1
.end method
