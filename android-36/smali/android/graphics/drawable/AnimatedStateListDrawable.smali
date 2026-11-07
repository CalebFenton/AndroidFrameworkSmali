.class public Landroid/graphics/drawable/AnimatedStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    }
.end annotation


# static fields
.field private static final greylist-max-o ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final greylist-max-o ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mMutated:Z

.field private greylist-max-p mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

.field private greylist-max-o mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

.field private greylist-max-o mTransitionFromIndex:I

.field private greylist-max-o mTransitionToIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOGTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    const-class v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    .line 87
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 670
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 81
    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 673
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    .line 674
    .local v0, "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 675
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 676
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    .line 677
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 444
    .local v0, "innerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_40

    .line 445
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_40

    .line 447
    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    .line 448
    goto :goto_6

    .line 451
    :cond_1b
    if-le v4, v0, :cond_1e

    .line 452
    goto :goto_6

    .line 455
    :cond_1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "item"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 456
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_6

    .line 457
    :cond_2f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "transition"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 458
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_6

    .line 461
    .end local v4    # "depth":I
    :cond_40
    return-void
.end method

.method private greylist-max-o init()V
    .registers 2

    .line 435
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 436
    return-void
.end method

.method private greylist-max-o parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 13
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedStateListDrawableItem:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 506
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 507
    .local v1, "keyframeId":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 508
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v3

    .line 515
    .local v3, "states":[I
    if-nez v2, :cond_47

    .line 517
    :goto_19
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x4

    if-ne v4, v6, :cond_22

    goto :goto_19

    .line 519
    :cond_22
    const/4 v4, 0x2

    if-ne v5, v4, :cond_2a

    .line 525
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_47

    .line 520
    :cond_2a
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 528
    .end local v5    # "type":I
    :cond_47
    :goto_47
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v4, v3, v2, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    move-result v4

    return v4
.end method

.method private greylist-max-o parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 14
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedStateListDrawableTransition:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 470
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 472
    .local v3, "fromId":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 474
    .local v4, "toId":I
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 476
    .local v5, "reversible":Z
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 478
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 483
    if-nez v2, :cond_4c

    .line 485
    :goto_1f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x4

    if-ne v6, v8, :cond_28

    goto :goto_1f

    .line 487
    :cond_28
    if-ne v7, v1, :cond_2f

    .line 493
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4c

    .line 488
    :cond_2f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    .end local v7    # "type":I
    :cond_4c
    :goto_4c
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v1

    return v1
.end method

.method private greylist-max-o selectTransition(I)Z
    .registers 14
    .param p1, "toIndex"    # I

    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 165
    .local v0, "currentTransition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 166
    iget v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    if-ne p1, v2, :cond_a

    .line 168
    return v1

    .line 169
    :cond_a
    iget v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    if-ne p1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->canReverse()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->reverse()V

    .line 172
    iget v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 173
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 174
    return v1

    .line 178
    :cond_1e
    iget v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 181
    .local v2, "fromIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    goto :goto_28

    .line 183
    .end local v2    # "fromIndex":I
    :cond_24
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v2

    .line 187
    .restart local v2    # "fromIndex":I
    :goto_28
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 188
    const/4 v3, -0x1

    iput v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 189
    iput v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 191
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 192
    .local v3, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v4

    .line 193
    .local v4, "fromId":I
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    move-result v5

    .line 194
    .local v5, "toId":I
    const/4 v6, 0x0

    if-eqz v5, :cond_8c

    if-nez v4, :cond_40

    goto :goto_8c

    .line 199
    :cond_40
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    move-result v7

    .line 200
    .local v7, "transitionIndex":I
    if-gez v7, :cond_47

    .line 202
    return v6

    .line 205
    :cond_47
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->transitionHasReversibleFlag(II)Z

    move-result v8

    .line 208
    .local v8, "hasReversibleFlag":Z
    invoke-virtual {p0, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    .line 211
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 212
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    instance-of v10, v9, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v10, :cond_63

    .line 213
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v6

    .line 215
    .local v6, "reversed":Z
    new-instance v10, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;

    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v10, v11, v6, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    .line 217
    .end local v6    # "reversed":Z
    .local v10, "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_81

    .end local v10    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :cond_63
    instance-of v10, v9, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v10, :cond_74

    .line 218
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    move-result v6

    .line 220
    .restart local v6    # "reversed":Z
    new-instance v10, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;

    move-object v11, v9

    check-cast v11, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v10, v11, v6, v8}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V

    .line 222
    .end local v6    # "reversed":Z
    .restart local v10    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_81

    .end local v10    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :cond_74
    instance-of v10, v9, Landroid/graphics/drawable/Animatable;

    if-eqz v10, :cond_8b

    .line 223
    new-instance v6, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;

    move-object v10, v9

    check-cast v10, Landroid/graphics/drawable/Animatable;

    invoke-direct {v6, v10}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    move-object v10, v6

    .line 229
    .restart local v10    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :goto_81
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    .line 231
    iput-object v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 232
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 233
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 234
    return v1

    .line 226
    .end local v10    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :cond_8b
    return v6

    .line 196
    .end local v7    # "transitionIndex":I
    .end local v8    # "hasReversibleFlag":Z
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8c
    :goto_8c
    return v6
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 411
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 414
    .local v0, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    iget v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mChangingConfigurations:I

    .line 417
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    .line 419
    const/4 v1, 0x2

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setVariablePadding(Z)V

    .line 421
    const/4 v1, 0x3

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setConstantSize(Z)V

    .line 423
    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setEnterFadeDuration(I)V

    .line 425
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setExitFadeDuration(I)V

    .line 428
    const/4 v1, 0x0

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setDither(Z)V

    .line 430
    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAutoMirrored:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAutoMirrored(Z)V

    .line 432
    return-void
.end method


# virtual methods
.method public whitelist addState([ILandroid/graphics/drawable/Drawable;I)V
    .registers 6
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    .line 113
    if-eqz p2, :cond_f

    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    .line 118
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 119
    return-void

    .line 114
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .registers 7
    .param p1, "fromId"    # I
    .param p2, "toId"    # I
    .param p4, "reversible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/graphics/drawable/Animatable;",
            ">(IITT;Z)V"
        }
    .end annotation

    .line 131
    .local p3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    if-eqz p3, :cond_8

    .line 135
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    .line 136
    return-void

    .line 132
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transition drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 395
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 398
    .local v0, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    if-eqz v0, :cond_1e

    iget-object v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    if-nez v1, :cond_c

    goto :goto_1e

    .line 402
    :cond_c
    iget-object v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 404
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 405
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 407
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->init()V

    .line 408
    return-void

    .line 399
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 550
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->clearMutated()V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    .line 552
    return-void
.end method

.method greylist-max-o cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .registers 4

    .line 543
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic blacklist cloneConstantState()Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .registers 2

    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedStateListDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 383
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 384
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 385
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 386
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 390
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->init()V

    .line 391
    return-void
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 2

    .line 365
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v0, :cond_19

    .line 368
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    .line 371
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    .line 373
    iput v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    .line 375
    :cond_19
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 533
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 534
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mutate()V

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    .line 538
    :cond_12
    return-object p0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 6
    .param p1, "stateSet"    # [I

    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfKeyframe([I)I

    move-result v0

    .line 148
    .local v0, "targetIndex":I
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 149
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectTransition(I)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 154
    .local v1, "changed":Z
    :goto_1b
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    .local v2, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_26

    .line 156
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 159
    :cond_26
    return v1
.end method

.method protected whitelist setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 662
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 664
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    if-eqz v0, :cond_c

    .line 665
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    .line 667
    :cond_c
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 91
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 93
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    if-eqz v1, :cond_17

    if-nez v0, :cond_c

    if-eqz p2, :cond_17

    .line 94
    :cond_c
    if-eqz p1, :cond_14

    .line 95
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    goto :goto_17

    .line 98
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    .line 102
    :cond_17
    :goto_17
    return v0
.end method
