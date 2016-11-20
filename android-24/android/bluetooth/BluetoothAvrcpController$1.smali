.class Landroid/bluetooth/BluetoothAvrcpController$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAvrcpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAvrcpController;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAvrcpController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAvrcpController;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

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
    .line 133
    if-nez p1, :cond_1

    #@2
    .line 135
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@4
    invoke-static {v1}, Landroid/bluetooth/BluetoothAvrcpController;->-get0(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    #@7
    move-result-object v2

    #@8
    monitor-enter v2

    #@9
    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothAvrcpController;->-set0(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    #@f
    .line 138
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@11
    invoke-static {v1}, Landroid/bluetooth/BluetoothAvrcpController;->-get1(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@17
    invoke-static {v3}, Landroid/bluetooth/BluetoothAvrcpController;->-get0(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

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
    .line 131
    return-void

    #@20
    .line 139
    :catch_0
    move-exception v0

    #@21
    .line 140
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@24
    const-string/jumbo v3, ""

    #@27
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 135
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1

    #@2e
    .line 144
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@30
    invoke-static {v1}, Landroid/bluetooth/BluetoothAvrcpController;->-get0(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;

    #@33
    move-result-object v2

    #@34
    monitor-enter v2

    #@35
    .line 146
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@37
    invoke-static {v1}, Landroid/bluetooth/BluetoothAvrcpController;->-get2(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    #@3a
    move-result-object v1

    #@3b
    if-nez v1, :cond_0

    #@3d
    .line 148
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$1;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@3f
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAvrcpController;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    goto :goto_0

    #@43
    .line 150
    :catch_1
    move-exception v0

    #@44
    .line 151
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "BluetoothAvrcpController"

    #@47
    const-string/jumbo v3, ""

    #@4a
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@4d
    goto :goto_0

    #@4e
    .line 144
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    #@4f
    monitor-exit v2

    #@50
    throw v1
.end method
