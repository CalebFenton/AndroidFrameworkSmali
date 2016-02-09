.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

.field private mNewConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mNewDevice:Landroid/hardware/usb/UsbDevice;

.field private mNewEndpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mNewInterface:Landroid/hardware/usb/UsbInterface;

.field private mNewInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    #@8
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@a
    .line 52
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@11
    .line 67
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    #@13
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v0

    #@17
    .line 69
    const v1, 0x107001a

    #@1a
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    #@20
    .line 70
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@22
    .line 66
    return-void
.end method

.method private addUsbConfiguration(ILjava/lang/String;II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # I
    .param p4, "maxPower"    # I

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 173
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    #@6
    .line 174
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@8
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    new-array v2, v2, [Landroid/hardware/usb/UsbInterface;

    #@10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Landroid/os/Parcelable;

    #@16
    .line 173
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    #@19
    .line 175
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1e
    .line 178
    :cond_0
    new-instance v0, Landroid/hardware/usb/UsbConfiguration;

    #@20
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    #@23
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    #@25
    .line 179
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    #@27
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    #@29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 171
    return-void
.end method

.method private addUsbEndpoint(IIII)V
    .locals 2
    .param p1, "address"    # I
    .param p2, "attributes"    # I
    .param p3, "maxPacketSize"    # I
    .param p4, "interval"    # I

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    #@2
    new-instance v1, Landroid/hardware/usb/UsbEndpoint;

    #@4
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 200
    return-void
.end method

.method private addUsbInterface(ILjava/lang/String;IIII)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "altSetting"    # I
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 188
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    #@6
    .line 189
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    #@8
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    #@10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Landroid/os/Parcelable;

    #@16
    .line 188
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    #@19
    .line 190
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1e
    .line 193
    :cond_0
    new-instance v0, Landroid/hardware/usb/UsbInterface;

    #@20
    move v1, p1

    #@21
    move v2, p3

    #@22
    move-object v3, p2

    #@23
    move v4, p4

    #@24
    move v5, p5

    #@25
    move v6, p6

    #@26
    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    #@29
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    #@2b
    .line 194
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@2d
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    #@2f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 186
    return-void
.end method

.method private beginUsbDeviceAdded(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 15
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorID"    # I
    .param p3, "productID"    # I
    .param p4, "deviceClass"    # I
    .param p5, "deviceSubclass"    # I
    .param p6, "deviceProtocol"    # I
    .param p7, "manufacturerName"    # Ljava/lang/String;
    .param p8, "productName"    # Ljava/lang/String;
    .param p9, "version"    # I
    .param p10, "serialNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 138
    move/from16 v0, p4

    #@8
    move/from16 v1, p5

    #@a
    move/from16 v2, p6

    #@c
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    #@f
    move-result v3

    #@10
    .line 137
    if-eqz v3, :cond_1

    #@12
    .line 139
    :cond_0
    const/4 v3, 0x0

    #@13
    return v3

    #@14
    .line 142
    :cond_1
    iget-object v14, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@16
    monitor-enter v14

    #@17
    .line 143
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@19
    move-object/from16 v0, p1

    #@1b
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 144
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "device already on mDevices list: "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 145
    const/4 v3, 0x0

    #@3d
    monitor-exit v14

    #@3e
    return v3

    #@3f
    .line 148
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@41
    if-eqz v3, :cond_3

    #@43
    .line 149
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    #@45
    const-string/jumbo v4, "mNewDevice is not null in endUsbDeviceAdded"

    #@48
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 150
    const/4 v3, 0x0

    #@4c
    monitor-exit v14

    #@4d
    return v3

    #@4e
    .line 154
    :cond_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    shr-int/lit8 v4, p9, 0x8

    #@55
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    const-string/jumbo v4, "."

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    move/from16 v0, p9

    #@66
    and-int/lit16 v4, v0, 0xff

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v12

    #@70
    .line 156
    .local v12, "versionString":Ljava/lang/String;
    new-instance v3, Landroid/hardware/usb/UsbDevice;

    #@72
    move-object/from16 v4, p1

    #@74
    move/from16 v5, p2

    #@76
    move/from16 v6, p3

    #@78
    move/from16 v7, p4

    #@7a
    move/from16 v8, p5

    #@7c
    move/from16 v9, p6

    #@7e
    move-object/from16 v10, p7

    #@80
    move-object/from16 v11, p8

    #@82
    move-object/from16 v13, p10

    #@84
    invoke-direct/range {v3 .. v13}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@87
    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@89
    .line 160
    new-instance v3, Ljava/util/ArrayList;

    #@8b
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8e
    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    #@90
    .line 161
    new-instance v3, Ljava/util/ArrayList;

    #@92
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@95
    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@97
    .line 162
    new-instance v3, Ljava/util/ArrayList;

    #@99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@9c
    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9e
    monitor-exit v14

    #@9f
    .line 165
    const/4 v3, 0x1

    #@a0
    return v3

    #@a1
    .line 142
    .end local v12    # "versionString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@a2
    monitor-exit v14

    #@a3
    throw v3
.end method

.method private endUsbDeviceAdded()V
    .locals 4

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 210
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    #@6
    .line 211
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    #@8
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    #@10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Landroid/os/Parcelable;

    #@16
    .line 210
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    #@19
    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 214
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    #@1f
    .line 215
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@21
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    new-array v2, v2, [Landroid/hardware/usb/UsbInterface;

    #@29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, [Landroid/os/Parcelable;

    #@2f
    .line 214
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    #@32
    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@34
    monitor-enter v1

    #@35
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 221
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@3b
    .line 222
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    #@3d
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v3

    #@43
    new-array v3, v3, [Landroid/hardware/usb/UsbConfiguration;

    #@45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, [Landroid/os/Parcelable;

    #@4b
    .line 221
    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->setConfigurations([Landroid/os/Parcelable;)V

    #@4e
    .line 223
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@50
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@52
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@58
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 224
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    #@5d
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v3, "Added device "

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 225
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    #@79
    move-result-object v0

    #@7a
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@7c
    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    #@7f
    .line 226
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@81
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@83
    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Landroid/hardware/usb/UsbDevice;)V

    #@86
    .line 230
    :goto_0
    const/4 v0, 0x0

    #@87
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    #@89
    .line 231
    const/4 v0, 0x0

    #@8a
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    #@8c
    .line 232
    const/4 v0, 0x0

    #@8d
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    #@8f
    .line 233
    const/4 v0, 0x0

    #@90
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    #@92
    .line 234
    const/4 v0, 0x0

    #@93
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    #@95
    .line 235
    const/4 v0, 0x0

    #@96
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@98
    monitor-exit v1

    #@99
    .line 205
    return-void

    #@9a
    .line 228
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    #@9c
    const-string/jumbo v2, "mNewDevice is null in endUsbDeviceAdded"

    #@9f
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a2
    goto :goto_0

    #@a3
    .line 219
    :catchall_0
    move-exception v0

    #@a4
    monitor-exit v1

    #@a5
    throw v0
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 80
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method private isBlackListed(III)Z
    .locals 2
    .param p1, "clazz"    # I
    .param p2, "subClass"    # I
    .param p3, "protocol"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 98
    const/16 v0, 0x9

    #@3
    if-ne p1, v0, :cond_0

    #@5
    return v1

    #@6
    .line 101
    :cond_0
    const/4 v0, 0x3

    #@7
    if-ne p1, v0, :cond_1

    #@9
    .line 102
    if-ne p2, v1, :cond_1

    #@b
    .line 103
    return v1

    #@c
    .line 106
    :cond_1
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    #@2
    array-length v0, v2

    #@3
    .line 87
    .local v0, "count":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@6
    .line 88
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    #@8
    aget-object v2, v2, v1

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 89
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 87
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 92
    :cond_1
    const/4 v2, 0x0

    #@16
    return v2
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    #@b
    .line 243
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_0

    #@d
    .line 244
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    #@f
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    #@12
    .line 245
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v2

    #@1a
    .line 240
    return-void

    #@1b
    .line 241
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 290
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 291
    :try_start_0
    const-string/jumbo v2, "USB Host State:"

    #@6
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 292
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@b
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/String;

    #@1f
    .line 293
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "  "

    #@27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v4, ": "

    #@32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@38
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    goto :goto_0

    #@48
    .line 290
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "name$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@49
    monitor-exit v3

    #@4a
    throw v2

    #@4b
    .restart local v1    # "name$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@4c
    .line 289
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "devices"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 265
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "name$iterator":Ljava/util/Iterator;
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
    check-cast v0, Ljava/lang/String;

    #@19
    .line 267
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/os/Parcelable;

    #@21
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 265
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "name$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .restart local v1    # "name$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@29
    .line 264
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 276
    new-instance v1, Ljava/lang/SecurityException;

    #@b
    const-string/jumbo v3, "USB device is on a restricted bus"

    #@e
    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 274
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 278
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    #@17
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    #@1d
    .line 279
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_1

    #@1f
    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "device "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, " does not exist or is restricted"

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 281
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    #@47
    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    move-result-object v1

    #@4b
    monitor-exit v2

    #@4c
    return-object v1
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 73
    return-void

    #@7
    .line 74
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public systemReady()V
    .locals 5

    #@0
    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 254
    :try_start_0
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    #@8
    .line 259
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    #@a
    const-string/jumbo v3, "UsbService host thread"

    #@d
    const/4 v4, 0x0

    #@e
    invoke-direct {v1, v4, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    #@11
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 250
    return-void

    #@16
    .line 251
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method
