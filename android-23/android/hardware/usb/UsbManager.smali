.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final ACTION_USB_PORT_CHANGED:Ljava/lang/String; = "android.hardware.usb.action.USB_PORT_CHANGED"

.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field public static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field public static final EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final EXTRA_PORT_STATUS:Ljava/lang/String; = "portStatus"

.field private static final TAG:Ljava/lang/String; = "UsbManager"

.field public static final USB_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_DATA_UNLOCKED:Ljava/lang/String; = "unlocked"

.field public static final USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final USB_FUNCTION_AUDIO_SOURCE:Ljava/lang/String; = "audio_source"

.field public static final USB_FUNCTION_MIDI:Ljava/lang/String; = "midi"

.field public static final USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final USB_FUNCTION_NONE:Ljava/lang/String; = "none"

.field public static final USB_FUNCTION_PTP:Ljava/lang/String; = "ptp"

.field public static final USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/usb/IUsbManager;

    #@0
    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 280
    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    #@5
    .line 281
    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@7
    .line 279
    return-void
.end method

.method public static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    .line 595
    const-string/jumbo v0, "none"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 596
    return-object p1

    #@a
    .line 598
    :cond_0
    invoke-static {p0, p1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2

    #@10
    .line 599
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    if-lez v0, :cond_1

    #@16
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ","

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p0

    #@2a
    .line 602
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p0

    #@3b
    .line 604
    :cond_2
    return-object p0
.end method

.method public static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    const/4 v3, 0x0

    #@3
    .line 633
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v1

    #@7
    .line 634
    .local v1, "index":I
    if-gez v1, :cond_0

    #@9
    return v3

    #@a
    .line 635
    :cond_0
    if-lez v1, :cond_1

    #@c
    add-int/lit8 v2, v1, -0x1

    #@e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v2

    #@12
    if-eq v2, v4, :cond_1

    #@14
    return v3

    #@15
    .line 636
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@18
    move-result v2

    #@19
    add-int v0, v1, v2

    #@1b
    .line 637
    .local v0, "charAfter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1e
    move-result v2

    #@1f
    if-ge v0, v2, :cond_2

    #@21
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v2

    #@25
    if-eq v2, v4, :cond_2

    #@27
    return v3

    #@28
    .line 638
    :cond_2
    const/4 v2, 0x1

    #@29
    return v2
.end method

.method public static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 609
    const-string/jumbo v4, ","

    #@5
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 610
    .local v3, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@b
    if-ge v1, v4, :cond_1

    #@d
    .line 611
    aget-object v4, v3, v1

    #@f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 612
    aput-object v5, v3, v1

    #@17
    .line 610
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 615
    :cond_1
    array-length v4, v3

    #@1b
    const/4 v5, 0x1

    #@1c
    if-ne v4, v5, :cond_2

    #@1e
    aget-object v4, v3, v6

    #@20
    if-nez v4, :cond_2

    #@22
    .line 616
    const-string/jumbo v4, "none"

    #@25
    return-object v4

    #@26
    .line 618
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    .line 619
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@2c
    :goto_1
    array-length v4, v3

    #@2d
    if-ge v1, v4, :cond_5

    #@2f
    .line 620
    aget-object v2, v3, v1

    #@31
    .line 621
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@33
    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@36
    move-result v4

    #@37
    if-lez v4, :cond_3

    #@39
    .line 623
    const-string/jumbo v4, ","

    #@3c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 625
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 619
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 628
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    return-object v4
.end method


# virtual methods
.method public getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 340
    :try_start_0
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@3
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    #@6
    move-result-object v0

    #@7
    .line 341
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    #@9
    .line 342
    return-object v4

    #@a
    .line 344
    :cond_0
    const/4 v2, 0x1

    #@b
    new-array v2, v2, [Landroid/hardware/usb/UsbAccessory;

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v0, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    return-object v2

    #@11
    .line 346
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catch_0
    move-exception v1

    #@12
    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "UsbManager"

    #@15
    const-string/jumbo v3, "RemoteException in getAccessoryList"

    #@18
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 348
    return-object v4
.end method

.method public getDeviceList()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 293
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 295
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@7
    invoke-interface {v5, v0}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    #@a
    .line 296
    new-instance v4, Ljava/util/HashMap;

    #@c
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 297
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    .local v3, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_0

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/String;

    #@23
    .line 298
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    check-cast v5, Landroid/hardware/usb/UsbDevice;

    #@29
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    goto :goto_0

    #@2d
    .line 301
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "name$iterator":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :catch_0
    move-exception v1

    #@2e
    .line 302
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "UsbManager"

    #@31
    const-string/jumbo v6, "RemoteException in getDeviceList"

    #@34
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 303
    const/4 v5, 0x0

    #@38
    return-object v5

    #@39
    .line 300
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "name$iterator":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :cond_0
    return-object v4
.end method

.method public getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;
    .locals 3
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;

    #@0
    .prologue
    .line 553
    const-string/jumbo v1, "port must not be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 556
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@8
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsbManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 557
    :catch_0
    move-exception v0

    #@12
    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@15
    const-string/jumbo v2, "RemoteException in getPortStatus"

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 560
    const/4 v1, 0x0

    #@1c
    return-object v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 3

    #@0
    .prologue
    .line 537
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    invoke-interface {v1}, Landroid/hardware/usb/IUsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 538
    :catch_0
    move-exception v0

    #@8
    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@b
    const-string/jumbo v2, "RemoteException in getPorts"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 541
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 397
    :catch_0
    move-exception v0

    #@8
    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@b
    const-string/jumbo v2, "RemoteException in hasPermission"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 399
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 379
    :catch_0
    move-exception v0

    #@8
    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@b
    const-string/jumbo v2, "RemoteException in hasPermission"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 381
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->isFunctionEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 470
    :catch_0
    move-exception v0

    #@8
    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@b
    const-string/jumbo v2, "RemoteException in setCurrentFunction"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 472
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    #@0
    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 361
    :catch_0
    move-exception v0

    #@8
    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@b
    const-string/jumbo v2, "RemoteException in openAccessory"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    .line 363
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 316
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 317
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@7
    invoke-interface {v5, v1}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object v3

    #@b
    .line 318
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_0

    #@d
    .line 319
    new-instance v0, Landroid/hardware/usb/UsbDeviceConnection;

    #@f
    invoke-direct {v0, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    #@12
    .line 320
    .local v0, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    #@15
    move-result v4

    #@16
    .line 321
    .local v4, "result":Z
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 322
    if-eqz v4, :cond_0

    #@1b
    .line 323
    return-object v0

    #@1c
    .line 326
    .end local v0    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "result":Z
    :catch_0
    move-exception v2

    #@1d
    .line 327
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UsbManager"

    #@20
    const-string/jumbo v6, "exception in UsbManager.openDevice"

    #@23
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 329
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v7
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 447
    :goto_0
    return-void

    #@c
    .line 450
    :catch_0
    move-exception v0

    #@d
    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@10
    const-string/jumbo v2, "RemoteException in requestPermission"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 423
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 421
    :goto_0
    return-void

    #@c
    .line 424
    :catch_0
    move-exception v0

    #@d
    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@10
    const-string/jumbo v2, "RemoteException in requestPermission"

    #@13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16
    goto :goto_0
.end method

.method public setCurrentFunction(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    #@0
    .prologue
    .line 500
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 498
    :goto_0
    return-void

    #@6
    .line 501
    :catch_0
    move-exception v0

    #@7
    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@a
    const-string/jumbo v2, "RemoteException in setCurrentFunction"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public setPortRoles(Landroid/hardware/usb/UsbPort;II)V
    .locals 3
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    #@0
    .prologue
    .line 583
    const-string/jumbo v1, "port must not be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 584
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    #@9
    .line 587
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v1, v2, p2, p3}, Landroid/hardware/usb/IUsbManager;->setPortRoles(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 582
    :goto_0
    return-void

    #@13
    .line 588
    :catch_0
    move-exception v0

    #@14
    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@17
    const-string/jumbo v2, "RemoteException in setPortRole"

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

.method public setUsbDataUnlocked(Z)V
    .locals 3
    .param p1, "unlocked"    # Z

    #@0
    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->setUsbDataUnlocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 514
    :goto_0
    return-void

    #@6
    .line 517
    :catch_0
    move-exception v0

    #@7
    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "UsbManager"

    #@a
    const-string/jumbo v2, "RemoteException in setUsbDataUnlocked"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method
