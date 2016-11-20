.class Lcom/android/server/usage/UsageStatsService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$PackageReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$PackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$PackageReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 271
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    .line 270
    if-eqz v1, :cond_1

    #@16
    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$PackageReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@18
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->clearCarrierPrivilegedApps()V

    #@1b
    .line 274
    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@1e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    .line 275
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    .line 274
    if-eqz v1, :cond_3

    #@2d
    .line 276
    :cond_2
    const-string/jumbo v1, "android.intent.extra.REPLACING"

    #@30
    const/4 v2, 0x0

    #@31
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_4

    #@37
    .line 268
    :cond_3
    :goto_0
    return-void

    #@38
    .line 277
    :cond_4
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$PackageReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    #@3a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 278
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$PackageReceiver;->getSendingUserId()I

    #@45
    move-result v3

    #@46
    .line 277
    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->clearAppIdleForPackage(Ljava/lang/String;I)V

    #@49
    goto :goto_0
.end method
