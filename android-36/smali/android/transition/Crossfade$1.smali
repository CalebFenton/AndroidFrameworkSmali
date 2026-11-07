.class Landroid/transition/Crossfade$1;
.super Ljava/lang/Object;
.source "Crossfade.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Crossfade;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/transition/Crossfade;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    iput-object p2, p0, Landroid/transition/Crossfade$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/transition/Crossfade$1;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 212
    iget-object v0, p0, Landroid/transition/Crossfade$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/Crossfade$1;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 213
    return-void
.end method
