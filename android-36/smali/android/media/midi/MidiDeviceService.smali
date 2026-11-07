.class public abstract Landroid/media/midi/MidiDeviceService;
.super Landroid/app/Service;
.source "MidiDeviceService.java"


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.midi.MidiDeviceService"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiDeviceService"


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private greylist-max-o mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private greylist-max-o mMidiManager:Landroid/media/midi/IMidiManager;

.field private greylist-max-o mServer:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Landroid/media/midi/MidiDeviceService$1;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiDeviceService$1;-><init>(Landroid/media/midi/MidiDeviceService;)V

    iput-object v0, p0, Landroid/media/midi/MidiDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public final whitelist getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v0, :cond_6

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_6
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 140
    const-string v0, "android.media.midi.MidiDeviceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_1b

    .line 141
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onClose()V
    .registers 1

    .line 136
    return-void
.end method

.method public whitelist onCreate()V
    .registers 7

    .line 71
    const-string v0, "MidiDeviceService"

    .line 72
    const-string v1, "midi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    .line 75
    :try_start_e
    iget-object v1, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-interface {v1, v2, v3}, Landroid/media/midi/IMidiManager;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .line 77
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v1, :cond_39

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find MidiDeviceInfo for MidiDeviceService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 81
    :cond_39
    iput-object v1, p0, Landroid/media/midi/MidiDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 82
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceService;->onGetInputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v2

    .line 83
    .local v2, "inputPortReceivers":[Landroid/media/midi/MidiReceiver;
    if-nez v2, :cond_45

    .line 84
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/media/midi/MidiReceiver;

    move-object v2, v3

    .line 86
    :cond_45
    new-instance v3, Landroid/media/midi/MidiDeviceServer;

    iget-object v4, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-direct {v3, v4, v2, v1, v5}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_4e} :catch_4f

    .line 90
    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v2    # "inputPortReceivers":[Landroid/media/midi/MidiReceiver;
    .local v3, "server":Landroid/media/midi/MidiDeviceServer;
    goto :goto_56

    .line 87
    .end local v3    # "server":Landroid/media/midi/MidiDeviceServer;
    :catch_4f
    move-exception v1

    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException in IMidiManager.getServiceDeviceInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v3, 0x0

    .line 91
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "server":Landroid/media/midi/MidiDeviceServer;
    :goto_56
    iput-object v3, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 92
    return-void
.end method

.method public whitelist onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 129
    return-void
.end method

.method public abstract whitelist onGetInputPortReceivers()[Landroid/media/midi/MidiReceiver;
.end method
