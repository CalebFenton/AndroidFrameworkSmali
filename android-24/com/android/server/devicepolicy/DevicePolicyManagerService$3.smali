.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@0
    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

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
    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 368
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@6
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    #@8
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@f
    .line 369
    const v3, 0x28700e57

    #@12
    .line 368
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@15
    .line 370
    const-string/jumbo v1, "com.android.server.action.BUGREPORT_SHARING_ACCEPTED"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 371
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@20
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap10(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@23
    .line 375
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@25
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    #@27
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@29
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-get0(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/content/BroadcastReceiver;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@30
    .line 366
    return-void

    #@31
    .line 372
    :cond_1
    const-string/jumbo v1, "com.android.server.action.BUGREPORT_SHARING_DECLINED"

    #@34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 373
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@3c
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap11(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    #@3f
    goto :goto_0
.end method
