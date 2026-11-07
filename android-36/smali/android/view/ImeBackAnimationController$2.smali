.class Landroid/view/ImeBackAnimationController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImeBackAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ImeBackAnimationController;->startPostCommitAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ImeBackAnimationController;

.field final synthetic blacklist val$triggerBack:Z


# direct methods
.method constructor blacklist <init>(Landroid/view/ImeBackAnimationController;Z)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ImeBackAnimationController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Landroid/view/ImeBackAnimationController$2;->this$0:Landroid/view/ImeBackAnimationController;

    iput-boolean p2, p0, Landroid/view/ImeBackAnimationController$2;->val$triggerBack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 213
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$2;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmIsPreCommitAnimationInProgress(Landroid/view/ImeBackAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 217
    return-void

    .line 219
    :cond_9
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$2;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;)Landroid/view/WindowInsetsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 220
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$2;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$fgetmWindowInsetsAnimationController(Landroid/view/ImeBackAnimationController;)Landroid/view/WindowInsetsAnimationController;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ImeBackAnimationController$2;->val$triggerBack:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 222
    :cond_1e
    iget-object v0, p0, Landroid/view/ImeBackAnimationController$2;->this$0:Landroid/view/ImeBackAnimationController;

    invoke-static {v0}, Landroid/view/ImeBackAnimationController;->-$$Nest$mreset(Landroid/view/ImeBackAnimationController;)V

    .line 223
    return-void
.end method
