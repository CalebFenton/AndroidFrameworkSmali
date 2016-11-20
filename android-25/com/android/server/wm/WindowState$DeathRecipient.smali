.class Lcom/android/server/wm/WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 1795
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$DeathRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;)V

    #@3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 8

    #@0
    .prologue
    .line 1799
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@2
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@6
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1800
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@9
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v5, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@d
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    #@f
    iget-object v6, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@11
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    #@13
    const/4 v7, 0x0

    #@14
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    #@17
    move-result-object v2

    #@18
    .line 1801
    .local v2, "win":Lcom/android/server/wm/WindowState;
    sget-object v3, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@1a
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v6, "WIN DEATH: "

    #@22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1802
    if-eqz v2, :cond_2

    #@33
    .line 1803
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@35
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@37
    iget-object v5, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@39
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z

    #@3c
    move-result v5

    #@3d
    invoke-virtual {v3, v2, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;Z)V

    #@40
    .line 1804
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@42
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    #@44
    const/16 v5, 0x7f2

    #@46
    if-ne v3, v5, :cond_1

    #@48
    .line 1809
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@4a
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4c
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    #@4e
    const/4 v5, 0x3

    #@4f
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@55
    .line 1810
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    #@57
    .line 1811
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDockedStackToMiddle()V

    #@5a
    .line 1813
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@5c
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5e
    const/4 v5, 0x0

    #@5f
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    #@63
    .line 1797
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return-void

    #@64
    .line 1815
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@66
    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@68
    if-eqz v3, :cond_1

    #@6a
    .line 1816
    sget-object v3, Lcom/android/server/wm/WindowState;->TAG:Ljava/lang/String;

    #@6c
    const-string/jumbo v5, "!!! LEAK !!! Window removed but surface still valid."

    #@6f
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 1817
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@74
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    #@76
    iget-object v5, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    #@78
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7b
    goto :goto_0

    #@7c
    .line 1799
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    #@7d
    :try_start_4
    monitor-exit v4

    #@7e
    throw v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    #@7f
    .line 1820
    :catch_0
    move-exception v0

    #@80
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method
