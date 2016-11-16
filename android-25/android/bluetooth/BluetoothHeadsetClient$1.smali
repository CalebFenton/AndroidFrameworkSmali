.class Landroid/bluetooth/BluetoothHeadsetClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHeadsetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadsetClient;

    #@0
    .prologue
    .line 373
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    #@0
    .prologue
    .line 376
    const-string/jumbo v2, "BluetoothHeadsetClient"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "onBluetoothStateChange: up="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 377
    if-nez p1, :cond_1

    #@1c
    .line 379
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@1e
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    #@21
    move-result-object v3

    #@22
    monitor-enter v3

    #@23
    .line 381
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@25
    const/4 v4, 0x0

    #@26
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->-set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    #@29
    .line 382
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@2b
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get1(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;

    #@2e
    move-result-object v2

    #@2f
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@31
    invoke-static {v4}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    :cond_0
    :goto_0
    monitor-exit v3

    #@39
    .line 375
    return-void

    #@3a
    .line 383
    :catch_0
    move-exception v1

    #@3b
    .line 384
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "BluetoothHeadsetClient"

    #@3e
    const-string/jumbo v4, ""

    #@41
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 379
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@46
    monitor-exit v3

    #@47
    throw v2

    #@48
    .line 388
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@4a
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    #@4d
    move-result-object v3

    #@4e
    monitor-enter v3

    #@4f
    .line 390
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@51
    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get2(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    #@54
    move-result-object v2

    #@55
    if-nez v2, :cond_0

    #@57
    .line 392
    new-instance v0, Landroid/content/Intent;

    #@59
    const-class v2, Landroid/bluetooth/IBluetoothHeadsetClient;

    #@5b
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@62
    .line 393
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@64
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@67
    goto :goto_0

    #@68
    .line 395
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    #@69
    .line 396
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "BluetoothHeadsetClient"

    #@6c
    const-string/jumbo v4, ""

    #@6f
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@72
    goto :goto_0

    #@73
    .line 388
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    #@74
    monitor-exit v3

    #@75
    throw v2
.end method
