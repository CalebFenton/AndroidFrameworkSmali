.class Lcom/android/server/policy/PhoneWindowManager$12;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 5398
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

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
    const/4 v2, 0x0

    #@1
    .line 5401
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    #@4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 5406
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@10
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    #@12
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->onChange(Z)V

    #@15
    .line 5411
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@17
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@19
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    monitor-enter v1

    #@1e
    .line 5412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@20
    const/4 v2, 0x0

    #@21
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    #@23
    .line 5413
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@25
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap2(Lcom/android/server/policy/PhoneWindowManager;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 5400
    :cond_0
    return-void

    #@2a
    .line 5411
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method
