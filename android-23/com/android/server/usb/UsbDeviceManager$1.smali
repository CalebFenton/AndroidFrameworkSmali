.class Lcom/android/server/usb/UsbDeviceManager$1;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    #@0
    .prologue
    .line 167
    const-string/jumbo v2, "USB_STATE"

    #@3
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 168
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "ACCESSORY"

    #@a
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 169
    .local v0, "accessory":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@10
    .line 170
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@12
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    #@19
    .line 164
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 171
    :cond_1
    const-string/jumbo v2, "START"

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 173
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@25
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-wrap2(Lcom/android/server/usb/UsbDeviceManager;)V

    #@28
    goto :goto_0
.end method
