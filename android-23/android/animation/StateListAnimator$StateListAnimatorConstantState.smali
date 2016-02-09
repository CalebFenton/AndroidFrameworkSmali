.class Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateListAnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/animation/StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/StateListAnimator;

.field mChangingConf:I


# direct methods
.method public constructor <init>(Landroid/animation/StateListAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/StateListAnimator;

    #@0
    .prologue
    .line 314
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    #@3
    .line 315
    iput-object p1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    #@5
    .line 316
    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    #@7
    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->-set0(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    #@a
    .line 317
    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    #@c
    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    #@12
    .line 314
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 322
    iget v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    #@2
    return v0
.end method

.method public newInstance()Landroid/animation/StateListAnimator;
    .locals 2

    #@0
    .prologue
    .line 327
    iget-object v1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    #@2
    invoke-virtual {v1}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    #@5
    move-result-object v0

    #@6
    .line 328
    .local v0, "clone":Landroid/animation/StateListAnimator;
    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->-set0(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    #@9
    .line 329
    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->newInstance()Landroid/animation/StateListAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
