.class Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 479
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 482
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmPressed(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 484
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fputmVisible(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V

    .line 485
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fputmDrawingHardwareGlow(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V

    .line 486
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    .line 488
    :cond_2d
    return-void
.end method
