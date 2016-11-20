.class Lcom/android/server/am/ResizeDockedStackTimeout$1;
.super Ljava/lang/Object;
.source "ResizeDockedStackTimeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ResizeDockedStackTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ResizeDockedStackTimeout;


# direct methods
.method constructor <init>(Lcom/android/server/am/ResizeDockedStackTimeout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ResizeDockedStackTimeout;

    #@0
    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    #@2
    invoke-static {v0}, Lcom/android/server/am/ResizeDockedStackTimeout;->-get1(Lcom/android/server/am/ResizeDockedStackTimeout;)Lcom/android/server/am/ActivityManagerService;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@a
    .line 41
    iget-object v0, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    #@c
    invoke-static {v0}, Lcom/android/server/am/ResizeDockedStackTimeout;->-get2(Lcom/android/server/am/ResizeDockedStackTimeout;)Lcom/android/server/am/ActivityStackSupervisor;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/server/am/ResizeDockedStackTimeout$1;->this$0:Lcom/android/server/am/ResizeDockedStackTimeout;

    #@12
    invoke-static {v1}, Lcom/android/server/am/ResizeDockedStackTimeout;->-get0(Lcom/android/server/am/ResizeDockedStackTimeout;)Landroid/graphics/Rect;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x0

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    .line 42
    const/4 v6, 0x1

    #@1b
    .line 41
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v7

    #@1f
    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@22
    .line 39
    return-void

    #@23
    .line 40
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v7

    #@25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@28
    throw v0
.end method
