.class Lcom/android/server/GestureLauncherService$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 313
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 314
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    #@f
    const-string/jumbo v1, "android.intent.extra.user_handle"

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@16
    move-result v1

    #@17
    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->-set4(Lcom/android/server/GestureLauncherService;I)I

    #@1a
    .line 315
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    #@1c
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get6(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    #@26
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get8(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@2d
    .line 316
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    #@2f
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-wrap1(Lcom/android/server/GestureLauncherService;)V

    #@32
    .line 317
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    #@34
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-wrap3(Lcom/android/server/GestureLauncherService;)V

    #@37
    .line 318
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$1;->this$0:Lcom/android/server/GestureLauncherService;

    #@39
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-wrap2(Lcom/android/server/GestureLauncherService;)V

    #@3c
    .line 312
    :cond_0
    return-void
.end method
