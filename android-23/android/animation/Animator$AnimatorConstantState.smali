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
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/animation/Animator;",
        ">;"
    }
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/Animator;

.field mChangingConf:I


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 548
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    #@3
    .line 549
    iput-object p1, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    #@5
    .line 551
    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    #@7
    invoke-static {v0, p0}, Landroid/animation/Animator;->-set0(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;

    #@a
    .line 552
    iget-object v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    #@c
    invoke-virtual {v0}, Landroid/animation/Animator;->getChangingConfigurations()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    #@12
    .line 548
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 557
    iget v0, p0, Landroid/animation/Animator$AnimatorConstantState;->mChangingConf:I

    #@2
    return v0
.end method

.method public newInstance()Landroid/animation/Animator;
    .locals 2

    #@0
    .prologue
    .line 562
    iget-object v1, p0, Landroid/animation/Animator$AnimatorConstantState;->mAnimator:Landroid/animation/Animator;

    #@2
    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@5
    move-result-object v0

    #@6
    .line 563
    .local v0, "clone":Landroid/animation/Animator;
    invoke-static {v0, p0}, Landroid/animation/Animator;->-set0(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;

    #@9
    .line 564
    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/animation/Animator$AnimatorConstantState;->newInstance()Landroid/animation/Animator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
