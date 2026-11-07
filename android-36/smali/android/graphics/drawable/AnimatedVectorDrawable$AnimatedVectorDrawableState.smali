.class Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    }
.end annotation


# instance fields
.field greylist-max-o mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mChangingConfigurations:I

.field greylist-max-o mPendingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mShouldIgnoreInvalidAnim:Z

.field greylist-max-o mTargetNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShouldIgnoreInvalidAnim(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mShouldIgnoreInvalidAnim:Z

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .registers 7
    .param p1, "copy"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "owner"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 717
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 718
    invoke-static {}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smshouldIgnoreInvalidAnimation()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mShouldIgnoreInvalidAnim:Z

    .line 719
    if-eqz p1, :cond_7f

    .line 720
    iget v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    .line 722
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_57

    .line 723
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 724
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p3, :cond_24

    .line 725
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    goto :goto_2c

    .line 727
    :cond_24
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 729
    :goto_2c
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 730
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 731
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    .line 732
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 733
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    .line 736
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_57
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_64

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 740
    :cond_64
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_71

    .line 741
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    .line 744
    :cond_71
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-eqz v0, :cond_86

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    goto :goto_86

    .line 748
    :cond_7f
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 750
    :cond_86
    :goto_86
    return-void
.end method

.method private greylist-max-o prepareLocalAnimator(I)Landroid/animation/Animator;
    .registers 9
    .param p1, "index"    # I

    .line 841
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 842
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    .line 843
    .local v1, "localAnimator":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 844
    .local v2, "targetName":Ljava/lang/String;
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 845
    .local v3, "target":Ljava/lang/Object;
    iget-boolean v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mShouldIgnoreInvalidAnim:Z

    if-nez v4, :cond_6b

    .line 846
    if-eqz v3, :cond_4c

    .line 849
    instance-of v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-nez v4, :cond_6b

    instance-of v4, v3, Landroid/graphics/drawable/VectorDrawable$VObject;

    if-eqz v4, :cond_29

    goto :goto_6b

    .line 851
    :cond_29
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target should be either VGroup, VPath, or ConstantState, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 852
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 847
    :cond_4c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target with the name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" cannot be found in the VectorDrawable to be animated."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 855
    :cond_6b
    :goto_6b
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 856
    return-object v1
.end method


# virtual methods
.method public greylist-max-o addPendingAnimator(IFLjava/lang/String;)V
    .registers 6
    .param p1, "resId"    # I
    .param p2, "pathErrorScale"    # F
    .param p3, "target"    # Ljava/lang/String;

    .line 774
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 777
    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;

    invoke-direct {v1, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;-><init>(IFLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    return-void
.end method

.method public greylist-max-o addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V
    .registers 5
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "animator"    # Landroid/animation/Animator;

    .line 781
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 783
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    .line 785
    :cond_13
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 754
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    .line 755
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 754
    :goto_1a
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 770
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    return v0
.end method

.method public greylist-max-o inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "t"    # Landroid/content/res/Resources$Theme;

    .line 866
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 867
    .local v0, "pendingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;>;"
    if-eqz v0, :cond_29

    .line 868
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 870
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_c
    if-ge v1, v2, :cond_29

    .line 871
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;

    .line 872
    .local v3, "pendingAnimator":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/animation/Animator;

    move-result-object v4

    .line 873
    .local v4, "animator":Landroid/animation/Animator;
    iget-object v5, v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->target:Ljava/lang/String;

    iget-object v6, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    iget-boolean v7, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mShouldIgnoreInvalidAnim:Z

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/drawable/AnimatedVectorDrawable;->-$$Nest$smupdateAnimatorProperty(Landroid/animation/Animator;Ljava/lang/String;Landroid/graphics/drawable/VectorDrawable;Z)V

    .line 875
    iget-object v5, v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->target:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 870
    .end local v3    # "pendingAnimator":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    .end local v4    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 878
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_29
    return-void
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 760
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 765
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable-IA;)V

    return-object v0
.end method

.method public greylist-max-o prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 809
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 811
    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 812
    invoke-virtual {p0, p2, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    goto :goto_12

    .line 814
    :cond_b
    const-string v1, "AnimatedVectorDrawable"

    const-string v2, "Failed to load animators. Either the AnimatedVectorDrawable must be created using a Resources object or applyTheme() must be called with a non-null Theme object."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :goto_12
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    .line 823
    :cond_14
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_21

    :cond_1b
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 824
    .local v0, "count":I
    :goto_21
    if-lez v0, :cond_38

    .line 825
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimator(I)Landroid/animation/Animator;

    move-result-object v1

    .line 826
    .local v1, "firstAnim":Landroid/animation/Animator;
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 827
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2c
    if-ge v3, v0, :cond_38

    .line 828
    invoke-direct {p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimator(I)Landroid/animation/Animator;

    move-result-object v4

    .line 829
    .local v4, "nextAnim":Landroid/animation/Animator;
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 827
    .end local v4    # "nextAnim":Landroid/animation/Animator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 832
    .end local v1    # "firstAnim":Landroid/animation/Animator;
    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "i":I
    :cond_38
    return-void
.end method
