.class public final Lcom/android/server/usb/UsbAudioDevice;
.super Ljava/lang/Object;
.source "UsbAudioDevice.java"


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbAudioDevice"

.field public static final kAudioDeviceClassMask:I = 0xffffff

.field public static final kAudioDeviceClass_External:I = 0x2

.field public static final kAudioDeviceClass_Internal:I = 0x1

.field public static final kAudioDeviceClass_Undefined:I = 0x0

.field public static final kAudioDeviceMetaMask:I = -0x1000000

.field public static final kAudioDeviceMeta_Alsa:I = -0x80000000


# instance fields
.field public mCard:I

.field public mDevice:I

.field public mDeviceClass:I

.field public mDeviceDescription:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mHasCapture:Z

.field public mHasPlayback:Z


# direct methods
.method public constructor <init>(IIZZI)V
    .locals 1
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "hasPlayback"    # Z
    .param p4, "hasCapture"    # Z
    .param p5, "deviceClass"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    #@8
    .line 40
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceDescription:Ljava/lang/String;

    #@d
    .line 44
    iput p1, p0, Lcom/android/server/usb/UsbAudioDevice;->mCard:I

    #@f
    .line 45
    iput p2, p0, Lcom/android/server/usb/UsbAudioDevice;->mDevice:I

    #@11
    .line 46
    iput-boolean p3, p0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    #@13
    .line 47
    iput-boolean p4, p0, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    #@15
    .line 48
    iput p5, p0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceClass:I

    #@17
    .line 43
    return-void
.end method


# virtual methods
.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[card:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/usb/UsbAudioDevice;->mCard:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " device:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/server/usb/UsbAudioDevice;->mDevice:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UsbAudioDevice: [card: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Lcom/android/server/usb/UsbAudioDevice;->mCard:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 54
    const-string/jumbo v1, ", device: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lcom/android/server/usb/UsbAudioDevice;->mDevice:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 55
    const-string/jumbo v1, ", name: "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 56
    const-string/jumbo v1, ", hasPlayback: "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    .line 57
    const-string/jumbo v1, ", hasCapture: "

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    .line 58
    const-string/jumbo v1, ", class: 0x"

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    iget v2, p0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceClass:I

    #@4a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    const-string/jumbo v2, "]"

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    return-object v1
.end method
