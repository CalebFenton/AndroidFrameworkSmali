.class public Landroid/animation/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/StateListAnimator$Tuple;,
        Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
    }
.end annotation


# instance fields
.field private mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mChangingConfigurations:I

.field private mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

.field private mLastMatch:Landroid/animation/StateListAnimator$Tuple;

.field private mRunningAnimator:Landroid/animation/Animator;

.field private mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/animation/StateListAnimator;->mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@b
    .line 51
    iput-object v1, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    #@d
    .line 52
    iput-object v1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@f
    .line 59
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    #@12
    .line 58
    return-void
.end method

.method private cancel()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 191
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 192
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@a
    .line 193
    iput-object v1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@c
    .line 190
    :cond_0
    return-void
.end method

.method private clearTarget()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 125
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    .line 126
    .local v1, "size":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 127
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/animation/StateListAnimator$Tuple;

    #@12
    iget-object v2, v2, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    #@14
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@17
    .line 126
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 129
    :cond_0
    iput-object v3, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    #@1c
    .line 130
    iput-object v3, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    #@1e
    .line 131
    iput-object v3, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@20
    .line 124
    return-void
.end method

.method private initAnimatorListener()V
    .locals 1

    #@0
    .prologue
    .line 63
    new-instance v0, Landroid/animation/StateListAnimator$1;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$1;-><init>(Landroid/animation/StateListAnimator;)V

    #@5
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    #@7
    .line 62
    return-void
.end method

.method private start(Landroid/animation/StateListAnimator$Tuple;)V
    .locals 2
    .param p1, "match"    # Landroid/animation/StateListAnimator$Tuple;

    #@0
    .prologue
    .line 185
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    #@2
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@9
    .line 186
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    #@b
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@d
    .line 187
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@f
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@12
    .line 184
    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/Animator;)V
    .locals 3
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/animation/StateListAnimator$Tuple;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, p2, v1}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator$Tuple;)V

    #@6
    .line 83
    .local v0, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v1, v0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    #@8
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    #@a
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@d
    .line 84
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 85
    iget v1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    #@14
    invoke-virtual {p2}, Landroid/animation/Animator;->getChangingConfigurations()I

    #@17
    move-result v2

    #@18
    or-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    #@1b
    .line 81
    return-void
.end method

.method public appendChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    #@0
    .prologue
    .line 251
    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    #@5
    .line 250
    return-void
.end method

.method public clone()Landroid/animation/StateListAnimator;
    .locals 8

    #@0
    .prologue
    .line 137
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/animation/StateListAnimator;

    #@6
    .line 138
    .local v1, "clone":Landroid/animation/StateListAnimator;
    new-instance v6, Ljava/util/ArrayList;

    #@8
    iget-object v7, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v7

    #@e
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v6, v1, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@13
    .line 139
    const/4 v6, 0x0

    #@14
    iput-object v6, v1, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    #@16
    .line 140
    const/4 v6, 0x0

    #@17
    iput-object v6, v1, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@19
    .line 141
    const/4 v6, 0x0

    #@1a
    iput-object v6, v1, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    #@1c
    .line 142
    const/4 v6, 0x0

    #@1d
    iput-object v6, v1, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    #@1f
    .line 143
    invoke-direct {v1}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    #@22
    .line 144
    iget-object v6, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v5

    #@28
    .line 145
    .local v5, "tupleSize":I
    const/4 v3, 0x0

    #@29
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    #@2b
    .line 146
    iget-object v6, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Landroid/animation/StateListAnimator$Tuple;

    #@33
    .line 147
    .local v4, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v6, v4, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    #@35
    invoke-virtual {v6}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@38
    move-result-object v0

    #@39
    .line 148
    .local v0, "animatorClone":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    #@3b
    invoke-virtual {v0, v6}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3e
    .line 149
    iget-object v6, v4, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    #@40
    invoke-virtual {v1, v6, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    #@43
    .line 145
    add-int/lit8 v3, v3, 0x1

    #@45
    goto :goto_0

    #@46
    .line 151
    .end local v0    # "animatorClone":Landroid/animation/Animator;
    .end local v4    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_0
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    #@49
    move-result v6

    #@4a
    invoke-virtual {v1, v6}, Landroid/animation/StateListAnimator;->setChangingConfigurations(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 152
    return-object v1

    #@4e
    .line 153
    .end local v1    # "clone":Landroid/animation/StateListAnimator;
    .end local v3    # "i":I
    .end local v5    # "tupleSize":I
    :catch_0
    move-exception v2

    #@4f
    .line 154
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v6, Ljava/lang/AssertionError;

    #@51
    const-string/jumbo v7, "cannot clone state list animator"

    #@54
    invoke-direct {v6, v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@57
    throw v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 269
    new-instance v0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;-><init>(Landroid/animation/StateListAnimator;)V

    #@5
    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public getRunningAnimator()Landroid/animation/Animator;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@2
    return-object v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    goto :goto_0
.end method

.method public getTuples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 211
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    #@6
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@9
    .line 209
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    #@0
    .prologue
    .line 241
    iput p1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    #@2
    .line 240
    return-void
.end method

.method public setState([I)V
    .locals 5
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 163
    const/4 v2, 0x0

    #@1
    .line 164
    .local v2, "match":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    .line 165
    .local v0, "count":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@a
    .line 166
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    #@12
    .line 167
    .local v3, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    #@14
    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 168
    move-object v2, v3

    #@1b
    .line 172
    .end local v2    # "match":Landroid/animation/StateListAnimator$Tuple;
    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_0
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    #@1d
    if-ne v2, v4, :cond_2

    #@1f
    .line 173
    return-void

    #@20
    .line 165
    .restart local v2    # "match":Landroid/animation/StateListAnimator$Tuple;
    .restart local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 175
    .end local v2    # "match":Landroid/animation/StateListAnimator$Tuple;
    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_2
    iget-object v4, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 176
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->cancel()V

    #@2a
    .line 178
    :cond_3
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    #@2c
    .line 179
    if-eqz v2, :cond_4

    #@2e
    .line 180
    invoke-direct {p0, v2}, Landroid/animation/StateListAnimator;->start(Landroid/animation/StateListAnimator$Tuple;)V

    #@31
    .line 162
    :cond_4
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 112
    .local v0, "current":Landroid/view/View;
    if-ne v0, p1, :cond_0

    #@6
    .line 113
    return-void

    #@7
    .line 115
    :cond_0
    if-eqz v0, :cond_1

    #@9
    .line 116
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->clearTarget()V

    #@c
    .line 118
    :cond_1
    if-eqz p1, :cond_2

    #@e
    .line 119
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@10
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@13
    iput-object v1, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    #@15
    .line 110
    :cond_2
    return-void
.end method
