.class Landroid/bluetooth/BluetoothPan$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPan;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 6
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 189
    const-string/jumbo v3, "BluetoothPan"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "onBluetoothStateChange on: "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 190
    if-eqz p1, :cond_1

    #@1c
    .line 192
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    #@1e
    invoke-static {v3}, Landroid/bluetooth/BluetoothPan;->-get2(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    #@21
    move-result-object v3

    #@22
    if-nez v3, :cond_0

    #@24
    .line 194
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    #@26
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->doBind()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 187
    :cond_0
    :goto_0
    return-void

    #@2a
    .line 200
    :catch_0
    move-exception v1

    #@2b
    .line 201
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "BluetoothPan"

    #@2e
    const-string/jumbo v4, "onBluetoothStateChange: could not bind to PAN service: "

    #@31
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_0

    #@35
    .line 197
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@36
    .line 198
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "BluetoothPan"

    #@39
    const-string/jumbo v4, "onBluetoothStateChange: could not bind to PAN service: "

    #@3c
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0

    #@40
    .line 205
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    #@42
    invoke-static {v3}, Landroid/bluetooth/BluetoothPan;->-get0(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    #@45
    move-result-object v4

    #@46
    monitor-enter v4

    #@47
    .line 207
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    #@49
    const/4 v5, 0x0

    #@4a
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothPan;->-set0(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    #@4d
    .line 208
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    #@4f
    invoke-static {v3}, Landroid/bluetooth/BluetoothPan;->-get1(Landroid/bluetooth/BluetoothPan;)Landroid/content/Context;

    #@52
    move-result-object v3

    #@53
    iget-object v5, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    #@55
    invoke-static {v5}, Landroid/bluetooth/BluetoothPan;->-get0(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    :goto_1
    monitor-exit v4

    #@5d
    goto :goto_0

    #@5e
    .line 209
    :catch_2
    move-exception v2

    #@5f
    .line 210
    .local v2, "re":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BluetoothPan"

    #@62
    const-string/jumbo v5, ""

    #@65
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@68
    goto :goto_1

    #@69
    .line 205
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@6a
    monitor-exit v4

    #@6b
    throw v3
.end method
