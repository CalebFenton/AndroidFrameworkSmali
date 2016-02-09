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
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@a
    .line 58
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    #@d
    .line 60
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mStarted:Z

    #@10
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    #@6
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    .line 58
    const/4 v2, 0x1

    #@c
    iput-boolean v2, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    #@e
    .line 60
    iput-boolean v3, p0, Landroid/transition/TransitionSet;->mStarted:Z

    #@10
    .line 86
    sget-object v2, Lcom/android/internal/R$styleable;->TransitionSet:[I

    #@12
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@15
    move-result-object v0

    #@16
    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result v1

    #@1a
    .line 89
    .local v1, "ordering":I
    invoke-virtual {p0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    #@1d
    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@20
    .line 84
    return-void
.end method

.method private setupStartEndListeners()V
    .locals 4

    #@0
    .prologue
    .line 348
    new-instance v2, Landroid/transition/TransitionSet$TransitionSetListener;

    #@2
    invoke-direct {v2, p0}, Landroid/transition/TransitionSet$TransitionSetListener;-><init>(Landroid/transition/TransitionSet;)V

    #@5
    .line 349
    .local v2, "listener":Landroid/transition/TransitionSet$TransitionSetListener;
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "childTransition$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/transition/Transition;

    #@17
    .line 350
    .local v0, "childTransition":Landroid/transition/Transition;
    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@1a
    goto :goto_0

    #@1b
    .line 352
    .end local v0    # "childTransition":Landroid/transition/Transition;
    :cond_0
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v3

    #@21
    iput v3, p0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    #@23
    .line 347
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 240
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/transition/TransitionSet;

    #@6
    return-object v0
.end method

.method public bridge synthetic addTarget(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I

    #@0
    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(I)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 208
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetType"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 232
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public addTarget(I)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 218
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    #@14
    .line 217
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 210
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@14
    .line 209
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetType"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 233
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 234
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    #@14
    .line 233
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 236
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 226
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    #@14
    .line 225
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 143
    if-eqz p1, :cond_0

    #@2
    .line 144
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    .line 145
    iput-object p0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@9
    .line 146
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-ltz v0, :cond_0

    #@11
    .line 147
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    #@13
    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    #@16
    .line 150
    :cond_0
    return-object p0
.end method

.method protected cancel()V
    .locals 3

    #@0
    .prologue
    .line 503
    invoke-super {p0}, Landroid/transition/Transition;->cancel()V

    #@3
    .line 504
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 505
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 506
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2}, Landroid/transition/Transition;->cancel()V

    #@17
    .line 505
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 502
    :cond_0
    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 461
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    invoke-virtual {p0, v2}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 462
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "childTransition$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/transition/Transition;

    #@1a
    .line 463
    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@1c
    invoke-virtual {v0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 464
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@25
    .line 465
    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 460
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "childTransition$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 474
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 475
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 476
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    #@17
    .line 475
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 472
    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 449
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    invoke-virtual {p0, v2}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 450
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "childTransition$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/transition/Transition;

    #@1a
    .line 451
    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@1c
    invoke-virtual {v0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 452
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@25
    .line 453
    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 448
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "childTransition$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public clone()Landroid/transition/TransitionSet;
    .locals 4

    #@0
    .prologue
    .line 558
    invoke-super {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/transition/TransitionSet;

    #@6
    .line 559
    .local v0, "clone":Landroid/transition/TransitionSet;
    new-instance v3, Ljava/util/ArrayList;

    #@8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v3, v0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@d
    .line 560
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v2

    #@13
    .line 561
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@16
    .line 562
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/transition/Transition;

    #@1e
    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@25
    .line 561
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 564
    :cond_0
    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/TransitionValuesMaps;",
            "Landroid/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 391
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getStartDelay()J

    #@3
    move-result-wide v10

    #@4
    .line 392
    .local v10, "startDelay":J
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v9

    #@a
    .line 393
    .local v9, "numTransitions":I
    const/4 v8, 0x0

    #@b
    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_3

    #@d
    .line 394
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/transition/Transition;

    #@15
    .line 397
    .local v0, "childTransition":Landroid/transition/Transition;
    const-wide/16 v2, 0x0

    #@17
    cmp-long v1, v10, v2

    #@19
    if-lez v1, :cond_1

    #@1b
    iget-boolean v1, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    #@1d
    if-nez v1, :cond_0

    #@1f
    if-nez v8, :cond_1

    #@21
    .line 398
    :cond_0
    invoke-virtual {v0}, Landroid/transition/Transition;->getStartDelay()J

    #@24
    move-result-wide v6

    #@25
    .line 399
    .local v6, "childStartDelay":J
    const-wide/16 v2, 0x0

    #@27
    cmp-long v1, v6, v2

    #@29
    if-lez v1, :cond_2

    #@2b
    .line 400
    add-long v2, v10, v6

    #@2d
    invoke-virtual {v0, v2, v3}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    #@30
    .end local v6    # "childStartDelay":J
    :cond_1
    :goto_1
    move-object v1, p1

    #@31
    move-object v2, p2

    #@32
    move-object v3, p3

    #@33
    move-object/from16 v4, p4

    #@35
    move-object/from16 v5, p5

    #@37
    .line 405
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@3a
    .line 393
    add-int/lit8 v8, v8, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 402
    .restart local v6    # "childStartDelay":J
    :cond_2
    invoke-virtual {v0, v10, v11}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    #@40
    goto :goto_1

    #@41
    .line 390
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v6    # "childStartDelay":J
    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 295
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    #@14
    .line 294
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 297
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 278
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 279
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@14
    .line 278
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 281
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 302
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 303
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    #@14
    .line 302
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 305
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 286
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 287
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    #@14
    .line 286
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 289
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public forceVisibility(IZ)V
    .locals 3
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    #@0
    .prologue
    .line 324
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 325
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 326
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/transition/Transition;

    #@11
    invoke-virtual {v2, p1, p2}, Landroid/transition/Transition;->forceVisibility(IZ)V

    #@14
    .line 325
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 323
    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public getTransitionAt(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 172
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 173
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 175
    :cond_1
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/transition/Transition;

    #@14
    return-object v0
.end method

.method public getTransitionCount()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    #@0
    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    #@3
    .line 484
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 485
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 486
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    #@17
    .line 485
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 482
    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 309
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/transition/TransitionSet;

    #@6
    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I

    #@0
    .prologue
    .line 245
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(I)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public removeTarget(I)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    #@0
    .prologue
    .line 246
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 247
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    #@14
    .line 246
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 254
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 255
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@14
    .line 254
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 262
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 263
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    #@14
    .line 262
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 270
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 271
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    #@14
    .line 270
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 273
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/transition/TransitionSet;

    #@1d
    return-object v1
.end method

.method public removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 338
    const/4 v0, 0x0

    #@6
    iput-object v0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@8
    .line 339
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    #@0
    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    #@3
    .line 494
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 495
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 496
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    #@17
    .line 495
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 492
    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 7

    #@0
    .prologue
    .line 415
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 416
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->start()V

    #@b
    .line 417
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->end()V

    #@e
    .line 418
    return-void

    #@f
    .line 420
    :cond_0
    invoke-direct {p0}, Landroid/transition/TransitionSet;->setupStartEndListeners()V

    #@12
    .line 421
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    .line 422
    .local v3, "numTransitions":I
    iget-boolean v5, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    #@1a
    if-nez v5, :cond_3

    #@1c
    .line 425
    const/4 v1, 0x1

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1f
    .line 426
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@21
    add-int/lit8 v6, v1, -0x1

    #@23
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Landroid/transition/Transition;

    #@29
    .line 427
    .local v4, "previousTransition":Landroid/transition/Transition;
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/transition/Transition;

    #@31
    .line 428
    .local v2, "nextTransition":Landroid/transition/Transition;
    new-instance v5, Landroid/transition/TransitionSet$1;

    #@33
    invoke-direct {v5, p0, v2}, Landroid/transition/TransitionSet$1;-><init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V

    #@36
    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@39
    .line 425
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 436
    .end local v2    # "nextTransition":Landroid/transition/Transition;
    .end local v4    # "previousTransition":Landroid/transition/Transition;
    :cond_1
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3e
    const/4 v6, 0x0

    #@3f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/transition/Transition;

    #@45
    .line 437
    .local v0, "firstTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_2

    #@47
    .line 438
    invoke-virtual {v0}, Landroid/transition/Transition;->runAnimators()V

    #@4a
    .line 414
    .end local v0    # "firstTransition":Landroid/transition/Transition;
    :cond_2
    return-void

    #@4b
    .line 441
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    #@4c
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@4e
    .line 442
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    check-cast v5, Landroid/transition/Transition;

    #@56
    invoke-virtual {v5}, Landroid/transition/Transition;->runAnimators()V

    #@59
    .line 441
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_1
.end method

.method setCanRemoveViews(Z)V
    .locals 3
    .param p1, "canRemoveViews"    # Z

    #@0
    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    #@3
    .line 523
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 524
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 525
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    #@17
    .line 524
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 521
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/transition/Transition;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setDuration(J)Landroid/transition/TransitionSet;
    .locals 7
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    #@3
    .line 188
    iget-wide v2, p0, Landroid/transition/TransitionSet;->mDuration:J

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v2, v2, v4

    #@9
    if-ltz v2, :cond_0

    #@b
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 189
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v1

    #@15
    .line 190
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@18
    .line 191
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/transition/Transition;

    #@20
    invoke-virtual {v2, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    #@23
    .line 190
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 194
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 3
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    #@0
    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@3
    .line 541
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 542
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 543
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@17
    .line 542
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 539
    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 203
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/transition/TransitionSet;

    #@6
    return-object v0
.end method

.method public setOrdering(I)Landroid/transition/TransitionSet;
    .locals 3
    .param p1, "ordering"    # I

    #@0
    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    #@3
    .line 110
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid parameter for TransitionSet ordering: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 104
    :pswitch_0
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    #@20
    .line 113
    :goto_0
    return-object p0

    #@21
    .line 107
    :pswitch_1
    const/4 v0, 0x1

    #@22
    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    #@24
    goto :goto_0

    #@25
    .line 102
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 2
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    #@0
    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    #@3
    .line 316
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 317
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/transition/Transition;

    #@14
    invoke-virtual {v1, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    #@17
    .line 316
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 314
    :cond_0
    return-void
.end method

.method public setPropagation(Landroid/transition/TransitionPropagation;)V
    .locals 3
    .param p1, "propagation"    # Landroid/transition/TransitionPropagation;

    #@0
    .prologue
    .line 531
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    #@3
    .line 532
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 533
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 534
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    #@17
    .line 533
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 530
    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 511
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    #@3
    .line 513
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 514
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 515
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    #@17
    .line 514
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 517
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroid/transition/Transition;
    .locals 1
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setStartDelay(J)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/transition/TransitionSet;

    #@6
    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 550
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "\n"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/transition/Transition;

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    const-string/jumbo v5, "  "

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v2, v4}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 550
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 553
    :cond_0
    return-object v1
.end method
