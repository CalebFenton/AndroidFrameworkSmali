.class Landroid/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private greylist-max-o mLayerTypeChanged:Z

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 178
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 179
    iput-object p1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 192
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 193
    iget-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_12

    .line 194
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 196
    :cond_12
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 184
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_1a

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 186
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 188
    :cond_1a
    return-void
.end method
