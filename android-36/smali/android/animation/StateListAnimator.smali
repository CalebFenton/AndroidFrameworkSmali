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
.field private greylist-max-o mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

.field private greylist-max-o mLastMatch:Landroid/animation/StateListAnimator$Tuple;

.field private greylist-max-o mRunningAnimator:Landroid/animation/Animator;

.field private greylist-max-o mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRunningAnimator(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConstantState(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/StateListAnimator;->mConstantState:Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRunningAnimator(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)V
    .registers 2

    iput-object p1, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 53
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 60
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    .line 61
    return-void
.end method

.method private greylist-max-o cancel()V
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    .line 193
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 196
    :cond_c
    return-void
.end method

.method private greylist-max-o clearTarget()V
    .registers 5

    .line 126
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 127
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1a

    .line 128
    iget-object v3, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    iget-object v3, v3, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 130
    .end local v1    # "i":I
    :cond_1a
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 131
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 132
    iput-object v2, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 133
    return-void
.end method

.method private greylist-max-o initAnimatorListener()V
    .registers 2

    .line 64
    new-instance v0, Landroid/animation/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$1;-><init>(Landroid/animation/StateListAnimator;)V

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 73
    return-void
.end method

.method private greylist-max-o start(Landroid/animation/StateListAnimator$Tuple;)V
    .registers 4
    .param p1, "match"    # Landroid/animation/StateListAnimator$Tuple;

    .line 186
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p1, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 188
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 189
    return-void
.end method


# virtual methods
.method public whitelist addState([ILandroid/animation/Animator;)V
    .registers 6
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    .line 83
    new-instance v0, Landroid/animation/StateListAnimator$Tuple;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator-IA;)V

    .line 84
    .local v0, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v1, v0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget v1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    invoke-virtual {p2}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    .line 87
    return-void
.end method

.method public greylist-max-o appendChangingConfigurations(I)V
    .registers 3
    .param p1, "configs"    # I

    .line 252
    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    .line 253
    return-void
.end method

.method public whitelist clone()Landroid/animation/StateListAnimator;
    .registers 7

    .line 138
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/StateListAnimator;

    .line 139
    .local v0, "clone":Landroid/animation/StateListAnimator;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    .line 140
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 141
    iput-object v1, v0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    .line 142
    iput-object v1, v0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 143
    iput-object v1, v0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 144
    invoke-direct {v0}, Landroid/animation/StateListAnimator;->initAnimatorListener()V

    .line 145
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 146
    .local v1, "tupleSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_43

    .line 147
    iget-object v3, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    .line 148
    .local v3, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v4

    .line 149
    .local v4, "animatorClone":Landroid/animation/Animator;
    iget-object v5, p0, Landroid/animation/StateListAnimator;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    iget-object v5, v3, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    invoke-virtual {v0, v5, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 146
    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    .end local v4    # "animatorClone":Landroid/animation/Animator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 152
    .end local v2    # "i":I
    :cond_43
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/animation/StateListAnimator;->setChangingConfigurations(I)V
    :try_end_4a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 153
    return-object v0

    .line 154
    .end local v0    # "clone":Landroid/animation/StateListAnimator;
    .end local v1    # "tupleSize":I
    :catch_4b
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot clone state list animator"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createConstantState()Landroid/content/res/ConstantState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;

    invoke-direct {v0, p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;-><init>(Landroid/animation/StateListAnimator;)V

    return-object v0
.end method

.method public greylist-max-o getChangingConfigurations()I
    .registers 2

    .line 228
    iget v0, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    return v0
.end method

.method public greylist-max-o getRunningAnimator()Landroid/animation/Animator;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public greylist-max-o getTarget()Landroid/view/View;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_e
    return-object v0
.end method

.method public greylist-max-o getTuples()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist jumpToCurrentState()V
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    .line 212
    iget-object v0, p0, Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 214
    :cond_9
    return-void
.end method

.method public greylist-max-o setChangingConfigurations(I)V
    .registers 2
    .param p1, "configs"    # I

    .line 242
    iput p1, p0, Landroid/animation/StateListAnimator;->mChangingConfigurations:I

    .line 243
    return-void
.end method

.method public greylist-max-o setState([I)V
    .registers 7
    .param p1, "state"    # [I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "match":Landroid/animation/StateListAnimator$Tuple;
    iget-object v1, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 166
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1f

    .line 167
    iget-object v3, p0, Landroid/animation/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/StateListAnimator$Tuple;

    .line 168
    .local v3, "tuple":Landroid/animation/StateListAnimator$Tuple;
    iget-object v4, v3, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 169
    move-object v0, v3

    .line 170
    goto :goto_1f

    .line 166
    .end local v3    # "tuple":Landroid/animation/StateListAnimator$Tuple;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 173
    .end local v2    # "i":I
    :cond_1f
    :goto_1f
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    if-ne v0, v2, :cond_24

    .line 174
    return-void

    .line 176
    :cond_24
    iget-object v2, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    if-eqz v2, :cond_2b

    .line 177
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->cancel()V

    .line 179
    :cond_2b
    iput-object v0, p0, Landroid/animation/StateListAnimator;->mLastMatch:Landroid/animation/StateListAnimator$Tuple;

    .line 180
    if-eqz v0, :cond_32

    .line 181
    invoke-direct {p0, v0}, Landroid/animation/StateListAnimator;->start(Landroid/animation/StateListAnimator$Tuple;)V

    .line 183
    :cond_32
    return-void
.end method

.method public greylist-max-o setTarget(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->getTarget()Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "current":Landroid/view/View;
    if-ne v0, p1, :cond_7

    .line 114
    return-void

    .line 116
    :cond_7
    if-eqz v0, :cond_c

    .line 117
    invoke-direct {p0}, Landroid/animation/StateListAnimator;->clearTarget()V

    .line 119
    :cond_c
    if-eqz p1, :cond_15

    .line 120
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/animation/StateListAnimator;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 123
    :cond_15
    return-void
.end method
