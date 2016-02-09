.class final Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimulatedPortInfo"
.end annotation


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mCurrentDataRole:I

.field public mCurrentMode:I

.field public mCurrentPowerRole:I

.field public final mPortId:Ljava/lang/String;

.field public final mSupportedModes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I

    #@0
    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 749
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mPortId:Ljava/lang/String;

    #@5
    .line 750
    iput p2, p0, Lcom/android/server/usb/UsbPortManager$SimulatedPortInfo;->mSupportedModes:I

    #@7
    .line 748
    return-void
.end method
