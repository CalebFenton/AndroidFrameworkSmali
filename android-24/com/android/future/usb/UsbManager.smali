.class public Lcom/android/future/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field private static final TAG:Ljava/lang/String; = "UsbManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/usb/IUsbManager;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Lcom/android/future/usb/UsbManager;->mContext:Landroid/content/Context;

    #@5
    .line 71
    iput-object p2, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@7
    .line 69
    return-void
.end method

.method public static getAccessory(Landroid/content/Intent;)Lcom/android/future/usb/UsbAccessory;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    const-string/jumbo v1, "accessory"

    #@4
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    #@a
    .line 96
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    #@c
    .line 97
    return-object v2

    #@d
    .line 99
    :cond_0
    new-instance v1, Lcom/android/future/usb/UsbAccessory;

    #@f
    invoke-direct {v1, v0}, Lcom/android/future/usb/UsbAccessory;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    #@12
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/future/usb/UsbManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 81
    const-string/jumbo v1, "usb"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 82
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/android/future/usb/UsbManager;

    #@9
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, p0, v2}, Lcom/android/future/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    #@10
    return-object v1
.end method


# virtual methods
.method public getAccessoryList()[Lcom/android/future/usb/UsbAccessory;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@3
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    #@6
    move-result-object v0

    #@7
    .line 112
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    #@9
    .line 113
    return-object v5

    #@a
    .line 115
    :cond_0
    const/4 v2, 0x1

    #@b
    new-array v2, v2, [Lcom/android/future/usb/UsbAccessory;

    #@d
    new-instance v3, Lcom/android/future/usb/UsbAccessory;

    #@f
    invoke-direct {v3, v0}, Lcom/android/future/usb/UsbAccessory;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    return-object v2

    #@16
    .line 117
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :catch_0
    move-exception v1

    #@17
    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "UsbManager"

    #@1a
    const-string/jumbo v3, "RemoteException in getAccessoryList"

    #@1d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 119
    return-object v5
.end method

.method public hasPermission(Lcom/android/future/usb/UsbAccessory;)Z
    .locals 9
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;

    #@0
    .prologue
    .line 152
    :try_start_0
    iget-object v8, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    #@4
    .line 153
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 154
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 155
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 152
    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    invoke-interface {v8, v0}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v0

    #@23
    return v0

    #@24
    .line 156
    :catch_0
    move-exception v7

    #@25
    .line 157
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "UsbManager"

    #@28
    const-string/jumbo v1, "RemoteException in hasPermission"

    #@2b
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 158
    const/4 v0, 0x0

    #@2f
    return v0
.end method

.method public openAccessory(Lcom/android/future/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;

    #@0
    .prologue
    .line 131
    :try_start_0
    iget-object v8, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    #@4
    .line 132
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 133
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 134
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 131
    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    invoke-interface {v8, v0}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 135
    :catch_0
    move-exception v7

    #@25
    .line 136
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "UsbManager"

    #@28
    const-string/jumbo v1, "RemoteException in openAccessory"

    #@2b
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 137
    const/4 v0, 0x0

    #@2f
    return-object v0
.end method

.method public requestPermission(Lcom/android/future/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "accessory"    # Lcom/android/future/usb/UsbAccessory;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 177
    :try_start_0
    iget-object v8, p0, Lcom/android/future/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    #@2
    new-instance v0, Landroid/hardware/usb/UsbAccessory;

    #@4
    .line 178
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 179
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 180
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {p1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 177
    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 181
    iget-object v1, p0, Lcom/android/future/usb/UsbManager;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 177
    invoke-interface {v8, v0, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 175
    :goto_0
    return-void

    #@29
    .line 182
    :catch_0
    move-exception v7

    #@2a
    .line 183
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "UsbManager"

    #@2d
    const-string/jumbo v1, "RemoteException in requestPermission"

    #@30
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    goto :goto_0
.end method
