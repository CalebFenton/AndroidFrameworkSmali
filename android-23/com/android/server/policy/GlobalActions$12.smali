.class Lcom/android/server/policy/GlobalActions$12;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I

    #@0
    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$12;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    #@5
    .line 494
    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 3

    #@0
    .prologue
    .line 498
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$12;->this$0:Lcom/android/server/policy/GlobalActions;

    #@4
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@b
    const/4 v2, -0x1

    #@c
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    #@f
    .line 500
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 497
    :goto_0
    return-void

    #@18
    .line 501
    :catch_0
    move-exception v0

    #@19
    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "GlobalActions"

    #@1c
    const-string/jumbo v2, "Error while trying to lock device."

    #@1f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 513
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 508
    const/4 v0, 0x1

    #@1
    return v0
.end method
