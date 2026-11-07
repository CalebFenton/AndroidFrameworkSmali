.class public final Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;
.super Ljava/lang/Object;
.source "SfVsyncFrameCallbackProvider.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Choreographer;)V
    .registers 2
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getFrameDelay()J
    .registers 3

    .line 59
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFrameTime()J
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist postCommitCallback(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 49
    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public blacklist postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .line 44
    iget-object v0, p0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 45
    return-void
.end method

.method public blacklist setFrameDelay(J)V
    .registers 3
    .param p1, "delay"    # J

    .line 64
    invoke-static {p1, p2}, Landroid/view/Choreographer;->setFrameDelay(J)V

    .line 65
    return-void
.end method
