.class Landroid/bluetooth/BluetoothA2dp$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothA2dp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothA2dp;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

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
    .line 127
    const-string/jumbo v1, "BluetoothA2dp"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "onBluetoothStateChange: up="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 128
    if-nez p1, :cond_0

    #@1c
    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@1e
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    #@29
    .line 132
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@2b
    const/4 v2, 0x0

    #@2c
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->-set0(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    #@2f
    .line 133
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@31
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get1(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/Context;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@37
    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->-get0(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/ServiceConnection;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 137
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@40
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@4b
    .line 126
    :goto_0
    return-void

    #@4c
    .line 134
    :catch_0
    move-exception v0

    #@4d
    .line 135
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "BluetoothA2dp"

    #@50
    const-string/jumbo v2, ""

    #@53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    .line 137
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@58
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@63
    goto :goto_0

    #@64
    .line 136
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@65
    .line 137
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@67
    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    #@72
    .line 136
    throw v1

    #@73
    .line 141
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@75
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    #@80
    .line 142
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@82
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get2(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    #@85
    move-result-object v1

    #@86
    if-nez v1, :cond_1

    #@88
    .line 144
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@8a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8d
    .line 149
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@8f
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@9a
    goto :goto_0

    #@9b
    .line 146
    :catch_1
    move-exception v0

    #@9c
    .line 147
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "BluetoothA2dp"

    #@9f
    const-string/jumbo v2, ""

    #@a2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@a5
    .line 149
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@a7
    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@b2
    goto :goto_0

    #@b3
    .line 148
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    #@b4
    .line 149
    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp$1;->this$0:Landroid/bluetooth/BluetoothA2dp;

    #@b6
    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #@b9
    move-result-object v2

    #@ba
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    #@c1
    .line 148
    throw v1
.end method
