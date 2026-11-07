.class Landroid/animation/AnimatorSet$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$anim:Landroid/animation/AnimatorSet;


# direct methods
.method constructor blacklist <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .registers 3
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;
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

    .line 1530
    iput-object p2, p0, Landroid/animation/AnimatorSet$2;->val$anim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1533
    iget-object v0, p0, Landroid/animation/AnimatorSet$2;->val$anim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmNodeMap(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1537
    iget-object v0, p0, Landroid/animation/AnimatorSet$2;->val$anim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmNodeMap(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1539
    return-void

    .line 1534
    :cond_1c
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Error: animation ended is not in the node map"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
