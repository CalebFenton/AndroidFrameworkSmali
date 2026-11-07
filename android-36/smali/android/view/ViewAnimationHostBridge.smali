.class public Landroid/view/ViewAnimationHostBridge;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewAnimationHostBridge.java"

# interfaces
.implements Landroid/graphics/RenderNode$AnimationHost;


# instance fields
.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 37
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist isAttached()Z
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 68
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 69
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 70
    iget-object v1, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->removeThreadedRendererView(Landroid/view/View;)V

    .line 72
    :cond_d
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 60
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 61
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 62
    iget-object v1, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addThreadedRendererView(Landroid/view/View;)V

    .line 64
    :cond_d
    return-void
.end method

.method public blacklist registerAnimatingRenderNode(Landroid/graphics/RenderNode;Landroid/animation/Animator;)V
    .registers 4
    .param p1, "renderNode"    # Landroid/graphics/RenderNode;
    .param p2, "animator"    # Landroid/animation/Animator;

    .line 43
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    .line 44
    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .registers 3
    .param p1, "animator"    # Landroid/view/NativeVectorDrawableAnimator;

    .line 49
    iget-object v0, p0, Landroid/view/ViewAnimationHostBridge;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 50
    invoke-interface {p1, p0}, Landroid/view/NativeVectorDrawableAnimator;->setThreadedRendererAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    return-void
.end method
