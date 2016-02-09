.class Lcom/android/server/policy/StatusBarController$1$1;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionPendingLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/StatusBarController$1;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@3
    iget-object v2, v2, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@5
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@8
    move-result-object v1

    #@9
    .line 52
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@b
    .line 53
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->appTransitionPending()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 49
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    #@f
    .line 55
    :catch_0
    move-exception v0

    #@10
    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@12
    iget-object v2, v2, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@14
    iget-object v2, v2, Lcom/android/server/policy/StatusBarController;->mTag:Ljava/lang/String;

    #@16
    const-string/jumbo v3, "RemoteException when app transition is pending"

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 58
    iget-object v2, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@1e
    iget-object v2, v2, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@20
    iput-object v4, v2, Lcom/android/server/policy/StatusBarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@22
    goto :goto_0
.end method
