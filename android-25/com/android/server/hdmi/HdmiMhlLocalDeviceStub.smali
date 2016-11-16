.class final Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
.super Ljava/lang/Object;
.source "HdmiMhlLocalDeviceStub.java"


# static fields
.field private static final INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;


# instance fields
.field private final mPortId:I

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 11
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@3
    .line 12
    const v1, 0xffff

    #@6
    .line 11
    invoke-direct {v0, v1, v2, v2, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIII)V

    #@9
    sput-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@b
    .line 9
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "portId"    # I

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@5
    .line 18
    iput p2, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    #@7
    .line 16
    return-void
.end method


# virtual methods
.method getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->INFO:Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2
    return-object v0
.end method

.method getPortId()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget v0, p0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->mPortId:I

    #@2
    return v0
.end method

.method onBusOvercurrentDetected(Z)V
    .locals 0
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 31
    return-void
.end method

.method onDeviceRemoved()V
    .locals 0

    #@0
    .prologue
    .line 21
    return-void
.end method

.method sendKeyEvent(IZ)V
    .locals 0
    .param p1, "keycode"    # I
    .param p2, "isPressed"    # Z

    #@0
    .prologue
    .line 44
    return-void
.end method

.method sendStandby()V
    .locals 0

    #@0
    .prologue
    .line 47
    return-void
.end method

.method setBusMode(I)V
    .locals 0
    .param p1, "cbusmode"    # I

    #@0
    .prologue
    .line 28
    return-void
.end method

.method setDeviceStatusChange(II)V
    .locals 0
    .param p1, "adopterId"    # I
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 34
    return-void
.end method

.method turnOn(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    #@0
    .prologue
    .line 41
    return-void
.end method
