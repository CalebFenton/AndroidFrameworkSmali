.class Landroid/transition/Fade$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/Fade;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/Fade;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/Fade;
    .param p2, "val$view"    # Landroid/view/View;

    #@0
    .prologue
    .line 129
    iput-object p1, p0, Landroid/transition/Fade$1;->this$0:Landroid/transition/Fade;

    #@2
    iput-object p2, p0, Landroid/transition/Fade$1;->val$view:Landroid/view/View;

    #@4
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/transition/Fade$1;->val$view:Landroid/view/View;

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@7
    .line 131
    return-void
.end method
