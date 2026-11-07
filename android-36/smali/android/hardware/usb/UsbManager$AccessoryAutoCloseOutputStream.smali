.class Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;
.super Ljava/io/FileOutputStream;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessoryAutoCloseOutputStream"
.end annotation


# instance fields
.field private final blacklist mAccessory:Landroid/hardware/usb/UsbAccessory;

.field final synthetic blacklist this$0:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 998
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->this$0:Landroid/hardware/usb/UsbManager;

    .line 999
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1000
    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1001
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1008
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->this$0:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->-$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V

    .line 1009
    return-void
.end method
