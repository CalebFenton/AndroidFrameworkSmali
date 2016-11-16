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
    .line 2007
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 6

    #@0
    .prologue
    .line 2034
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@d
    .line 2035
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@f
    const/4 v4, 0x0

    #@10
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    #@13
    .line 2036
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@15
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    #@18
    move-result-object v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@1d
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    #@24
    .line 2037
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get3()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@27
    move-result-object v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get3()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    #@31
    .line 2038
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeScanner;

    #@34
    move-result-object v3

    #@35
    if-eqz v3, :cond_2

    #@37
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeScanner;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3e
    .line 2040
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@40
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@4b
    .line 2043
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@4d
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@50
    move-result-object v4

    #@51
    monitor-enter v4

    #@52
    .line 2044
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@54
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v1

    #@5c
    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v3

    #@60
    if-eqz v3, :cond_4

    #@62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v0

    #@66
    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .line 2046
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_3

    #@6a
    .line 2047
    :try_start_2
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 2051
    :catch_0
    move-exception v2

    #@6f
    .line 2052
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothAdapter"

    #@72
    const-string/jumbo v5, ""

    #@75
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@78
    goto :goto_0

    #@79
    .line 2043
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@7a
    monitor-exit v4

    #@7b
    throw v3

    #@7c
    .line 2039
    :catchall_1
    move-exception v3

    #@7d
    .line 2040
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@7f
    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@8a
    .line 2039
    throw v3

    #@8b
    .line 2049
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    const-string/jumbo v3, "BluetoothAdapter"

    #@8e
    const-string/jumbo v5, "onBluetoothServiceDown: cb is null!!!"

    #@91
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@94
    goto :goto_0

    #@95
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_4
    monitor-exit v4

    #@96
    .line 2030
    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 6
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    #@0
    .prologue
    .line 2011
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@2
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@d
    .line 2012
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@f
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    #@12
    .line 2013
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@14
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@1f
    .line 2015
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@21
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@24
    move-result-object v4

    #@25
    monitor-enter v4

    #@26
    .line 2016
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    #@28
    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v1

    #@30
    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 2018
    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_0

    #@3e
    .line 2019
    :try_start_1
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 2023
    :catch_0
    move-exception v2

    #@43
    .line 2024
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BluetoothAdapter"

    #@46
    const-string/jumbo v5, ""

    #@49
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 2015
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@4e
    monitor-exit v4

    #@4f
    throw v3

    #@50
    .line 2021
    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    const-string/jumbo v3, "BluetoothAdapter"

    #@53
    const-string/jumbo v5, "onBluetoothServiceUp: cb is null!!!"

    #@56
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@59
    goto :goto_0

    #@5a
    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_1
    monitor-exit v4

    #@5b
    .line 2008
    return-void
.end method

.method public onBrEdrDown()V
    .locals 0

    #@0
    .prologue
    .line 2058
    return-void
.end method
