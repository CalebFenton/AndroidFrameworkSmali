.class Landroid/app/ForegroundServiceTypePolicy$UsbDevicePermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsbDevicePermission"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1312
    const-string v0, "USB Device"

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1313
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "allowWhileInUse"    # Z

    .line 1320
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1321
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 1322
    .local v1, "devices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1323
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 1324
    .local v3, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0, v3, p4, p3, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1325
    const/4 v2, 0x0

    return v2

    .line 1327
    .end local v3    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_2e
    goto :goto_1a

    .line 1329
    :cond_2f
    const/4 v2, -0x1

    return v2
.end method
