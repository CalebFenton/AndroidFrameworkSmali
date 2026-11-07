.class Landroid/animation/Animator$AnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState<",
        "Landroid/animation/Animator;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o mAnimator:Landroid/animation/Animator;

.field greylist-max-o mChangingConf:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 889
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    .line 890
    iput-object p1, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    .line 892
    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-static {v0, p0}, Landroid/animation/Animator;->-$$Nest$fputmConstantState(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)V

    .line 893
    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    iput v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    .line 894
    return-void
.end method


# virtual methods
.method public greylist-max-o getChangingConfigurations()I
    .registers 2

    .line 898
    iget v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    return v0
.end method

.method public greylist-max-o newInstance()Landroid/animation/Animator;
    .registers 2

    .line 903
    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 904
    .local v0, "clone":Landroid/animation/Animator;
    invoke-static {v0, p0}, Landroid/animation/Animator;->-$$Nest$fputmConstantState(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)V

    .line 905
    return-object v0
.end method

.method public bridge synthetic blacklist newInstance()Ljava/lang/Object;
    .registers 2

    .line 884
    invoke-virtual {p0}, Landroid/animation/Animator$AnimatorConstantState;->newInstance()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
