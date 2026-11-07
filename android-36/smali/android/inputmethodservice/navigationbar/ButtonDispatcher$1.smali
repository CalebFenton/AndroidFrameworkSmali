.class Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ButtonDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 65
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->-$$Nest$fputmFadeAnimator(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V

    .line 66
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    const/4 v1, 0x4

    :goto_17
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    .line 67
    return-void
.end method
