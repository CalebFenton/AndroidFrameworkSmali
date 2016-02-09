.class Lcom/android/server/wm/WindowManagerService$2;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 842
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    #@6
    move-result-object v0

    #@7
    .line 843
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_0

    #@9
    .line 844
    return-void

    #@a
    .line 846
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 848
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@12
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@14
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    .line 851
    :goto_0
    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    #@19
    .line 841
    :cond_1
    :goto_1
    return-void

    #@1a
    .line 853
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    #@1d
    .line 854
    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 855
    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    #@23
    .line 857
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@25
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    #@27
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    #@29
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    goto :goto_1

    #@2d
    .line 858
    :catch_0
    move-exception v1

    #@2e
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@2f
    .line 849
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@30
    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
