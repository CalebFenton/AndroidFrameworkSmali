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
.field private static final greylist-max-o REVERSED_BIT:J = 0x100000000L

.field private static final greylist-max-o REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field greylist-max-o mAnimThemeAttrs:[I

.field greylist-max-r mStateIds:Landroid/util/SparseIntArray;

.field greylist-max-r mTransitions:Landroid/util/LongSparseLongArray;


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/AnimatedStateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 571
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 573
    if-eqz p1, :cond_12

    .line 575
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    .line 576
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 577
    iget-object v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    goto :goto_20

    .line 579
    :cond_12
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 580
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 582
    :goto_20
    return-void
.end method

.method private static greylist-max-o generateTransitionKey(II)J
    .registers 6
    .param p0, "fromId"    # I
    .param p1, "toId"    # I

    .line 656
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method greylist-max-o addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .registers 6
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .line 607
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 608
    .local v0, "index":I
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    return v0
.end method

.method greylist-max-o addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .registers 21
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p3, "anim"    # Landroid/graphics/drawable/Drawable;
    .param p4, "reversible"    # Z

    .line 590
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 591
    .local v2, "pos":I
    invoke-static/range {p1 .. p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v3

    .line 592
    .local v3, "keyFromTo":J
    const-wide/16 v5, 0x0

    .line 593
    .local v5, "reversibleBit":J
    if-eqz p4, :cond_15

    .line 594
    const-wide v5, 0x200000000L

    .line 596
    :cond_15
    iget-object v7, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    int-to-long v8, v2

    or-long/2addr v8, v5

    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 598
    if-eqz p4, :cond_34

    .line 599
    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static {v8, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v9

    .line 600
    .local v9, "keyToFrom":J
    iget-object v11, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    int-to-long v12, v2

    const-wide v14, 0x100000000L

    or-long/2addr v12, v14

    or-long/2addr v12, v5

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/util/LongSparseLongArray;->append(JJ)V

    goto :goto_38

    .line 598
    .end local v9    # "keyToFrom":J
    :cond_34
    move/from16 v7, p1

    move/from16 v8, p2

    .line 603
    :goto_38
    return v2
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 642
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method greylist-max-o getKeyframeIdAt(I)I
    .registers 4
    .param p1, "index"    # I

    .line 622
    const/4 v0, 0x0

    if-gez p1, :cond_4

    goto :goto_a

    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :goto_a
    return v0
.end method

.method greylist-max-o indexOfKeyframe([I)I
    .registers 4
    .param p1, "stateSet"    # [I

    .line 613
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v0

    .line 614
    .local v0, "index":I
    if-ltz v0, :cond_7

    .line 615
    return v0

    .line 618
    :cond_7
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, v1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    return v1
.end method

.method greylist-max-o indexOfTransition(II)I
    .registers 8
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .line 626
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 627
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method

.method greylist-max-o isTransitionReversed(II)Z
    .registers 9
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .line 631
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 632
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const-wide v4, 0x100000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    return v2
.end method

.method greylist-max-o mutate()V
    .registers 2

    .line 585
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 586
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 587
    return-void
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 647
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 652
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    return-object v0
.end method

.method greylist-max-o transitionHasReversibleFlag(II)Z
    .registers 9
    .param p1, "fromId"    # I
    .param p2, "toId"    # I

    .line 636
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 637
    .local v0, "keyFromTo":J
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v2

    const-wide v4, 0x200000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    return v2
.end method
