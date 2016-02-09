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
.field private final mOutputPort:Landroid/media/midi/MidiOutputPort;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "outputPort"    # Landroid/media/midi/MidiOutputPort;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@2
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/media/midi/MidiDeviceServer$PortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V

    #@5
    .line 116
    iput-object p3, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    #@7
    .line 114
    return-void
.end method


# virtual methods
.method close()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 121
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mToken:Landroid/os/IBinder;

    #@3
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 122
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@8
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-get4(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    #@b
    move-result-object v2

    #@c
    monitor-enter v2

    #@d
    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    #@f
    invoke-virtual {v1}, Landroid/media/midi/MidiOutputPort;->getPortNumber()I

    #@12
    move-result v0

    #@13
    .line 124
    .local v0, "portNumber":I
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@15
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-get4(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    #@18
    move-result-object v1

    #@19
    const/4 v3, 0x0

    #@1a
    aput-object v3, v1, v0

    #@1c
    .line 125
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@1e
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-get3(Landroid/media/midi/MidiDeviceServer;)[Z

    #@21
    move-result-object v1

    #@22
    const/4 v3, 0x0

    #@23
    aput-boolean v3, v1, v0

    #@25
    .line 126
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    #@27
    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-wrap0(Landroid/media/midi/MidiDeviceServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v2

    #@2b
    .line 128
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$InputPortClient;->mOutputPort:Landroid/media/midi/MidiOutputPort;

    #@2d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@30
    .line 120
    return-void

    #@31
    .line 122
    .end local v0    # "portNumber":I
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1
.end method
