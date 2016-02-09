.class final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PortInfo"
.end annotation


# static fields
.field public static final DISPOSITION_ADDED:I = 0x0

.field public static final DISPOSITION_CHANGED:I = 0x1

.field public static final DISPOSITION_READY:I = 0x2

.field public static final DISPOSITION_REMOVED:I = 0x3


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mDisposition:I

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    #@0
    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 702
    new-instance v0, Landroid/hardware/usb/UsbPort;

    #@5
    invoke-direct {v0, p1, p2}, Landroid/hardware/usb/UsbPort;-><init>(Ljava/lang/String;I)V

    #@8
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    #@a
    .line 701
    return-void
.end method


# virtual methods
.method public setStatus(IZIZIZI)Z
    .locals 1
    .param p1, "currentMode"    # I
    .param p2, "canChangeMode"    # Z
    .param p3, "currentPowerRole"    # I
    .param p4, "canChangePowerRole"    # Z
    .param p5, "currentDataRole"    # I
    .param p6, "canChangeDataRole"    # Z
    .param p7, "supportedRoleCombinations"    # I

    #@0
    .prologue
    .line 709
    iput-boolean p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    #@2
    .line 710
    iput-boolean p4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    #@4
    .line 711
    iput-boolean p6, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    #@6
    .line 712
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 713
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@c
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    #@f
    move-result v0

    #@10
    if-eq v0, p1, :cond_1

    #@12
    .line 718
    :cond_0
    new-instance v0, Landroid/hardware/usb/UsbPortStatus;

    #@14
    invoke-direct {v0, p1, p3, p5, p7}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIII)V

    #@17
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@19
    .line 720
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 714
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@1d
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    #@20
    move-result v0

    #@21
    if-ne v0, p3, :cond_0

    #@23
    .line 715
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@25
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    #@28
    move-result v0

    #@29
    if-ne v0, p5, :cond_0

    #@2b
    .line 716
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@2d
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    #@30
    move-result v0

    #@31
    if-ne v0, p7, :cond_0

    #@33
    .line 722
    const/4 v0, 0x0

    #@34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "port="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", status="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 728
    const-string/jumbo v1, ", canChangeMode="

    #@22
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 728
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    #@28
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 729
    const-string/jumbo v1, ", canChangePowerRole="

    #@2f
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 729
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    #@35
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 730
    const-string/jumbo v1, ", canChangeDataRole="

    #@3c
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 730
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    #@42
    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method
