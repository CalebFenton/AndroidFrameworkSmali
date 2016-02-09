.class final Lcom/android/server/wm/WindowManagerService$LocalService;
.super Landroid/view/WindowManagerInternal;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 11842
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-direct {p0}, Landroid/view/WindowManagerInternal;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 11976
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->addWindowToken(Landroid/os/IBinder;I)V

    #@5
    .line 11975
    return-void
.end method

.method public getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 11864
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@5
    monitor-enter v3

    #@6
    .line 11865
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 11866
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    #@12
    monitor-exit v3

    #@13
    .line 11867
    return-object v5

    #@14
    .line 11869
    :cond_0
    const/4 v0, 0x0

    #@15
    .line 11870
    .local v0, "spec":Landroid/view/MagnificationSpec;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@17
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 11871
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1d
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1f
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    #@22
    move-result-object v0

    #@23
    .line 11873
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_1
    if-eqz v0, :cond_2

    #@25
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_3

    #@2b
    :cond_2
    iget v2, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    const/high16 v4, 0x3f800000    # 1.0f

    #@2f
    cmpl-float v2, v2, v4

    #@31
    if-nez v2, :cond_3

    #@33
    monitor-exit v3

    #@34
    .line 11874
    return-object v5

    #@35
    .line 11876
    :cond_3
    if-nez v0, :cond_4

    #@37
    :try_start_2
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    #@3a
    move-result-object v0

    #@3b
    .line 11877
    .local v0, "spec":Landroid/view/MagnificationSpec;
    :goto_0
    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    #@3d
    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    #@3f
    mul-float/2addr v2, v4

    #@40
    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    monitor-exit v3

    #@43
    .line 11878
    return-object v0

    #@44
    .line 11876
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_4
    :try_start_3
    invoke-static {v0}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@47
    move-result-object v0

    #@48
    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    goto :goto_0

    #@49
    .line 11864
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 11917
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@5
    monitor-enter v2

    #@6
    .line 11918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-wrap1(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    #@b
    move-result-object v0

    #@c
    .line 11919
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    #@e
    .line 11920
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@10
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v1

    #@14
    monitor-exit v2

    #@15
    return-object v1

    #@16
    :cond_0
    monitor-exit v2

    #@17
    .line 11922
    return-object v3

    #@18
    .line 11917
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 11938
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v2

    #@5
    .line 11939
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@f
    .line 11940
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    #@11
    .line 11941
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    #@13
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :goto_0
    monitor-exit v2

    #@17
    .line 11937
    return-void

    #@18
    .line 11943
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 11938
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public isKeyguardLocked()Z
    .locals 1

    #@0
    .prologue
    .line 11928
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@0
    .prologue
    .line 11994
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 11995
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 11993
    return-void

    #@e
    .line 11994
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public removeWindowToken(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "removeWindows"    # Z

    #@0
    .prologue
    .line 11981
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v2

    #@5
    .line 11982
    if-eqz p2, :cond_0

    #@7
    .line 11983
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/wm/WindowToken;

    #@11
    .line 11984
    .local v0, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_0

    #@13
    .line 11985
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeAllWindows()V

    #@16
    .line 11988
    .end local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@18
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v2

    #@1c
    .line 11980
    return-void

    #@1d
    .line 11981
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public requestTraversalFromDisplayManager()V
    .locals 1

    #@0
    .prologue
    .line 11845
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    #@5
    .line 11844
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/IInputFilter;

    #@0
    .prologue
    .line 11912
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    #@7
    .line 11911
    return-void
.end method

.method public setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 4
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@0
    .prologue
    .line 11884
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 11885
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 11886
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d
    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    #@f
    .line 11887
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@11
    .line 11886
    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    #@14
    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@16
    .line 11889
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@18
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    #@1d
    .line 11890
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@21
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_1

    #@27
    .line 11891
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@29
    const/4 v2, 0x0

    #@2a
    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_1
    monitor-exit v1

    #@2d
    .line 11883
    return-void

    #@2e
    .line 11884
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 11850
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 11851
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 11852
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 11857
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@16
    move-result v0

    #@17
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@1a
    move-result v1

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    .line 11858
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    #@20
    .line 11849
    :cond_0
    return-void

    #@21
    .line 11854
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@23
    const-string/jumbo v2, "Magnification callbacks not set!"

    #@26
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 11850
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    #@0
    .prologue
    .line 11898
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 11899
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 11900
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d
    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    #@f
    .line 11901
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@11
    .line 11900
    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    #@14
    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@16
    .line 11903
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@18
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@1a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    #@1d
    .line 11904
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@1f
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@21
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_1

    #@27
    .line 11905
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@29
    const/4 v2, 0x0

    #@2a
    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_1
    monitor-exit v1

    #@2d
    .line 11897
    return-void

    #@2e
    .line 11898
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public showGlobalActions()V
    .locals 1

    #@0
    .prologue
    .line 11933
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showGlobalActions()V

    #@5
    .line 11932
    return-void
.end method

.method public waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V
    .locals 10
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    #@0
    .prologue
    const/16 v9, 0x18

    #@2
    .line 11950
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@6
    monitor-enter v4

    #@7
    .line 11951
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@9
    iput-object p1, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    #@b
    .line 11952
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    #@10
    move-result-object v2

    #@11
    .line 11953
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    #@14
    move-result v3

    #@15
    add-int/lit8 v1, v3, -0x1

    #@17
    .local v1, "winNdx":I
    :goto_0
    if-ltz v1, :cond_2

    #@19
    .line 11954
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@1f
    .line 11955
    .local v0, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 11956
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@27
    if-nez v3, :cond_0

    #@29
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2b
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@2d
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2f
    invoke-interface {v3, v5}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    #@32
    move-result v3

    #@33
    .line 11955
    if-eqz v3, :cond_1

    #@35
    .line 11957
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@37
    const/4 v5, 0x1

    #@38
    iput v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    #@3a
    .line 11959
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    #@3c
    const/4 v5, -0x1

    #@3d
    const/4 v6, -0x1

    #@3e
    const/4 v7, -0x1

    #@3f
    const/4 v8, -0x1

    #@40
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    #@43
    .line 11960
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@45
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    .line 11953
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@4c
    goto :goto_0

    #@4d
    .line 11963
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@4f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    monitor-exit v4

    #@53
    .line 11965
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@55
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@57
    invoke-virtual {v3, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    #@5a
    .line 11966
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@5c
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_3

    #@64
    .line 11967
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@67
    .line 11949
    :goto_1
    return-void

    #@68
    .line 11950
    .end local v1    # "winNdx":I
    .end local v2    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v3

    #@69
    monitor-exit v4

    #@6a
    throw v3

    #@6b
    .line 11969
    .restart local v1    # "winNdx":I
    .restart local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@6d
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@6f
    invoke-virtual {v3, v9, p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    #@72
    .line 11970
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@74
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    #@77
    goto :goto_1
.end method
