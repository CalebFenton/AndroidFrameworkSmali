.class Lcom/android/server/policy/StatusBarController$1$2;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;

.field final synthetic val$closeAnimation:Landroid/view/animation/Animation;

.field final synthetic val$openAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/StatusBarController$1;
    .param p2, "val$openAnimation"    # Landroid/view/animation/Animation;
    .param p3, "val$closeAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@2
    iput-object p2, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    #@4
    iput-object p3, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 71
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@3
    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@5
    invoke-virtual {v4}, Lcom/android/server/policy/StatusBarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@8
    move-result-object v1

    #@9
    .line 72
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@b
    .line 73
    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@d
    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@f
    iget-object v5, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$openAnimation:Landroid/view/animation/Animation;

    #@11
    .line 74
    iget-object v6, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$closeAnimation:Landroid/view/animation/Animation;

    #@13
    .line 73
    invoke-static {v4, v5, v6}, Lcom/android/server/policy/StatusBarController;->-wrap0(Lcom/android/server/policy/StatusBarController;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    #@16
    move-result-wide v2

    #@17
    .line 75
    .local v2, "startTime":J
    const-wide/16 v4, 0x78

    #@19
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->appTransitionStarting(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 69
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    return-void

    #@1d
    .line 77
    :catch_0
    move-exception v0

    #@1e
    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@20
    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@22
    iget-object v4, v4, Lcom/android/server/policy/StatusBarController;->mTag:Ljava/lang/String;

    #@24
    const-string/jumbo v5, "RemoteException when app transition is starting"

    #@27
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 80
    iget-object v4, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    #@2c
    iget-object v4, v4, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@2e
    iput-object v7, v4, Lcom/android/server/policy/StatusBarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@30
    goto :goto_0
.end method
