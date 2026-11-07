.class Landroid/media/midi/MidiDeviceServer$InputPortClient;
.super Landroid/media/midi/MidiDeviceServer$PortClient;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputPortClient"
.end annotation


# instance fields
.field private final greylist-max-o mOutputPort:Landroid/media/midi/MidiOutputPort;

.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V
    .registers 4
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "outputPort"    # Landroid/media/midi/MidiOutputPort;
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

    .line 138
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/media/midi/MidiDeviceServer$PortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V

    .line 140
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    .line 141
    return-void
.end method


# virtual methods
.method greylist-max-o close()V
    .registers 6

    .line 145
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 146
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v0

    monitor-enter v0

    .line 147
    :try_start_d
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    invoke-virtual {v2}, Landroid/media/midi/MidiOutputPort;->getPortNumber()I

    move-result v2

    .line 148
    .local v2, "portNumber":I
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 149
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOpen(Landroid/media/midi/MidiDeviceServer;)[Z

    move-result-object v3

    aput-boolean v1, v3, v2

    .line 150
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_58

    .line 151
    :try_start_2b
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 152
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_55

    .line 153
    :try_start_35
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmTotalOutputBytes(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    invoke-virtual {v3}, Landroid/media/midi/MidiOutputPort;->pullTotalBytesCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 154
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateTotalBytes(Landroid/media/midi/MidiDeviceServer;)V

    .line 155
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 156
    .end local v2    # "portNumber":I
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_58

    .line 157
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    return-void

    .line 152
    .restart local v2    # "portNumber":I
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    :try_start_57
    throw v3

    .line 156
    .end local v2    # "portNumber":I
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    throw v1
.end method
