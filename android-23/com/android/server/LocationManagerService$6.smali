.class Lcom/android/server/LocationManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    #@0
    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/server/LocationManagerService$6;->this$0:Lcom/android/server/LocationManagerService;

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
    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 315
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 316
    iget-object v1, p0, Lcom/android/server/LocationManagerService$6;->this$0:Lcom/android/server/LocationManagerService;

    #@f
    const-string/jumbo v2, "android.intent.extra.user_handle"

    #@12
    const/4 v3, 0x0

    #@13
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v2

    #@17
    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService;->-wrap6(Lcom/android/server/LocationManagerService;I)V

    #@1a
    .line 313
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 317
    :cond_1
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    .line 318
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 317
    if-eqz v1, :cond_0

    #@2d
    .line 319
    :cond_2
    iget-object v1, p0, Lcom/android/server/LocationManagerService$6;->this$0:Lcom/android/server/LocationManagerService;

    #@2f
    iget-object v2, p0, Lcom/android/server/LocationManagerService$6;->this$0:Lcom/android/server/LocationManagerService;

    #@31
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)I

    #@34
    move-result v2

    #@35
    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    #@38
    goto :goto_0
.end method
