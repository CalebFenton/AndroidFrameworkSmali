.class public abstract Landroid/media/midi/MidiUmpDeviceService;
.super Landroid/app/Service;
.source "MidiUmpDeviceService.java"


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.midi.MidiUmpDeviceService"

.field private static final blacklist TAG:Ljava/lang/String; = "MidiUmpDeviceService"


# instance fields
.field private final blacklist mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private blacklist mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private blacklist mMidiManager:Landroid/media/midi/IMidiManager;

.field private blacklist mServer:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Landroid/media/midi/MidiUmpDeviceService$1;

    invoke-direct {v0, p0}, Landroid/media/midi/MidiUmpDeviceService$1;-><init>(Landroid/media/midi/MidiUmpDeviceService;)V

    iput-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public final whitelist getOutputPortReceivers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v0, :cond_a

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 133
    :cond_a
    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 165
    const-string v0, "android.media.midi.MidiUmpDeviceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_1b

    .line 166
    iget-object v0, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onClose()V
    .registers 1

    .line 160
    return-void
.end method

.method public whitelist onCreate()V
    .registers 8

    .line 84
    const-string v0, "MidiUmpDeviceService"

    .line 85
    const-string v1, "midi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/midi/MidiUmpDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    .line 88
    :try_start_e
    iget-object v1, p0, Landroid/media/midi/MidiUmpDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    invoke-virtual {p0}, Landroid/media/midi/MidiUmpDeviceService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-interface {v1, v2, v3}, Landroid/media/midi/IMidiManager;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .line 90
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v1, :cond_39

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find MidiDeviceInfo for MidiUmpDeviceService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 94
    :cond_39
    iput-object v1, p0, Landroid/media/midi/MidiUmpDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    .line 96
    invoke-virtual {p0}, Landroid/media/midi/MidiUmpDeviceService;->onGetInputPortReceivers()Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, "inputPortReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/media/midi/MidiReceiver;>;"
    if-nez v2, :cond_58

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get input port receivers for MidiUmpDeviceService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 101
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/media/midi/MidiReceiver;

    .line 102
    .local v3, "inputPortReceiversArr":[Landroid/media/midi/MidiReceiver;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    new-instance v4, Landroid/media/midi/MidiDeviceServer;

    iget-object v5, p0, Landroid/media/midi/MidiUmpDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    iget-object v6, p0, Landroid/media/midi/MidiUmpDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    invoke-direct {v4, v5, v3, v1, v6}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_6a} :catch_6b

    .line 108
    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v2    # "inputPortReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/media/midi/MidiReceiver;>;"
    .end local v3    # "inputPortReceiversArr":[Landroid/media/midi/MidiReceiver;
    .local v4, "server":Landroid/media/midi/MidiDeviceServer;
    goto :goto_72

    .line 105
    .end local v4    # "server":Landroid/media/midi/MidiDeviceServer;
    :catch_6b
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException in IMidiManager.getServiceDeviceInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v4, 0x0

    .line 109
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "server":Landroid/media/midi/MidiDeviceServer;
    :goto_72
    iput-object v4, p0, Landroid/media/midi/MidiUmpDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 110
    return-void
.end method

.method public whitelist onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 152
    return-void
.end method

.method public abstract whitelist onGetInputPortReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation
.end method
