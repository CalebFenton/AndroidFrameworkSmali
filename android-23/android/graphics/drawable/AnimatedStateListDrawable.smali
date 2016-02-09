.class public Landroid/graphics/drawable/AnimatedStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;,
        Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    }
.end annotation


# static fields
.field private static final ELEMENT_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_TRANSITION:Ljava/lang/String; = "transition"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

.field private mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

.field private mTransitionFromIndex:I

.field private mTransitionToIndex:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    const-class v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/graphics/drawable/AnimatedStateListDrawable;->LOGTAG:Ljava/lang/String;

    #@8
    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 83
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    #@4
    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 664
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;)V

    #@5
    .line 75
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@7
    .line 78
    iput v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    #@9
    .line 667
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@b
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    #@e
    .line 668
    .local v0, "newState":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@11
    .line 669
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    #@18
    .line 670
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    #@1b
    .line 663
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
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

    #@0
    .prologue
    .line 438
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v3

    #@4
    add-int/lit8 v1, v3, 0x1

    #@6
    .line 440
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v2

    #@a
    .local v2, "type":I
    const/4 v3, 0x1

    #@b
    if-eq v2, v3, :cond_3

    #@d
    .line 441
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@10
    move-result v0

    #@11
    .local v0, "depth":I
    if-ge v0, v1, :cond_1

    #@13
    .line 442
    const/4 v3, 0x3

    #@14
    if-eq v2, v3, :cond_3

    #@16
    .line 443
    :cond_1
    const/4 v3, 0x2

    #@17
    if-ne v2, v3, :cond_0

    #@19
    .line 447
    if-gt v0, v1, :cond_0

    #@1b
    .line 451
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, "item"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 452
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    #@2b
    goto :goto_0

    #@2c
    .line 453
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "transition"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_0

    #@39
    .line 454
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    #@3c
    goto :goto_0

    #@3d
    .line 435
    .end local v0    # "depth":I
    :cond_3
    return-void
.end method

.method private init()V
    .locals 1

    #@0
    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    #@7
    .line 430
    return-void
.end method

