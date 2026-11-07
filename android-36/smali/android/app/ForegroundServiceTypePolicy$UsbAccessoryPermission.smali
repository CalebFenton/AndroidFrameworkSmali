.class Landroid/app/ForegroundServiceTypePolicy$UsbAccessoryPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsbAccessoryPermission"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1338
    const-string v0, "USB Accessory"

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1339
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "allowWhileInUse"    # Z

    .line 1346
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1347
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v1

    .line 1348
    .local v1, "accessories":[Landroid/hardware/usb/UsbAccessory;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1349
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_23

    aget-object v5, v1, v4

    .line 1350
    .local v5, "accessory":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual {v0, v5, p3, p2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1351
    return v3

    .line 1349
    .end local v5    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1355
    :cond_23
    const/4 v2, -0x1

    return v2
.end method
