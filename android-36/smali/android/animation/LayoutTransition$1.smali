.class Landroid/animation/LayoutTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/LayoutTransition;

.field final synthetic blacklist val$child:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/animation/LayoutTransition;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Landroid/animation/LayoutTransition;
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

    .line 875
    iput-object p1, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 878
    iget-object v0, p0, Landroid/animation/LayoutTransition$1;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-$$Nest$fgetpendingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/LayoutTransition$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    return-void
.end method
