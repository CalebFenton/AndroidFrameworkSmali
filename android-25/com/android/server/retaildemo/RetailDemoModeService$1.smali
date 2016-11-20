.class Lcom/android/server/retaildemo/RetailDemoModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/retaildemo/RetailDemoModeService;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$1;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 138
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$1;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@3
    iget-boolean v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 139
    return-void

    #@8
    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 143
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$1;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@17
    iget-object v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@19
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@1c
    .line 144
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$1;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@1e
    iget-object v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@20
    const-wide/16 v2, 0x9c4

    #@22
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@25
    .line 137
    :cond_1
    :goto_0
    return-void

    #@26
    .line 141
    :cond_2
    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 147
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$1;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    #@31
    iget-object v0, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@33
    const/4 v1, 0x2

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@37
    goto :goto_0
.end method
