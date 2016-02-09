.class public Landroid/media/midi/MidiDevice$MidiConnection;
.super Ljava/lang/Object;
.source "MidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MidiConnection"
.end annotation


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final mInputPortToken:Landroid/os/IBinder;

.field private mIsClosed:Z

.field private final mOutputPortToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/midi/MidiDevice;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDevice;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/midi/MidiDevice;
    .param p2, "outputPortToken"    # Landroid/os/IBinder;
    .param p3, "inputPort"    # Landroid/media/midi/MidiInputPort;

    #@0
    .prologue
    .line 59
    iput-object p1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->this$0:Landroid/media/midi/MidiDevice;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 56
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    #@b
    .line 60
    invoke-virtual {p3}, Landroid/media/midi/MidiInputPort;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@11
    .line 61
    invoke-virtual {p3}, Landroid/media/midi/MidiInputPort;->getToken()Landroid/os/IBinder;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortToken:Landroid/os/IBinder;

    #@17
    .line 62
    iput-object p2, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mOutputPortToken:Landroid/os/IBinder;

    #@19
    .line 63
    iget-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    #@1b
    const-string/jumbo v1, "close"

    #@1e
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@21
    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v2, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    monitor-enter v2

    #@3
    .line 69
    :try_start_0
    iget-boolean v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    return-void

    #@9
    .line 70
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    #@b
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 73
    :try_start_2
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    #@10
    iget-object v3, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mInputPortToken:Landroid/os/IBinder;

    #@12
    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V

    #@15
    .line 75
    iget-object v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->this$0:Landroid/media/midi/MidiDevice;

    #@17
    invoke-static {v1}, Landroid/media/midi/MidiDevice;->-get0(Landroid/media/midi/MidiDevice;)Landroid/media/midi/IMidiDeviceServer;

    #@1a
    move-result-object v1

    #@1b
    iget-object v3, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mOutputPortToken:Landroid/os/IBinder;

    #@1d
    invoke-interface {v1, v3}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 79
    :goto_0
    const/4 v1, 0x1

    #@21
    :try_start_3
    iput-boolean v1, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mIsClosed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 67
    return-void

    #@25
    .line 76
    :catch_0
    move-exception v0

    #@26
    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "MidiDevice"

    #@29
    const-string/jumbo v3, "RemoteException in MidiConnection.close"

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiDevice$MidiConnection;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 87
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice$MidiConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 84
    return-void

    #@c
    .line 88
    :catchall_0
    move-exception v0

    #@d
    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 88
    throw v0
.end method
