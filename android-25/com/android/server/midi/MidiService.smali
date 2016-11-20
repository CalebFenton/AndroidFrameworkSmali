.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$1;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$Lifecycle;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field private final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothServiceUid:I

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/midi/MidiService;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/midi/MidiService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/midi/MidiService;->onUnlockUser()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .locals 0
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 636
    new-array v0, v1, [Landroid/media/midi/MidiDeviceInfo;

    #@3
    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    #@5
    .line 862
    new-array v0, v1, [Ljava/lang/String;

    #@7
    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@9
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 565
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    #@3
    .line 89
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@a
    .line 93
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 92
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@11
    .line 97
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    .line 96
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    #@18
    .line 100
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    #@1f
    .line 103
    const/4 v0, 0x1

    #@20
    iput v0, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    #@22
    .line 111
    new-instance v0, Lcom/android/server/midi/MidiService$1;

    #@24
    invoke-direct {v0, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    #@27
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@29
    .line 566
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    #@2b
    .line 567
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@31
    .line 569
    const/4 v0, -0x1

    #@32
    iput v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    #@34
    .line 565
    return-void
.end method

.method private addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    .locals 14
    .param p1, "type"    # I
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p8, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p9, "isPrivate"    # Z
    .param p10, "uid"    # I

    #@0
    .prologue
    .line 789
    iget v3, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    #@2
    add-int/lit8 v2, v3, 0x1

    #@4
    iput v2, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    #@6
    .line 790
    .local v3, "id":I
    new-instance v1, Landroid/media/midi/MidiDeviceInfo;

    #@8
    move v2, p1

    #@9
    move/from16 v4, p2

    #@b
    move/from16 v5, p3

    #@d
    move-object/from16 v6, p4

    #@f
    move-object/from16 v7, p5

    #@11
    move-object/from16 v8, p6

    #@13
    move/from16 v9, p9

    #@15
    invoke-direct/range {v1 .. v9}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V

    #@18
    .line 793
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-eqz p7, :cond_0

    #@1a
    .line 795
    :try_start_0
    move-object/from16 v0, p7

    #@1c
    invoke-interface {v0, v1}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 802
    :cond_0
    const/4 v4, 0x0

    #@20
    .line 803
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    const/4 v10, 0x0

    #@21
    .line 804
    .local v10, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x3

    #@22
    if-ne p1, v2, :cond_1

    #@24
    .line 806
    const-string/jumbo v2, "bluetooth_device"

    #@27
    .line 805
    move-object/from16 v0, p6

    #@29
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2c
    move-result-object v10

    #@2d
    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    #@2f
    .line 807
    .local v10, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    #@31
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    #@37
    .line 808
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v4, :cond_1

    #@39
    .line 809
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    #@3c
    .line 812
    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    if-nez v4, :cond_2

    #@3e
    .line 813
    new-instance v4, Lcom/android/server/midi/MidiService$Device;

    #@40
    move-object v5, p0

    #@41
    move-object/from16 v6, p7

    #@43
    move-object v7, v1

    #@44
    move-object/from16 v8, p8

    #@46
    move/from16 v9, p10

    #@48
    invoke-direct/range {v4 .. v9}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    #@4b
    .line 815
    :cond_2
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@4d
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 816
    if-eqz v10, :cond_3

    #@52
    .line 817
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    #@54
    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 820
    :cond_3
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@59
    monitor-enter v5

    #@5a
    .line 821
    :try_start_1
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@5c
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5f
    move-result-object v2

    #@60
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v12

    #@64
    .local v12, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_4

    #@6a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v11

    #@6e
    check-cast v11, Lcom/android/server/midi/MidiService$Client;

    #@70
    .line 822
    .local v11, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v11, v4}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    goto :goto_0

    #@74
    .line 820
    .end local v11    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v12    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@75
    monitor-exit v5

    #@76
    throw v2

    #@77
    .line 796
    :catch_0
    move-exception v13

    #@78
    .line 797
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MidiService"

    #@7b
    const-string/jumbo v5, "RemoteException in setDeviceInfo()"

    #@7e
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 798
    const/4 v2, 0x0

    #@82
    return-object v2

    #@83
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v12    # "c$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v5

    #@84
    .line 826
    return-object v1
.end method

.method private addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .locals 27
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    .line 865
    const/16 v22, 0x0

    #@2
    .line 868
    .local v22, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    #@4
    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6
    .line 869
    const-string/jumbo v3, "android.media.midi.MidiDeviceService"

    #@9
    .line 868
    move-object/from16 v0, p1

    #@b
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v22

    #@f
    .line 870
    .local v22, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v22, :cond_1

    #@11
    .line 995
    if-eqz v22, :cond_0

    #@13
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    #@16
    .line 870
    :cond_0
    return-void

    #@17
    .line 873
    :cond_1
    :try_start_1
    const-string/jumbo v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    #@1a
    .line 874
    move-object/from16 v0, p1

    #@1c
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@1e
    .line 873
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_3

    #@24
    .line 875
    const-string/jumbo v2, "MidiService"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "Skipping MIDI device service "

    #@2f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    move-object/from16 v0, p1

    #@35
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@37
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    .line 876
    const-string/jumbo v6, ": it does not require the permission "

    #@3e
    .line 875
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 877
    const-string/jumbo v6, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    #@45
    .line 875
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    .line 995
    if-eqz v22, :cond_2

    #@52
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    #@55
    .line 878
    :cond_2
    return-void

    #@56
    .line 881
    :cond_3
    const/4 v8, 0x0

    #@57
    .line 882
    .local v8, "properties":Landroid/os/Bundle;
    const/4 v4, 0x0

    #@58
    .line 883
    .local v4, "numInputPorts":I
    const/4 v5, 0x0

    #@59
    .line 884
    .local v5, "numOutputPorts":I
    const/4 v11, 0x0

    #@5a
    .line 885
    .local v11, "isPrivate":Z
    :try_start_2
    new-instance v19, Ljava/util/ArrayList;

    #@5c
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@5f
    .line 886
    .local v19, "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    #@61
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    #@64
    .line 889
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v11    # "isPrivate":Z
    .local v21, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    move-result v17

    #@68
    .line 890
    .local v17, "eventType":I
    const/4 v2, 0x1

    #@69
    move/from16 v0, v17

    #@6b
    if-ne v0, v2, :cond_6

    #@6d
    .line 995
    if-eqz v22, :cond_5

    #@6f
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    #@72
    .line 864
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v17    # "eventType":I
    .end local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_5
    :goto_1
    return-void

    #@73
    .line 892
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v17    # "eventType":I
    .restart local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_6
    const/4 v2, 0x2

    #@74
    move/from16 v0, v17

    #@76
    if-ne v0, v2, :cond_12

    #@78
    .line 893
    :try_start_3
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@7b
    move-result-object v24

    #@7c
    .line 894
    .local v24, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "device"

    #@7f
    move-object/from16 v0, v24

    #@81
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_a

    #@87
    .line 895
    if-eqz v8, :cond_7

    #@89
    .line 896
    const-string/jumbo v2, "MidiService"

    #@8c
    new-instance v3, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v6, "nested <device> elements in metadata for "

    #@94
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    .line 897
    move-object/from16 v0, p1

    #@9a
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@9c
    .line 896
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v3

    #@a0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a7
    goto :goto_0

    #@a8
    .line 992
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v17    # "eventType":I
    .end local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v16

    #@a9
    .line 993
    .local v16, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "MidiService"

    #@ac
    new-instance v3, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v6, "Unable to load component info "

    #@b4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v3

    #@b8
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    move-object/from16 v0, v16

    #@c6
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c9
    .line 995
    if-eqz v22, :cond_5

    #@cb
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    #@ce
    goto :goto_1

    #@cf
    .line 900
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v17    # "eventType":I
    .restart local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "tagName":Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v8, Landroid/os/Bundle;

    #@d1
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@d4
    .line 901
    .local v8, "properties":Landroid/os/Bundle;
    const-string/jumbo v2, "service_info"

    #@d7
    move-object/from16 v0, p1

    #@d9
    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@dc
    .line 902
    const/4 v4, 0x0

    #@dd
    .line 903
    const/4 v5, 0x0

    #@de
    .line 904
    const/4 v11, 0x0

    #@df
    .line 906
    .restart local v11    # "isPrivate":Z
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    #@e2
    move-result v14

    #@e3
    .line 907
    .local v14, "count":I
    const/16 v18, 0x0

    #@e5
    .end local v11    # "isPrivate":Z
    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    #@e7
    if-ge v0, v14, :cond_4

    #@e9
    .line 908
    move-object/from16 v0, v22

    #@eb
    move/from16 v1, v18

    #@ed
    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    #@f0
    move-result-object v20

    #@f1
    .line 909
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v0, v22

    #@f3
    move/from16 v1, v18

    #@f5
    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    #@f8
    move-result-object v25

    #@f9
    .line 910
    .local v25, "value":Ljava/lang/String;
    const-string/jumbo v2, "private"

    #@fc
    move-object/from16 v0, v20

    #@fe
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@101
    move-result v2

    #@102
    if-eqz v2, :cond_8

    #@104
    .line 911
    const-string/jumbo v2, "true"

    #@107
    move-object/from16 v0, v25

    #@109
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10c
    move-result v11

    #@10d
    .line 907
    :goto_3
    add-int/lit8 v18, v18, 0x1

    #@10f
    goto :goto_2

    #@110
    .line 913
    :cond_8
    move-object/from16 v0, v20

    #@112
    move-object/from16 v1, v25

    #@114
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@117
    goto :goto_3

    #@118
    .line 994
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v14    # "count":I
    .end local v17    # "eventType":I
    .end local v18    # "i":I
    .end local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "tagName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@119
    .line 995
    if-eqz v22, :cond_9

    #@11b
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    #@11e
    .line 994
    :cond_9
    throw v2

    #@11f
    .line 916
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v17    # "eventType":I
    .restart local v19    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24    # "tagName":Ljava/lang/String;
    :cond_a
    :try_start_6
    const-string/jumbo v2, "input-port"

    #@122
    move-object/from16 v0, v24

    #@124
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@127
    move-result v2

    #@128
    if-eqz v2, :cond_e

    #@12a
    .line 917
    if-nez v8, :cond_b

    #@12c
    .line 918
    const-string/jumbo v2, "MidiService"

    #@12f
    new-instance v3, Ljava/lang/StringBuilder;

    #@131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    const-string/jumbo v6, "<input-port> outside of <device> in metadata for "

    #@137
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v3

    #@13b
    .line 919
    move-object/from16 v0, p1

    #@13d
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@13f
    .line 918
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v3

    #@143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v3

    #@147
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14a
    goto/16 :goto_0

    #@14c
    .line 922
    :cond_b
    add-int/lit8 v4, v4, 0x1

    #@14e
    .line 924
    const/16 v23, 0x0

    #@150
    .line 925
    .local v23, "portName":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    #@153
    move-result v14

    #@154
    .line 926
    .restart local v14    # "count":I
    const/16 v18, 0x0

    #@156
    .restart local v18    # "i":I
    :goto_4
    move/from16 v0, v18

    #@158
    if-ge v0, v14, :cond_c

    #@15a
    .line 927
    move-object/from16 v0, v22

    #@15c
    move/from16 v1, v18

    #@15e
    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    #@161
    move-result-object v20

    #@162
    .line 928
    .restart local v20    # "name":Ljava/lang/String;
    move-object/from16 v0, v22

    #@164
    move/from16 v1, v18

    #@166
    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    #@169
    move-result-object v25

    #@16a
    .line 929
    .restart local v25    # "value":Ljava/lang/String;
    const-string/jumbo v2, "name"

    #@16d
    move-object/from16 v0, v20

    #@16f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@172
    move-result v2

    #@173
    if-eqz v2, :cond_d

    #@175
    .line 930
    move-object/from16 v23, v25

    #@177
    .line 934
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v19

    #@179
    move-object/from16 v1, v23

    #@17b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17e
    goto/16 :goto_0

    #@180
    .line 926
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "portName":Ljava/lang/String;
    .restart local v25    # "value":Ljava/lang/String;
    :cond_d
    add-int/lit8 v18, v18, 0x1

    #@182
    goto :goto_4

    #@183
    .line 935
    .end local v14    # "count":I
    .end local v18    # "i":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_e
    const-string/jumbo v2, "output-port"

    #@186
    move-object/from16 v0, v24

    #@188
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18b
    move-result v2

    #@18c
    if-eqz v2, :cond_4

    #@18e
    .line 936
    if-nez v8, :cond_f

    #@190
    .line 937
    const-string/jumbo v2, "MidiService"

    #@193
    new-instance v3, Ljava/lang/StringBuilder;

    #@195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@198
    const-string/jumbo v6, "<output-port> outside of <device> in metadata for "

    #@19b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v3

    #@19f
    .line 938
    move-object/from16 v0, p1

    #@1a1
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1a3
    .line 937
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v3

    #@1a7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1aa
    move-result-object v3

    #@1ab
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1ae
    goto/16 :goto_0

    #@1b0
    .line 941
    :cond_f
    add-int/lit8 v5, v5, 0x1

    #@1b2
    .line 943
    const/16 v23, 0x0

    #@1b4
    .line 944
    .restart local v23    # "portName":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    #@1b7
    move-result v14

    #@1b8
    .line 945
    .restart local v14    # "count":I
    const/16 v18, 0x0

    #@1ba
    .restart local v18    # "i":I
    :goto_5
    move/from16 v0, v18

    #@1bc
    if-ge v0, v14, :cond_10

    #@1be
    .line 946
    move-object/from16 v0, v22

    #@1c0
    move/from16 v1, v18

    #@1c2
    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    #@1c5
    move-result-object v20

    #@1c6
    .line 947
    .restart local v20    # "name":Ljava/lang/String;
    move-object/from16 v0, v22

    #@1c8
    move/from16 v1, v18

    #@1ca
    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    #@1cd
    move-result-object v25

    #@1ce
    .line 948
    .restart local v25    # "value":Ljava/lang/String;
    const-string/jumbo v2, "name"

    #@1d1
    move-object/from16 v0, v20

    #@1d3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d6
    move-result v2

    #@1d7
    if-eqz v2, :cond_11

    #@1d9
    .line 949
    move-object/from16 v23, v25

    #@1db
    .line 953
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v21

    #@1dd
    move-object/from16 v1, v23

    #@1df
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e2
    goto/16 :goto_0

    #@1e4
    .line 945
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v23    # "portName":Ljava/lang/String;
    .restart local v25    # "value":Ljava/lang/String;
    :cond_11
    add-int/lit8 v18, v18, 0x1

    #@1e6
    goto :goto_5

    #@1e7
    .line 955
    .end local v14    # "count":I
    .end local v18    # "i":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "portName":Ljava/lang/String;
    .end local v24    # "tagName":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x3

    #@1e8
    move/from16 v0, v17

    #@1ea
    if-ne v0, v2, :cond_4

    #@1ec
    .line 956
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1ef
    move-result-object v24

    #@1f0
    .line 957
    .restart local v24    # "tagName":Ljava/lang/String;
    const-string/jumbo v2, "device"

    #@1f3
    move-object/from16 v0, v24

    #@1f5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f8
    move-result v2

    #@1f9
    if-eqz v2, :cond_4

    #@1fb
    .line 958
    if-eqz v8, :cond_4

    #@1fd
    .line 959
    if-nez v4, :cond_13

    #@1ff
    if-nez v5, :cond_13

    #@201
    .line 960
    const-string/jumbo v2, "MidiService"

    #@204
    new-instance v3, Ljava/lang/StringBuilder;

    #@206
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@209
    const-string/jumbo v6, "<device> with no ports in metadata for "

    #@20c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v3

    #@210
    .line 961
    move-object/from16 v0, p1

    #@212
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@214
    .line 960
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v3

    #@218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21b
    move-result-object v3

    #@21c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@21f
    goto/16 :goto_0

    #@221
    .line 967
    :cond_13
    :try_start_7
    move-object/from16 v0, p0

    #@223
    iget-object v2, v0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@225
    .line 968
    move-object/from16 v0, p1

    #@227
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@229
    const/4 v6, 0x0

    #@22a
    .line 967
    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@22d
    move-result-object v13

    #@22e
    .line 969
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v12, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@230
    .line 976
    .local v12, "uid":I
    :try_start_8
    move-object/from16 v0, p0

    #@232
    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@234
    move-object/from16 v26, v0

    #@236
    monitor-enter v26
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@237
    .line 979
    :try_start_9
    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@239
    move-object/from16 v0, v19

    #@23b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@23e
    move-result-object v6

    #@23f
    check-cast v6, [Ljava/lang/String;

    #@241
    .line 980
    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@243
    move-object/from16 v0, v21

    #@245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@248
    move-result-object v7

    #@249
    check-cast v7, [Ljava/lang/String;

    #@24b
    .line 977
    const/4 v3, 0x2

    #@24c
    .line 981
    const/4 v9, 0x0

    #@24d
    move-object/from16 v2, p0

    #@24f
    move-object/from16 v10, p1

    #@251
    .line 977
    invoke-direct/range {v2 .. v12}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@254
    :try_start_a
    monitor-exit v26

    #@255
    .line 985
    const/4 v8, 0x0

    #@256
    .line 986
    .local v8, "properties":Landroid/os/Bundle;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    #@259
    .line 987
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    #@25c
    goto/16 :goto_0

    #@25e
    .line 970
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v12    # "uid":I
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v15

    #@25f
    .line 971
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "MidiService"

    #@262
    new-instance v3, Ljava/lang/StringBuilder;

    #@264
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@267
    const-string/jumbo v6, "could not fetch ApplicationInfo for "

    #@26a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v3

    #@26e
    .line 972
    move-object/from16 v0, p1

    #@270
    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@272
    .line 971
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@275
    move-result-object v3

    #@276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@279
    move-result-object v3

    #@27a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27d
    goto/16 :goto_0

    #@27f
    .line 976
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "uid":I
    .restart local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_1
    move-exception v2

    #@280
    monitor-exit v26

    #@281
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method private addPackageDeviceServers(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 848
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@2
    .line 849
    const/16 v5, 0x84

    #@4
    .line 848
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    .line 855
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    #@a
    .line 856
    .local v3, "services":[Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_0

    #@c
    return-void

    #@d
    .line 850
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    #@e
    .line 851
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "MidiService"

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "handlePackageUpdate could not find package "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 852
    return-void

    #@29
    .line 857
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :cond_0
    const/4 v1, 0x0

    #@2a
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@2b
    if-ge v1, v4, :cond_1

    #@2d
    .line 858
    aget-object v4, v3, v1

    #@2f
    invoke-direct {p0, v4}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    #@32
    .line 857
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 844
    :cond_1
    return-void
.end method

.method private getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 268
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@3
    monitor-enter v3

    #@4
    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    #@c
    .line 270
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    #@e
    .line 271
    new-instance v0, Lcom/android/server/midi/MidiService$Client;

    #@10
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    invoke-direct {v0, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 274
    .restart local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    const/4 v2, 0x0

    #@14
    :try_start_1
    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .line 278
    :try_start_2
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@19
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    :cond_0
    monitor-exit v3

    #@1d
    .line 280
    return-object v0

    #@1e
    .line 275
    :catch_0
    move-exception v1

    #@1f
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v3

    #@20
    .line 276
    return-object v4

    #@21
    .line 268
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method private notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 4
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    #@0
    .prologue
    .line 776
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@2
    monitor-enter v3

    #@3
    .line 777
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@5
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    #@19
    .line 778
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 776
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1e
    monitor-exit v3

    #@1f
    throw v2

    #@20
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@21
    .line 775
    return-void
.end method

.method private onUnlockUser()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 573
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    #@3
    iget-object v8, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    #@5
    const/4 v9, 0x1

    #@6
    invoke-virtual {v7, v8, v10, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    #@9
    .line 575
    new-instance v4, Landroid/content/Intent;

    #@b
    const-string/jumbo v7, "android.media.midi.MidiDeviceService"

    #@e
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 576
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@13
    .line 577
    const/16 v8, 0x80

    #@15
    .line 576
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@18
    move-result-object v5

    #@19
    .line 578
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_1

    #@1b
    .line 579
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1e
    move-result v0

    #@1f
    .line 580
    .local v0, "count":I
    const/4 v2, 0x0

    #@20
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@22
    .line 581
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@28
    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2a
    .line 582
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_0

    #@2c
    .line 583
    invoke-direct {p0, v6}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    #@2f
    .line 580
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 590
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    #@34
    const-string/jumbo v8, "com.android.bluetoothmidiservice"

    #@37
    const/4 v9, 0x0

    #@38
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v3

    #@3c
    .line 594
    :goto_1
    if-eqz v3, :cond_2

    #@3e
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@40
    if-eqz v7, :cond_2

    #@42
    .line 595
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@44
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@46
    iput v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    #@48
    .line 572
    :goto_2
    return-void

    #@49
    .line 591
    :catch_0
    move-exception v1

    #@4a
    .line 592
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    #@4b
    .local v3, "info":Landroid/content/pm/PackageInfo;
    goto :goto_1

    #@4c
    .line 597
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v7, -0x1

    #@4d
    iput v7, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    #@4f
    goto :goto_2
.end method

.method private removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .locals 5
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    #@0
    .prologue
    .line 831
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    #@3
    move-result-object v2

    #@4
    .line 832
    .local v2, "server":Landroid/media/midi/IMidiDeviceServer;
    if-eqz v2, :cond_0

    #@6
    .line 833
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    #@8
    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 835
    :cond_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@11
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 837
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@1a
    monitor-enter v4

    #@1b
    .line 838
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    #@31
    .line 839
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    goto :goto_0

    #@35
    .line 837
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit v4

    #@37
    throw v3

    #@38
    .restart local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    #@39
    .line 830
    return-void
.end method

.method private removePackageDeviceServers(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1000
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@2
    monitor-enter v3

    #@3
    .line 1001
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@5
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .line 1002
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1003
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    #@19
    .line 1004
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1005
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@26
    .line 1006
    invoke-direct {p0, v0}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 1000
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2

    #@2d
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_1
    monitor-exit v3

    #@2e
    .line 999
    return-void
.end method

.method private updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    #@0
    .prologue
    .line 619
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@2
    monitor-enter v5

    #@3
    .line 620
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@5
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    #@19
    .line 622
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 624
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    #@22
    move-result-object v3

    #@23
    .line 625
    .local v3, "status":Landroid/media/midi/MidiDeviceStatus;
    if-eqz v3, :cond_0

    #@25
    .line 626
    invoke-interface {p2, v3}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 628
    .end local v3    # "status":Landroid/media/midi/MidiDeviceStatus;
    :catch_0
    move-exception v2

    #@2a
    .line 629
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "MidiService"

    #@2d
    const-string/jumbo v6, "remote exception"

    #@30
    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 619
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@35
    monitor-exit v5

    #@36
    throw v4

    #@37
    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@38
    .line 618
    return-void
.end method


# virtual methods
.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    #@3
    move-result-object v0

    #@4
    .line 707
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 708
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    #@a
    .line 705
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1014
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.DUMP"

    #@5
    const-string/jumbo v7, "MidiService"

    #@8
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1015
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    #@d
    const-string/jumbo v5, "  "

    #@10
    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@13
    .line 1017
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v5, "MIDI Manager State:"

    #@16
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 1018
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1c
    .line 1020
    const-string/jumbo v5, "Devices:"

    #@1f
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 1021
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@25
    .line 1022
    iget-object v6, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@27
    monitor-enter v6

    #@28
    .line 1023
    :try_start_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v3

    #@32
    .local v3, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_0

    #@38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    #@3e
    .line 1024
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 1022
    .end local v2    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v3    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@47
    monitor-exit v6

    #@48
    throw v5

    #@49
    .restart local v3    # "device$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v6

    #@4a
    .line 1027
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@4d
    .line 1029
    const-string/jumbo v5, "Clients:"

    #@50
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@53
    .line 1030
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@56
    .line 1031
    iget-object v6, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@58
    monitor-enter v6

    #@59
    .line 1032
    :try_start_1
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    #@5b
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5e
    move-result-object v5

    #@5f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v1

    #@63
    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@66
    move-result v5

    #@67
    if-eqz v5, :cond_1

    #@69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    #@6f
    .line 1033
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@76
    goto :goto_1

    #@77
    .line 1031
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "client$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    #@78
    monitor-exit v6

    #@79
    throw v5

    #@7a
    .restart local v1    # "client$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    #@7b
    .line 1036
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@7e
    .line 1013
    return-void
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .locals 4
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    #@0
    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    #@8
    .line 756
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v0, :cond_0

    #@a
    .line 757
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "no such device for "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 759
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 6

    #@0
    .prologue
    .line 639
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 640
    .local v2, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/midi/MidiDeviceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v3

    #@9
    .line 642
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@b
    monitor-enter v5

    #@c
    .line 643
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@e
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@11
    move-result-object v4

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    #@22
    .line 644
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 645
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 642
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@31
    monitor-exit v5

    #@32
    throw v4

    #@33
    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@34
    .line 650
    sget-object v4, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    #@36
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@39
    move-result-object v4

    #@3a
    check-cast v4, [Landroid/media/midi/MidiDeviceInfo;

    #@3c
    return-object v4
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 740
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@3
    monitor-enter v4

    #@4
    .line 741
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    #@1a
    .line 742
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@1d
    move-result-object v2

    #@1e
    .line 743
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    #@20
    .line 744
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    .line 743
    if-eqz v3, :cond_0

    #@28
    .line 745
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@2a
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    .line 743
    if-eqz v3, :cond_0

    #@30
    .line 746
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result-object v3

    #@34
    monitor-exit v4

    #@35
    return-object v3

    #@36
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    monitor-exit v4

    #@37
    .line 749
    return-object v5

    #@38
    .line 740
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@39
    monitor-exit v4

    #@3a
    throw v3
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    #@0
    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    #@3
    move-result-object v0

    #@4
    .line 683
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 687
    :cond_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@9
    monitor-enter v5

    #@a
    .line 688
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    #@c
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    #@12
    .line 689
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_1

    #@14
    .line 690
    new-instance v1, Lcom/android/server/midi/MidiService$Device;

    #@16
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    invoke-direct {v1, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    #@19
    .line 691
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit v5

    #@1f
    .line 696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v2

    #@23
    .line 698
    .local v2, "identity":J
    :try_start_1
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@26
    .line 700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 681
    return-void

    #@2a
    .line 687
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "identity":J
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 699
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v2    # "identity":J
    :catchall_1
    move-exception v4

    #@2e
    .line 700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 699
    throw v4
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    #@0
    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    #@3
    move-result-object v0

    #@4
    .line 657
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 660
    :cond_0
    iget-object v5, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@9
    monitor-enter v5

    #@a
    .line 661
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@c
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    #@12
    .line 662
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_1

    #@14
    .line 663
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@16
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v7, "device does not exist: "

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 660
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_0
    move-exception v4

    #@2f
    monitor-exit v5

    #@30
    throw v4

    #@31
    .line 665
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@34
    move-result v4

    #@35
    invoke-virtual {v1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    #@38
    move-result v4

    #@39
    if-nez v4, :cond_2

    #@3b
    .line 666
    new-instance v4, Ljava/lang/SecurityException;

    #@3d
    const-string/jumbo v6, "Attempt to open private device with wrong UID"

    #@40
    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@43
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    :cond_2
    monitor-exit v5

    #@45
    .line 671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@48
    move-result-wide v2

    #@49
    .line 673
    .local v2, "identity":J
    :try_start_2
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    .line 675
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 655
    return-void

    #@50
    .line 674
    :catchall_1
    move-exception v4

    #@51
    .line 675
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    .line 674
    throw v4
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;
    .locals 13
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "type"    # I

    #@0
    .prologue
    .line 715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v11

    #@4
    .line 716
    .local v11, "uid":I
    const/4 v1, 0x1

    #@5
    move/from16 v0, p7

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/16 v1, 0x3e8

    #@b
    if-eq v11, v1, :cond_0

    #@d
    .line 717
    new-instance v1, Ljava/lang/SecurityException;

    #@f
    const-string/jumbo v2, "only system can create USB devices"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 718
    :cond_0
    const/4 v1, 0x3

    #@17
    move/from16 v0, p7

    #@19
    if-ne v0, v1, :cond_1

    #@1b
    iget v1, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    #@1d
    if-eq v11, v1, :cond_1

    #@1f
    .line 719
    new-instance v1, Ljava/lang/SecurityException;

    #@21
    const-string/jumbo v2, "only MidiBluetoothService can create Bluetooth devices"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 722
    :cond_1
    iget-object v12, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@2a
    monitor-enter v12

    #@2b
    .line 724
    const/4 v9, 0x0

    #@2c
    const/4 v10, 0x0

    #@2d
    move-object v1, p0

    #@2e
    move/from16 v2, p7

    #@30
    move v3, p2

    #@31
    move/from16 v4, p3

    #@33
    move-object/from16 v5, p4

    #@35
    move-object/from16 v6, p5

    #@37
    move-object/from16 v7, p6

    #@39
    move-object v8, p1

    #@3a
    .line 723
    :try_start_0
    invoke-direct/range {v1 .. v11}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v1

    #@3e
    monitor-exit v12

    #@3f
    return-object v1

    #@40
    .line 722
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v12

    #@42
    throw v1
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    #@0
    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    #@3
    move-result-object v0

    #@4
    .line 604
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 605
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    #@a
    .line 607
    invoke-static {v0}, Lcom/android/server/midi/MidiService$Client;->-get0(Lcom/android/server/midi/MidiService$Client;)I

    #@d
    move-result v1

    #@e
    invoke-direct {p0, v1, p2}, Lcom/android/server/midi/MidiService;->updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V

    #@11
    .line 602
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 4
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    #@0
    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    #@2
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    #@c
    .line 765
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_1

    #@e
    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    #@15
    move-result v2

    #@16
    if-eq v1, v2, :cond_0

    #@18
    .line 767
    new-instance v1, Ljava/lang/SecurityException;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "setDeviceStatus() caller UID "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 768
    const-string/jumbo v3, " does not match device\'s UID "

    #@31
    .line 767
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 768
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    #@38
    move-result v3

    #@39
    .line 767
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 770
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    #@48
    .line 771
    invoke-direct {p0, v0, p2}, Lcom/android/server/midi/MidiService;->notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    #@4b
    .line 763
    :cond_1
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .locals 4
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    #@0
    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    #@5
    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    #@f
    .line 732
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_0

    #@11
    .line 733
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v2

    #@15
    .line 729
    return-void

    #@16
    .line 730
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    #@0
    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    #@3
    move-result-object v0

    #@4
    .line 613
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 614
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    #@a
    .line 611
    return-void
.end method
