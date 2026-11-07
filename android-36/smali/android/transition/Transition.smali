.class public abstract Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Transition$AnimationInfo;,
        Landroid/transition/Transition$ArrayListManager;,
        Landroid/transition/Transition$TransitionListener;,
        Landroid/transition/Transition$EpicenterCallback;
    }
.end annotation


# static fields
.field static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o DEFAULT_MATCH_ORDER:[I

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final greylist-max-o MATCH_FIRST:I = 0x1

.field public static final whitelist MATCH_ID:I = 0x3

.field private static final greylist-max-o MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final whitelist MATCH_INSTANCE:I = 0x1

.field private static final greylist-max-o MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final whitelist MATCH_ITEM_ID:I = 0x4

.field private static final greylist-max-o MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final greylist-max-o MATCH_LAST:I = 0x4

.field public static final whitelist MATCH_NAME:I = 0x2

.field private static final greylist-max-o MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final greylist-max-o MATCH_VIEW_NAME_STR:Ljava/lang/String; = "viewName"

.field private static final greylist-max-o STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

.field private static greylist-max-o sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


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

.field greylist-max-o mCanRemoveViews:Z

.field private greylist-max-o mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mDuration:J

.field private greylist-max-o mEndValues:Landroid/transition/TransitionValuesMaps;

.field greylist-max-o mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEnded:Z

.field greylist-max-o mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

.field greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field greylist-max-o mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mMatchOrder:[I

.field private greylist-max-o mName:Ljava/lang/String;

.field greylist-max-o mNameOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mNumInstances:I

.field greylist-max-o mParent:Landroid/transition/TransitionSet;

.field greylist-max-o mPathMotion:Landroid/transition/PathMotion;

.field greylist-max-o mPaused:Z

.field greylist-max-o mPropagation:Landroid/transition/TransitionPropagation;

.field greylist-max-o mSceneRoot:Landroid/view/ViewGroup;

.field greylist-max-o mStartDelay:J

.field private greylist-max-o mStartValues:Landroid/transition/TransitionValuesMaps;

.field greylist-max-o mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentAnimators(Landroid/transition/Transition;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 162
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 169
    new-instance v0, Landroid/transition/Transition$1;

    invoke-direct {v0}, Landroid/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    .line 203
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    .line 181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 182
    iput-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 196
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 197
    iput-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 198
    sget-object v1, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 207
    iput-object v0, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroid/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroid/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 260
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    .line 181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 182
    iput-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 196
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 197
    iput-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 198
    sget-object v1, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 207
    iput-object v0, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroid/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroid/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 273
    sget-object v0, Lcom/android/internal/R$styleable;->Transition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v4, v2

    .line 275
    .local v4, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_7f

    .line 276
    invoke-virtual {p0, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 278
    :cond_7f
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    .line 279
    .local v2, "startDelay":J
    cmp-long v6, v2, v6

    if-lez v6, :cond_8c

    .line 280
    invoke-virtual {p0, v2, v3}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 282
    :cond_8c
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 283
    .local v1, "resID":I
    if-lez v1, :cond_99

    .line 284
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 286
    :cond_99
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "matchOrder":Ljava/lang/String;
    if-eqz v6, :cond_a7

    .line 288
    invoke-static {v6}, Landroid/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/transition/Transition;->setMatchOrder([I)V

    .line 290
    :cond_a7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    return-void
.end method

.method private greylist-max-o addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 636
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_23

    .line 637
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionValues;

    .line 638
    .local v1, "start":Landroid/transition/TransitionValues;
    iget-object v3, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 639
    iget-object v3, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v3, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v1    # "start":Landroid/transition/TransitionValues;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 645
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_24
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 646
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionValues;

    .line 647
    .local v1, "end":Landroid/transition/TransitionValues;
    iget-object v3, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 648
    iget-object v3, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v3, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v1    # "end":Landroid/transition/TransitionValues;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 652
    .end local v0    # "i":I
    :cond_45
    return-void
.end method

.method static greylist-max-o addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V
    .registers 12
    .param p0, "transitionValuesMaps"    # Landroid/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 1491
    iget-object v0, p0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1493
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1f

    .line 1494
    iget-object v2, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1a

    .line 1496
    iget-object v2, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 1498
    :cond_1a
    iget-object v2, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1501
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    .line 1502
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 1503
    iget-object v3, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1505
    iget-object v3, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 1507
    :cond_33
    iget-object v3, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_7d

    .line 1511
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1512
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1513
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1514
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1515
    .local v5, "itemId":J
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_74

    .line 1517
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1518
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_73

    .line 1519
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1520
    iget-object v8, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1522
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_73
    goto :goto_7d

    .line 1523
    :cond_74
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1524
    iget-object v1, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1528
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_7d
    :goto_7d
    return-void
.end method

.method private static greylist-max-o alreadyContains([II)Z
    .registers 5
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 520
    aget v0, p0, p1

    .line 521
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p1, :cond_e

    .line 522
    aget v2, p0, v1

    if-ne v2, v0, :cond_b

    .line 523
    const/4 v2, 0x1

    return v2

    .line 521
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 526
    .end local v1    # "i":I
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o captureHierarchy(Landroid/view/View;Z)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1562
    if-nez p1, :cond_3

    .line 1563
    return-void

    .line 1565
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1566
    .local v0, "id":I
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1567
    return-void

    .line 1569
    :cond_18
    iget-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1570
    return-void

    .line 1572
    :cond_25
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_46

    if-eqz p1, :cond_46

    .line 1573
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1574
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_46

    .line 1575
    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1576
    return-void

    .line 1574
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1580
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_71

    .line 1581
    new-instance v1, Landroid/transition/TransitionValues;

    invoke-direct {v1, p1}, Landroid/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1582
    .local v1, "values":Landroid/transition/TransitionValues;
    if-eqz p2, :cond_59

    .line 1583
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto :goto_5c

    .line 1585
    :cond_59
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 1587
    :goto_5c
    iget-object v2, v1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1589
    if-eqz p2, :cond_6c

    .line 1590
    iget-object v2, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_71

    .line 1592
    :cond_6c
    iget-object v2, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1595
    .end local v1    # "values":Landroid/transition/TransitionValues;
    :cond_71
    :goto_71
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c6

    .line 1597
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_86

    iget-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1598
    return-void

    .line 1600
    :cond_86
    iget-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_93

    iget-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1601
    return-void

    .line 1603
    :cond_93
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b2

    .line 1604
    iget-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1605
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9e
    if-ge v2, v1, :cond_b2

    .line 1606
    iget-object v3, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 1607
    return-void

    .line 1605
    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 1611
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_b2
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1612
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c6

    .line 1613
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1612
    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 1616
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_c6
    return-void
.end method

.method private static greylist-max-o excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1230
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_d

    .line 1231
    if-eqz p2, :cond_9

    .line 1232
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_d

    .line 1234
    :cond_9
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1237
    :cond_d
    :goto_d
    return-object p0
.end method

.method private static greylist-max-r getRunningAnimators()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 858
    sget-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 859
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_15

    .line 860
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 861
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 863
    :cond_15
    return-object v0
.end method

.method private static greylist-max-o isValidMatch(I)Z
    .registers 3
    .param p0, "match"    # I

    .line 516
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x4

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static greylist-max-o isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z
    .registers 6
    .param p0, "oldValues"    # Landroid/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1828
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_10

    .line 1830
    const/4 v0, 0x0

    return v0

    .line 1832
    :cond_10
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1833
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1835
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_22

    if-nez v1, :cond_22

    .line 1837
    const/4 v2, 0x0

    .local v2, "changed":Z
    goto :goto_2f

    .line 1838
    .end local v2    # "changed":Z
    :cond_22
    if-eqz v0, :cond_2e

    if-nez v1, :cond_27

    goto :goto_2e

    .line 1843
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .restart local v2    # "changed":Z
    goto :goto_2f

    .line 1840
    .end local v2    # "changed":Z
    :cond_2e
    :goto_2e
    const/4 v2, 0x1

    .line 1850
    .restart local v2    # "changed":Z
    :goto_2f
    return v2
.end method

.method private greylist-max-o matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 583
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 584
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 585
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 586
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 587
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 588
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 589
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 590
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 591
    .local v5, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 592
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 600
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private greylist-max-o matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 535
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_39

    .line 536
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 537
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_36

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 538
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/TransitionValues;

    .line 539
    .local v2, "end":Landroid/transition/TransitionValues;
    if-eqz v2, :cond_36

    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 540
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/TransitionValues;

    .line 541
    .local v3, "start":Landroid/transition/TransitionValues;
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroid/transition/TransitionValues;
    .end local v3    # "start":Landroid/transition/TransitionValues;
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 546
    .end local v0    # "i":I
    :cond_39
    return-void
.end method

.method private greylist-max-o matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 557
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 558
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 559
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 560
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 561
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 562
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 563
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 564
    .local v5, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 565
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 573
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private greylist-max-o matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 610
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 611
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 612
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 613
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 614
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 615
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 616
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 617
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 618
    .local v5, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 619
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 627
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private greylist-max-o matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .registers 8
    .param p1, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/transition/TransitionValuesMaps;

    .line 656
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 658
    .local v0, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p2, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 661
    .local v1, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3b

    .line 662
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_40

    goto :goto_38

    .line 675
    :pswitch_1c
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/transition/Transition;->matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    goto :goto_38

    .line 671
    :pswitch_24
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/transition/Transition;->matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 673
    goto :goto_38

    .line 667
    :pswitch_2c
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/transition/Transition;->matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 669
    goto :goto_38

    .line 664
    :pswitch_34
    invoke-direct {p0, v0, v1}, Landroid/transition/Transition;->matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 665
    nop

    .line 661
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 680
    .end local v2    # "i":I
    :cond_3b
    invoke-direct {p0, v0, v1}, Landroid/transition/Transition;->addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 681
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method private static greylist-max-o parseMatchOrder(Ljava/lang/String;)[I
    .registers 8
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 296
    .local v1, "matches":[I
    const/4 v2, 0x0

    .line 297
    .local v2, "index":I
    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 298
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "token":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_29

    .line 300
    const/4 v4, 0x3

    aput v4, v1, v2

    goto :goto_6b

    .line 301
    :cond_29
    const-string v4, "instance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 302
    aput v5, v1, v2

    goto :goto_6b

    .line 303
    :cond_34
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_40

    .line 304
    aput v6, v1, v2

    goto :goto_6b

    .line 305
    :cond_40
    const-string/jumbo v4, "viewName"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 306
    aput v6, v1, v2

    goto :goto_6b

    .line 307
    :cond_4c
    const-string v4, "itemId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 308
    const/4 v4, 0x4

    aput v4, v1, v2

    goto :goto_6b

    .line 309
    :cond_58
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 310
    array-length v4, v1

    sub-int/2addr v4, v5

    new-array v4, v4, [I

    .line 311
    .local v4, "smallerMatches":[I
    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    move-object v1, v4

    .line 313
    nop

    .end local v4    # "smallerMatches":[I
    add-int/lit8 v2, v2, -0x1

    .line 314
    nop

    .line 317
    :goto_6b
    nop

    .end local v3    # "token":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 318
    goto :goto_e

    .line 315
    .restart local v3    # "token":Ljava/lang/String;
    :cond_6e
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    .end local v3    # "token":Ljava/lang/String;
    :cond_8d
    return-object v1
.end method

.method private greylist-max-o runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_d

    .line 896
    new-instance v0, Landroid/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/transition/Transition$2;-><init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 907
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 909
    :cond_d
    return-void
.end method


# virtual methods
.method public whitelist addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 2005
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2008
    :cond_b
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    return-object p0
.end method

.method public whitelist addTarget(I)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I

    .line 988
    if-lez p1, :cond_b

    .line 989
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_b
    return-object p0
.end method

.method public whitelist addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .line 1320
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    return-object p0
.end method

.method public whitelist addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetType"    # Ljava/lang/Class;

    .line 1044
    if-eqz p1, :cond_12

    .line 1045
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1048
    :cond_d
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_12
    return-object p0
.end method

.method public whitelist addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1012
    if-eqz p1, :cond_12

    .line 1013
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1016
    :cond_d
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    :cond_12
    return-object p0
.end method

.method protected greylist-max-o animate(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1865
    if-nez p1, :cond_6

    .line 1866
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    goto :goto_43

    .line 1868
    :cond_6
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 1869
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1871
    :cond_17
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2b

    .line 1872
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1874
    :cond_2b
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1875
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1877
    :cond_38
    new-instance v0, Landroid/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/transition/Transition$3;-><init>(Landroid/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1884
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1886
    :goto_43
    return-void
.end method

.method public whitelist canRemoveViews()Z
    .registers 2

    .line 2209
    iget-boolean v0, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    return v0
.end method

.method protected greylist-max-r cancel()V
    .registers 6

    .line 1981
    iget-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1982
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1983
    iget-object v2, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 1984
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 1982
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1986
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 1987
    iget-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1988
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1989
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1990
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v2, :cond_3f

    .line 1991
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/transition/Transition;)V

    .line 1990
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1994
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method public abstract whitelist captureEndValues(Landroid/transition/TransitionValues;)V
.end method

.method greylist-max-o capturePropagationValues(Landroid/transition/TransitionValues;)V
    .registers 7
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 2181
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2182
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroid/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2183
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_15

    .line 2184
    return-void

    .line 2186
    :cond_15
    const/4 v1, 0x1

    .line 2187
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_29

    .line 2188
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2189
    const/4 v1, 0x0

    .line 2190
    goto :goto_29

    .line 2187
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2193
    .end local v2    # "i":I
    :cond_29
    :goto_29
    if-nez v1, :cond_30

    .line 2194
    iget-object v2, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroid/transition/TransitionPropagation;->captureValues(Landroid/transition/TransitionValues;)V

    .line 2197
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_30
    return-void
.end method

.method public abstract whitelist captureStartValues(Landroid/transition/TransitionValues;)V
.end method

.method greylist-max-o captureValues(Landroid/view/ViewGroup;Z)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1430
    invoke-virtual {p0, p2}, Landroid/transition/Transition;->clearValues(Z)V

    .line 1431
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    :cond_13
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1432
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1f
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1433
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_31

    .line 1470
    :cond_2c
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_a9

    .line 1434
    :cond_31
    :goto_31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 1435
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1436
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1437
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_6f

    .line 1438
    new-instance v3, Landroid/transition/TransitionValues;

    invoke-direct {v3, v2}, Landroid/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1439
    .local v3, "values":Landroid/transition/TransitionValues;
    if-eqz p2, :cond_57

    .line 1440
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto :goto_5a

    .line 1442
    :cond_57
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 1444
    :goto_5a
    iget-object v4, v3, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1446
    if-eqz p2, :cond_6a

    .line 1447
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_6f

    .line 1449
    :cond_6a
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1434
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroid/transition/TransitionValues;
    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1453
    .end local v0    # "i":I
    :cond_72
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_73
    iget-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a9

    .line 1454
    iget-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1455
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/transition/TransitionValues;

    invoke-direct {v2, v1}, Landroid/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1456
    .local v2, "values":Landroid/transition/TransitionValues;
    if-eqz p2, :cond_8e

    .line 1457
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto :goto_91

    .line 1459
    :cond_8e
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 1461
    :goto_91
    iget-object v3, v2, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1463
    if-eqz p2, :cond_a1

    .line 1464
    iget-object v3, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_a6

    .line 1466
    :cond_a1
    iget-object v3, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1453
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "values":Landroid/transition/TransitionValues;
    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 1472
    .end local v0    # "i":I
    :cond_a9
    :goto_a9
    if-nez p2, :cond_f2

    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    if-eqz v0, :cond_f2

    .line 1473
    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1474
    .local v0, "numOverrides":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1475
    .local v1, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_bb
    if-ge v2, v0, :cond_d5

    .line 1476
    iget-object v3, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1477
    .local v3, "fromName":Ljava/lang/String;
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    .end local v3    # "fromName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 1479
    .end local v2    # "i":I
    :cond_d5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d6
    if-ge v2, v0, :cond_f2

    .line 1480
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1481
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_ef

    .line 1482
    iget-object v4, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1483
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    .line 1487
    .end local v0    # "numOverrides":I
    .end local v1    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_f2
    return-void
.end method

.method greylist-max-o clearValues(Z)V
    .registers 4
    .param p1, "start"    # Z

    .line 1536
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 1537
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1538
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1539
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1540
    iget-object v1, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1541
    iput-object v0, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_40

    .line 1543
    :cond_22
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1544
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1545
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1546
    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1547
    iput-object v0, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1549
    :goto_40
    return-void
.end method

.method public whitelist clone()Landroid/transition/Transition;
    .registers 3

    .line 2233
    const/4 v0, 0x0

    .line 2235
    .local v0, "clone":Landroid/transition/Transition;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    move-object v0, v1

    .line 2236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2237
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, v0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 2238
    new-instance v1, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 2239
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2240
    iput-object v1, v0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_22
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_24

    .line 2241
    :catch_23
    move-exception v1

    :goto_24
    nop

    .line 2243
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 479
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist-max-o createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 31
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

    .line 700
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v7

    .line 701
    .local v7, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 702
    .local v0, "minStartDelay":J
    iget-object v2, v3, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 703
    .local v8, "minAnimator":I
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    move-object v9, v2

    .line 704
    .local v9, "startDelays":Landroid/util/SparseLongArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 705
    .local v10, "startValuesListCount":I
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_1f
    if-ge v11, v10, :cond_1a0

    .line 706
    move-object/from16 v12, p4

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/TransitionValues;

    .line 707
    .local v2, "start":Landroid/transition/TransitionValues;
    move-object/from16 v13, p5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 708
    .local v4, "end":Landroid/transition/TransitionValues;
    if-eqz v2, :cond_3e

    iget-object v5, v2, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 709
    const/4 v2, 0x0

    move-object v14, v2

    goto :goto_3f

    .line 711
    :cond_3e
    move-object v14, v2

    .end local v2    # "start":Landroid/transition/TransitionValues;
    .local v14, "start":Landroid/transition/TransitionValues;
    :goto_3f
    if-eqz v4, :cond_4c

    iget-object v2, v4, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 712
    const/4 v4, 0x0

    move-object v15, v4

    goto :goto_4d

    .line 714
    :cond_4c
    move-object v15, v4

    .end local v4    # "end":Landroid/transition/TransitionValues;
    .local v15, "end":Landroid/transition/TransitionValues;
    :goto_4d
    if-nez v14, :cond_59

    if-nez v15, :cond_59

    .line 715
    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_198

    .line 718
    :cond_59
    if-eqz v14, :cond_66

    if-eqz v15, :cond_66

    invoke-virtual {v3, v14, v15}, Landroid/transition/Transition;->isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_66

    :cond_64
    const/4 v2, 0x0

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v2, 0x1

    :goto_67
    move/from16 v16, v2

    .line 719
    .local v16, "isChanged":Z
    if-eqz v16, :cond_192

    .line 738
    invoke-virtual {v3, v6, v14, v15}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    .line 739
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_189

    .line 741
    const/4 v4, 0x0

    .line 742
    .local v4, "view":Landroid/view/View;
    const/4 v5, 0x0

    .line 743
    .local v5, "infoValues":Landroid/transition/TransitionValues;
    if-eqz v15, :cond_13f

    .line 744
    iget-object v4, v15, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 745
    move-object/from16 v17, v2

    .end local v2    # "animator":Landroid/animation/Animator;
    .local v17, "animator":Landroid/animation/Animator;
    invoke-virtual {v3}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "properties":[Ljava/lang/String;
    if-eqz v2, :cond_12b

    move-object/from16 v18, v5

    .end local v5    # "infoValues":Landroid/transition/TransitionValues;
    .local v18, "infoValues":Landroid/transition/TransitionValues;
    array-length v5, v2

    if-lez v5, :cond_120

    .line 747
    new-instance v5, Landroid/transition/TransitionValues;

    invoke-direct {v5, v4}, Landroid/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 748
    .end local v18    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v5    # "infoValues":Landroid/transition/TransitionValues;
    move/from16 v19, v8

    move/from16 v20, v10

    move-object/from16 v8, p3

    .end local v8    # "minAnimator":I
    .end local v10    # "startValuesListCount":I
    .local v19, "minAnimator":I
    .local v20, "startValuesListCount":I
    iget-object v10, v8, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/transition/TransitionValues;

    .line 749
    .local v10, "newValues":Landroid/transition/TransitionValues;
    if-eqz v10, :cond_c7

    .line 750
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "j":I
    :goto_9d
    move/from16 v21, v11

    .end local v11    # "i":I
    .local v21, "i":I
    array-length v11, v2

    if-ge v8, v11, :cond_c0

    .line 751
    iget-object v11, v5, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v22, v2

    .end local v2    # "properties":[Ljava/lang/String;
    .local v22, "properties":[Ljava/lang/String;
    aget-object v2, v22, v8

    move/from16 v18, v8

    .end local v8    # "j":I
    .local v18, "j":I
    iget-object v8, v10, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v23, v10

    .end local v10    # "newValues":Landroid/transition/TransitionValues;
    .local v23, "newValues":Landroid/transition/TransitionValues;
    aget-object v10, v22, v18

    .line 752
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 751
    invoke-interface {v11, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    add-int/lit8 v8, v18, 0x1

    move/from16 v11, v21

    move-object/from16 v2, v22

    move-object/from16 v10, v23

    .end local v18    # "j":I
    .restart local v8    # "j":I
    goto :goto_9d

    .end local v22    # "properties":[Ljava/lang/String;
    .end local v23    # "newValues":Landroid/transition/TransitionValues;
    .restart local v2    # "properties":[Ljava/lang/String;
    .restart local v10    # "newValues":Landroid/transition/TransitionValues;
    :cond_c0
    move-object/from16 v22, v2

    move/from16 v18, v8

    move-object/from16 v23, v10

    .end local v2    # "properties":[Ljava/lang/String;
    .end local v8    # "j":I
    .end local v10    # "newValues":Landroid/transition/TransitionValues;
    .restart local v18    # "j":I
    .restart local v22    # "properties":[Ljava/lang/String;
    .restart local v23    # "newValues":Landroid/transition/TransitionValues;
    goto :goto_cd

    .line 749
    .end local v18    # "j":I
    .end local v21    # "i":I
    .end local v22    # "properties":[Ljava/lang/String;
    .end local v23    # "newValues":Landroid/transition/TransitionValues;
    .restart local v2    # "properties":[Ljava/lang/String;
    .restart local v10    # "newValues":Landroid/transition/TransitionValues;
    .restart local v11    # "i":I
    :cond_c7
    move-object/from16 v22, v2

    move-object/from16 v23, v10

    move/from16 v21, v11

    .line 755
    .end local v2    # "properties":[Ljava/lang/String;
    .end local v10    # "newValues":Landroid/transition/TransitionValues;
    .end local v11    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "properties":[Ljava/lang/String;
    .restart local v23    # "newValues":Landroid/transition/TransitionValues;
    :goto_cd
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 756
    .local v2, "numExistingAnims":I
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_d2
    if-ge v8, v2, :cond_119

    .line 757
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 758
    .local v10, "anim":Landroid/animation/Animator;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/transition/Transition$AnimationInfo;

    .line 759
    .local v11, "info":Landroid/transition/Transition$AnimationInfo;
    move/from16 v18, v2

    .end local v2    # "numExistingAnims":I
    .local v18, "numExistingAnims":I
    iget-object v2, v11, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    if-eqz v2, :cond_110

    iget-object v2, v11, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-ne v2, v4, :cond_110

    iget-object v2, v11, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_f8

    .line 760
    invoke-virtual {v3}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f5

    goto :goto_f8

    :cond_f5
    move-object/from16 v24, v4

    goto :goto_106

    :cond_f8
    :goto_f8
    iget-object v2, v11, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    .line 761
    move-object/from16 v24, v4

    .end local v4    # "view":Landroid/view/View;
    .local v24, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 762
    :goto_106
    iget-object v2, v11, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    invoke-virtual {v2, v5}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 764
    const/4 v2, 0x0

    .line 765
    .end local v17    # "animator":Landroid/animation/Animator;
    .local v2, "animator":Landroid/animation/Animator;
    goto :goto_13b

    .line 759
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v24    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v17    # "animator":Landroid/animation/Animator;
    :cond_110
    move-object/from16 v24, v4

    .line 756
    .end local v4    # "view":Landroid/view/View;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v11    # "info":Landroid/transition/Transition$AnimationInfo;
    .restart local v24    # "view":Landroid/view/View;
    :cond_112
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v18

    move-object/from16 v4, v24

    goto :goto_d2

    .end local v18    # "numExistingAnims":I
    .end local v24    # "view":Landroid/view/View;
    .local v2, "numExistingAnims":I
    .restart local v4    # "view":Landroid/view/View;
    :cond_119
    move/from16 v18, v2

    move-object/from16 v24, v4

    .end local v2    # "numExistingAnims":I
    .end local v4    # "view":Landroid/view/View;
    .restart local v18    # "numExistingAnims":I
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v2, v17

    goto :goto_13b

    .line 746
    .end local v5    # "infoValues":Landroid/transition/TransitionValues;
    .end local v19    # "minAnimator":I
    .end local v20    # "startValuesListCount":I
    .end local v21    # "i":I
    .end local v22    # "properties":[Ljava/lang/String;
    .end local v23    # "newValues":Landroid/transition/TransitionValues;
    .end local v24    # "view":Landroid/view/View;
    .local v2, "properties":[Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    .local v8, "minAnimator":I
    .local v10, "startValuesListCount":I
    .local v11, "i":I
    .local v18, "infoValues":Landroid/transition/TransitionValues;
    :cond_120
    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .end local v2    # "properties":[Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    .end local v8    # "minAnimator":I
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v19    # "minAnimator":I
    .restart local v20    # "startValuesListCount":I
    .restart local v21    # "i":I
    .restart local v22    # "properties":[Ljava/lang/String;
    .restart local v24    # "view":Landroid/view/View;
    goto :goto_137

    .end local v18    # "infoValues":Landroid/transition/TransitionValues;
    .end local v19    # "minAnimator":I
    .end local v20    # "startValuesListCount":I
    .end local v21    # "i":I
    .end local v22    # "properties":[Ljava/lang/String;
    .end local v24    # "view":Landroid/view/View;
    .restart local v2    # "properties":[Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v8    # "minAnimator":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_12b
    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .line 770
    .end local v2    # "properties":[Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "infoValues":Landroid/transition/TransitionValues;
    .end local v8    # "minAnimator":I
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v18    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v19    # "minAnimator":I
    .restart local v20    # "startValuesListCount":I
    .restart local v21    # "i":I
    .restart local v24    # "view":Landroid/view/View;
    :goto_137
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "infoValues":Landroid/transition/TransitionValues;
    .local v2, "animator":Landroid/animation/Animator;
    .restart local v5    # "infoValues":Landroid/transition/TransitionValues;
    :goto_13b
    move-object v8, v2

    move-object/from16 v4, v24

    goto :goto_154

    .line 771
    .end local v19    # "minAnimator":I
    .end local v20    # "startValuesListCount":I
    .end local v21    # "i":I
    .end local v24    # "view":Landroid/view/View;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v8    # "minAnimator":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_13f
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v5    # "infoValues":Landroid/transition/TransitionValues;
    .end local v8    # "minAnimator":I
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v19    # "minAnimator":I
    .restart local v20    # "startValuesListCount":I
    .restart local v21    # "i":I
    if-eqz v14, :cond_14e

    iget-object v2, v14, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_14f

    :cond_14e
    const/4 v2, 0x0

    :goto_14f
    move-object v4, v2

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    .line 773
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v5    # "infoValues":Landroid/transition/TransitionValues;
    .local v8, "animator":Landroid/animation/Animator;
    :goto_154
    if-eqz v8, :cond_198

    .line 774
    iget-object v2, v3, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v2, :cond_16f

    .line 775
    iget-object v2, v3, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    .line 776
    invoke-virtual {v2, v6, v3, v14, v15}, Landroid/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J

    move-result-wide v10

    .line 777
    .local v10, "delay":J
    iget-object v2, v3, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v9, v2, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 778
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v10, v0

    goto :goto_170

    .line 774
    .end local v10    # "delay":J
    :cond_16f
    move-wide v10, v0

    .line 780
    .end local v0    # "minStartDelay":J
    .local v10, "minStartDelay":J
    :goto_170
    new-instance v0, Landroid/transition/Transition$AnimationInfo;

    invoke-virtual {v3}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 781
    move-object v1, v4

    .end local v4    # "view":Landroid/view/View;
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroid/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/Transition;Landroid/view/WindowId;Landroid/transition/TransitionValues;)V

    move-object v4, v1

    .line 782
    .end local v1    # "view":Landroid/view/View;
    .local v0, "info":Landroid/transition/Transition$AnimationInfo;
    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v1, v3, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v10

    goto :goto_198

    .line 739
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "infoValues":Landroid/transition/TransitionValues;
    .end local v19    # "minAnimator":I
    .end local v20    # "startValuesListCount":I
    .end local v21    # "i":I
    .local v0, "minStartDelay":J
    .restart local v2    # "animator":Landroid/animation/Animator;
    .local v8, "minAnimator":I
    .local v10, "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_189
    move-object/from16 v17, v2

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v8    # "minAnimator":I
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v19    # "minAnimator":I
    .restart local v20    # "startValuesListCount":I
    .restart local v21    # "i":I
    goto :goto_198

    .line 719
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v19    # "minAnimator":I
    .end local v20    # "startValuesListCount":I
    .end local v21    # "i":I
    .restart local v8    # "minAnimator":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_192
    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .line 705
    .end local v8    # "minAnimator":I
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .end local v14    # "start":Landroid/transition/TransitionValues;
    .end local v15    # "end":Landroid/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .restart local v19    # "minAnimator":I
    .restart local v20    # "startValuesListCount":I
    .restart local v21    # "i":I
    :cond_198
    :goto_198
    add-int/lit8 v11, v21, 0x1

    move/from16 v8, v19

    move/from16 v10, v20

    .end local v21    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_1f

    .end local v19    # "minAnimator":I
    .end local v20    # "startValuesListCount":I
    .restart local v8    # "minAnimator":I
    .restart local v10    # "startValuesListCount":I
    :cond_1a0
    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v11

    .line 788
    .end local v8    # "minAnimator":I
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v19    # "minAnimator":I
    .restart local v20    # "startValuesListCount":I
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-eqz v2, :cond_1d3

    .line 789
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b1
    invoke-virtual {v9}, Landroid/util/SparseLongArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1d3

    .line 790
    invoke-virtual {v9, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    .line 791
    .local v4, "index":I
    iget-object v5, v3, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 792
    .local v5, "animator":Landroid/animation/Animator;
    invoke-virtual {v9, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v14

    add-long/2addr v10, v14

    .line 793
    .local v10, "delay":J
    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 789
    .end local v4    # "index":I
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v10    # "delay":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b1

    .line 796
    .end local v2    # "i":I
    :cond_1d3
    return-void
.end method

.method protected greylist-max-r end()V
    .registers 6

    .line 1923
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1924
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_6e

    .line 1925
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 1926
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1927
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1928
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1929
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v2, :cond_31

    .line 1930
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 1929
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1933
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    iget-object v2, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4f

    .line 1934
    iget-object v2, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1935
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4c

    .line 1936
    invoke-virtual {v2, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1933
    .end local v2    # "view":Landroid/view/View;
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1939
    .end local v0    # "i":I
    :cond_4f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_50
    iget-object v2, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6c

    .line 1940
    iget-object v2, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1941
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_69

    .line 1942
    invoke-virtual {v2, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1939
    .end local v2    # "view":Landroid/view/View;
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 1945
    .end local v0    # "i":I
    :cond_6c
    iput-boolean v1, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1947
    :cond_6e
    return-void
.end method

.method public whitelist excludeChildren(IZ)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1167
    if-ltz p1, :cond_e

    .line 1168
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1170
    :cond_e
    return-object p0
.end method

.method public whitelist excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1221
    iget-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1222
    return-object p0
.end method

.method public whitelist excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1289
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1290
    return-object p0
.end method

.method public whitelist excludeTarget(IZ)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1109
    if-ltz p1, :cond_e

    .line 1110
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1112
    :cond_e
    return-object p0
.end method

.method public whitelist excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1195
    iget-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1196
    return-object p0
.end method

.method public whitelist excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1262
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1263
    return-object p0
.end method

.method public whitelist excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 1137
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1138
    return-object p0
.end method

.method greylist-max-o forceToEnd(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1955
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1956
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1957
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_3e

    if-nez v1, :cond_d

    goto :goto_3e

    .line 1961
    :cond_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1962
    .local v2, "windowId":Landroid/view/WindowId;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1963
    .local v3, "oldAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1965
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_1b
    if-ltz v4, :cond_3d

    .line 1966
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$AnimationInfo;

    .line 1967
    .local v5, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v6, :cond_3a

    if-eqz v2, :cond_3a

    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v2, v6}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1968
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 1969
    .local v6, "anim":Landroid/animation/Animator;
    invoke-virtual {v6}, Landroid/animation/Animator;->end()V

    .line 1965
    .end local v5    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_3a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 1972
    .end local v4    # "i":I
    :cond_3d
    return-void

    .line 1958
    .end local v2    # "windowId":Landroid/view/WindowId;
    .end local v3    # "oldAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    :cond_3e
    :goto_3e
    return-void
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 346
    iget-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public whitelist getEpicenter()Landroid/graphics/Rect;
    .registers 2

    .line 2065
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_6

    .line 2066
    const/4 v0, 0x0

    return-object v0

    .line 2068
    :cond_6
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroid/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEpicenterCallback()Landroid/transition/Transition$EpicenterCallback;
    .registers 2

    .line 2054
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public whitelist getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method greylist-max-o getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1644
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_b

    .line 1645
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1647
    :cond_b
    if-eqz p2, :cond_10

    iget-object v0, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1648
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_12
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1649
    return-object v1

    .line 1651
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1652
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1653
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v2, :cond_30

    .line 1654
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 1655
    .local v5, "values":Landroid/transition/TransitionValues;
    if-nez v5, :cond_27

    .line 1657
    return-object v1

    .line 1659
    :cond_27
    iget-object v6, v5, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_2d

    .line 1660
    move v3, v4

    .line 1661
    goto :goto_30

    .line 1653
    .end local v5    # "values":Landroid/transition/TransitionValues;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1664
    .end local v4    # "i":I
    :cond_30
    :goto_30
    const/4 v1, 0x0

    .line 1665
    .local v1, "values":Landroid/transition/TransitionValues;
    if-ltz v3, :cond_41

    .line 1666
    if-eqz p2, :cond_38

    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3a

    :cond_38
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1667
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_3a
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/transition/TransitionValues;

    .line 1669
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_41
    return-object v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 2259
    iget-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNameOverrides()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2223
    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getPathMotion()Landroid/transition/PathMotion;
    .registers 2

    .line 2145
    iget-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    return-object v0
.end method

.method public whitelist getPropagation()Landroid/transition/TransitionPropagation;
    .registers 2

    .line 2173
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    return-object v0
.end method

.method public whitelist getStartDelay()J
    .registers 3

    .line 373
    iget-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public whitelist getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getTargetNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist-max-o getTargetViewNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1405
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1625
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_b

    .line 1626
    iget-object v0, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1628
    :cond_b
    if-eqz p2, :cond_10

    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    goto :goto_12

    :cond_10
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 1629
    .local v0, "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :goto_12
    iget-object v1, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionValues;

    return-object v1
.end method

.method public whitelist isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 8
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .line 1801
    const/4 v0, 0x0

    .line 1804
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    .line 1805
    invoke-virtual {p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1806
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 1807
    array-length v2, v1

    .line 1808
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_1c

    .line 1809
    aget-object v4, v1, v3

    invoke-static {p1, p2, v4}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1810
    const/4 v0, 0x1

    .line 1811
    goto :goto_1c

    .line 1808
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1814
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1c
    :goto_1c
    goto :goto_3c

    .line 1815
    :cond_1d
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1816
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1817
    const/4 v0, 0x1

    .line 1818
    goto :goto_3c

    .line 1820
    .end local v3    # "key":Ljava/lang/String;
    :cond_3b
    goto :goto_27

    .line 1823
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_3c
    :goto_3c
    return v0
.end method

.method public greylist-max-o isValidTarget(Landroid/view/View;)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;

    .line 811
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 812
    return v0

    .line 814
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 815
    .local v1, "targetId":I
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 816
    return v0

    .line 818
    :cond_19
    iget-object v2, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 819
    return v0

    .line 821
    :cond_26
    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_47

    if-eqz p1, :cond_47

    .line 822
    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 823
    .local v2, "numTypes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v2, :cond_47

    .line 824
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 825
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 826
    return v0

    .line 823
    .end local v4    # "type":Ljava/lang/Class;
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 830
    .end local v2    # "numTypes":I
    .end local v3    # "i":I
    :cond_47
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_60

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 831
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 832
    return v0

    .line 835
    :cond_60
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8a

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_8a

    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_7d

    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8a

    :cond_7d
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_89

    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 837
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 838
    :cond_89
    return v3

    .line 840
    :cond_8a
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d0

    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    goto :goto_d0

    .line 843
    :cond_9f
    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_b0

    iget-object v2, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 844
    return v3

    .line 846
    :cond_b0
    iget-object v2, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_cf

    .line 847
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b5
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_cf

    .line 848
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 849
    return v3

    .line 847
    :cond_cc
    add-int/lit8 v2, v2, 0x1

    goto :goto_b5

    .line 853
    .end local v2    # "i":I
    :cond_cf
    return v0

    .line 841
    :cond_d0
    :goto_d0
    return v3
.end method

.method public greylist-max-o pause(Landroid/view/View;)V
    .registers 8
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1680
    iget-boolean v0, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v0, :cond_60

    .line 1681
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1682
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1683
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_36

    .line 1684
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1685
    .local v2, "windowId":Landroid/view/WindowId;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_14
    if-ltz v3, :cond_36

    .line 1686
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$AnimationInfo;

    .line 1687
    .local v4, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v5, :cond_33

    if-eqz v2, :cond_33

    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v2, v5}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1688
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1689
    .local v5, "anim":Landroid/animation/Animator;
    invoke-virtual {v5}, Landroid/animation/Animator;->pause()V

    .line 1685
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 1693
    .end local v2    # "windowId":Landroid/view/WindowId;
    .end local v3    # "i":I
    :cond_36
    iget-object v2, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5d

    .line 1694
    iget-object v2, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1695
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1696
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1697
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v3, :cond_5d

    .line 1698
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionPause(Landroid/transition/Transition;)V

    .line 1697
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 1701
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_5d
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1703
    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    :cond_60
    return-void
.end method

.method greylist-max-o playTransition(Landroid/view/ViewGroup;)V
    .registers 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1746
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroid/transition/Transition;->matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    .line 1748
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1749
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1750
    .local v1, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1751
    .local v2, "windowId":Landroid/view/WindowId;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_23
    if-ltz v3, :cond_80

    .line 1752
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1753
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_7d

    .line 1754
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$AnimationInfo;

    .line 1755
    .local v5, "oldInfo":Landroid/transition/Transition$AnimationInfo;
    if-eqz v5, :cond_7d

    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v6, :cond_7d

    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    if-ne v6, v2, :cond_7d

    .line 1756
    iget-object v6, v5, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    .line 1757
    .local v6, "oldValues":Landroid/transition/TransitionValues;
    iget-object v7, v5, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 1758
    .local v7, "oldView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v9

    .line 1759
    .local v9, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v7, v8}, Landroid/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v10

    .line 1760
    .local v10, "endValues":Landroid/transition/TransitionValues;
    if-nez v9, :cond_59

    if-nez v10, :cond_59

    .line 1761
    iget-object v11, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v11, v11, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroid/transition/TransitionValues;

    .line 1763
    :cond_59
    if-nez v9, :cond_5d

    if-eqz v10, :cond_66

    :cond_5d
    iget-object v11, v5, Landroid/transition/Transition$AnimationInfo;->transition:Landroid/transition/Transition;

    .line 1764
    invoke-virtual {v11, v6, v10}, Landroid/transition/Transition;->isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v11

    if-eqz v11, :cond_66

    goto :goto_67

    :cond_66
    const/4 v8, 0x0

    .line 1765
    .local v8, "cancel":Z
    :goto_67
    if-eqz v8, :cond_7d

    .line 1766
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_7a

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_76

    goto :goto_7a

    .line 1775
    :cond_76
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 1770
    :cond_7a
    :goto_7a
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1751
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroid/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroid/transition/TransitionValues;
    .end local v10    # "endValues":Landroid/transition/TransitionValues;
    :cond_7d
    :goto_7d
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 1782
    .end local v3    # "i":I
    :cond_80
    iget-object v6, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    .end local p1    # "sceneRoot":Landroid/view/ViewGroup;
    .local v5, "sceneRoot":Landroid/view/ViewGroup;
    invoke-virtual/range {v4 .. v9}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1783
    invoke-virtual {p0}, Landroid/transition/Transition;->runAnimators()V

    .line 1784
    return-void
.end method

.method public whitelist removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .line 2020
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 2021
    return-object p0

    .line 2023
    :cond_5
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2024
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2027
    :cond_15
    return-object p0
.end method

.method public whitelist removeTarget(I)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I

    .line 1064
    if-lez p1, :cond_b

    .line 1065
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1067
    :cond_b
    return-object p0
.end method

.method public whitelist removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .line 1335
    if-eqz p1, :cond_7

    .line 1336
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1338
    :cond_7
    return-object p0
.end method

.method public whitelist removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Ljava/lang/Class;

    .line 1352
    if-eqz p1, :cond_7

    .line 1353
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1355
    :cond_7
    return-object p0
.end method

.method public whitelist removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1081
    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1082
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1084
    :cond_b
    return-object p0
.end method

.method public greylist-max-o resume(Landroid/view/View;)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1713
    iget-boolean v0, p0, Landroid/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_62

    .line 1714
    iget-boolean v0, p0, Landroid/transition/Transition;->mEnded:Z

    if-nez v0, :cond_5f

    .line 1715
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1716
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1717
    .local v1, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    .line 1718
    .local v2, "windowId":Landroid/view/WindowId;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_16
    if-ltz v3, :cond_38

    .line 1719
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$AnimationInfo;

    .line 1720
    .local v4, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v5, :cond_35

    if-eqz v2, :cond_35

    iget-object v5, v4, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v2, v5}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1721
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1722
    .local v5, "anim":Landroid/animation/Animator;
    invoke-virtual {v5}, Landroid/animation/Animator;->resume()V

    .line 1718
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 1725
    .end local v3    # "i":I
    :cond_38
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5f

    .line 1726
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1727
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1728
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1729
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_51
    if-ge v5, v4, :cond_5f

    .line 1730
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionResume(Landroid/transition/Transition;)V

    .line 1729
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 1734
    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    .end local v2    # "windowId":Landroid/view/WindowId;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "i":I
    :cond_5f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Transition;->mPaused:Z

    .line 1736
    :cond_62
    return-void
.end method

.method protected greylist-max-o runAnimators()V
    .registers 5

    .line 876
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 877
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v0

    .line 879
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 883
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 884
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    .line 885
    invoke-direct {p0, v2, v0}, Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V

    .line 887
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_25
    goto :goto_d

    .line 888
    :cond_26
    iget-object v1, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 889
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    .line 890
    return-void
.end method

.method greylist-max-o setCanRemoveViews(Z)V
    .registers 2
    .param p1, "canRemoveViews"    # Z

    .line 2205
    iput-boolean p1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    .line 2206
    return-void
.end method

.method public whitelist setDuration(J)Landroid/transition/Transition;
    .registers 3
    .param p1, "duration"    # J

    .line 333
    iput-wide p1, p0, Landroid/transition/Transition;->mDuration:J

    .line 334
    return-object p0
.end method

.method public whitelist setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .registers 2
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .line 2041
    iput-object p1, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    .line 2042
    return-void
.end method

.method public whitelist setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 387
    iput-object p1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 388
    return-object p0
.end method

.method public varargs whitelist setMatchOrder([I)V
    .registers 6
    .param p1, "matches"    # [I

    .line 499
    if-eqz p1, :cond_34

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_34

    .line 502
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 503
    aget v1, p1, v0

    .line 504
    .local v1, "match":I
    invoke-static {v1}, Landroid/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 507
    invoke-static {p1, v0}, Landroid/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 502
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 508
    .restart local v1    # "match":I
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_2b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/transition/Transition;->mMatchOrder:[I

    goto :goto_38

    .line 500
    :cond_34
    :goto_34
    sget-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroid/transition/Transition;->mMatchOrder:[I

    .line 513
    :goto_38
    return-void
.end method

.method public greylist-max-o setNameOverrides(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2218
    .local p1, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    .line 2219
    return-void
.end method

.method public whitelist setPathMotion(Landroid/transition/PathMotion;)V
    .registers 3
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    .line 2109
    if-nez p1, :cond_7

    .line 2110
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    goto :goto_9

    .line 2112
    :cond_7
    iput-object p1, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    .line 2114
    :goto_9
    return-void
.end method

.method public whitelist setPropagation(Landroid/transition/TransitionPropagation;)V
    .registers 2
    .param p1, "transitionPropagation"    # Landroid/transition/TransitionPropagation;

    .line 2159
    iput-object p1, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    .line 2160
    return-void
.end method

.method greylist-max-o setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .registers 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 2200
    iput-object p1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2201
    return-object p0
.end method

.method public whitelist setStartDelay(J)Landroid/transition/Transition;
    .registers 3
    .param p1, "startDelay"    # J

    .line 360
    iput-wide p1, p0, Landroid/transition/Transition;->mStartDelay:J

    .line 361
    return-object p0
.end method

.method protected greylist-max-o start()V
    .registers 5

    .line 1896
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_2e

    .line 1897
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 1898
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1899
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1900
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1901
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_2b

    .line 1902
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 1901
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1905
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Transition;->mEnded:Z

    .line 1907
    :cond_2e
    iget v0, p0, Landroid/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/transition/Transition;->mNumInstances:I

    .line 1908
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2228
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "indent"    # Ljava/lang/String;

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2264
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2265
    .local v0, "result":Ljava/lang/String;
    iget-wide v1, p0, Landroid/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, ") "

    if-eqz v1, :cond_58

    .line 2266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "dur("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroid/transition/Transition;->mDuration:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2268
    :cond_58
    iget-wide v5, p0, Landroid/transition/Transition;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_7b

    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dly("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/transition/Transition;->mStartDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2271
    :cond_7b
    iget-object v1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_9c

    .line 2272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "interp("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2274
    :cond_9c
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_ac

    iget-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_151

    .line 2275
    :cond_ac
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tgts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2276
    iget-object v1, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_100

    .line 2277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_cb
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_100

    .line 2278
    if-lez v1, :cond_e6

    .line 2279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2281
    :cond_e6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2277
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 2284
    .end local v1    # "i":I
    :cond_100
    iget-object v1, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13e

    .line 2285
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_109
    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_13e

    .line 2286
    if-lez v1, :cond_124

    .line 2287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2289
    :cond_124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2285
    add-int/lit8 v1, v1, 0x1

    goto :goto_109

    .line 2292
    .end local v1    # "i":I
    :cond_13e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2294
    :cond_151
    return-object v0
.end method
