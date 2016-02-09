.class Lcom/android/server/policy/PhoneWindowManager$15;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$awakenFromDreams"    # Z

    #@0
    .prologue
    .line 3262
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$15;->val$awakenFromDreams:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 4
    .param p1, "success"    # Z

    #@0
    .prologue
    .line 3265
    if-eqz p1, :cond_0

    #@2
    .line 3267
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 3270
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@b
    const-string/jumbo v2, "homekey"

    #@e
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    #@11
    .line 3271
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@13
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$15;->val$awakenFromDreams:Z

    #@15
    const/4 v3, 0x1

    #@16
    invoke-virtual {v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    #@19
    .line 3264
    :cond_0
    return-void

    #@1a
    .line 3268
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
