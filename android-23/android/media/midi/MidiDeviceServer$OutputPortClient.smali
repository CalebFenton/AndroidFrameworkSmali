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
.field private final mInputPort:Landroid/media/midi/MidiInputPort;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "inputPort"    # Landroid/media/midi/MidiInputPort;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@2
    .line 136
    invoke-direct {p0, p1, p2}, Landroid/media/midi/MidiDeviceServer$PortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V

    #@5
    .line 137
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    #@7
    .line 135
    return-void
.end method


# virtual methods
.method close()V
    .locals 5

    #@0
    .prologue
    .line 142
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mToken:Landroid/os/IBinder;

    #@2
    const/4 v4, 0x0

    #@3
    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 143
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    #@8
    invoke-virtual {v3}, Landroid/media/midi/MidiInputPort;->getPortNumber()I

    #@b
    move-result v2

    #@c
    .line 144
    .local v2, "portNumber":I
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@e
    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-get8(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    #@11
    move-result-object v3

    #@12
    aget-object v0, v3, v2

    #@14
    .line 145
    .local v0, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v0

    #@15
    .line 146
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    #@18
    move-result-object v3

    #@19
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    #@1b
    invoke-virtual {v3, v4}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    #@1e
    .line 147
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    #@21
    move-result v1

    #@22
    .line 148
    .local v1, "openCount":I
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@24
    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-get9(Landroid/media/midi/MidiDeviceServer;)[I

    #@27
    move-result-object v3

    #@28
    aput v1, v3, v2

    #@2a
    .line 149
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@2c
    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-wrap0(Landroid/media/midi/MidiDeviceServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v0

    #@30
    .line 152
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@32
    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-get6(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@35
    move-result-object v3

    #@36
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    #@38
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@3b
    .line 153
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$OutputPortClient;->mInputPort:Landroid/media/midi/MidiInputPort;

    #@3d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@40
    .line 141
    return-void

    #@41
    .line 145
    .end local v1    # "openCount":I
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v0

    #@43
    throw v3
.end method
