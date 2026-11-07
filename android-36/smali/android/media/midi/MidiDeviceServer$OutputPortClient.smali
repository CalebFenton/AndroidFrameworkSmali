.class Landroid/media/midi/MidiDeviceServer$OutputPortClient;
.super Landroid/media/midi/MidiDeviceServer$PortClient;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputPortClient"
.end annotation


# instance fields
.field private final greylist-max-o mInputPort:Landroid/media/midi/MidiInputPort;

.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    .registers 4
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "inputPort"    # Landroid/media/midi/MidiInputPort;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/media/midi/MidiDeviceServer$PortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V

    .line 166
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    .line 167
    return-void
.end method


# virtual methods
.method greylist-max-o close()V
    .registers 7

    .line 171
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 172
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v0}, Landroid/media/midi/MidiInputPort;->getPortNumber()I

    move-result v0

    .line 173
    .local v0, "portNumber":I
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    aget-object v1, v1, v0

    .line 174
    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1

    .line 175
    :try_start_15
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v2, v3}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    .line 176
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v2

    .line 177
    .local v2, "openCount":I
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aput v2, v3, v0

    .line 178
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_69

    .line 179
    :try_start_31
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v4

    const/4 v5, -0x1

    aput v5, v4, v0

    .line 180
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_66

    .line 181
    :try_start_3b
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmTotalInputBytes(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v4}, Landroid/media/midi/MidiInputPort;->pullTotalBytesCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 182
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateTotalBytes(Landroid/media/midi/MidiDeviceServer;)V

    .line 183
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 184
    .end local v2    # "openCount":I
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_69

    .line 186
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 188
    return-void

    .line 180
    .restart local v2    # "openCount":I
    :catchall_66
    move-exception v4

    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    .end local v0    # "portNumber":I
    .end local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    :try_start_68
    throw v4

    .line 184
    .end local v2    # "openCount":I
    .restart local v0    # "portNumber":I
    .restart local v1    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    :catchall_69
    move-exception v2

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_69

    throw v2
.end method

.method greylist-max-o getInputPort()Landroid/media/midi/MidiInputPort;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    return-object v0
.end method
