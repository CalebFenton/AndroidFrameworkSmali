.class Lcom/android/server/policy/PhoneWindowManager$13;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 5419
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 5422
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    #@4
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    .line 5423
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@b
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    monitor-exit v1

    #@12
    .line 5425
    return-void

    #@13
    .line 5427
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@18
    move-result-wide v2

    #@19
    invoke-static {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-set0(Lcom/android/server/policy/PhoneWindowManager;J)J

    #@1c
    .line 5428
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@1e
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get3(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Lcom/android/server/policy/BarController;->showTransient()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 5421
    return-void

    #@27
    .line 5422
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method
