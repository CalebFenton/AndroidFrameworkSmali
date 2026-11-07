.class Landroid/hardware/usb/UsbAccessory$1;
.super Landroid/hardware/usb/IUsbSerialReader$Stub;
.source "UsbAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$serialNumber:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Landroid/hardware/usb/UsbAccessory$1;->val$serialNumber:Ljava/lang/String;

    invoke-direct {p0}, Landroid/hardware/usb/IUsbSerialReader$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSerial(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Landroid/hardware/usb/UsbAccessory$1;->val$serialNumber:Ljava/lang/String;

    return-object v0
.end method
