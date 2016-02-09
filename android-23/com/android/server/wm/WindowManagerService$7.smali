.class Lcom/android/server/wm/WindowManagerService$7;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$callback:Landroid/view/IOnKeyguardExitResult;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "val$callback"    # Landroid/view/IOnKeyguardExitResult;

    #@0
    .prologue
    .line 5413
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$7;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$7;->val$callback:Landroid/view/IOnKeyguardExitResult;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    #@0
    .prologue
    .line 5417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$7;->val$callback:Landroid/view/IOnKeyguardExitResult;

    #@2
    invoke-interface {v1, p1}, Landroid/view/IOnKeyguardExitResult;->onKeyguardExitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 5415
    :goto_0
    return-void

    #@6
    .line 5418
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
