.class Landroid/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroid/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;Landroid/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 1
    .param p1, "this$0"    # Landroid/transition/ChangeTransform;
    .param p2, "val$handleParentChange"    # Z
    .param p3, "val$finalEndMatrix"    # Landroid/graphics/Matrix;
    .param p4, "val$view"    # Landroid/view/View;
    .param p5, "val$transforms"    # Landroid/transition/ChangeTransform$Transforms;
    .param p6, "val$pathAnimatorMatrix"    # Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    #@0
    .prologue
    .line 306
    iput-object p1, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    #@2
    iput-boolean p2, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    #@4
    iput-object p3, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    #@6
    iput-object p4, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@8
    iput-object p5, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    #@a
    iput-object p6, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    #@c
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@f
    .line 308
    new-instance v0, Landroid/graphics/Matrix;

    #@11
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@14
    iput-object v0, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    #@16
    .line 306
    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "currentMatrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@5
    .line 342
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@7
    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    #@9
    const v2, 0x1020052

    #@c
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@f
    .line 343
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    #@11
    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@13
    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    #@16
    .line 340
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 312
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    #@3
    .line 311
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 317
    iget-boolean v0, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 318
    iget-boolean v0, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    #@b
    invoke-static {v0}, Landroid/transition/ChangeTransform;->-get0(Landroid/transition/ChangeTransform;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 319
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    #@13
    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    #@16
    .line 325
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@18
    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    #@1b
    .line 326
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    #@1d
    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@1f
    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    #@22
    .line 316
    return-void

    #@23
    .line 321
    :cond_1
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@25
    const v1, 0x1020052

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@2b
    .line 322
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@2d
    const v1, 0x1020053

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    #@33
    goto :goto_0
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 331
    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    #@2
    invoke-virtual {v1}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    #@5
    move-result-object v0

    #@6
    .line 332
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    #@9
    .line 330
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroid/transition/ChangeTransform;->-wrap0(Landroid/view/View;)V

    #@5
    .line 336
    return-void
.end method
