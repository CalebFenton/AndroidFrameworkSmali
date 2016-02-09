.class Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InteractiveStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 2426
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    .line 2427
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@a
    .line 2428
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@d
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@10
    .line 2429
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@16
    .line 2430
    const/16 v1, 0x3e8

    #@18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    #@1b
    .line 2431
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@22
    .line 2426
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 2437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #@7
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    #@a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService;->interactiveStateChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 2435
    return-void

    #@17
    .line 2436
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method
