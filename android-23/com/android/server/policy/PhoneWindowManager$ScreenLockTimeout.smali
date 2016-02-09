.class Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;
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
    name = "ScreenLockTimeout"
.end annotation


# instance fields
.field options:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    #@0
    .prologue
    .line 6185
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 6190
    monitor-enter p0

    #@1
    .line 6192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 6193
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@9
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    #@b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->doKeyguardTimeout(Landroid/os/Bundle;)V

    #@10
    .line 6195
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@12
    const/4 v1, 0x0

    #@13
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    #@15
    .line 6196
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 6189
    return-void

    #@1a
    .line 6190
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method public setLockOptions(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6201
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    #@2
    .line 6200
    return-void
.end method
