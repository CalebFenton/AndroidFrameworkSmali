.class public final Landroid/hardware/usb/UsbPortStatus;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPortStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/usb/UsbPortStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentDataRole:I

.field private final mCurrentMode:I

.field private final mCurrentPowerRole:I

.field private final mSupportedRoleCombinations:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 128
    new-instance v0, Landroid/hardware/usb/UsbPortStatus$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/usb/UsbPortStatus$1;-><init>()V

    #@5
    .line 127
    sput-object v0, Landroid/hardware/usb/UsbPortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "currentMode"    # I
    .param p2, "currentPowerRole"    # I
    .param p3, "currentDataRole"    # I
    .param p4, "supportedRoleCombinations"    # I

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    #@5
    .line 40
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    #@7
    .line 41
    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    #@9
    .line 42
    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    #@b
    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCurrentDataRole()I
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    #@2
    return v0
.end method

.method public getCurrentMode()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    #@2
    return v0
.end method

.method public getCurrentPowerRole()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    #@2
    return v0
.end method

.method public getSupportedRoleCombinations()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    #@2
    return v0
.end method

.method public isConnected()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 51
    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isRoleCombinationSupported(II)Z
    .locals 3
    .param p1, "powerRole"    # I
    .param p2, "dataRole"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 94
    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    #@3
    .line 95
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    #@6
    move-result v2

    #@7
    .line 94
    and-int/2addr v1, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UsbPortStatus{connected="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 106
    const-string/jumbo v1, ", currentMode="

    #@17
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 106
    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    #@1d
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 107
    const-string/jumbo v1, ", currentPowerRole="

    #@28
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 107
    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    #@2e
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 108
    const-string/jumbo v1, ", currentDataRole="

    #@39
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 108
    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    #@3f
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 109
    const-string/jumbo v1, ", supportedRoleCombinations="

    #@4a
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 110
    iget v1, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    #@50
    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->roleCombinationsToString(I)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 111
    const-string/jumbo v1, "}"

    #@5b
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 122
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 123
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 124
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 120
    return-void
.end method
