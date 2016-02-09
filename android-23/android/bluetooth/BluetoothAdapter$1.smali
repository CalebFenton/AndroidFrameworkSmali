.class Landroid/bluetooth/BluetoothAdapter$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;

    #@0
    .prologue
    .line 1912
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 7

    #@0
    .prologue
    .line 1933
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 1934
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@9
    const/4 v5, 0x0

    #@a
    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    #@d
    .line 1935
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@f
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    #@12
    move-result-object v3

    #@13
    if-eqz v3, :cond_0

    #@15
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@17
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@1e
    .line 1936
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get3()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_1

    #@24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get3()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    #@2b
    .line 1937
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeScanner;

    #@2e
    move-result-object v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeScanner;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    #@38
    .line 1938
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@3a
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@3d
    move-result-object v5

    #@3e
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3f
    .line 1939
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@41
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@44
    move-result-object v3

    #@45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v1

    #@49
    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_4

    #@4f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 1941
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_3

    #@57
    .line 1942
    :try_start_2
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 1946
    :catch_0
    move-exception v2

    #@5c
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothAdapter"

    #@5f
    const-string/jumbo v6, ""

    #@62
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    goto :goto_0

    #@66
    .line 1938
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@67
    :try_start_4
    monitor-exit v5

    #@68
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@69
    .line 1933
    :catchall_1
    move-exception v3

    #@6a
    monitor-exit v4

    #@6b
    throw v3

    #@6c
    .line 1944
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_5
    const-string/jumbo v3, "BluetoothAdapter"

    #@6f
    const-string/jumbo v6, "onBluetoothServiceDown: cb is null!!!"

    #@72
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@75
    goto :goto_0

    #@76
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_4
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@77
    monitor-exit v4

    #@78
    .line 1931
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 7
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    #@0
    .prologue
    .line 1915
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 1916
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@9
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    #@c
    .line 1917
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@e
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@11
    move-result-object v5

    #@12
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 1918
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@15
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 1920
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_0

    #@2b
    .line 1921
    :try_start_2
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 1925
    :catch_0
    move-exception v2

    #@30
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothAdapter"

    #@33
    const-string/jumbo v6, ""

    #@36
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 1917
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@3b
    :try_start_4
    monitor-exit v5

    #@3c
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3d
    .line 1915
    :catchall_1
    move-exception v3

    #@3e
    monitor-exit v4

    #@3f
    throw v3

    #@40
    .line 1923
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_5
    const-string/jumbo v3, "BluetoothAdapter"

    #@43
    const-string/jumbo v6, "onBluetoothServiceUp: cb is null!!!"

    #@46
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_1
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@4b
    monitor-exit v4

    #@4c
    .line 1913
    return-void
.end method

.method public onBrEdrDown()V
    .locals 0

    #@0
    .prologue
    .line 1952
    return-void
.end method
