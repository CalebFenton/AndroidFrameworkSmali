.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
.super Landroid/graphics/drawable/StateListDrawable$StateListState;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final REVERSED_BIT:J = 0x100000000L

.field private static final REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field mAnimThemeAttrs:[I

.field mStateIds:Landroid/util/SparseIntArray;

.field mTransitions:Landroid/util/LongSparseLongArray;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/AnimatedStateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 565
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    #@3
    .line 567
    if-eqz p1, :cond_0

    #@5
    .line 569
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    #@9
    .line 570
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@d
    .line 571
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    #@f
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    #@11
    .line 564
    :goto_0
    return-void

    #@12
    .line 573
    :cond_0
    new-instance v0, Landroid/util/LongSparseLongArray;

    #@14
    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    #@17
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@19
    .line 574
    new-instance v0, Landroid/util/SparseIntArray;

    #@1b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    #@20
    goto :goto_0
.end method

.method private static generateTransitionKey(II)J
    .locals 4
    .param p0, "fromId"    # I
    .param p1, "toId"    # I

    #@0
    .prologue
    .line 650
    int-to-long v0, p0

    #@1
    const/16 v2, 0x20

    #@3
    shl-long/2addr v0, v2

    #@4
    int-to-long v2, p1

    #@5
    or-long/2addr v0, v2

    #@6
    return-wide v0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    #@0
    .prologue
    .line 601
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    #@3
    move-result v0

    #@4
    .line 602
    .local v0, "index":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    #@6
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseIntArray;->put(II)V

    #@9
    .line 603
    return v0
.end method

.method addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 12
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3, "anim"    # Landroid/graphics/drawable/Drawable;
    .param p4, "reversible"    # Z

    #@0
    .prologue
    .line 584
    invoke-super {p0, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    #@3
    move-result v4

    #@4
    .line 585
    .local v4, "pos":I
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    #@7
    move-result-wide v0

    #@8
    .line 586
    .local v0, "keyFromTo":J
    const-wide/16 v6, 0x0

    #@a
    .line 587
    .local v6, "reversibleBit":J
    if-eqz p4, :cond_0

    #@c
    .line 588
    const-wide v6, 0x200000000L

    #@11
    .line 590
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@13
    int-to-long v8, v4

    #@14
    or-long/2addr v8, v6

    #@15
    invoke-virtual {v5, v0, v1, v8, v9}, Landroid/util/LongSparseLongArray;->append(JJ)V

    #@18
    .line 592
    if-eqz p4, :cond_1

    #@1a
    .line 593
    invoke-static {p2, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    #@1d
    move-result-wide v2

    #@1e
    .line 594
    .local v2, "keyToFrom":J
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@20
    int-to-long v8, v4

    #@21
    const-wide v10, 0x100000000L

    #@26
    or-long/2addr v8, v10

    #@27
    or-long/2addr v8, v6

    #@28
    invoke-virtual {v5, v2, v3, v8, v9}, Landroid/util/LongSparseLongArray;->append(JJ)V

    #@2b
    .line 597
    .end local v2    # "keyToFrom":J
    :cond_1
    return v4
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->canApplyTheme()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method getKeyframeIdAt(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 616
    if-gez p1, :cond_0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    #@6
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    #@9
    move-result v0

    #@a
    goto :goto_0
.end method

.method indexOfKeyframe([I)I
    .locals 2
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 607
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@3
    move-result v0

    #@4
    .line 608
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 609
    return v0

    #@7
    .line 612
    :cond_0
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    #@9
    invoke-super {p0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method indexOfTransition(II)I
    .locals 6
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    #@0
    .prologue
    .line 620
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    #@3
    move-result-wide v0

    #@4
    .line 621
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@6
    const-wide/16 v4, -0x1

    #@8
    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    #@b
    move-result-wide v2

    #@c
    long-to-int v2, v2

    #@d
    return v2
.end method

.method isTransitionReversed(II)Z
    .locals 6
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    #@0
    .prologue
    .line 625
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    #@3
    move-result-wide v0

    #@4
    .line 626
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@6
    const-wide/16 v4, -0x1

    #@8
    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    #@b
    move-result-wide v2

    #@c
    const-wide v4, 0x100000000L

    #@11
    and-long/2addr v2, v4

    #@12
    const-wide/16 v4, 0x0

    #@14
    cmp-long v2, v2, v4

    #@16
    if-eqz v2, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :goto_0
    return v2

    #@1a
    :cond_0
    const/4 v2, 0x0

    #@1b
    goto :goto_0
.end method

.method mutate()V
    .locals 1

    #@0
    .prologue
    .line 579
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@2
    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@8
    .line 580
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    #@a
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    #@10
    .line 578
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 641
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@3
    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 646
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable;)V

    #@6
    return-object v0
.end method

.method transitionHasReversibleFlag(II)Z
    .locals 6
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    #@0
    .prologue
    .line 630
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    #@3
    move-result-wide v0

    #@4
    .line 631
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    #@6
    const-wide/16 v4, -0x1

    #@8
    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/util/LongSparseLongArray;->get(JJ)J

    #@b
    move-result-wide v2

    #@c
    const-wide v4, 0x200000000L

    #@11
    and-long/2addr v2, v4

    #@12
    const-wide/16 v4, 0x0

    #@14
    cmp-long v2, v2, v4

    #@16
    if-eqz v2, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :goto_0
    return v2

    #@1a
    :cond_0
    const/4 v2, 0x0

    #@1b
    goto :goto_0
.end method
