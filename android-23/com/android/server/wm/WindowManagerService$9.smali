.class Lcom/android/server/wm/WindowManagerService$9;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->watchRotation(Landroid/view/IRotationWatcher;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$watcherBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "val$watcherBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 6692
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$9;->val$watcherBinder:Landroid/os/IBinder;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    #@0
    .prologue
    .line 6695
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v4

    #@5
    .line 6696
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@8
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    if-ge v1, v3, :cond_2

    #@10
    .line 6697
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$9;->val$watcherBinder:Landroid/os/IBinder;

    #@12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    #@1c
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->watcher:Landroid/view/IRotationWatcher;

    #@1e
    invoke-interface {v3}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v3

    #@22
    if-ne v5, v3, :cond_1

    #@24
    .line 6698
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@26
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    #@2e
    .line 6699
    .local v2, "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->watcher:Landroid/view/IRotationWatcher;

    #@30
    invoke-interface {v3}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    #@33
    move-result-object v0

    #@34
    .line 6700
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@36
    .line 6701
    const/4 v3, 0x0

    #@37
    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 6703
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@3c
    .line 6696
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    :cond_2
    monitor-exit v4

    #@40
    .line 6694
    return-void

    #@41
    .line 6695
    :catchall_0
    move-exception v3

    #@42
    monitor-exit v4

    #@43
    throw v3
.end method
