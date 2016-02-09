.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 185
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    #@8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 186
    const-string/jumbo v4, "android.bluetooth.adapter.extra.LOCAL_NAME"

    #@11
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 188
    .local v2, "newName":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@17
    .line 189
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@19
    invoke-static {v4, v2, v5}, Lcom/android/server/BluetoothManagerService;->-wrap15(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 183
    .end local v2    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 191
    :cond_1
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@20
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 192
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@28
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    #@2b
    move-result-object v5

    #@2c
    monitor-enter v5

    #@2d
    .line 193
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2f
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap1(Lcom/android/server/BluetoothManagerService;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_2

    #@35
    .line 194
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@37
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_5

    #@3d
    .line 195
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3f
    const/4 v6, 0x2

    #@40
    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-wrap9(Lcom/android/server/BluetoothManagerService;I)V

    #@43
    .line 201
    :cond_2
    :goto_1
    const/16 v3, 0xa

    #@45
    .line 202
    .local v3, "st":I
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@47
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    move-result-object v4

    #@4b
    if-eqz v4, :cond_3

    #@4d
    .line 204
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@4f
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@52
    move-result-object v4

    #@53
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    move-result v3

    #@57
    .line 209
    :cond_3
    :goto_2
    :try_start_2
    const-string/jumbo v4, "BluetoothManagerService"

    #@5a
    new-instance v6, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v7, "state"

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 211
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@73
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_7

    #@79
    .line 213
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7a
    .line 214
    const/4 v4, 0x0

    #@7b
    :try_start_3
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-set1(I)I

    #@7e
    .line 215
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@80
    iget-object v4, v4, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    #@82
    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@85
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@86
    .line 217
    const/16 v4, 0xf

    #@88
    if-ne v3, v4, :cond_6

    #@8a
    .line 220
    :try_start_5
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@8c
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@8f
    move-result-object v4

    #@90
    if-eqz v4, :cond_4

    #@92
    .line 221
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@94
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@97
    move-result-object v4

    #@98
    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    #@9b
    .line 222
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@9d
    const/4 v6, 0x0

    #@9e
    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a1
    :cond_4
    :goto_3
    monitor-exit v5

    #@a2
    goto/16 :goto_0

    #@a4
    .line 197
    .end local v3    # "st":I
    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a6
    const/4 v6, 0x1

    #@a7
    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-wrap9(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@aa
    goto :goto_1

    #@ab
    .line 192
    :catchall_0
    move-exception v4

    #@ac
    monitor-exit v5

    #@ad
    throw v4

    #@ae
    .line 205
    .restart local v3    # "st":I
    :catch_0
    move-exception v1

    #@af
    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v4, "BluetoothManagerService"

    #@b2
    const-string/jumbo v6, "Unable to call getState"

    #@b5
    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b8
    goto :goto_2

    #@b9
    .line 213
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@ba
    monitor-exit p0

    #@bb
    throw v4

    #@bc
    .line 224
    :catch_1
    move-exception v1

    #@bd
    .line 225
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothManagerService"

    #@c0
    const-string/jumbo v6, "Unable to call onBrEdrDown"

    #@c3
    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c6
    goto :goto_3

    #@c7
    .line 227
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const/16 v4, 0xc

    #@c9
    if-ne v3, v4, :cond_4

    #@cb
    .line 229
    const-string/jumbo v4, "BluetoothManagerService"

    #@ce
    const-string/jumbo v6, "Calling disable"

    #@d1
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    .line 230
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@d6
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;)V

    #@d9
    goto :goto_3

    #@da
    .line 232
    :cond_7
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@dc
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    #@df
    move-result v4

    #@e0
    if-eqz v4, :cond_4

    #@e2
    .line 234
    const-string/jumbo v4, "BluetoothManagerService"

    #@e5
    const-string/jumbo v6, "Calling enable"

    #@e8
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    .line 235
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ed
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    #@ef
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    #@f2
    move-result v6

    #@f3
    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-wrap14(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@f6
    goto :goto_3
.end method
