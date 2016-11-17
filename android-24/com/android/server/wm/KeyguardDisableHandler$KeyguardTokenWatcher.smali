.class Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyguardTokenWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/KeyguardDisableHandler;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #@2
    .line 93
    invoke-static {}, Lcom/android/server/wm/KeyguardDisableHandler;->-get0()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p2, v0}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    #@9
    .line 92
    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 2

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #@2
    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->-get1(Lcom/android/server/wm/KeyguardDisableHandler;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->updateAllowState()V

    #@c
    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #@e
    invoke-static {v0}, Lcom/android/server/wm/KeyguardDisableHandler;->-get1(Lcom/android/server/wm/KeyguardDisableHandler;)I

    #@11
    move-result v0

    #@12
    const/4 v1, 0x1

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #@17
    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    #@1d
    .line 114
    :goto_0
    return-void

    #@1e
    .line 121
    :cond_1
    invoke-static {}, Lcom/android/server/wm/KeyguardDisableHandler;->-get0()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v1, "Not disabling keyguard since device policy is enforced"

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    goto :goto_0
.end method

.method public released()V
    .locals 2

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    #@8
    .line 126
    return-void
.end method

.method public updateAllowState()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 99
    iget-object v3, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #@3
    iget-object v3, v3, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    #@5
    .line 100
    const-string/jumbo v4, "device_policy"

    #@8
    .line 99
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    #@e
    .line 101
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    #@10
    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    #@12
    .line 104
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@19
    move-result-object v4

    #@1a
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    #@1c
    .line 103
    const/4 v5, 0x0

    #@1d
    invoke-virtual {v0, v5, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_0

    #@23
    .line 106
    const/4 v2, 0x1

    #@24
    .line 103
    :cond_0
    invoke-static {v3, v2}, Lcom/android/server/wm/KeyguardDisableHandler;->-set0(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 96
    :cond_1
    :goto_0
    return-void

    #@28
    .line 107
    :catch_0
    move-exception v1

    #@29
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
