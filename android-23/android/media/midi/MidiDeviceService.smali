.class public abstract Landroid/media/midi/MidiDeviceService;
.super Landroid/app/Service;
.source "MidiDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceService$1;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.midi.MidiDeviceService"

.field private static final TAG:Ljava/lang/String; = "MidiDeviceService"


# instance fields
.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

.field private mMidiManager:Landroid/media/midi/IMidiManager;

.field private mServer:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 57
    new-instance v0, Landroid/media/midi/MidiDeviceService$1;

    #@5
    invoke-direct {v0, p0}, Landroid/media/midi/MidiDeviceService$1;-><init>(Landroid/media/midi/MidiDeviceService;)V

    #@8
    iput-object v0, p0, Landroid/media/midi/MidiDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@a
    .line 48
    return-void
.end method


# virtual methods
.method public final getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@2
    return-object v0
.end method

.method public final getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 109
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 110
    return-object v1

    #@6
    .line 112
    :cond_0
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@8
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 139
    const-string/jumbo v0, "android.media.midi.MidiDeviceService"

    #@4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 140
    iget-object v0, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@14
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 142
    :cond_0
    return-object v2
.end method

.method public onClose()V
    .locals 0

    #@0
    .prologue
    .line 134
    return-void
.end method

.method public onCreate()V
    .locals 7

    #@0
    .prologue
    .line 72
    const-string/jumbo v4, "midi"

    #@3
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v4

    #@7
    .line 71
    invoke-static {v4}, Landroid/media/midi/IMidiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@d
    .line 75
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@f
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceService;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 76
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceService;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    .line 75
    invoke-interface {v4, v5, v6}, Landroid/media/midi/IMidiManager;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    #@1e
    move-result-object v0

    #@1f
    .line 77
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v0, :cond_0

    #@21
    .line 78
    const-string/jumbo v4, "MidiDeviceService"

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "Could not find MidiDeviceInfo for MidiDeviceService "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 79
    return-void

    #@3c
    .line 81
    :cond_0
    iput-object v0, p0, Landroid/media/midi/MidiDeviceService;->mDeviceInfo:Landroid/media/midi/MidiDeviceInfo;

    #@3e
    .line 82
    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceService;->onGetInputPortReceivers()[Landroid/media/midi/MidiReceiver;

    #@41
    move-result-object v2

    #@42
    .line 83
    .local v2, "inputPortReceivers":[Landroid/media/midi/MidiReceiver;
    if-nez v2, :cond_1

    #@44
    .line 84
    const/4 v4, 0x0

    #@45
    new-array v2, v4, [Landroid/media/midi/MidiReceiver;

    #@47
    .line 86
    :cond_1
    new-instance v3, Landroid/media/midi/MidiDeviceServer;

    #@49
    iget-object v4, p0, Landroid/media/midi/MidiDeviceService;->mMidiManager:Landroid/media/midi/IMidiManager;

    #@4b
    iget-object v5, p0, Landroid/media/midi/MidiDeviceService;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    #@4d
    invoke-direct {v3, v4, v2, v0, v5}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiDeviceServer$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    .line 91
    .end local v0    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v2    # "inputPortReceivers":[Landroid/media/midi/MidiReceiver;
    :goto_0
    iput-object v3, p0, Landroid/media/midi/MidiDeviceService;->mServer:Landroid/media/midi/MidiDeviceServer;

    #@52
    .line 70
    return-void

    #@53
    .line 87
    :catch_0
    move-exception v1

    #@54
    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MidiDeviceService"

    #@57
    const-string/jumbo v5, "RemoteException in IMidiManager.getServiceDeviceInfo"

    #@5a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 89
    const/4 v3, 0x0

    #@5e
    .local v3, "server":Landroid/media/midi/MidiDeviceServer;
    goto :goto_0
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    #@0
    .prologue
    .line 128
    return-void
.end method

.method public abstract onGetInputPortReceivers()[Landroid/media/midi/MidiReceiver;
.end method
