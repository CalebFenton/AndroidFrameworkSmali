.class Lcom/android/server/usb/MtpNotificationManager;
.super Ljava/lang/Object;
.source "MtpNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;,
        Lcom/android/server/usb/MtpNotificationManager$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_OPEN_IN_APPS:Ljava/lang/String; = "com.android.server.usb.ACTION_OPEN_IN_APPS"

.field private static final PROTOCOL_MTP:I = 0x0

.field private static final PROTOCOL_PTP:I = 0x1

.field private static final SUBCLASS_MTP:I = 0xff

.field private static final SUBCLASS_STILL_IMAGE_CAPTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbMtpNotificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    #@5
    .line 68
    iput-object p2, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    #@7
    .line 69
    new-instance v0, Lcom/android/server/usb/MtpNotificationManager$Receiver;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager$Receiver;)V

    #@d
    .line 70
    .local v0, "receiver":Lcom/android/server/usb/MtpNotificationManager$Receiver;
    new-instance v1, Landroid/content/IntentFilter;

    #@f
    const-string/jumbo v2, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    #@12
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@18
    .line 66
    return-void
.end method

.method private static isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 7
    .param p0, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    const/16 v6, 0xff

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 132
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    #@8
    move-result v2

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 133
    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    #@e
    move-result-object v1

    #@f
    .line 134
    .local v1, "usbInterface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    #@12
    move-result v2

    #@13
    const/4 v3, 0x6

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 135
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    #@19
    move-result v2

    #@1a
    if-ne v2, v4, :cond_0

    #@1c
    .line 136
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    #@1f
    move-result v2

    #@20
    if-ne v2, v4, :cond_0

    #@22
    .line 137
    return v4

    #@23
    .line 139
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    #@26
    move-result v2

    #@27
    if-ne v2, v6, :cond_1

    #@29
    .line 140
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    #@2c
    move-result v2

    #@2d
    if-ne v2, v6, :cond_1

    #@2f
    .line 141
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_1

    #@35
    .line 142
    const-string/jumbo v2, "MTP"

    #@38
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v2

    #@40
    .line 139
    if-eqz v2, :cond_1

    #@42
    .line 143
    return v4

    #@43
    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_0

    #@46
    .line 146
    .end local v1    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_2
    return v5
.end method

.method static shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 127
    const-string/jumbo v0, "android.hardware.type.automotive"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 128
    invoke-static {p1}, Lcom/android/server/usb/MtpNotificationManager;->isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z

    #@c
    move-result v0

    #@d
    .line 127
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method


# virtual methods
.method hideNotification(I)V
    .locals 2
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    #@2
    const-class v1, Landroid/app/NotificationManager;

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/app/NotificationManager;

    #@a
    const-string/jumbo v1, "UsbMtpNotificationManager"

    #@d
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@10
    .line 105
    return-void
.end method

.method showNotification(Landroid/hardware/usb/UsbDevice;)V
    .locals 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 74
    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v5

    #@6
    .line 75
    .local v5, "resources":Landroid/content/res/Resources;
    const/4 v7, 0x1

    #@7
    new-array v7, v7, [Ljava/lang/Object;

    #@9
    .line 77
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@c
    move-result-object v8

    #@d
    const/4 v9, 0x0

    #@e
    aput-object v8, v7, v9

    #@10
    .line 76
    const v8, 0x10405f2

    #@13
    .line 75
    invoke-virtual {v5, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    .line 79
    .local v6, "title":Ljava/lang/String;
    const v7, 0x10405f3

    #@1a
    .line 78
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 80
    .local v1, "description":Ljava/lang/String;
    new-instance v7, Landroid/app/Notification$Builder;

    #@20
    iget-object v8, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    #@22
    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@25
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@2c
    move-result-object v7

    #@2d
    .line 83
    const v8, 0x10806f6

    #@30
    .line 80
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@33
    move-result-object v7

    #@34
    .line 84
    const-string/jumbo v8, "sys"

    #@37
    .line 80
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@3a
    move-result-object v0

    #@3b
    .line 86
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v2, Landroid/content/Intent;

    #@3d
    const-string/jumbo v7, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    #@40
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@43
    .line 87
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "device"

    #@46
    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@49
    .line 88
    const/high16 v7, 0x50000000

    #@4b
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@4e
    .line 91
    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    #@50
    .line 92
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    #@53
    move-result v8

    #@54
    .line 95
    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@56
    .line 94
    const/high16 v10, 0x8000000

    #@58
    .line 90
    invoke-static {v7, v8, v2, v10, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@5b
    move-result-object v4

    #@5c
    .line 96
    .local v4, "openIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@5f
    .line 98
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@62
    move-result-object v3

    #@63
    .line 99
    .local v3, "notification":Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    #@65
    or-int/lit16 v7, v7, 0x100

    #@67
    iput v7, v3, Landroid/app/Notification;->flags:I

    #@69
    .line 101
    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    #@6b
    const-class v8, Landroid/app/NotificationManager;

    #@6d
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@70
    move-result-object v7

    #@71
    check-cast v7, Landroid/app/NotificationManager;

    #@73
    .line 102
    const-string/jumbo v8, "UsbMtpNotificationManager"

    #@76
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    #@79
    move-result v9

    #@7a
    .line 101
    invoke-virtual {v7, v8, v9, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@7d
    .line 73
    return-void
.end method
