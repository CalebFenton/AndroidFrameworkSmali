.class Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    .line 149
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@6
    .line 148
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 153
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 154
    const-string/jumbo v2, "adb_enabled"

    #@a
    .line 153
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-lez v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    .line 155
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@13
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x1

    #@18
    invoke-virtual {v1, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    #@1b
    .line 152
    return-void

    #@1c
    .line 153
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "enable":Z
    goto :goto_0
.end method
