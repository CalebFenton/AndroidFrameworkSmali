.class final Lcom/android/server/midi/MidiService$DeviceConnection;
.super Ljava/lang/Object;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceConnection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

.field private final mClient:Lcom/android/server/midi/MidiService$Client;

.field private final mDevice:Lcom/android/server/midi/MidiService$Device;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;
    .param p2, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p3, "client"    # Lcom/android/server/midi/MidiService$Client;
    .param p4, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    #@0
    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->this$0:Lcom/android/server/midi/MidiService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 502
    new-instance v0, Landroid/os/Binder;

    #@7
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    #@c
    .line 508
    iput-object p2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    #@e
    .line 509
    iput-object p3, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    #@10
    .line 510
    iput-object p4, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    #@12
    .line 507
    return-void
.end method


# virtual methods
.method public getClient()Lcom/android/server/midi/MidiService$Client;
    .locals 1

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mClient:Lcom/android/server/midi/MidiService$Client;

    #@2
    return-object v0
.end method

.method public getDevice()Lcom/android/server/midi/MidiService$Device;
    .locals 1

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    #@2
    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public notifyClient(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 4
    .param p1, "deviceServer"    # Landroid/media/midi/IMidiDeviceServer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 526
    iget-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    #@7
    if-nez p1, :cond_1

    #@9
    move-object v1, v2

    #@a
    :goto_0
    invoke-interface {v3, p1, v1}, Landroid/media/midi/IMidiDeviceOpenCallback;->onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 532
    :goto_1
    iput-object v2, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mCallback:Landroid/media/midi/IMidiDeviceOpenCallback;

    #@f
    .line 525
    :cond_0
    return-void

    #@10
    .line 528
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@12
    goto :goto_0

    #@13
    .line 529
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DeviceConnection Device ID: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/midi/MidiService$DeviceConnection;->mDevice:Lcom/android/server/midi/MidiService$Device;

    #@e
    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    #@15
    move-result v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
