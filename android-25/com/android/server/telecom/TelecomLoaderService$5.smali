.class Lcom/android/server/telecom/TelecomLoaderService$5;
.super Landroid/content/BroadcastReceiver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p2, "val$packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;

    #@0
    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@2
    iput-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    const-string/jumbo v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 319
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@14
    move-result-object v2

    #@15
    const/4 v1, 0x0

    #@16
    array-length v3, v2

    #@17
    :goto_0
    if-ge v1, v3, :cond_0

    #@19
    aget v0, v2, v1

    #@1b
    .line 320
    .local v0, "userId":I
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    #@1d
    iget-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService$5;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    #@1f
    invoke-static {v4, v5, v0}, Lcom/android/server/telecom/TelecomLoaderService;->-wrap1(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V

    #@22
    .line 319
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 317
    .end local v0    # "userId":I
    :cond_0
    return-void
.end method
