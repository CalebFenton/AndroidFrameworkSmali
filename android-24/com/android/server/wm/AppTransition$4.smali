.class Lcom/android/server/wm/AppTransition$4;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;

.field final synthetic val$future:Landroid/view/IAppTransitionAnimationSpecsFuture;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/AppTransition;
    .param p2, "val$future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@0
    .prologue
    .line 1729
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@2
    iput-object p2, p0, Lcom/android/server/wm/AppTransition$4;->val$future:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 1732
    const/4 v1, 0x0

    #@1
    .line 1734
    .local v1, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->val$future:Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@3
    invoke-interface {v2}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 1738
    .end local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@9
    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->-get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    #@c
    move-result-object v2

    #@d
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@f
    monitor-enter v3

    #@10
    .line 1739
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-static {v2, v4}, Lcom/android/server/wm/AppTransition;->-set0(Lcom/android/server/wm/AppTransition;Z)Z

    #@16
    .line 1740
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@18
    .line 1741
    iget-object v4, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@1a
    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->-get3(Lcom/android/server/wm/AppTransition;)Landroid/os/IRemoteCallback;

    #@1d
    move-result-object v4

    #@1e
    .line 1742
    iget-object v5, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@20
    invoke-static {v5}, Lcom/android/server/wm/AppTransition;->-get4(Lcom/android/server/wm/AppTransition;)Z

    #@23
    move-result v5

    #@24
    .line 1741
    const/4 v6, 0x0

    #@25
    .line 1740
    invoke-virtual {v2, v1, v4, v6, v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    #@28
    .line 1743
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-static {v2, v4}, Lcom/android/server/wm/AppTransition;->-set1(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)Landroid/os/IRemoteCallback;

    #@2e
    .line 1744
    if-eqz v1, :cond_0

    #@30
    .line 1745
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@32
    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->-get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    #@35
    move-result-object v2

    #@36
    iget-object v4, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@38
    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->-get4(Lcom/android/server/wm/AppTransition;)Z

    #@3b
    move-result v4

    #@3c
    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/WindowManagerService;->prolongAnimationsFromSpecs([Landroid/view/AppTransitionAnimationSpec;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    :cond_0
    monitor-exit v3

    #@40
    .line 1748
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    #@42
    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->-get5(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    #@49
    .line 1731
    return-void

    #@4a
    .line 1735
    .restart local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :catch_0
    move-exception v0

    #@4b
    .line 1736
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/wm/AppTransition;->-get0()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    new-instance v3, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v4, "Failed to fetch app transition specs: "

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    goto :goto_0

    #@67
    .line 1738
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :catchall_0
    move-exception v2

    #@68
    monitor-exit v3

    #@69
    throw v2
.end method
