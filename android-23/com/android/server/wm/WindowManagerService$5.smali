.class Lcom/android/server/wm/WindowManagerService$5;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
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
    .line 928
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    #@9
    if-eq v0, p1, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-eqz v0, :cond_1

    #@11
    :cond_0
    :goto_0
    monitor-exit v1

    #@12
    .line 930
    return-void

    #@13
    .line 933
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@15
    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    #@17
    .line 934
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 931
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
