.class Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MousePositionTracker"
.end annotation


# instance fields
.field private mLatestEventWasMouse:Z

.field private mLatestMouseX:F

.field private mLatestMouseY:F


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    #@2
    return v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 11080
    const/16 v0, 0x2002

    #@2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 11081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@b
    move-result v0

    #@c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    #@13
    .line 11079
    :goto_0
    return-void

    #@14
    .line 11083
    :cond_0
    monitor-enter p0

    #@15
    .line 11084
    const/4 v0, 0x0

    #@16
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    goto :goto_0

    #@1a
    .line 11083
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method updatePosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 11071
    monitor-enter p0

    #@1
    .line 11072
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    #@4
    .line 11073
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    #@6
    .line 11074
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 11070
    return-void

    #@a
    .line 11071
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
