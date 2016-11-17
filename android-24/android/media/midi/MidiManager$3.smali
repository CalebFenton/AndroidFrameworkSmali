.class Landroid/media/midi/MidiManager$3;
.super Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiManager;

.field final synthetic val$handlerF:Landroid/os/Handler;

.field final synthetic val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;
    .param p2, "val$listenerF"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "val$handlerF"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 287
    iput-object p1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    #@2
    iput-object p2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    #@4
    iput-object p3, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    #@6
    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 290
    const/4 v6, 0x0

    #@1
    .line 291
    .local v6, "device":Landroid/media/midi/MidiDevice;
    if-eqz p1, :cond_0

    #@3
    .line 294
    :try_start_0
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@6
    move-result-object v1

    #@7
    .line 295
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    new-instance v0, Landroid/media/midi/MidiDevice;

    #@9
    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    #@b
    invoke-static {v2}, Landroid/media/midi/MidiManager;->-get0(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    #@e
    move-result-object v3

    #@f
    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    #@11
    invoke-static {v2}, Landroid/media/midi/MidiManager;->-get1(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    move-object v2, p1

    #@16
    move-object v5, p2

    #@17
    invoke-direct/range {v0 .. v5}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 300
    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v6    # "device":Landroid/media/midi/MidiDevice;
    .local v0, "device":Landroid/media/midi/MidiDevice;
    :goto_0
    iget-object v2, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    #@1c
    iget-object v3, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    #@1e
    iget-object v4, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    #@20
    invoke-static {v2, v0, v3, v4}, Landroid/media/midi/MidiManager;->-wrap0(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    #@23
    .line 289
    return-void

    #@24
    .line 296
    .end local v0    # "device":Landroid/media/midi/MidiDevice;
    .restart local v6    # "device":Landroid/media/midi/MidiDevice;
    :catch_0
    move-exception v7

    #@25
    .line 297
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MidiManager"

    #@28
    const-string/jumbo v3, "remote exception in getDeviceInfo()"

    #@2b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    move-object v0, v6

    #@2f
    .restart local v0    # "device":Landroid/media/midi/MidiDevice;
    goto :goto_0

    #@30
    .end local v0    # "device":Landroid/media/midi/MidiDevice;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    move-object v0, v6

    #@31
    .restart local v0    # "device":Landroid/media/midi/MidiDevice;
    goto :goto_0
.end method
