.class final Lcom/android/server/hdmi/HdmiMhlControllerStub;
.super Ljava/lang/Object;
.source "HdmiMhlControllerStub.java"


# static fields
.field private static final EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

.field private static final INVALID_DEVICE_ROLES:I

.field private static final INVALID_MHL_VERSION:I

.field private static final NO_SUPPORTED_FEATURES:I

.field private static final mLocalDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    #@7
    .line 33
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [Landroid/hardware/hdmi/HdmiPortInfo;

    #@a
    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    #@c
    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .locals 1
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 48
    new-instance v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@5
    return-object v0
.end method


# virtual methods
.method addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method clearAllLocalDevices()V
    .locals 0

    #@0
    .prologue
    .line 95
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 139
    return-void
.end method

.method getAllLocalDevices()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method getEcbusDeviceRoles(I)I
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getMhlVersion(I)I
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getPeerMhlVersion(I)I
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1

    #@0
    .prologue
    .line 52
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    #@2
    return-object v0
.end method

.method getSupportedFeatures(I)I
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isReady()Z
    .locals 1

    #@0
    .prologue
    .line 44
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 1
    .param p1, "portId"    # I

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method sendVendorCommand(III[B)V
    .locals 0
    .param p1, "portId"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    #@0
    .prologue
    .line 98
    return-void
.end method

.method setOption(II)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 101
    return-void
.end method
