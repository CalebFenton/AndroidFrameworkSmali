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
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mChangingConfigurations:I

.field mPendingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "owner"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 400
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    .line 402
    if-eqz p1, :cond_5

    #@5
    .line 403
    iget v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    #@7
    iput v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    #@9
    .line 405
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 406
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@f
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@12
    move-result-object v0

    #@13
    .line 407
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p3, :cond_4

    #@15
    .line 408
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    #@1b
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@1d
    .line 412
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@1f
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    #@25
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@27
    .line 413
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@29
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@2c
    .line 414
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@2e
    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@30
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    #@33
    move-result v2

    #@34
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    #@37
    .line 415
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@39
    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@3b
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable;->getBounds()Landroid/graphics/Rect;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@42
    .line 416
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@44
    const/4 v2, 0x0

    #@45
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    #@48
    .line 419
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@4a
    if-eqz v1, :cond_1

    #@4c
    .line 420
    new-instance v1, Ljava/util/ArrayList;

    #@4e
    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@50
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@53
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@55
    .line 423
    :cond_1
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    #@57
    if-eqz v1, :cond_2

    #@59
    .line 424
    new-instance v1, Landroid/util/ArrayMap;

    #@5b
    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    #@5d
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@60
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    #@62
    .line 427
    :cond_2
    iget-object v1, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@64
    if-eqz v1, :cond_3

    #@66
    .line 428
    new-instance v1, Ljava/util/ArrayList;

    #@68
    iget-object v2, p1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@6a
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@6d
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@6f
    .line 401
    :cond_3
    :goto_1
    return-void

    #@70
    .line 410
    .restart local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@73
    move-result-object v1

    #@74
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    #@76
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@78
    goto :goto_0

    #@79
    .line 431
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    #@7b
    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    #@7e
    iput-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@80
    goto :goto_1
.end method

.method private prepareLocalAnimator(I)Landroid/animation/Animator;
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    .line 524
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/animation/Animator;

    #@8
    .line 525
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@b
    move-result-object v1

    #@c
    .line 526
    .local v1, "localAnimator":Landroid/animation/Animator;
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;

    #@14
    .line 527
    .local v3, "targetName":Ljava/lang/String;
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@16
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    .line 528
    .local v2, "target":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@1d
    .line 529
    return-object v1
.end method


# virtual methods
.method public addPendingAnimator(IFLjava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "pathErrorScale"    # F
    .param p3, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 458
    new-instance v0, Ljava/util/ArrayList;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@c
    .line 460
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@e
    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;

    #@10
    invoke-direct {v1, p1, p2, p3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;-><init>(IFLjava/lang/String;)V

    #@13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 456
    return-void
.end method

.method public addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 464
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 465
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@c
    .line 466
    new-instance v0, Landroid/util/ArrayMap;

    #@e
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    #@13
    .line 468
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 469
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 463
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 438
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 437
    :cond_1
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    .line 438
    :cond_2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    #@15
    move-result v0

    #@16
    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 453
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 539
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@3
    .line 540
    .local v4, "pendingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;>;"
    if-eqz v4, :cond_0

    #@5
    .line 541
    iput-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@7
    .line 543
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@e
    .line 544
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;

    #@14
    .line 545
    .local v3, "pendingAnimator":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/animation/Animator;

    #@17
    move-result-object v2

    #@18
    .line 546
    .local v2, "objectAnimator":Landroid/animation/Animator;
    iget-object v5, v3, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;->target:Ljava/lang/String;

    #@1a
    invoke-virtual {p0, v5, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->addTargetAnimator(Ljava/lang/String;Landroid/animation/Animator;)V

    #@1d
    .line 543
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 538
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "objectAnimator":Landroid/animation/Animator;
    .end local v3    # "pendingAnimator":Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState$PendingAnimator;
    :cond_0
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 443
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 448
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    #@6
    return-object v0
.end method

.method public prepareLocalAnimators(Landroid/animation/AnimatorSet;Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 492
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 494
    if-eqz p2, :cond_1

    #@8
    .line 495
    invoke-virtual {p0, p2, v7}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->inflatePendingAnimators(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    #@b
    .line 502
    :goto_0
    iput-object v7, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mPendingAnims:Ljava/util/ArrayList;

    #@d
    .line 506
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@f
    if-nez v5, :cond_2

    #@11
    const/4 v1, 0x0

    #@12
    .line 507
    .local v1, "count":I
    :goto_1
    if-lez v1, :cond_3

    #@14
    .line 508
    invoke-direct {p0, v8}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimator(I)Landroid/animation/Animator;

    #@17
    move-result-object v2

    #@18
    .line 509
    .local v2, "firstAnim":Landroid/animation/Animator;
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@1b
    move-result-object v0

    #@1c
    .line 510
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    const/4 v3, 0x1

    #@1d
    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    #@1f
    .line 511
    invoke-direct {p0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->prepareLocalAnimator(I)Landroid/animation/Animator;

    #@22
    move-result-object v4

    #@23
    .line 512
    .local v4, "nextAnim":Landroid/animation/Animator;
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@26
    .line 510
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_2

    #@29
    .line 497
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v1    # "count":I
    .end local v2    # "firstAnim":Landroid/animation/Animator;
    .end local v3    # "i":I
    .end local v4    # "nextAnim":Landroid/animation/Animator;
    :cond_1
    const-string/jumbo v5, "AnimatedVectorDrawable"

    #@2c
    const-string/jumbo v6, "Failed to load animators. Either the AnimatedVectorDrawable must be created using a Resources object or applyTheme() must be called with a non-null Theme object."

    #@2f
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    goto :goto_0

    #@33
    .line 506
    :cond_2
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v1

    #@39
    .restart local v1    # "count":I
    goto :goto_1

    #@3a
    .line 489
    :cond_3
    return-void
.end method