.method private parseItem(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 8
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

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 501
    sget-object v5, Lcom/android/internal/R$styleable;->AnimatedStateListDrawableItem:[I

    #@3
    .line 500
    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v0

    #@7
    .line 502
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a
    move-result v2

    #@b
    .line 503
    .local v2, "keyframeId":I
    const/4 v5, 0x1

    #@c
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    .line 504
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    .line 506
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    #@16
    move-result-object v3

    #@17
    .line 511
    .local v3, "states":[I
    if-nez v1, :cond_2

    #@19
    .line 513
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1c
    move-result v4

    #@1d
    .local v4, "type":I
    const/4 v5, 0x4

    #@1e
    if-eq v4, v5, :cond_0

    #@20
    .line 515
    const/4 v5, 0x2

    #@21
    if-eq v4, v5, :cond_1

    #@23
    .line 516
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    #@25
    .line 517
    new-instance v6, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    .line 518
    const-string/jumbo v7, ": <item> tag requires a \'drawable\' attribute or "

    #@35
    .line 517
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    .line 519
    const-string/jumbo v7, "child tag defining a drawable"

    #@3c
    .line 517
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 516
    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@47
    throw v5

    #@48
    .line 521
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4b
    move-result-object v1

    #@4c
    .line 524
    .end local v4    # "type":I
    :cond_2
    iget-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@4e
    invoke-virtual {v5, v3, v1, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    #@51
    move-result v5

    #@52
    return v5
.end method

.method private parseTransition(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 9
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

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    .line 465
    sget-object v6, Lcom/android/internal/R$styleable;->AnimatedStateListDrawableTransition:[I

    #@4
    .line 464
    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v0

    #@8
    .line 466
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@b
    move-result v2

    #@c
    .line 469
    .local v2, "fromId":I
    const/4 v6, 0x1

    #@d
    .line 468
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10
    move-result v4

    #@11
    .line 471
    .local v4, "toId":I
    const/4 v6, 0x3

    #@12
    .line 470
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@15
    move-result v3

    #@16
    .line 472
    .local v3, "reversible":Z
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v1

    #@1a
    .line 474
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    .line 479
    if-nez v1, :cond_2

    #@1f
    .line 481
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@22
    move-result v5

    #@23
    .local v5, "type":I
    const/4 v6, 0x4

    #@24
    if-eq v5, v6, :cond_0

    #@26
    .line 483
    if-eq v5, v8, :cond_1

    #@28
    .line 484
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@2a
    .line 485
    new-instance v7, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    .line 486
    const-string/jumbo v8, ": <transition> tag requires a \'drawable\' attribute or "

    #@3a
    .line 485
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 487
    const-string/jumbo v8, "child tag defining a drawable"

    #@41
    .line 485
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    .line 484
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 489
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v1

    #@51
    .line 492
    .end local v5    # "type":I
    :cond_2
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@53
    invoke-virtual {v6, v2, v4, v1, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    #@56
    move-result v6

    #@57
    return v6
.end method

.method private selectTransition(I)Z
    .locals 11
    .param p1, "toIndex"    # I

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@2
    .line 162
    .local v0, "currentTransition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    if-eqz v0, :cond_3

    #@4
    .line 163
    iget v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@6
    if-ne p1, v10, :cond_0

    #@8
    .line 165
    const/4 v10, 0x1

    #@9
    return v10

    #@a
    .line 166
    :cond_0
    iget v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    #@c
    if-ne p1, v10, :cond_1

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->canReverse()Z

    #@11
    move-result v10

    #@12
    if-eqz v10, :cond_1

    #@14
    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->reverse()V

    #@17
    .line 169
    iget v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    #@19
    iput v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@1b
    .line 170
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    #@1d
    .line 171
    const/4 v10, 0x1

    #@1e
    return v10

    #@1f
    .line 175
    :cond_1
    iget v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@21
    .line 178
    .local v3, "fromIndex":I
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    #@24
    .line 184
    :goto_0
    const/4 v10, 0x0

    #@25
    iput-object v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@27
    .line 185
    const/4 v10, -0x1

    #@28
    iput v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    #@2a
    .line 186
    const/4 v10, -0x1

    #@2b
    iput v10, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@2d
    .line 188
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@2f
    .line 189
    .local v6, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    #@32
    move-result v2

    #@33
    .line 190
    .local v2, "fromId":I
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->getKeyframeIdAt(I)I

    #@36
    move-result v7

    #@37
    .line 191
    .local v7, "toId":I
    if-eqz v7, :cond_2

    #@39
    if-nez v2, :cond_4

    #@3b
    .line 193
    :cond_2
    const/4 v10, 0x0

    #@3c
    return v10

    #@3d
    .line 180
    .end local v2    # "fromId":I
    .end local v3    # "fromIndex":I
    .end local v6    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .end local v7    # "toId":I
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    #@40
    move-result v3

    #@41
    .restart local v3    # "fromIndex":I
    goto :goto_0

    #@42
    .line 196
    .restart local v2    # "fromId":I
    .restart local v6    # "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .restart local v7    # "toId":I
    :cond_4
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfTransition(II)I

    #@45
    move-result v9

    #@46
    .line 197
    .local v9, "transitionIndex":I
    if-gez v9, :cond_5

    #@48
    .line 199
    const/4 v10, 0x0

    #@49
    return v10

    #@4a
    .line 202
    :cond_5
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->transitionHasReversibleFlag(II)Z

    #@4d
    move-result v4

    #@4e
    .line 205
    .local v4, "hasReversibleFlag":Z
    invoke-virtual {p0, v9}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    #@51
    .line 208
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@54
    move-result-object v1

    #@55
    .line 209
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v10, v1, Landroid/graphics/drawable/AnimationDrawable;

    #@57
    if-eqz v10, :cond_6

    #@59
    .line 210
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    #@5c
    move-result v5

    #@5d
    .line 212
    .local v5, "reversed":Z
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;

    #@5f
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    #@61
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1, v5, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    #@64
    .line 226
    .end local v5    # "reversed":Z
    .local v8, "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    #@67
    .line 228
    iput-object v8, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@69
    .line 229
    iput v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    #@6b
    .line 230
    iput p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@6d
    .line 231
    const/4 v10, 0x1

    #@6e
    return v10

    #@6f
    .line 214
    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    instance-of v10, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@71
    if-eqz v10, :cond_7

    #@73
    .line 215
    invoke-virtual {v6, v2, v7}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->isTransitionReversed(II)Z

    #@76
    move-result v5

    #@77
    .line 217
    .restart local v5    # "reversed":Z
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;

    #@79
    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@7b
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1, v5, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedVectorDrawableTransition;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;ZZ)V

    #@7e
    .restart local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_1

    #@7f
    .line 219
    .end local v5    # "reversed":Z
    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    instance-of v10, v1, Landroid/graphics/drawable/Animatable;

    #@81
    if-eqz v10, :cond_8

    #@83
    .line 220
    new-instance v8, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;

    #@85
    check-cast v1, Landroid/graphics/drawable/Animatable;

    #@87
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v8, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;-><init>(Landroid/graphics/drawable/Animatable;)V

    #@8a
    .restart local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    goto :goto_1

    #@8b
    .line 223
    .end local v8    # "transition":Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v10, 0x0

    #@8c
    return v10
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@2
    .line 410
    .local v0, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    iget v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v2

    #@8
    or-int/2addr v1, v2

    #@9
    iput v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mChangingConfigurations:I

    #@b
    .line 413
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    #@11
    .line 416
    iget-boolean v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mVariablePadding:Z

    #@13
    const/4 v2, 0x2

    #@14
    .line 415
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setVariablePadding(Z)V

    #@1b
    .line 418
    iget-boolean v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mConstantSize:Z

    #@1d
    const/4 v2, 0x3

    #@1e
    .line 417
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setConstantSize(Z)V

    #@25
    .line 420
    iget v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mEnterFadeDuration:I

    #@27
    const/4 v2, 0x4

    #@28
    .line 419
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2b
    move-result v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setEnterFadeDuration(I)V

    #@2f
    .line 422
    iget v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mExitFadeDuration:I

    #@31
    const/4 v2, 0x5

    #@32
    .line 421
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@35
    move-result v1

    #@36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->setExitFadeDuration(I)V

    #@39
    .line 425
    iget-boolean v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mDither:Z

    #@3b
    const/4 v2, 0x0

    #@3c
    .line 424
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3f
    move-result v1

    #@40
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setDither(Z)V

    #@43
    .line 427
    iget-boolean v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAutoMirrored:Z

    #@45
    const/4 v2, 0x6

    #@46
    .line 426
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@49
    move-result v1

    #@4a
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAutoMirrored(Z)V

    #@4d
    .line 406
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "id"    # I

    #@0
    .prologue
    .line 110
    if-nez p2, :cond_0

    #@2
    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Drawable must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 114
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;I)I

    #@10
    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    #@17
    .line 109
    return-void
.end method

.method public addTransition(IILandroid/graphics/drawable/Drawable;Z)V
    .locals 2
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

    #@0
    .prologue
    .line 128
    .local p3, "transition":Landroid/graphics/drawable/Drawable;, "TT;"
    if-nez p3, :cond_0

    #@2
    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Transition drawable must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 132
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@d
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->addTransition(IILandroid/graphics/drawable/Drawable;Z)I

    #@10
    .line 127
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 393
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@5
    .line 394
    .local v1, "state":Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    if-eqz v1, :cond_0

    #@7
    iget-object v2, v1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    #@9
    if-nez v2, :cond_1

    #@b
    .line 395
    :cond_0
    return-void

    #@c
    .line 399
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    #@e
    sget-object v3, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    #@10
    .line 398
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 400
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@17
    .line 401
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 403
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->init()V

    #@1d
    .line 390
    return-void
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 546
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->clearMutated()V

    #@3
    .line 547
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    #@6
    .line 545
    return-void
.end method

.method cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
    .locals 3

    #@0
    .prologue
    .line 539
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V

    #@8
    return-object v0
.end method

.method bridge synthetic cloneConstantState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    #@0
    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->cloneConstantState()Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
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

    #@0
    .prologue
    .line 379
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatedStateListDrawable:[I

    #@2
    .line 378
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 380
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    #@7
    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    #@a
    .line 381
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@d
    .line 382
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@10
    .line 384
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@13
    .line 386
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->init()V

    #@16
    .line 377
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 362
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    #@5
    .line 364
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 365
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@b
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->stop()V

    #@e
    .line 366
    iput-object v2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@10
    .line 368
    iget v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@12
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    #@15
    .line 369
    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionToIndex:I

    #@17
    .line 370
    iput v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransitionFromIndex:I

    #@19
    .line 361
    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 530
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@c
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mutate()V

    #@f
    .line 531
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mMutated:Z

    #@12
    .line 534
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 144
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@2
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->indexOfKeyframe([I)I

    #@5
    move-result v2

    #@6
    .line 145
    .local v2, "targetIndex":I
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrentIndex()I

    #@9
    move-result v3

    #@a
    if-eq v2, v3, :cond_2

    #@c
    .line 146
    invoke-direct {p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectTransition(I)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_1

    #@12
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;->selectDrawable(I)Z

    #@15
    move-result v0

    #@16
    .line 151
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v1

    #@1a
    .line 152
    .local v1, "current":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    #@1c
    .line 153
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@1f
    move-result v3

    #@20
    or-int/2addr v0, v3

    #@21
    .line 156
    :cond_0
    return v0

    #@22
    .line 146
    .end local v1    # "current":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x1

    #@23
    .local v0, "changed":Z
    goto :goto_0

    #@24
    .line 145
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    #@25
    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    #@0
    .prologue
    .line 656
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    #@3
    .line 658
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 659
    check-cast p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@9
    .end local p1    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mState:Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;

    #@b
    .line 655
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 90
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@6
    if-eqz v1, :cond_1

    #@8
    if-nez v0, :cond_0

    #@a
    if-eqz p2, :cond_1

    #@c
    .line 91
    :cond_0
    if-eqz p1, :cond_2

    #@e
    .line 92
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable;->mTransition:Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;

    #@10
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;->start()V

    #@13
    .line 99
    :cond_1
    :goto_0
    return v0

    #@14
    .line 95
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    #@17
    goto :goto_0
.end method
