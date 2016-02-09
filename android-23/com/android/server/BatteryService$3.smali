.class Lcom/android/server/BatteryService$3;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 264
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 265
    new-instance v0, Landroid/content/Intent;

    #@8
    const-string/jumbo v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    #@b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.KEY_CONFIRM"

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@15
    .line 267
    const/high16 v1, 0x10000000

    #@17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@1a
    .line 268
    iget-object v1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    #@1c
    invoke-static {v1}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@22
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@25
    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
