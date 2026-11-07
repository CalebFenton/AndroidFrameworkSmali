.class Landroid/view/InsetsResizeAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InsetsResizeAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsResizeAnimationRunner;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsResizeAnimationRunner;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsResizeAnimationRunner;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/InsetsResizeAnimationRunner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 139
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fputmFinished(Landroid/view/InsetsResizeAnimationRunner;Z)V

    .line 140
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-static {v0}, Landroid/view/InsetsResizeAnimationRunner;->-$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner$1;->this$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-interface {v0, v1}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    .line 141
    return-void
.end method
