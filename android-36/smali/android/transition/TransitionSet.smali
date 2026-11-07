.class public Landroid/transition/TransitionSet;
.super Landroid/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field static final blacklist FLAG_CHANGE_EPICENTER:I = 0x8

.field private static final blacklist FLAG_CHANGE_INTERPOLATOR:I = 0x1

.field private static final blacklist FLAG_CHANGE_PATH_MOTION:I = 0x4

.field private static final blacklist FLAG_CHANGE_PROPAGATION:I = 0x2

.field public static final whitelist ORDERING_SEQUENTIAL:I = 0x1

.field public static final whitelist ORDERING_TOGETHER:I


# instance fields
.field private blacklist mChangeFlags:I

.field greylist-max-o mCurrentListeners:I

.field private greylist-max-o mPlayTogether:Z

.field greylist-max-o mStarted:Z

.field greylist-max-o mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 79
    iput v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 79
    iput v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    .line 105
    sget-object v1, Lcom/android/internal/R$styleable;->TransitionSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 106
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 108
    .local v0, "ordering":I
    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 109
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    return-void
.end method

.method private blacklist addTransitionInternal(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 187
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iput-object p0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 189
    return-void
.end method

.method private greylist-max-o setupStartEndListeners()V
    .registers 4

    .line 387
    new-instance v0, Landroid/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v0, p0}, Landroid/transition/TransitionSet$TransitionSetListener;-><init>(Landroid/transition/TransitionSet;)V

    .line 388
    .local v0, "listener":Landroid/transition/TransitionSet$TransitionSetListener;
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .line 389
    .local v2, "childTransition":Landroid/transition/Transition;
    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 390
    .end local v2    # "childTransition":Landroid/transition/Transition;
    goto :goto_b

    .line 391
    :cond_1b
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    .line 392
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 286
    invoke-super {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic whitelist addTarget(I)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(I)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addTarget(I)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "targetId"    # I

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 263
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "target"    # Landroid/view/View;

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 255
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "targetType"    # Ljava/lang/Class;

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 279
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "targetName"    # Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 271
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .registers 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 165
    if-eqz p1, :cond_46

    .line 166
    invoke-direct {p0, p1}, Landroid/transition/TransitionSet;->addTransitionInternal(Landroid/transition/Transition;)V

    .line 167
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    .line 168
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 170
    :cond_12
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    .line 171
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 173
    :cond_1f
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    .line 174
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getPropagation()Landroid/transition/TransitionPropagation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 176
    :cond_2c
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_39

    .line 177
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 179
    :cond_39
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_46

    .line 180
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getEpicenterCallback()Landroid/transition/Transition$EpicenterCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 183
    :cond_46
    return-object p0
.end method

.method protected greylist-max-o cancel()V
    .registers 4

    .line 542
    invoke-super {p0}, Landroid/transition/Transition;->cancel()V

    .line 543
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 545
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->cancel()V

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 547
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 500
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 501
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    .line 502
    .local v1, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 503
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 504
    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v1    # "childTransition":Landroid/transition/Transition;
    :cond_2a
    goto :goto_e

    .line 508
    :cond_2b
    return-void
.end method

.method greylist-max-o capturePropagationValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 512
    invoke-super {p0, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 513
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 515
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 517
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 488
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 489
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    .line 490
    .local v1, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 491
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 492
    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v1    # "childTransition":Landroid/transition/Transition;
    :cond_2a
    goto :goto_e

    .line 496
    :cond_2b
    return-void
.end method

.method public bridge synthetic whitelist clone()Landroid/transition/Transition;
    .registers 2

    .line 55
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clone()Landroid/transition/TransitionSet;
    .registers 5

    .line 609
    invoke-super {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 610
    .local v0, "clone":Landroid/transition/TransitionSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 611
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 612
    .local v1, "numTransitions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_28

    .line 613
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/transition/TransitionSet;->addTransitionInternal(Landroid/transition/Transition;)V

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 615
    .end local v2    # "i":I
    :cond_28
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 17
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/TransitionValuesMaps;",
            "Landroid/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getStartDelay()J

    move-result-wide v0

    .line 431
    .local v0, "startDelay":J
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 432
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_3f

    .line 433
    iget-object v4, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/transition/Transition;

    .line 436
    .local v5, "childTransition":Landroid/transition/Transition;
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-lez v4, :cond_33

    iget-boolean v4, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-nez v4, :cond_22

    if-nez v3, :cond_33

    .line 437
    :cond_22
    invoke-virtual {v5}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v8

    .line 438
    .local v8, "childStartDelay":J
    cmp-long v4, v8, v6

    if-lez v4, :cond_30

    .line 439
    add-long v6, v0, v8

    invoke-virtual {v5, v6, v7}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    goto :goto_33

    .line 441
    :cond_30
    invoke-virtual {v5, v0, v1}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 444
    .end local v8    # "childStartDelay":J
    :cond_33
    :goto_33
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 432
    .end local v5    # "childTransition":Landroid/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 447
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method public whitelist excludeTarget(IZ)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 340
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 324
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .registers 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 348
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 332
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o forceToEnd(Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 552
    invoke-super {p0, p1}, Landroid/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 553
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 554
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 555
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 557
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public whitelist getOrdering()I
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getTransitionAt(I)Landroid/transition/Transition;
    .registers 3
    .param p1, "index"    # I

    .line 210
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 213
    :cond_b
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    return-object v0

    .line 211
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTransitionCount()I
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-o pause(Landroid/view/View;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 522
    invoke-super {p0, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 523
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 524
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 525
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 527
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public bridge synthetic whitelist removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 355
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic whitelist removeTarget(I)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(I)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist removeTarget(I)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "targetId"    # I

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 292
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "target"    # Landroid/view/View;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 300
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "target"    # Ljava/lang/Class;

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 308
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 316
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    .end local v0    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 376
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 377
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 378
    return-object p0
.end method

.method public greylist-max-o resume(Landroid/view/View;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 532
    invoke-super {p0, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 533
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 534
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 535
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 537
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method protected greylist-max-o runAnimators()V
    .registers 6

    .line 454
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 455
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->start()V

    .line 456
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->end()V

    .line 457
    return-void

    .line 459
    :cond_f
    invoke-direct {p0}, Landroid/transition/TransitionSet;->setupStartEndListeners()V

    .line 460
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 461
    .local v0, "numTransitions":I
    iget-boolean v1, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-nez v1, :cond_4b

    .line 464
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_3c

    .line 465
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .line 466
    .local v2, "previousTransition":Landroid/transition/Transition;
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    .line 467
    .local v3, "nextTransition":Landroid/transition/Transition;
    new-instance v4, Landroid/transition/TransitionSet$1;

    invoke-direct {v4, p0, v3}, Landroid/transition/TransitionSet$1;-><init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 464
    .end local v2    # "previousTransition":Landroid/transition/Transition;
    .end local v3    # "nextTransition":Landroid/transition/Transition;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 475
    .end local v1    # "i":I
    :cond_3c
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    .line 476
    .local v1, "firstTransition":Landroid/transition/Transition;
    if-eqz v1, :cond_4a

    .line 477
    invoke-virtual {v1}, Landroid/transition/Transition;->runAnimators()V

    .line 479
    .end local v1    # "firstTransition":Landroid/transition/Transition;
    :cond_4a
    goto :goto_5c

    .line 480
    :cond_4b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c
    if-ge v1, v0, :cond_5c

    .line 481
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->runAnimators()V

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 484
    .end local v1    # "i":I
    :cond_5c
    :goto_5c
    return-void
.end method

.method greylist-max-o setCanRemoveViews(Z)V
    .registers 5
    .param p1, "canRemoveViews"    # Z

    .line 571
    invoke-super {p0, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 572
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 573
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 574
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 576
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method public bridge synthetic whitelist setDuration(J)Landroid/transition/Transition;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDuration(J)Landroid/transition/TransitionSet;
    .registers 7
    .param p1, "duration"    # J

    .line 225
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 226
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 227
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 228
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_26

    .line 229
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 232
    .end local v0    # "numTransitions":I
    .end local v1    # "i":I
    :cond_26
    return-object p0
.end method

.method public whitelist setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .registers 5
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .line 590
    invoke-super {p0, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 591
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    .line 592
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 594
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 596
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public bridge synthetic whitelist setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;
    .registers 5
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 242
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    .line 243
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    .line 244
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 245
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 246
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 249
    .end local v0    # "numTransitions":I
    .end local v1    # "i":I
    :cond_21
    invoke-super {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public whitelist setOrdering(I)Landroid/transition/TransitionSet;
    .registers 5
    .param p1, "ordering"    # I

    .line 121
    packed-switch p1, :pswitch_data_26

    .line 129
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 124
    goto :goto_24

    .line 126
    :pswitch_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 127
    nop

    .line 132
    :goto_24
    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setPathMotion(Landroid/transition/PathMotion;)V
    .registers 4
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    .line 360
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 361
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    .line 362
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 364
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 367
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method public whitelist setPropagation(Landroid/transition/TransitionPropagation;)V
    .registers 5
    .param p1, "propagation"    # Landroid/transition/TransitionPropagation;

    .line 580
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 581
    iget v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/transition/TransitionSet;->mChangeFlags:I

    .line 582
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 583
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 584
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 586
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method bridge synthetic blacklist setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 561
    invoke-super {p0, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 562
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 563
    .local v0, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 564
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 566
    .end local v1    # "i":I
    :cond_1a
    return-object p0
.end method

.method public bridge synthetic whitelist setStartDelay(J)Landroid/transition/Transition;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setStartDelay(J)Landroid/transition/TransitionSet;
    .registers 4
    .param p1, "startDelay"    # J

    .line 237
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method greylist-max-o toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "indent"    # Ljava/lang/String;

    .line 600
    invoke-super {p0, p1}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 604
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method
