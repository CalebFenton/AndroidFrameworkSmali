.class public Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewRootWrapper"
.end annotation


# instance fields
.field private final blacklist mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 777
    return-void
.end method


# virtual methods
.method public blacklist addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 784
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 785
    return-void
.end method

.method blacklist addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .registers 3
    .param p1, "windowCallbacks"    # Landroid/view/WindowCallbacks;

    .line 804
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 805
    return-void
.end method

.method blacklist dipToPx(I)I
    .registers 5
    .param p1, "dip"    # I

    .line 816
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 818
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public blacklist getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 796
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method blacklist getView()Landroid/view/View;
    .registers 2

    .line 812
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 792
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 793
    return-void
.end method

.method blacklist removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .registers 3
    .param p1, "windowCallbacks"    # Landroid/view/WindowCallbacks;

    .line 808
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 809
    return-void
.end method

.method blacklist requestInvalidateRootRenderNode()V
    .registers 2

    .line 800
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 801
    return-void
.end method
