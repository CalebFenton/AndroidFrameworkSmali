.class Landroid/media/midi/MidiDeviceServer$1;
.super Landroid/media/midi/IMidiDeviceServer$Stub;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceServer;

    #@0
    .prologue
    .line 160
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@2
    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public closeDevice()V
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@2
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get0(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 251
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@a
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get0(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Landroid/media/midi/MidiDeviceServer$Callback;->onClose()V

    #@11
    .line 253
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@13
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@16
    .line 249
    return-void
.end method

.method public closePort(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 240
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@2
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@9
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/midi/MidiDeviceServer$PortClient;

    #@13
    .line 242
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    if-eqz v0, :cond_0

    #@15
    .line 243
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v2

    #@19
    .line 239
    return-void

    #@1a
    .line 240
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method public connectPorts(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "outputPortNumber"    # I

    #@0
    .prologue
    .line 259
    new-instance v2, Landroid/media/midi/MidiInputPort;

    #@2
    invoke-direct {v2, p2, p3}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    #@5
    .line 260
    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@7
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get8(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    #@a
    move-result-object v4

    #@b
    aget-object v1, v4, p3

    #@d
    .line 261
    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1

    #@e
    .line 262
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, v2}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    #@15
    .line 263
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    #@18
    move-result v3

    #@19
    .line 264
    .local v3, "openCount":I
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@1b
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get9(Landroid/media/midi/MidiDeviceServer;)[I

    #@1e
    move-result-object v4

    #@1f
    aput v3, v4, p3

    #@21
    .line 265
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@23
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-wrap0(Landroid/media/midi/MidiDeviceServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 268
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@29
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get6(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 269
    new-instance v0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    #@32
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@34
    invoke-direct {v0, v4, p1, v2}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    #@37
    .line 270
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@39
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@3c
    move-result-object v5

    #@3d
    monitor-enter v5

    #@3e
    .line 271
    :try_start_1
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@40
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@47
    monitor-exit v5

    #@48
    .line 258
    return-void

    #@49
    .line 261
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .end local v3    # "openCount":I
    :catchall_0
    move-exception v4

    #@4a
    monitor-exit v1

    #@4b
    throw v4

    #@4c
    .line 270
    .restart local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local v3    # "openCount":I
    :catchall_1
    move-exception v4

    #@4d
    monitor-exit v5

    #@4e
    throw v4
.end method

.method public getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@2
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openInputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 164
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@3
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v4

    #@11
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@14
    move-result v5

    #@15
    if-eq v4, v5, :cond_0

    #@17
    .line 166
    new-instance v4, Ljava/lang/SecurityException;

    #@19
    const-string/jumbo v5, "Can\'t access private device from different UID"

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 170
    :cond_0
    if-ltz p2, :cond_1

    #@22
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@24
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get2(Landroid/media/midi/MidiDeviceServer;)I

    #@27
    move-result v4

    #@28
    if-lt p2, v4, :cond_2

    #@2a
    .line 171
    :cond_1
    const-string/jumbo v4, "MidiDeviceServer"

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "portNumber out of range in openInputPort: "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 172
    return-object v8

    #@45
    .line 175
    :cond_2
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@47
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get4(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    #@4a
    move-result-object v5

    #@4b
    monitor-enter v5

    #@4c
    .line 176
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@4e
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get4(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    #@51
    move-result-object v4

    #@52
    aget-object v4, v4, p2

    #@54
    if-eqz v4, :cond_3

    #@56
    .line 177
    const-string/jumbo v4, "MidiDeviceServer"

    #@59
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v7, "port "

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    const-string/jumbo v7, " already open"

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@77
    monitor-exit v5

    #@78
    .line 178
    return-object v8

    #@79
    .line 183
    :cond_3
    :try_start_1
    sget v4, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    #@7b
    .line 182
    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    #@7e
    move-result-object v3

    #@7f
    .line 184
    .local v3, "pair":[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/media/midi/MidiOutputPort;

    #@81
    const/4 v4, 0x0

    #@82
    aget-object v4, v3, v4

    #@84
    invoke-direct {v2, v4, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    #@87
    .line 185
    .local v2, "outputPort":Landroid/media/midi/MidiOutputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@89
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get4(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    #@8c
    move-result-object v4

    #@8d
    aput-object v2, v4, p2

    #@8f
    .line 186
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@91
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get5(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;

    #@94
    move-result-object v4

    #@95
    aget-object v4, v4, p2

    #@97
    invoke-virtual {v2, v4}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    #@9a
    .line 187
    new-instance v0, Landroid/media/midi/MidiDeviceServer$InputPortClient;

    #@9c
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@9e
    invoke-direct {v0, v4, p1, v2}, Landroid/media/midi/MidiDeviceServer$InputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V

    #@a1
    .line 188
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@a3
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@a6
    move-result-object v6

    #@a7
    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a8
    .line 189
    :try_start_2
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@aa
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@ad
    move-result-object v4

    #@ae
    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b1
    :try_start_3
    monitor-exit v6

    #@b2
    .line 191
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@b4
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-get3(Landroid/media/midi/MidiDeviceServer;)[Z

    #@b7
    move-result-object v4

    #@b8
    const/4 v6, 0x1

    #@b9
    aput-boolean v6, v4, p2

    #@bb
    .line 192
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@bd
    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-wrap0(Landroid/media/midi/MidiDeviceServer;)V

    #@c0
    .line 193
    const/4 v4, 0x1

    #@c1
    aget-object v4, v3, v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@c3
    monitor-exit v5

    #@c4
    return-object v4

    #@c5
    .line 188
    :catchall_0
    move-exception v4

    #@c6
    :try_start_4
    monitor-exit v6

    #@c7
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c8
    .line 194
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    .end local v2    # "outputPort":Landroid/media/midi/MidiOutputPort;
    .end local v3    # "pair":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    #@c9
    .line 195
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "MidiDeviceServer"

    #@cc
    const-string/jumbo v6, "unable to create ParcelFileDescriptors in openInputPort"

    #@cf
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@d2
    monitor-exit v5

    #@d3
    .line 196
    return-object v8

    #@d4
    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    #@d5
    monitor-exit v5

    #@d6
    throw v4
.end method

.method public openOutputPort(Landroid/os/IBinder;I)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 203
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@3
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    #@6
    move-result-object v6

    #@7
    invoke-virtual {v6}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@10
    move-result v6

    #@11
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@14
    move-result v7

    #@15
    if-eq v6, v7, :cond_0

    #@17
    .line 205
    new-instance v6, Ljava/lang/SecurityException;

    #@19
    const-string/jumbo v7, "Can\'t access private device from different UID"

    #@1c
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v6

    #@20
    .line 209
    :cond_0
    if-ltz p2, :cond_1

    #@22
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@24
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get7(Landroid/media/midi/MidiDeviceServer;)I

    #@27
    move-result v6

    #@28
    if-lt p2, v6, :cond_2

    #@2a
    .line 210
    :cond_1
    const-string/jumbo v6, "MidiDeviceServer"

    #@2d
    new-instance v7, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v8, "portNumber out of range in openOutputPort: "

    #@35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 211
    return-object v9

    #@45
    .line 216
    :cond_2
    :try_start_0
    sget v6, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    #@47
    .line 215
    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    #@4a
    move-result-object v5

    #@4b
    .line 217
    .local v5, "pair":[Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/media/midi/MidiInputPort;

    #@4d
    const/4 v6, 0x0

    #@4e
    aget-object v6, v5, v6

    #@50
    invoke-direct {v3, v6, p2}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    #@53
    .line 218
    .local v3, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@55
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get8(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    #@58
    move-result-object v6

    #@59
    aget-object v1, v6, p2

    #@5b
    .line 219
    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 220
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v6, v3}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    #@63
    .line 221
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    #@66
    move-result v4

    #@67
    .line 222
    .local v4, "openCount":I
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@69
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get9(Landroid/media/midi/MidiDeviceServer;)[I

    #@6c
    move-result-object v6

    #@6d
    aput v4, v6, p2

    #@6f
    .line 223
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@71
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-wrap0(Landroid/media/midi/MidiDeviceServer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    :try_start_2
    monitor-exit v1

    #@75
    .line 226
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@77
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get6(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    .line 227
    new-instance v0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    #@80
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@82
    invoke-direct {v0, v6, p1, v3}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    #@85
    .line 228
    .local v0, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@87
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@8a
    move-result-object v7

    #@8b
    monitor-enter v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@8c
    .line 229
    :try_start_3
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@8e
    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-get10(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@95
    :try_start_4
    monitor-exit v7

    #@96
    .line 231
    const/4 v6, 0x1

    #@97
    aget-object v6, v5, v6

    #@99
    return-object v6

    #@9a
    .line 219
    .end local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .end local v4    # "openCount":I
    :catchall_0
    move-exception v6

    #@9b
    monitor-exit v1

    #@9c
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@9d
    .line 232
    .end local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .end local v3    # "inputPort":Landroid/media/midi/MidiInputPort;
    .end local v5    # "pair":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    #@9e
    .line 233
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MidiDeviceServer"

    #@a1
    const-string/jumbo v7, "unable to create ParcelFileDescriptors in openOutputPort"

    #@a4
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    .line 234
    return-object v9

    #@a8
    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .restart local v3    # "inputPort":Landroid/media/midi/MidiInputPort;
    .restart local v4    # "openCount":I
    .restart local v5    # "pair":[Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v6

    #@a9
    :try_start_5
    monitor-exit v7

    #@aa
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    #@0
    .prologue
    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x3e8

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 283
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    const-string/jumbo v1, "setDeviceInfo should only be called by MidiService"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 285
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@13
    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-get1(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1b
    const-string/jumbo v1, "setDeviceInfo should only be called once"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 288
    :cond_1
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@24
    invoke-static {v0, p1}, Landroid/media/midi/MidiDeviceServer;->-set0(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceInfo;

    #@27
    .line 281
    return-void
.end method
