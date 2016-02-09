.class Lcom/android/server/policy/StatusBarController$1;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/StatusBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/StatusBarController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/StatusBarController;

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@2
    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .locals 2

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Lcom/android/server/policy/StatusBarController$1$3;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/policy/StatusBarController$1$3;-><init>(Lcom/android/server/policy/StatusBarController$1;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 87
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .locals 2

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Lcom/android/server/policy/StatusBarController$1$1;

    #@6
    invoke-direct {v1, p0}, Lcom/android/server/policy/StatusBarController$1$1;-><init>(Lcom/android/server/policy/StatusBarController$1;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 46
    return-void
.end method

.method public onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/StatusBarController;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Lcom/android/server/policy/StatusBarController$1$2;

    #@6
    invoke-direct {v1, p0, p3, p4}, Lcom/android/server/policy/StatusBarController$1$2;-><init>(Lcom/android/server/policy/StatusBarController$1;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 66
    return-void
.end method
