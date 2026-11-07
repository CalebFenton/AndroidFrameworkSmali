.class Landroid/transition/Crossfade$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Crossfade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Crossfade;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/transition/Crossfade;

.field final synthetic blacklist val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic blacklist val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic blacklist val$useParentOverlay:Z

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 6
    .param p1, "this$0"    # Landroid/transition/Crossfade;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Landroid/transition/Crossfade$2;->this$0:Landroid/transition/Crossfade;

    iput-boolean p2, p0, Landroid/transition/Crossfade$2;->val$useParentOverlay:Z

    iput-object p3, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/transition/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p5, p0, Landroid/transition/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 229
    iget-boolean v0, p0, Landroid/transition/Crossfade$2;->val$useParentOverlay:Z

    if-eqz v0, :cond_11

    .line 230
    iget-object v0, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    goto :goto_17

    :cond_11
    iget-object v0, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    .line 231
    .local v0, "overlay":Landroid/view/ViewOverlay;
    :goto_17
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v1, p0, Landroid/transition/Crossfade$2;->this$0:Landroid/transition/Crossfade;

    invoke-static {v1}, Landroid/transition/Crossfade;->-$$Nest$fgetmFadeBehavior(Landroid/transition/Crossfade;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 233
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_2a
    return-void
.end method
