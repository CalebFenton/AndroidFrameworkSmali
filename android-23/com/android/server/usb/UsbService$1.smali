.class Lcom/android/server/usb/UsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbService;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 135
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@3
    const/4 v3, -0x1

    #@4
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v1

    #@8
    .line 136
    .local v1, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 137
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    #@f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 138
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #@17
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbService;->-wrap0(Lcom/android/server/usb/UsbService;I)V

    #@1a
    .line 134
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 139
    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 140
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #@26
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get1(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    monitor-enter v3

    #@2b
    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #@2d
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get2(Lcom/android/server/usb/UsbService;)Landroid/util/SparseArray;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    monitor-exit v3

    #@35
    goto :goto_0

    #@36
    .line 140
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2

    #@39
    .line 143
    :cond_2
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    #@3c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_0

    #@42
    .line 145
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #@44
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    #@47
    move-result-object v2

    #@48
    if-eqz v2, :cond_0

    #@4a
    .line 146
    iget-object v2, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #@4c
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->-get0(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->updateUserRestrictions()V

    #@53
    goto :goto_0
.end method
