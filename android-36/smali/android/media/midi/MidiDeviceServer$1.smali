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
.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceServer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 208
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist closeDevice()V
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmCallback(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 351
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmCallback(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/MidiDeviceServer$Callback;->onClose()V

    .line 353
    :cond_11
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 354
    return-void
.end method

.method public blacklist closePort(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 335
    :try_start_8
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceServer$PortClient;

    .line 336
    .local v2, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    if-eqz v2, :cond_1e

    .line 337
    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceServer$PortClient;->getInputPort()Landroid/media/midi/MidiInputPort;

    move-result-object v3

    move-object v0, v3

    .line 338
    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 340
    .end local v2    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_37

    .line 341
    if-eqz v0, :cond_36

    .line 342
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 343
    :try_start_28
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    monitor-exit v1

    goto :goto_36

    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v2

    .line 346
    :cond_36
    :goto_36
    return-void

    .line 340
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public blacklist connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "outputPortNumber"    # I

    .line 359
    new-instance v0, Landroid/media/midi/MidiInputPort;

    invoke-direct {v0, p2, p3}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 360
    .local v0, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    aget-object v1, v1, p3

    .line 361
    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1

    .line 362
    :try_start_e
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 363
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v2

    .line 364
    .local v2, "openCount":I
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aput v2, v3, p3

    .line 365
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 366
    .end local v2    # "openCount":I
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_64

    .line 368
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v2, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v2, v3, p1, v0}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 370
    .local v2, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 371
    :try_start_3e
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_61

    .line 373
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 374
    :try_start_4f
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_5e

    .line 376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    return v3

    .line 375
    :catchall_5e
    move-exception v3

    :try_start_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v3

    .line 372
    :catchall_61
    move-exception v4

    :try_start_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v4

    .line 366
    .end local v2    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public blacklist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .line 212
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 214
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access private device from different UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-ltz p2, :cond_151

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_2c

    goto/16 :goto_151

    .line 223
    :cond_2c
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v1

    monitor-enter v1

    .line 224
    :try_start_33
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v2

    aget-object v2, v2, p2

    if-eqz v2, :cond_5d

    .line 225
    const-string v2, "MidiDeviceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already open"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    monitor-exit v1

    return-object v0

    .line 229
    :cond_5d
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$misUmpDevice(Landroid/media/midi/MidiDeviceServer;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 230
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v2

    if-lt p2, v2, :cond_87

    .line 231
    const-string v2, "MidiDeviceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out portNumber out of range in openInputPort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v1

    return-object v0

    .line 234
    :cond_87
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8e
    .catchall {:try_start_33 .. :try_end_8e} :catchall_14e

    .line 235
    :try_start_8e
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aget v3, v3, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b4

    .line 236
    const-string v3, "MidiDeviceServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input port already open in openInputPort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_8e .. :try_end_b2} :catchall_f5

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_14e

    return-object v0

    .line 239
    :cond_b4
    :try_start_b4
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aget v3, v3, p2

    if-eq v3, v4, :cond_e7

    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v4

    aget v4, v4, p2

    if-eq v3, v4, :cond_e7

    .line 241
    const-string v3, "MidiDeviceServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "different uid for output in openInputPort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_b4 .. :try_end_e5} :catchall_f5

    :try_start_e5
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_14e

    return-object v0

    .line 244
    :cond_e7
    :try_start_e7
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    aput v4, v3, p2

    .line 245
    monitor-exit v2

    goto :goto_f8

    :catchall_f5
    move-exception v0

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_e7 .. :try_end_f7} :catchall_f5

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_f7
    throw v0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_14e

    .line 249
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :cond_f8
    :goto_f8
    :try_start_f8
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$smcreateSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v2

    .line 250
    .local v2, "pair":[Ljava/io/FileDescriptor;
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v3, v4, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 251
    .local v3, "outputPort":Landroid/media/midi/MidiOutputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v4

    aput-object v3, v4, p2

    .line 252
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortReceivers(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 253
    new-instance v4, Landroid/media/midi/MidiDeviceServer$InputPortClient;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v4, v5, p1, v3}, Landroid/media/midi/MidiDeviceServer$InputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V

    .line 254
    .local v4, "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_125} :catch_144
    .catchall {:try_start_f8 .. :try_end_125} :catchall_14e

    .line 255
    :try_start_125
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    monitor-exit v5
    :try_end_12f
    .catchall {:try_start_125 .. :try_end_12f} :catchall_141

    .line 257
    :try_start_12f
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOpen(Landroid/media/midi/MidiDeviceServer;)[Z

    move-result-object v5

    const/4 v6, 0x1

    aput-boolean v6, v5, p2

    .line 258
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 259
    aget-object v0, v2, v6
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_13f} :catch_144
    .catchall {:try_start_12f .. :try_end_13f} :catchall_14e

    :try_start_13f
    monitor-exit v1
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_14e

    return-object v0

    .line 256
    :catchall_141
    move-exception v6

    :try_start_142
    monitor-exit v5
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_143
    throw v6
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_144} :catch_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_14e

    .line 260
    .end local v2    # "pair":[Ljava/io/FileDescriptor;
    .end local v3    # "outputPort":Landroid/media/midi/MidiOutputPort;
    .end local v4    # "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catch_144
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/IOException;
    :try_start_145
    const-string v3, "MidiDeviceServer"

    const-string v4, "unable to create FileDescriptors in openInputPort"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v1

    return-object v0

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_14e
    move-exception v0

    monitor-exit v1
    :try_end_150
    .catchall {:try_start_145 .. :try_end_150} :catchall_14e

    throw v0

    .line 219
    :cond_151
    :goto_151
    const-string v1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "portNumber out of range in openInputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-object v0
.end method

.method public blacklist openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .line 269
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 271
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access private device from different UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-ltz p2, :cond_14c

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_2c

    goto/16 :goto_14c

    .line 280
    :cond_2c
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$misUmpDevice(Landroid/media/midi/MidiDeviceServer;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 281
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_55

    .line 282
    const-string v1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in portNumber out of range in openOutputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v0

    .line 285
    :cond_55
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_5c
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v2

    aget v2, v2, p2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_81

    .line 287
    const-string v2, "MidiDeviceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output port already open in openOutputPort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v1

    return-object v0

    .line 290
    :cond_81
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v2

    aget v2, v2, p2

    if-eq v2, v3, :cond_b3

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aget v3, v3, p2

    if-eq v2, v3, :cond_b3

    .line 292
    const-string v2, "MidiDeviceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "different uid for input in openOutputPort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    monitor-exit v1

    return-object v0

    .line 295
    :cond_b3
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    aput v3, v2, p2

    .line 296
    monitor-exit v1

    goto :goto_c4

    :catchall_c1
    move-exception v0

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_5c .. :try_end_c3} :catchall_c1

    throw v0

    .line 300
    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$smcreateSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 301
    .local v1, "pair":[Ljava/io/FileDescriptor;
    new-instance v2, Landroid/media/midi/MidiInputPort;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-direct {v2, v4, p2}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 305
    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e2

    .line 306
    aget-object v4, v1, v3

    invoke-static {v4, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 308
    :cond_e2
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v3

    aget-object v3, v3, p2

    .line 309
    .local v3, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v3
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_eb} :catch_143

    .line 310
    :try_start_eb
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 311
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v4

    .line 312
    .local v4, "openCount":I
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v5

    aput v4, v5, p2

    .line 313
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 314
    .end local v4    # "openCount":I
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_eb .. :try_end_104} :catchall_140

    .line 316
    :try_start_104
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v4, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v4, v5, p1, v2}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 318
    .local v4, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_11b} :catch_143

    .line 319
    :try_start_11b
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit v5
    :try_end_125
    .catchall {:try_start_11b .. :try_end_125} :catchall_13d

    .line 321
    :try_start_125
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12c} :catch_143

    .line 322
    :try_start_12c
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    monitor-exit v5
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_13a

    .line 324
    const/4 v5, 0x1

    :try_start_137
    aget-object v0, v1, v5
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_139} :catch_143

    return-object v0

    .line 323
    :catchall_13a
    move-exception v6

    :try_start_13b
    monitor-exit v5
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13a

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_13c
    throw v6
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13d} :catch_143

    .line 320
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catchall_13d
    move-exception v6

    :try_start_13e
    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_13f
    throw v6
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_140} :catch_143

    .line 314
    .end local v4    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catchall_140
    move-exception v4

    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_142
    throw v4
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_143} :catch_143

    .line 325
    .end local v1    # "pair":[Ljava/io/FileDescriptor;
    .end local v2    # "inputPort":Landroid/media/midi/MidiInputPort;
    .end local v3    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catch_143
    move-exception v1

    .line 326
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MidiDeviceServer"

    const-string v3, "unable to create FileDescriptors in openOutputPort"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v0

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    :cond_14c
    :goto_14c
    const-string v1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "portNumber out of range in openOutputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v0
.end method

.method public blacklist setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 4
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .line 386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1e

    .line 389
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_16

    .line 392
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0, p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fputmDeviceInfo(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)V

    .line 393
    return-void

    .line 390
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDeviceInfo should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "setDeviceInfo should only be called by MidiService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
