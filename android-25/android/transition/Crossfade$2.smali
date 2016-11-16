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
.field final synthetic this$0:Landroid/transition/Crossfade;

.field final synthetic val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$useParentOverlay:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/Crossfade;
    .param p2, "val$useParentOverlay"    # Z
    .param p3, "val$view"    # Landroid/view/View;
    .param p4, "val$startDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p5, "val$endDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    #@0
    .prologue
    .line 222
    iput-object p1, p0, Landroid/transition/Crossfade$2;->this$0:Landroid/transition/Crossfade;

    #@2
    iput-boolean p2, p0, Landroid/transition/Crossfade$2;->val$useParentOverlay:Z

    #@4
    iput-object p3, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    #@6
    iput-object p4, p0, Landroid/transition/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@8
    iput-object p5, p0, Landroid/transition/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@a
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 225
    iget-boolean v1, p0, Landroid/transition/Crossfade$2;->val$useParentOverlay:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 226
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    #@6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/view/ViewGroup;

    #@c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@f
    move-result-object v0

    #@10
    .line 227
    .local v0, "overlay":Landroid/view/ViewOverlay;
    :goto_0
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    #@15
    .line 228
    iget-object v1, p0, Landroid/transition/Crossfade$2;->this$0:Landroid/transition/Crossfade;

    #@17
    invoke-static {v1}, Landroid/transition/Crossfade;->-get0(Landroid/transition/Crossfade;)I

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x1

    #@1c
    if-ne v1, v2, :cond_0

    #@1e
    .line 229
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@20
    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    #@23
    .line 224
    :cond_0
    return-void

    #@24
    .line 226
    .end local v0    # "overlay":Landroid/view/ViewOverlay;
    :cond_1
    iget-object v1, p0, Landroid/transition/Crossfade$2;->val$view:Landroid/view/View;

    #@26
    invoke-virtual {v1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    #@29
    move-result-object v0

    #@2a
    .restart local v0    # "overlay":Landroid/view/ViewOverlay;
    goto :goto_0
.end method
