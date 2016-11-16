.class Lcom/android/server/pm/UserManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 347
    const-string/jumbo v0, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    #@4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 348
    const-string/jumbo v0, "android.intent.extra.INTENT"

    #@11
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/content/IntentSender;

    #@17
    .line 349
    .local v1, "target":Landroid/content/IntentSender;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    #@1a
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1d
    move-result v7

    #@1e
    .line 350
    .local v7, "userHandle":I
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    #@20
    invoke-virtual {v0, v7, v3}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZ)V

    #@23
    .line 351
    if-eqz v1, :cond_0

    #@25
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    #@27
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    #@2a
    move-result-object v0

    #@2b
    const/4 v2, 0x0

    #@2c
    const/4 v3, 0x0

    #@2d
    const/4 v4, 0x0

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 346
    .end local v1    # "target":Landroid/content/IntentSender;
    .end local v7    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    #@33
    .line 354
    .restart local v1    # "target":Landroid/content/IntentSender;
    .restart local v7    # "userHandle":I
    :catch_0
    move-exception v6

    #@34
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method
