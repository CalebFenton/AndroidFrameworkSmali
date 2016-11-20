.class final Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$terminalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;
    .param p2, "val$terminalClip"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$view:Landroid/view/View;

    #@2
    iput-object p2, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$terminalClip:Landroid/graphics/Rect;

    #@4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$view:Landroid/view/View;

    #@2
    iget-object v1, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;->val$terminalClip:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@7
    .line 236
    return-void
.end method
