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
.field final synthetic blacklist this$0:Landroid/media/midi/MidiManager;

.field final synthetic blacklist val$handlerF:Landroid/os/Handler;

.field final synthetic blacklist val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 420
    iput-object p1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iput-object p2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iput-object p3, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceOpened() server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MidiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v2, 0x0

    .line 425
    .local v2, "device":Landroid/media/midi/MidiDevice;
    if-eqz p1, :cond_42

    .line 428
    :try_start_1b
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    move-object v4, v0

    .line 429
    .local v4, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    new-instance v3, Landroid/media/midi/MidiDevice;

    iget-object v0, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v0}, Landroid/media/midi/MidiManager;->-$$Nest$fgetmService(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    move-result-object v6

    iget-object v0, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    invoke-static {v0}, Landroid/media/midi/MidiManager;->-$$Nest$fgetmToken(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    move-result-object v7
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2e} :catch_38

    move-object v5, p1

    move-object v8, p2

    .end local p1    # "server":Landroid/media/midi/IMidiDeviceServer;
    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .local v5, "server":Landroid/media/midi/IMidiDeviceServer;
    .local v8, "deviceToken":Landroid/os/IBinder;
    :try_start_30
    invoke-direct/range {v3 .. v8}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_35

    move-object v2, v3

    .line 432
    .end local v4    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_44

    .line 430
    :catch_35
    move-exception v0

    move-object p1, v0

    goto :goto_3c

    .end local v5    # "server":Landroid/media/midi/IMidiDeviceServer;
    .end local v8    # "deviceToken":Landroid/os/IBinder;
    .restart local p1    # "server":Landroid/media/midi/IMidiDeviceServer;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :catch_38
    move-exception v0

    move-object v5, p1

    move-object v8, p2

    move-object p1, v0

    .line 431
    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v5    # "server":Landroid/media/midi/IMidiDeviceServer;
    .restart local v8    # "deviceToken":Landroid/os/IBinder;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_3c
    const-string p2, "remote exception in getDeviceInfo()"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 425
    .end local v5    # "server":Landroid/media/midi/IMidiDeviceServer;
    .end local v8    # "deviceToken":Landroid/os/IBinder;
    .local p1, "server":Landroid/media/midi/IMidiDeviceServer;
    .restart local p2    # "deviceToken":Landroid/os/IBinder;
    :cond_42
    move-object v5, p1

    move-object v8, p2

    .line 434
    .end local p1    # "server":Landroid/media/midi/IMidiDeviceServer;
    .end local p2    # "deviceToken":Landroid/os/IBinder;
    .restart local v5    # "server":Landroid/media/midi/IMidiDeviceServer;
    .restart local v8    # "deviceToken":Landroid/os/IBinder;
    :goto_44
    iget-object p1, p0, Landroid/media/midi/MidiManager$3;->this$0:Landroid/media/midi/MidiManager;

    iget-object p2, p0, Landroid/media/midi/MidiManager$3;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    iget-object v0, p0, Landroid/media/midi/MidiManager$3;->val$handlerF:Landroid/os/Handler;

    invoke-static {p1, v2, p2, v0}, Landroid/media/midi/MidiManager;->-$$Nest$msendOpenDeviceResponse(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    .line 435
    return-void
.end method
