.class Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;
.super Ljava/io/FileInputStream;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessoryAutoCloseInputStream"
.end annotation


# instance fields
.field private final blacklist mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;

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

    .line 947
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->this$0:Landroid/hardware/usb/UsbManager;

    .line 948
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 949
    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 950
    iput-object p3, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 951
    return-void
.end method

.method private blacklist checkError(I)V
    .registers 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 985
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 987
    :cond_10
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

    .line 957
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    .line 958
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->this$0:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->-$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V

    .line 959
    return-void
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 964
    invoke-super {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 965
    .local v0, "result":I
    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->checkError(I)V

    .line 966
    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    invoke-super {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 972
    .local v0, "result":I
    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->checkError(I)V

    .line 973
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 978
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 979
    .local v0, "result":I
    invoke-direct {p0, v0}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->checkError(I)V

    .line 980
    return v0
.end method
