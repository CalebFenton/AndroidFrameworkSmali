.class Lcom/android/server/usb/UsbPortManager$3;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbPortManager;
    .param p2, "val$intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$3;->this$0:Lcom/android/server/usb/UsbPortManager;

    #@2
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$3;->val$intent:Landroid/content/Intent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$3;->this$0:Lcom/android/server/usb/UsbPortManager;

    #@2
    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->-get0(Lcom/android/server/usb/UsbPortManager;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$3;->val$intent:Landroid/content/Intent;

    #@8
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@d
    .line 559
    return-void
.end method
