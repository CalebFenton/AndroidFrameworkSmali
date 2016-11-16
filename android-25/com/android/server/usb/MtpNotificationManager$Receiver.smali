.class Lcom/android/server/usb/MtpNotificationManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/MtpNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/MtpNotificationManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/MtpNotificationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/MtpNotificationManager;

    #@0
    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager$Receiver;->this$0:Lcom/android/server/usb/MtpNotificationManager;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/MtpNotificationManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "device"

    #@7
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    #@d
    .line 114
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_0

    #@f
    .line 115
    return-void

    #@10
    .line 117
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 119
    iget-object v1, p0, Lcom/android/server/usb/MtpNotificationManager$Receiver;->this$0:Lcom/android/server/usb/MtpNotificationManager;

    #@1f
    invoke-static {v1}, Lcom/android/server/usb/MtpNotificationManager;->-get0(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1, v0}, Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;->onOpenInApp(Landroid/hardware/usb/UsbDevice;)V

    #@26
    .line 111
    :cond_1
    return-void
.end method
