.class public abstract Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Transition$TransitionListener;,
        Landroid/transition/Transition$TransitionListenerAdapter;,
        Landroid/transition/Transition$AnimationInfo;,
        Landroid/transition/Transition$ArrayListManager;,
        Landroid/transition/Transition$EpicenterCallback;,
        Landroid/transition/Transition$1;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final MATCH_VIEW_NAME_STR:Ljava/lang/String; = "viewName"

.field private static final STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


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

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/transition/TransitionValuesMaps;

.field mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field mNameOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumInstances:I

.field mParent:Landroid/transition/TransitionSet;

.field private mPathMotion:Landroid/transition/PathMotion;

.field mPaused:Z

.field mPropagation:Landroid/transition/TransitionPropagation;

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/transition/TransitionValuesMaps;

.field mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/transition/Transition;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 160
    const/4 v0, 0x2

    #@1
    .line 161
    const/4 v1, 0x1

    #@2
    .line 162
    const/4 v2, 0x3

    #@3
    .line 163
    const/4 v3, 0x4

    #@4
    .line 159
    filled-new-array {v0, v1, v2, v3}, [I

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@a
    .line 166
    new-instance v0, Landroid/transition/Transition$1;

    #@c
    invoke-direct {v0}, Landroid/transition/Transition$1;-><init>()V

    #@f
    sput-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    #@11
    .line 201
    new-instance v0, Ljava/lang/ThreadLocal;

    #@13
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@16
    .line 200
    sput-object v0, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    #@18
    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 176
    invoke-virtual {p0}, Landroid/transition/Transition;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    #@11
    .line 178
    iput-wide v4, p0, Landroid/transition/Transition;->mStartDelay:J

    #@13
    .line 179
    iput-wide v4, p0, Landroid/transition/Transition;->mDuration:J

    #@15
    .line 180
    iput-object v1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@17
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@1e
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@25
    .line 183
    iput-object v1, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@27
    .line 184
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@29
    .line 185
    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@2b
    .line 186
    iput-object v1, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@2d
    .line 187
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2f
    .line 188
    iput-object v1, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@31
    .line 189
    iput-object v1, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@33
    .line 190
    iput-object v1, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@35
    .line 191
    iput-object v1, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@37
    .line 192
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    #@39
    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@3e
    .line 193
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    #@40
    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    #@43
    iput-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@45
    .line 194
    iput-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@47
    .line 195
    sget-object v0, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@49
    iput-object v0, p0, Landroid/transition/Transition;->mMatchOrder:[I

    #@4b
    .line 204
    iput-object v1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    #@4d
    .line 212
    iput-boolean v2, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    #@4f
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    #@51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@54
    iput-object v0, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@56
    .line 220
    iput v2, p0, Landroid/transition/Transition;->mNumInstances:I

    #@58
    .line 223
    iput-boolean v2, p0, Landroid/transition/Transition;->mPaused:Z

    #@5a
    .line 227
    iput-boolean v2, p0, Landroid/transition/Transition;->mEnded:Z

    #@5c
    .line 230
    iput-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@5e
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    #@60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@63
    iput-object v0, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@65
    .line 249
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    #@67
    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    #@69
    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 176
    invoke-virtual {p0}, Landroid/transition/Transition;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v5

    #@7
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    iput-object v5, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    #@d
    .line 178
    const-wide/16 v8, -0x1

    #@f
    iput-wide v8, p0, Landroid/transition/Transition;->mStartDelay:J

    #@11
    .line 179
    const-wide/16 v8, -0x1

    #@13
    iput-wide v8, p0, Landroid/transition/Transition;->mDuration:J

    #@15
    .line 180
    const/4 v5, 0x0

    #@16
    iput-object v5, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@18
    .line 181
    new-instance v5, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v5, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@1f
    .line 182
    new-instance v5, Ljava/util/ArrayList;

    #@21
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v5, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@26
    .line 183
    const/4 v5, 0x0

    #@27
    iput-object v5, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@29
    .line 184
    const/4 v5, 0x0

    #@2a
    iput-object v5, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@2c
    .line 185
    const/4 v5, 0x0

    #@2d
    iput-object v5, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@2f
    .line 186
    const/4 v5, 0x0

    #@30
    iput-object v5, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@32
    .line 187
    const/4 v5, 0x0

    #@33
    iput-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@35
    .line 188
    const/4 v5, 0x0

    #@36
    iput-object v5, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@38
    .line 189
    const/4 v5, 0x0

    #@39
    iput-object v5, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@3b
    .line 190
    const/4 v5, 0x0

    #@3c
    iput-object v5, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@3e
    .line 191
    const/4 v5, 0x0

    #@3f
    iput-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@41
    .line 192
    new-instance v5, Landroid/transition/TransitionValuesMaps;

    #@43
    invoke-direct {v5}, Landroid/transition/TransitionValuesMaps;-><init>()V

    #@46
    iput-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@48
    .line 193
    new-instance v5, Landroid/transition/TransitionValuesMaps;

    #@4a
    invoke-direct {v5}, Landroid/transition/TransitionValuesMaps;-><init>()V

    #@4d
    iput-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@4f
    .line 194
    const/4 v5, 0x0

    #@50
    iput-object v5, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@52
    .line 195
    sget-object v5, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@54
    iput-object v5, p0, Landroid/transition/Transition;->mMatchOrder:[I

    #@56
    .line 204
    const/4 v5, 0x0

    #@57
    iput-object v5, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    #@59
    .line 212
    const/4 v5, 0x0

    #@5a
    iput-boolean v5, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    #@5c
    .line 216
    new-instance v5, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@61
    iput-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@63
    .line 220
    const/4 v5, 0x0

    #@64
    iput v5, p0, Landroid/transition/Transition;->mNumInstances:I

    #@66
    .line 223
    const/4 v5, 0x0

    #@67
    iput-boolean v5, p0, Landroid/transition/Transition;->mPaused:Z

    #@69
    .line 227
    const/4 v5, 0x0

    #@6a
    iput-boolean v5, p0, Landroid/transition/Transition;->mEnded:Z

    #@6c
    .line 230
    const/4 v5, 0x0

    #@6d
    iput-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@6f
    .line 234
    new-instance v5, Ljava/util/ArrayList;

    #@71
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@74
    iput-object v5, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@76
    .line 249
    sget-object v5, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    #@78
    iput-object v5, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    #@7a
    .line 270
    sget-object v5, Lcom/android/internal/R$styleable;->Transition:[I

    #@7c
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7f
    move-result-object v0

    #@80
    .line 271
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    #@81
    const/4 v8, -0x1

    #@82
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@85
    move-result v5

    #@86
    int-to-long v2, v5

    #@87
    .line 272
    .local v2, "duration":J
    const-wide/16 v8, 0x0

    #@89
    cmp-long v5, v2, v8

    #@8b
    if-ltz v5, :cond_0

    #@8d
    .line 273
    invoke-virtual {p0, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    #@90
    .line 275
    :cond_0
    const/4 v5, 0x2

    #@91
    const/4 v8, -0x1

    #@92
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@95
    move-result v5

    #@96
    int-to-long v6, v5

    #@97
    .line 276
    .local v6, "startDelay":J
    const-wide/16 v8, 0x0

    #@99
    cmp-long v5, v6, v8

    #@9b
    if-lez v5, :cond_1

    #@9d
    .line 277
    invoke-virtual {p0, v6, v7}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    #@a0
    .line 279
    :cond_1
    const/4 v5, 0x0

    #@a1
    const/4 v8, 0x0

    #@a2
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a5
    move-result v4

    #@a6
    .line 280
    .local v4, "resID":I
    if-lez v4, :cond_2

    #@a8
    .line 281
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    #@af
    .line 283
    :cond_2
    const/4 v5, 0x3

    #@b0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    .line 284
    .local v1, "matchOrder":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@b6
    .line 285
    invoke-static {v1}, Landroid/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    #@b9
    move-result-object v5

    #@ba
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->setMatchOrder([I)V

    #@bd
    .line 287
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c0
    .line 268
    return-void
.end method

.method private addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v4, 0x0

    #@1
    .line 630
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v3

    #@6
    if-ge v1, v3, :cond_1

    #@8
    .line 631
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/transition/TransitionValues;

    #@e
    .line 632
    .local v2, "start":Landroid/transition/TransitionValues;
    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@10
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 633
    iget-object v3, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 634
    iget-object v3, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 630
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 639
    .end local v2    # "start":Landroid/transition/TransitionValues;
    :cond_1
    const/4 v1, 0x0

    #@24
    :goto_1
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    #@27
    move-result v3

    #@28
    if-ge v1, v3, :cond_3

    #@2a
    .line 640
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/transition/TransitionValues;

    #@30
    .line 641
    .local v0, "end":Landroid/transition/TransitionValues;
    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@32
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_2

    #@38
    .line 642
    iget-object v3, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 643
    iget-object v3, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    .line 639
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 628
    .end local v0    # "end":Landroid/transition/TransitionValues;
    :cond_3
    return-void
.end method

.method static addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V
    .locals 10
    .param p0, "transitionValuesMaps"    # Landroid/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 1485
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v7, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1486
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@a
    move-result v1

    #@b
    .line 1487
    .local v1, "id":I
    if-ltz v1, :cond_0

    #@d
    .line 1488
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@12
    move-result v7

    #@13
    if-ltz v7, :cond_3

    #@15
    .line 1490
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v7, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    .line 1495
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 1496
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@20
    .line 1497
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@22
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_4

    #@28
    .line 1499
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v7, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 1504
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@30
    move-result-object v7

    #@31
    instance-of v7, v7, Landroid/widget/ListView;

    #@33
    if-eqz v7, :cond_2

    #@35
    .line 1505
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Landroid/widget/ListView;

    #@3b
    .line 1506
    .local v4, "listview":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@3e
    move-result-object v7

    #@3f
    invoke-interface {v7}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_2

    #@45
    .line 1507
    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    #@48
    move-result v6

    #@49
    .line 1508
    .local v6, "position":I
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    #@4c
    move-result-wide v2

    #@4d
    .line 1509
    .local v2, "itemId":J
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@4f
    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    #@52
    move-result v7

    #@53
    if-ltz v7, :cond_5

    #@55
    .line 1511
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@57
    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Landroid/view/View;

    #@5d
    .line 1512
    .local v0, "alreadyMatched":Landroid/view/View;
    if-eqz v0, :cond_2

    #@5f
    .line 1513
    invoke-virtual {v0, v9}, Landroid/view/View;->setHasTransientState(Z)V

    #@62
    .line 1514
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@64
    invoke-virtual {v7, v2, v3, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@67
    .line 1484
    .end local v0    # "alreadyMatched":Landroid/view/View;
    .end local v2    # "itemId":J
    .end local v4    # "listview":Landroid/widget/ListView;
    .end local v6    # "position":I
    :cond_2
    :goto_2
    return-void

    #@68
    .line 1492
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    #@6a
    invoke-virtual {v7, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@6d
    goto :goto_0

    #@6e
    .line 1501
    .restart local v5    # "name":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@70
    invoke-virtual {v7, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    goto :goto_1

    #@74
    .line 1517
    .restart local v2    # "itemId":J
    .restart local v4    # "listview":Landroid/widget/ListView;
    .restart local v6    # "position":I
    :cond_5
    const/4 v7, 0x1

    #@75
    invoke-virtual {p1, v7}, Landroid/view/View;->setHasTransientState(Z)V

    #@78
    .line 1518
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@7a
    invoke-virtual {v7, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@7d
    goto :goto_2
.end method

.method private static alreadyContains([II)Z
    .locals 3
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    #@0
    .prologue
    .line 514
    aget v1, p0, p1

    #@2
    .line 515
    .local v1, "value":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@5
    .line 516
    aget v2, p0, v0

    #@7
    if-ne v2, v1, :cond_0

    #@9
    .line 517
    const/4 v2, 0x1

    #@a
    return v2

    #@b
    .line 515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 520
    :cond_1
    const/4 v2, 0x0

    #@f
    return v2
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    #@0
    .prologue
    .line 1556
    if-nez p1, :cond_0

    #@2
    .line 1557
    return-void

    #@3
    .line 1559
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@6
    move-result v1

    #@7
    .line 1560
    .local v1, "id":I
    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@9
    if-eqz v5, :cond_1

    #@b
    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v6

    #@11
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 1561
    return-void

    #@18
    .line 1563
    :cond_1
    iget-object v5, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@1a
    if-eqz v5, :cond_2

    #@1c
    iget-object v5, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_2

    #@24
    .line 1564
    return-void

    #@25
    .line 1566
    :cond_2
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@27
    if-eqz v5, :cond_4

    #@29
    if-eqz p1, :cond_4

    #@2b
    .line 1567
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v2

    #@31
    .line 1568
    .local v2, "numTypes":I
    const/4 v0, 0x0

    #@32
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    #@34
    .line 1569
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v5

    #@3a
    check-cast v5, Ljava/lang/Class;

    #@3c
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_3

    #@42
    .line 1570
    return-void

    #@43
    .line 1568
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1574
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@49
    move-result-object v5

    #@4a
    instance-of v5, v5, Landroid/view/ViewGroup;

    #@4c
    if-eqz v5, :cond_5

    #@4e
    .line 1575
    new-instance v4, Landroid/transition/TransitionValues;

    #@50
    invoke-direct {v4}, Landroid/transition/TransitionValues;-><init>()V

    #@53
    .line 1576
    .local v4, "values":Landroid/transition/TransitionValues;
    iput-object p1, v4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@55
    .line 1577
    if-eqz p2, :cond_6

    #@57
    .line 1578
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@5a
    .line 1582
    :goto_1
    iget-object v5, v4, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    .line 1583
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    #@62
    .line 1584
    if-eqz p2, :cond_7

    #@64
    .line 1585
    iget-object v5, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@66
    invoke-static {v5, p1, v4}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    #@69
    .line 1590
    .end local v4    # "values":Landroid/transition/TransitionValues;
    :cond_5
    :goto_2
    instance-of v5, p1, Landroid/view/ViewGroup;

    #@6b
    if-eqz v5, :cond_c

    #@6d
    .line 1592
    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@6f
    if-eqz v5, :cond_8

    #@71
    iget-object v5, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7a
    move-result v5

    #@7b
    if-eqz v5, :cond_8

    #@7d
    .line 1593
    return-void

    #@7e
    .line 1580
    .restart local v4    # "values":Landroid/transition/TransitionValues;
    :cond_6
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@81
    goto :goto_1

    #@82
    .line 1587
    :cond_7
    iget-object v5, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@84
    invoke-static {v5, p1, v4}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    #@87
    goto :goto_2

    #@88
    .line 1595
    .end local v4    # "values":Landroid/transition/TransitionValues;
    :cond_8
    iget-object v5, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@8a
    if-eqz v5, :cond_9

    #@8c
    iget-object v5, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_9

    #@94
    .line 1596
    return-void

    #@95
    .line 1598
    :cond_9
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@97
    if-eqz v5, :cond_b

    #@99
    .line 1599
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@9b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@9e
    move-result v2

    #@9f
    .line 1600
    .restart local v2    # "numTypes":I
    const/4 v0, 0x0

    #@a0
    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_b

    #@a2
    .line 1601
    iget-object v5, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a7
    move-result-object v5

    #@a8
    check-cast v5, Ljava/lang/Class;

    #@aa
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@ad
    move-result v5

    #@ae
    if-eqz v5, :cond_a

    #@b0
    .line 1602
    return-void

    #@b1
    .line 1600
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@b3
    goto :goto_3

    #@b4
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    :cond_b
    move-object v3, p1

    #@b5
    .line 1606
    check-cast v3, Landroid/view/ViewGroup;

    #@b7
    .line 1607
    .local v3, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    #@b8
    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@bb
    move-result v5

    #@bc
    if-ge v0, v5, :cond_c

    #@be
    .line 1608
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@c1
    move-result-object v5

    #@c2
    invoke-direct {p0, v5, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    #@c5
    .line 1607
    add-int/lit8 v0, v0, 0x1

    #@c7
    goto :goto_4

    #@c8
    .line 1555
    .end local v0    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_c
    return-void
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1222
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    .line 1223
    if-eqz p2, :cond_1

    #@4
    .line 1224
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@7
    move-result-object p0

    #@8
    .line 1229
    :cond_0
    :goto_0
    return-object p0

    #@9
    .line 1226
    :cond_1
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@c
    move-result-object p0

    #@d
    goto :goto_0
.end method

.method private static getRunningAnimators()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 850
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/ArrayMap;

    #@8
    .line 851
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_0

    #@a
    .line 852
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 853
    .restart local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    sget-object v1, Landroid/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@14
    .line 855
    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 3
    .param p0, "match"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 510
    if-lt p0, v0, :cond_0

    #@4
    const/4 v2, 0x4

    #@5
    if-gt p0, v2, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method private static isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 5
    .param p0, "oldValues"    # Landroid/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1823
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v3

    #@6
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 1825
    const/4 v3, 0x0

    #@f
    return v3

    #@10
    .line 1827
    :cond_0
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@12
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    .line 1828
    .local v2, "oldValue":Ljava/lang/Object;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@18
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 1830
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    #@1e
    if-nez v1, :cond_1

    #@20
    .line 1832
    const/4 v0, 0x0

    #@21
    .line 1845
    .local v0, "changed":Z
    :goto_0
    return v0

    #@22
    .line 1833
    .end local v0    # "changed":Z
    :cond_1
    if-eqz v2, :cond_2

    #@24
    if-nez v1, :cond_3

    #@26
    .line 1835
    :cond_2
    const/4 v0, 0x1

    #@27
    .line 1833
    .restart local v0    # "changed":Z
    goto :goto_0

    #@28
    .line 1838
    .end local v0    # "changed":Z
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_4

    #@2e
    const/4 v0, 0x0

    #@2f
    .restart local v0    # "changed":Z
    goto :goto_0

    #@30
    .end local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x1

    #@31
    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method private matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 577
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    #@3
    move-result v3

    #@4
    .line 578
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@7
    .line 579
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v5

    #@b
    check-cast v5, Landroid/view/View;

    #@d
    .line 580
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_0

    #@f
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 581
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@18
    move-result v6

    #@19
    invoke-virtual {p4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/view/View;

    #@1f
    .line 582
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_0

    #@21
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    .line 583
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroid/transition/TransitionValues;

    #@2d
    .line 584
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/transition/TransitionValues;

    #@33
    .line 585
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_0

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 586
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 587
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 588
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 589
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 578
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 576
    .end local v5    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 529
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v4

    #@4
    add-int/lit8 v1, v4, -0x1

    #@6
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@8
    .line 530
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Landroid/view/View;

    #@e
    .line 531
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    #@10
    invoke-virtual {p0, v3}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 532
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/transition/TransitionValues;

    #@1c
    .line 533
    .local v0, "end":Landroid/transition/TransitionValues;
    if-eqz v0, :cond_0

    #@1e
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@20
    if-eqz v4, :cond_0

    #@22
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@24
    invoke-virtual {p0, v4}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 534
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroid/transition/TransitionValues;

    #@30
    .line 535
    .local v2, "start":Landroid/transition/TransitionValues;
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 536
    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 529
    .end local v0    # "end":Landroid/transition/TransitionValues;
    .end local v2    # "start":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 528
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 550
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    #@3
    move-result v3

    #@4
    .line 551
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@7
    .line 552
    invoke-virtual {p3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v5

    #@b
    check-cast v5, Landroid/view/View;

    #@d
    .line 553
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_0

    #@f
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 554
    invoke-virtual {p3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    #@18
    move-result-wide v6

    #@19
    invoke-virtual {p4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/view/View;

    #@1f
    .line 555
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_0

    #@21
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    .line 556
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroid/transition/TransitionValues;

    #@2d
    .line 557
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/transition/TransitionValues;

    #@33
    .line 558
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_0

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 559
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 560
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 561
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 562
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 551
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 549
    .end local v5    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 604
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    #@3
    move-result v3

    #@4
    .line 605
    .local v3, "numStartNames":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@7
    .line 606
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v5

    #@b
    check-cast v5, Landroid/view/View;

    #@d
    .line 607
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_0

    #@f
    invoke-virtual {p0, v5}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 608
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {p4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/view/View;

    #@1f
    .line 609
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_0

    #@21
    invoke-virtual {p0, v1}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    .line 610
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroid/transition/TransitionValues;

    #@2d
    .line 611
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/transition/TransitionValues;

    #@33
    .line 612
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_0

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 613
    iget-object v6, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 614
    iget-object v6, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 615
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 616
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 605
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 603
    .end local v5    # "startView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .locals 5
    .param p1, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/transition/TransitionValuesMaps;

    #@0
    .prologue
    .line 651
    new-instance v2, Landroid/util/ArrayMap;

    #@2
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@4
    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@7
    .line 653
    .local v2, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    new-instance v1, Landroid/util/ArrayMap;

    #@9
    iget-object v3, p2, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@b
    invoke-direct {v1, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@e
    .line 655
    .local v1, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    #@11
    array-length v3, v3

    #@12
    if-ge v0, v3, :cond_0

    #@14
    .line 656
    iget-object v3, p0, Landroid/transition/Transition;->mMatchOrder:[I

    #@16
    aget v3, v3, v0

    #@18
    packed-switch v3, :pswitch_data_0

    #@1b
    .line 655
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 658
    :pswitch_0
    invoke-direct {p0, v2, v1}, Landroid/transition/Transition;->matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    #@21
    goto :goto_1

    #@22
    .line 662
    :pswitch_1
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@24
    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@26
    .line 661
    invoke-direct {p0, v2, v1, v3, v4}, Landroid/transition/Transition;->matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    #@29
    goto :goto_1

    #@2a
    .line 666
    :pswitch_2
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    #@2c
    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    #@2e
    .line 665
    invoke-direct {p0, v2, v1, v3, v4}, Landroid/transition/Transition;->matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@31
    goto :goto_1

    #@32
    .line 670
    :pswitch_3
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@34
    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@36
    .line 669
    invoke-direct {p0, v2, v1, v3, v4}, Landroid/transition/Transition;->matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    #@39
    goto :goto_1

    #@3a
    .line 674
    :cond_0
    invoke-direct {p0, v2, v1}, Landroid/transition/Transition;->addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    #@3d
    .line 649
    return-void

    #@3e
    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 8
    .param p0, "matchOrderString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 291
    new-instance v3, Ljava/util/StringTokenizer;

    #@4
    const-string/jumbo v5, ","

    #@7
    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 292
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@d
    move-result v5

    #@e
    new-array v1, v5, [I

    #@10
    .line 293
    .local v1, "matches":[I
    const/4 v0, 0x0

    #@11
    .line 294
    .local v0, "index":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_6

    #@17
    .line 295
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 296
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v5, "id"

    #@22
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 297
    const/4 v5, 0x3

    #@29
    aput v5, v1, v0

    #@2b
    .line 314
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 298
    :cond_0
    const-string/jumbo v5, "instance"

    #@31
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_1

    #@37
    .line 299
    const/4 v5, 0x1

    #@38
    aput v5, v1, v0

    #@3a
    goto :goto_1

    #@3b
    .line 300
    :cond_1
    const-string/jumbo v5, "name"

    #@3e
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_2

    #@44
    .line 301
    aput v7, v1, v0

    #@46
    goto :goto_1

    #@47
    .line 302
    :cond_2
    const-string/jumbo v5, "viewName"

    #@4a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4d
    move-result v5

    #@4e
    if-eqz v5, :cond_3

    #@50
    .line 303
    aput v7, v1, v0

    #@52
    goto :goto_1

    #@53
    .line 304
    :cond_3
    const-string/jumbo v5, "itemId"

    #@56
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 305
    const/4 v5, 0x4

    #@5d
    aput v5, v1, v0

    #@5f
    goto :goto_1

    #@60
    .line 306
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_5

    #@66
    .line 307
    array-length v5, v1

    #@67
    add-int/lit8 v5, v5, -0x1

    #@69
    new-array v2, v5, [I

    #@6b
    .line 308
    .local v2, "smallerMatches":[I
    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@6e
    .line 309
    move-object v1, v2

    #@6f
    .line 310
    add-int/lit8 v0, v0, -0x1

    #@71
    goto :goto_1

    #@72
    .line 312
    .end local v2    # "smallerMatches":[I
    :cond_5
    new-instance v5, Landroid/view/InflateException;

    #@74
    new-instance v6, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v7, "Unknown match type in matchOrder: \'"

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    const-string/jumbo v7, "\'"

    #@87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v6

    #@8f
    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@92
    throw v5

    #@93
    .line 316
    .end local v4    # "token":Ljava/lang/String;
    :cond_6
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 886
    .local p2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_0

    #@2
    .line 888
    new-instance v0, Landroid/transition/Transition$2;

    #@4
    invoke-direct {v0, p0, p2}, Landroid/transition/Transition$2;-><init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V

    #@7
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@a
    .line 899
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->animate(Landroid/animation/Animator;)V

    #@d
    .line 885
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    .line 1973
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1974
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@b
    .line 1976
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1977
    return-object p0
.end method

.method public addTarget(I)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    #@0
    .prologue
    .line 980
    if-lez p1, :cond_0

    #@2
    .line 981
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 983
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 1312
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1313
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetType"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1036
    if-eqz p1, :cond_1

    #@2
    .line 1037
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@d
    .line 1040
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 1042
    :cond_1
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1004
    if-eqz p1, :cond_1

    #@2
    .line 1005
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1006
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@d
    .line 1008
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 1010
    :cond_1
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1860
    if-nez p1, :cond_0

    #@4
    .line 1861
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    #@7
    .line 1858
    :goto_0
    return-void

    #@8
    .line 1863
    :cond_0
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    #@b
    move-result-wide v0

    #@c
    cmp-long v0, v0, v2

    #@e
    if-ltz v0, :cond_1

    #@10
    .line 1864
    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    #@13
    move-result-wide v0

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@17
    .line 1866
    :cond_1
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    #@1a
    move-result-wide v0

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-ltz v0, :cond_2

    #@1f
    .line 1867
    invoke-virtual {p0}, Landroid/transition/Transition;->getStartDelay()J

    #@22
    move-result-wide v0

    #@23
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    #@26
    move-result-wide v2

    #@27
    add-long/2addr v0, v2

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    #@2b
    .line 1869
    :cond_2
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_3

    #@31
    .line 1870
    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@38
    .line 1872
    :cond_3
    new-instance v0, Landroid/transition/Transition$3;

    #@3a
    invoke-direct {v0, p0}, Landroid/transition/Transition$3;-><init>(Landroid/transition/Transition;)V

    #@3d
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@40
    .line 1879
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    #@43
    goto :goto_0
.end method

.method public canRemoveViews()Z
    .locals 1

    #@0
    .prologue
    .line 2179
    iget-boolean v0, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    #@2
    return v0
.end method

.method protected cancel()V
    .locals 6

    #@0
    .prologue
    .line 1949
    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 1950
    .local v2, "numAnimators":I
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 1951
    iget-object v5, p0, Landroid/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/animation/Animator;

    #@12
    .line 1952
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@15
    .line 1950
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 1954
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@1a
    if-eqz v5, :cond_1

    #@1c
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v5

    #@22
    if-lez v5, :cond_1

    #@24
    .line 1956
    iget-object v5, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljava/util/ArrayList;

    #@2c
    .line 1957
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v3

    #@30
    .line 1958
    .local v3, "numListeners":I
    const/4 v1, 0x0

    #@31
    :goto_1
    if-ge v1, v3, :cond_1

    #@33
    .line 1959
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    check-cast v5, Landroid/transition/Transition$TransitionListener;

    #@39
    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/transition/Transition;)V

    #@3c
    .line 1958
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 1948
    .end local v3    # "numListeners":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroid/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroid/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 2151
    iget-object v3, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 2150
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2152
    :cond_1
    iget-object v3, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    #@f
    invoke-virtual {v3}, Landroid/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 2153
    .local v2, "propertyNames":[Ljava/lang/String;
    if-nez v2, :cond_2

    #@15
    .line 2154
    return-void

    #@16
    .line 2156
    :cond_2
    const/4 v0, 0x1

    #@17
    .line 2157
    .local v0, "containsAll":Z
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_1
    array-length v3, v2

    #@19
    if-ge v1, v3, :cond_3

    #@1b
    .line 2158
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1d
    aget-object v4, v2, v1

    #@1f
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_4

    #@25
    .line 2159
    const/4 v0, 0x0

    #@26
    .line 2163
    :cond_3
    if-nez v0, :cond_0

    #@28
    .line 2164
    iget-object v3, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    #@2a
    invoke-virtual {v3, p1}, Landroid/transition/TransitionPropagation;->captureValues(Landroid/transition/TransitionValues;)V

    #@2d
    goto :goto_0

    #@2e
    .line 2157
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_1
.end method

.method public abstract captureStartValues(Landroid/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    #@0
    .prologue
    .line 1422
    invoke-virtual {p0, p2}, Landroid/transition/Transition;->clearValues(Z)V

    #@3
    .line 1423
    iget-object v8, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v8

    #@9
    if-gtz v8, :cond_0

    #@b
    iget-object v8, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v8

    #@11
    if-lez v8, :cond_9

    #@13
    .line 1424
    :cond_0
    iget-object v8, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@15
    if-eqz v8, :cond_1

    #@17
    iget-object v8, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@1c
    move-result v8

    #@1d
    .line 1423
    if-eqz v8, :cond_9

    #@1f
    .line 1425
    :cond_1
    iget-object v8, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@21
    if-eqz v8, :cond_2

    #@23
    iget-object v8, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@28
    move-result v8

    #@29
    .line 1423
    if-eqz v8, :cond_9

    #@2b
    .line 1426
    :cond_2
    const/4 v1, 0x0

    #@2c
    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v8

    #@32
    if-ge v1, v8, :cond_6

    #@34
    .line 1427
    iget-object v8, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v8

    #@3a
    check-cast v8, Ljava/lang/Integer;

    #@3c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v2

    #@40
    .line 1428
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@43
    move-result-object v7

    #@44
    .line 1429
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_3

    #@46
    .line 1430
    new-instance v6, Landroid/transition/TransitionValues;

    #@48
    invoke-direct {v6}, Landroid/transition/TransitionValues;-><init>()V

    #@4b
    .line 1431
    .local v6, "values":Landroid/transition/TransitionValues;
    iput-object v7, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@4d
    .line 1432
    if-eqz p2, :cond_4

    #@4f
    .line 1433
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@52
    .line 1437
    :goto_1
    iget-object v8, v6, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    .line 1438
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    #@5a
    .line 1439
    if-eqz p2, :cond_5

    #@5c
    .line 1440
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@5e
    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    #@61
    .line 1426
    .end local v6    # "values":Landroid/transition/TransitionValues;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1435
    .restart local v6    # "values":Landroid/transition/TransitionValues;
    :cond_4
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@67
    goto :goto_1

    #@68
    .line 1442
    :cond_5
    iget-object v8, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@6a
    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    #@6d
    goto :goto_2

    #@6e
    .line 1446
    .end local v2    # "id":I
    .end local v6    # "values":Landroid/transition/TransitionValues;
    .end local v7    # "view":Landroid/view/View;
    :cond_6
    const/4 v1, 0x0

    #@6f
    :goto_3
    iget-object v8, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@74
    move-result v8

    #@75
    if-ge v1, v8, :cond_a

    #@77
    .line 1447
    iget-object v8, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v7

    #@7d
    check-cast v7, Landroid/view/View;

    #@7f
    .line 1448
    .restart local v7    # "view":Landroid/view/View;
    new-instance v6, Landroid/transition/TransitionValues;

    #@81
    invoke-direct {v6}, Landroid/transition/TransitionValues;-><init>()V

    #@84
    .line 1449
    .restart local v6    # "values":Landroid/transition/TransitionValues;
    iput-object v7, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@86
    .line 1450
    if-eqz p2, :cond_7

    #@88
    .line 1451
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@8b
    .line 1455
    :goto_4
    iget-object v8, v6, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@90
    .line 1456
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    #@93
    .line 1457
    if-eqz p2, :cond_8

    #@95
    .line 1458
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@97
    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    #@9a
    .line 1446
    :goto_5
    add-int/lit8 v1, v1, 0x1

    #@9c
    goto :goto_3

    #@9d
    .line 1453
    :cond_7
    invoke-virtual {p0, v6}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@a0
    goto :goto_4

    #@a1
    .line 1460
    :cond_8
    iget-object v8, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@a3
    invoke-static {v8, v7, v6}, Landroid/transition/Transition;->addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    #@a6
    goto :goto_5

    #@a7
    .line 1464
    .end local v1    # "i":I
    .end local v6    # "values":Landroid/transition/TransitionValues;
    .end local v7    # "view":Landroid/view/View;
    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    #@aa
    .line 1466
    :cond_a
    if-nez p2, :cond_d

    #@ac
    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    #@ae
    if-eqz v8, :cond_d

    #@b0
    .line 1467
    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    #@b2
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@b5
    move-result v3

    #@b6
    .line 1468
    .local v3, "numOverrides":I
    new-instance v4, Ljava/util/ArrayList;

    #@b8
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@bb
    .line 1469
    .local v4, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@bc
    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_b

    #@be
    .line 1470
    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    #@c0
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@c3
    move-result-object v0

    #@c4
    check-cast v0, Ljava/lang/String;

    #@c6
    .line 1471
    .local v0, "fromName":Ljava/lang/String;
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@c8
    iget-object v8, v8, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@ca
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@cd
    move-result-object v8

    #@ce
    check-cast v8, Landroid/view/View;

    #@d0
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d3
    .line 1469
    add-int/lit8 v1, v1, 0x1

    #@d5
    goto :goto_6

    #@d6
    .line 1473
    .end local v0    # "fromName":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    #@d7
    :goto_7
    if-ge v1, v3, :cond_d

    #@d9
    .line 1474
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@dc
    move-result-object v7

    #@dd
    check-cast v7, Landroid/view/View;

    #@df
    .line 1475
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_c

    #@e1
    .line 1476
    iget-object v8, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    #@e3
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@e6
    move-result-object v5

    #@e7
    check-cast v5, Ljava/lang/String;

    #@e9
    .line 1477
    .local v5, "toName":Ljava/lang/String;
    iget-object v8, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@eb
    iget-object v8, v8, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@ed
    invoke-virtual {v8, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f0
    .line 1473
    .end local v5    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    #@f2
    goto :goto_7

    #@f3
    .line 1421
    .end local v1    # "i":I
    .end local v3    # "numOverrides":I
    .end local v4    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "view":Landroid/view/View;
    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 2
    .param p1, "start"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1530
    if-eqz p1, :cond_0

    #@3
    .line 1531
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@5
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@a
    .line 1532
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@c
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@11
    .line 1533
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@13
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@15
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    #@18
    .line 1534
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@1a
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@1f
    .line 1535
    iput-object v1, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@21
    .line 1529
    :goto_0
    return-void

    #@22
    .line 1537
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@24
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@26
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@29
    .line 1538
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@2b
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@30
    .line 1539
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@32
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@34
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    #@37
    .line 1540
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@39
    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    #@3b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@3e
    .line 1541
    iput-object v1, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@40
    goto :goto_0
.end method

.method public clone()Landroid/transition/Transition;
    .locals 4

    #@0
    .prologue
    .line 2206
    const/4 v1, 0x0

    #@1
    .line 2208
    .local v1, "clone":Landroid/transition/Transition;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/transition/Transition;

    #@8
    move-object v1, v0

    #@9
    .line 2209
    .local v1, "clone":Landroid/transition/Transition;
    new-instance v3, Ljava/util/ArrayList;

    #@b
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v3, v1, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@10
    .line 2210
    new-instance v3, Landroid/transition/TransitionValuesMaps;

    #@12
    invoke-direct {v3}, Landroid/transition/TransitionValuesMaps;-><init>()V

    #@15
    iput-object v3, v1, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@17
    .line 2211
    new-instance v3, Landroid/transition/TransitionValuesMaps;

    #@19
    invoke-direct {v3}, Landroid/transition/TransitionValuesMaps;-><init>()V

    #@1c
    iput-object v3, v1, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@1e
    .line 2212
    const/4 v3, 0x0

    #@1f
    iput-object v3, v1, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@21
    .line 2213
    const/4 v3, 0x0

    #@22
    iput-object v3, v1, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 2216
    .end local v1    # "clone":Landroid/transition/Transition;
    :goto_0
    return-object v1

    #@25
    .line 2214
    :catch_0
    move-exception v2

    #@26
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
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
    .line 2205
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 473
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 32
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
    .line 694
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    #@3
    move-result-object v25

    #@4
    .line 695
    .local v25, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    const-wide v20, 0x7fffffffffffffffL

    #@9
    .line 696
    .local v20, "minStartDelay":J
    move-object/from16 v0, p0

    #@b
    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v19

    #@11
    .line 697
    .local v19, "minAnimator":I
    new-instance v27, Landroid/util/SparseLongArray;

    #@13
    invoke-direct/range {v27 .. v27}, Landroid/util/SparseLongArray;-><init>()V

    #@16
    .line 698
    .local v27, "startDelays":Landroid/util/SparseLongArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v28

    #@1a
    .line 699
    .local v28, "startValuesListCount":I
    const/4 v15, 0x0

    #@1b
    .local v15, "i":I
    :goto_0
    move/from16 v0, v28

    #@1d
    if-ge v15, v0, :cond_10

    #@1f
    .line 700
    move-object/from16 v0, p4

    #@21
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v26

    #@25
    check-cast v26, Landroid/transition/TransitionValues;

    #@27
    .line 701
    .local v26, "start":Landroid/transition/TransitionValues;
    move-object/from16 v0, p5

    #@29
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v14

    #@2d
    check-cast v14, Landroid/transition/TransitionValues;

    #@2f
    .line 702
    .local v14, "end":Landroid/transition/TransitionValues;
    if-eqz v26, :cond_0

    #@31
    move-object/from16 v0, v26

    #@33
    iget-object v6, v0, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    #@35
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_3

    #@3d
    .line 705
    .end local v26    # "start":Landroid/transition/TransitionValues;
    :cond_0
    :goto_1
    if-eqz v14, :cond_1

    #@3f
    iget-object v6, v14, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    #@41
    move-object/from16 v0, p0

    #@43
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_4

    #@49
    .line 708
    .end local v14    # "end":Landroid/transition/TransitionValues;
    :cond_1
    :goto_2
    if-nez v26, :cond_5

    #@4b
    if-nez v14, :cond_5

    #@4d
    .line 699
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 703
    .restart local v14    # "end":Landroid/transition/TransitionValues;
    .restart local v26    # "start":Landroid/transition/TransitionValues;
    :cond_3
    const/16 v26, 0x0

    #@52
    .local v26, "start":Landroid/transition/TransitionValues;
    goto :goto_1

    #@53
    .line 706
    .end local v26    # "start":Landroid/transition/TransitionValues;
    :cond_4
    const/4 v14, 0x0

    #@54
    .local v14, "end":Landroid/transition/TransitionValues;
    goto :goto_2

    #@55
    .line 712
    .end local v14    # "end":Landroid/transition/TransitionValues;
    :cond_5
    if-eqz v26, :cond_6

    #@57
    if-nez v14, :cond_7

    #@59
    :cond_6
    const/16 v17, 0x1

    #@5b
    .line 713
    :goto_4
    if-eqz v17, :cond_2

    #@5d
    .line 732
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, p1

    #@61
    move-object/from16 v2, v26

    #@63
    invoke-virtual {v0, v1, v2, v14}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    #@66
    move-result-object v11

    #@67
    .line 733
    .local v11, "animator":Landroid/animation/Animator;
    if-eqz v11, :cond_2

    #@69
    .line 735
    const/4 v5, 0x0

    #@6a
    .line 736
    .local v5, "view":Landroid/view/View;
    const/4 v9, 0x0

    #@6b
    .line 737
    .local v9, "infoValues":Landroid/transition/TransitionValues;
    if-eqz v14, :cond_e

    #@6d
    .line 738
    iget-object v5, v14, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@6f
    .line 739
    .local v5, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    #@72
    move-result-object v24

    #@73
    .line 740
    .local v24, "properties":[Ljava/lang/String;
    if-eqz v5, :cond_a

    #@75
    if-eqz v24, :cond_a

    #@77
    move-object/from16 v0, v24

    #@79
    array-length v6, v0

    #@7a
    if-lez v6, :cond_a

    #@7c
    .line 741
    new-instance v9, Landroid/transition/TransitionValues;

    #@7e
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    invoke-direct {v9}, Landroid/transition/TransitionValues;-><init>()V

    #@81
    .line 742
    .local v9, "infoValues":Landroid/transition/TransitionValues;
    iput-object v5, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@83
    .line 743
    move-object/from16 v0, p3

    #@85
    iget-object v6, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@87
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    move-result-object v22

    #@8b
    check-cast v22, Landroid/transition/TransitionValues;

    #@8d
    .line 744
    .local v22, "newValues":Landroid/transition/TransitionValues;
    if-eqz v22, :cond_8

    #@8f
    .line 745
    const/16 v18, 0x0

    #@91
    .local v18, "j":I
    :goto_5
    move-object/from16 v0, v24

    #@93
    array-length v6, v0

    #@94
    move/from16 v0, v18

    #@96
    if-ge v0, v6, :cond_8

    #@98
    .line 746
    iget-object v6, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@9a
    aget-object v7, v24, v18

    #@9c
    .line 747
    move-object/from16 v0, v22

    #@9e
    iget-object v8, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@a0
    aget-object v29, v24, v18

    #@a2
    move-object/from16 v0, v29

    #@a4
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    move-result-object v8

    #@a8
    .line 746
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    .line 745
    add-int/lit8 v18, v18, 0x1

    #@ad
    goto :goto_5

    #@ae
    .line 712
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    #@b0
    move-object/from16 v1, v26

    #@b2
    invoke-virtual {v0, v1, v14}, Landroid/transition/Transition;->isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    #@b5
    move-result v17

    #@b6
    .local v17, "isChanged":Z
    goto :goto_4

    #@b7
    .line 750
    .end local v17    # "isChanged":Z
    .restart local v5    # "view":Landroid/view/View;
    .restart local v9    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v11    # "animator":Landroid/animation/Animator;
    .restart local v22    # "newValues":Landroid/transition/TransitionValues;
    .restart local v24    # "properties":[Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    #@ba
    move-result v23

    #@bb
    .line 751
    .local v23, "numExistingAnims":I
    const/16 v18, 0x0

    #@bd
    .restart local v18    # "j":I
    :goto_6
    move/from16 v0, v18

    #@bf
    move/from16 v1, v23

    #@c1
    if-ge v0, v1, :cond_a

    #@c3
    .line 752
    move-object/from16 v0, v25

    #@c5
    move/from16 v1, v18

    #@c7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ca
    move-result-object v10

    #@cb
    check-cast v10, Landroid/animation/Animator;

    #@cd
    .line 753
    .local v10, "anim":Landroid/animation/Animator;
    move-object/from16 v0, v25

    #@cf
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d2
    move-result-object v4

    #@d3
    check-cast v4, Landroid/transition/Transition$AnimationInfo;

    #@d5
    .line 754
    .local v4, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    #@d7
    if-eqz v6, :cond_d

    #@d9
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    #@db
    if-ne v6, v5, :cond_d

    #@dd
    .line 755
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    #@df
    if-nez v6, :cond_c

    #@e1
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    #@e4
    move-result-object v6

    #@e5
    if-nez v6, :cond_c

    #@e7
    .line 757
    :cond_9
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    #@e9
    invoke-virtual {v6, v9}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v6

    #@ed
    if-eqz v6, :cond_d

    #@ef
    .line 759
    const/4 v11, 0x0

    #@f0
    .line 768
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v23    # "numExistingAnims":I
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_a
    :goto_7
    if-eqz v11, :cond_2

    #@f2
    .line 769
    move-object/from16 v0, p0

    #@f4
    iget-object v6, v0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    #@f6
    if-eqz v6, :cond_b

    #@f8
    .line 770
    move-object/from16 v0, p0

    #@fa
    iget-object v6, v0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    #@fc
    move-object/from16 v0, p1

    #@fe
    move-object/from16 v1, p0

    #@100
    move-object/from16 v2, v26

    #@102
    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J

    #@105
    move-result-wide v12

    #@106
    .line 772
    .local v12, "delay":J
    move-object/from16 v0, p0

    #@108
    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@10a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v6

    #@10e
    move-object/from16 v0, v27

    #@110
    invoke-virtual {v0, v6, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    #@113
    .line 773
    move-wide/from16 v0, v20

    #@115
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@118
    move-result-wide v20

    #@119
    .line 775
    .end local v12    # "delay":J
    :cond_b
    new-instance v4, Landroid/transition/Transition$AnimationInfo;

    #@11b
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    #@11e
    move-result-object v6

    #@11f
    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    #@122
    move-result-object v8

    #@123
    move-object/from16 v7, p0

    #@125
    .line 775
    invoke-direct/range {v4 .. v9}, Landroid/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/Transition;Landroid/view/WindowId;Landroid/transition/TransitionValues;)V

    #@128
    .line 777
    .restart local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    move-object/from16 v0, v25

    #@12a
    invoke-virtual {v0, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 778
    move-object/from16 v0, p0

    #@12f
    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@131
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@134
    goto/16 :goto_3

    #@136
    .line 756
    .restart local v5    # "view":Landroid/view/View;
    .restart local v9    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v10    # "anim":Landroid/animation/Animator;
    .restart local v11    # "animator":Landroid/animation/Animator;
    .restart local v18    # "j":I
    .restart local v22    # "newValues":Landroid/transition/TransitionValues;
    .restart local v23    # "numExistingAnims":I
    .restart local v24    # "properties":[Ljava/lang/String;
    :cond_c
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    #@138
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    #@13b
    move-result-object v7

    #@13c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v6

    #@140
    .line 754
    if-nez v6, :cond_9

    #@142
    .line 751
    :cond_d
    add-int/lit8 v18, v18, 0x1

    #@144
    goto/16 :goto_6

    #@146
    .line 766
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v23    # "numExistingAnims":I
    .end local v24    # "properties":[Ljava/lang/String;
    .local v5, "view":Landroid/view/View;
    .local v9, "infoValues":Landroid/transition/TransitionValues;
    :cond_e
    if-eqz v26, :cond_f

    #@148
    move-object/from16 v0, v26

    #@14a
    iget-object v5, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@14c
    .local v5, "view":Landroid/view/View;
    goto :goto_7

    #@14d
    .local v5, "view":Landroid/view/View;
    :cond_f
    const/4 v5, 0x0

    #@14e
    goto :goto_7

    #@14f
    .line 783
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    .end local v11    # "animator":Landroid/animation/Animator;
    :cond_10
    const-wide/16 v6, 0x0

    #@151
    cmp-long v6, v20, v6

    #@153
    if-eqz v6, :cond_11

    #@155
    .line 784
    const/4 v15, 0x0

    #@156
    :goto_8
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseLongArray;->size()I

    #@159
    move-result v6

    #@15a
    if-ge v15, v6, :cond_11

    #@15c
    .line 785
    move-object/from16 v0, v27

    #@15e
    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    #@161
    move-result v16

    #@162
    .line 786
    .local v16, "index":I
    move-object/from16 v0, p0

    #@164
    iget-object v6, v0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@166
    move/from16 v0, v16

    #@168
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16b
    move-result-object v11

    #@16c
    check-cast v11, Landroid/animation/Animator;

    #@16e
    .line 787
    .restart local v11    # "animator":Landroid/animation/Animator;
    move-object/from16 v0, v27

    #@170
    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    #@173
    move-result-wide v6

    #@174
    sub-long v6, v6, v20

    #@176
    invoke-virtual {v11}, Landroid/animation/Animator;->getStartDelay()J

    #@179
    move-result-wide v30

    #@17a
    add-long v12, v6, v30

    #@17c
    .line 788
    .restart local v12    # "delay":J
    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    #@17f
    .line 784
    add-int/lit8 v15, v15, 0x1

    #@181
    goto :goto_8

    #@182
    .line 690
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v12    # "delay":J
    .end local v16    # "index":I
    :cond_11
    return-void
.end method

.method protected end()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1917
    iget v4, p0, Landroid/transition/Transition;->mNumInstances:I

    #@3
    add-int/lit8 v4, v4, -0x1

    #@5
    iput v4, p0, Landroid/transition/Transition;->mNumInstances:I

    #@7
    .line 1918
    iget v4, p0, Landroid/transition/Transition;->mNumInstances:I

    #@9
    if-nez v4, :cond_5

    #@b
    .line 1919
    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@d
    if-eqz v4, :cond_0

    #@f
    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v4

    #@15
    if-lez v4, :cond_0

    #@17
    .line 1921
    iget-object v4, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/util/ArrayList;

    #@1f
    .line 1922
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v1

    #@23
    .line 1923
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@26
    .line 1924
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/transition/Transition$TransitionListener;

    #@2c
    invoke-interface {v4, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    #@2f
    .line 1923
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1927
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_0
    const/4 v0, 0x0

    #@33
    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@35
    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@37
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    #@3a
    move-result v4

    #@3b
    if-ge v0, v4, :cond_2

    #@3d
    .line 1928
    iget-object v4, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@3f
    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@41
    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Landroid/view/View;

    #@47
    .line 1929
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    #@49
    .line 1930
    invoke-virtual {v3, v5}, Landroid/view/View;->setHasTransientState(Z)V

    #@4c
    .line 1927
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 1933
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    #@50
    :goto_2
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@52
    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@54
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    #@57
    move-result v4

    #@58
    if-ge v0, v4, :cond_4

    #@5a
    .line 1934
    iget-object v4, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@5c
    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    #@5e
    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Landroid/view/View;

    #@64
    .line 1935
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_3

    #@66
    .line 1936
    invoke-virtual {v3, v5}, Landroid/view/View;->setHasTransientState(Z)V

    #@69
    .line 1933
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@6b
    goto :goto_2

    #@6c
    .line 1939
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v4, 0x1

    #@6d
    iput-boolean v4, p0, Landroid/transition/Transition;->mEnded:Z

    #@6f
    .line 1916
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 1159
    if-ltz p1, :cond_0

    #@2
    .line 1160
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@e
    .line 1162
    :cond_0
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 1213
    iget-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@8
    .line 1214
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 1281
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@8
    .line 1282
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 1101
    if-ltz p1, :cond_0

    #@2
    .line 1102
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@e
    .line 1104
    :cond_0
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@8
    .line 1188
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@8
    .line 1255
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    #@0
    .prologue
    .line 1129
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1, p2}, Landroid/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@8
    .line 1130
    return-object p0
.end method

.method public forceVisibility(IZ)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    #@0
    .prologue
    .line 2197
    return-void
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 343
    iget-wide v0, p0, Landroid/transition/Transition;->mDuration:J

    #@2
    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2033
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 2034
    return-object v1

    #@6
    .line 2036
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    #@8
    invoke-virtual {v0, p0}, Landroid/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getEpicenterCallback()Landroid/transition/Transition$EpicenterCallback;
    .locals 1

    #@0
    .prologue
    .line 2022
    iget-object v0, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    #@2
    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1639
    iget-object v6, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 1640
    iget-object v6, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@7
    invoke-virtual {v6, p1, p2}, Landroid/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@a
    move-result-object v6

    #@b
    return-object v6

    #@c
    .line 1642
    :cond_0
    if-eqz p2, :cond_1

    #@e
    iget-object v3, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@10
    .line 1643
    .local v3, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_0
    if-nez v3, :cond_2

    #@12
    .line 1644
    return-object v7

    #@13
    .line 1642
    .end local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_1
    iget-object v3, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@15
    .restart local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    goto :goto_0

    #@16
    .line 1646
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    .line 1647
    .local v0, "count":I
    const/4 v2, -0x1

    #@1b
    .line 1648
    .local v2, "index":I
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    #@1e
    .line 1649
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/transition/TransitionValues;

    #@24
    .line 1650
    .local v5, "values":Landroid/transition/TransitionValues;
    if-nez v5, :cond_3

    #@26
    .line 1652
    return-object v7

    #@27
    .line 1654
    :cond_3
    iget-object v6, v5, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@29
    if-ne v6, p1, :cond_6

    #@2b
    .line 1655
    move v2, v1

    #@2c
    .line 1659
    .end local v5    # "values":Landroid/transition/TransitionValues;
    :cond_4
    const/4 v5, 0x0

    #@2d
    .line 1660
    .local v5, "values":Landroid/transition/TransitionValues;
    if-ltz v2, :cond_5

    #@2f
    .line 1661
    if-eqz p2, :cond_7

    #@31
    iget-object v4, p0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@33
    .line 1662
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v5

    #@37
    .end local v5    # "values":Landroid/transition/TransitionValues;
    check-cast v5, Landroid/transition/TransitionValues;

    #@39
    .line 1664
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_5
    return-object v5

    #@3a
    .line 1648
    .local v5, "values":Landroid/transition/TransitionValues;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 1661
    .local v5, "values":Landroid/transition/TransitionValues;
    :cond_7
    iget-object v4, p0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@3f
    .restart local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2232
    iget-object v0, p0, Landroid/transition/Transition;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNameOverrides()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2193
    iget-object v0, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method public getPathMotion()Landroid/transition/PathMotion;
    .locals 1

    #@0
    .prologue
    .line 2115
    iget-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    #@2
    return-object v0
.end method

.method public getPropagation()Landroid/transition/TransitionPropagation;
    .locals 1

    #@0
    .prologue
    .line 2143
    iget-object v0, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    #@2
    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    #@0
    .prologue
    .line 370
    iget-wide v0, p0, Landroid/transition/Transition;->mStartDelay:J

    #@2
    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1361
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1389
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1411
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTargetViewNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1397
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1375
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 422
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    #@0
    .prologue
    .line 1620
    iget-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1621
    iget-object v1, p0, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    #@6
    invoke-virtual {v1, p1, p2}, Landroid/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 1623
    :cond_0
    if-eqz p2, :cond_1

    #@d
    iget-object v0, p0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@f
    .line 1624
    .local v0, "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :goto_0
    iget-object v1, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/transition/TransitionValues;

    #@17
    return-object v1

    #@18
    .line 1623
    .end local v0    # "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :cond_1
    iget-object v0, p0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@1a
    .restart local v0    # "valuesMaps":Landroid/transition/TransitionValuesMaps;
    goto :goto_0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 7
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 1796
    const/4 v5, 0x0

    #@1
    .line 1799
    .local v5, "valuesChanged":Z
    if-eqz p1, :cond_0

    #@3
    if-eqz p2, :cond_0

    #@5
    .line 1800
    invoke-virtual {p0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 1801
    .local v4, "properties":[Ljava/lang/String;
    if-eqz v4, :cond_2

    #@b
    .line 1802
    array-length v0, v4

    #@c
    .line 1803
    .local v0, "count":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@f
    .line 1804
    aget-object v6, v4, v1

    #@11
    invoke-static {p1, p2, v6}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_1

    #@17
    .line 1805
    const/4 v5, 0x1

    #@18
    .line 1818
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "properties":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    #@19
    .line 1803
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v4    # "properties":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1810
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1e
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@21
    move-result-object v6

    #@22
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_0

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Ljava/lang/String;

    #@32
    .line 1811
    .local v2, "key":Ljava/lang/String;
    invoke-static {p1, p2, v2}, Landroid/transition/Transition;->isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_3

    #@38
    .line 1812
    const/4 v5, 0x1

    #@39
    .line 1813
    goto :goto_1
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 8
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 804
    if-nez p1, :cond_0

    #@4
    .line 805
    return v6

    #@5
    .line 807
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@8
    move-result v2

    #@9
    .line 808
    .local v2, "targetId":I
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@b
    if-eqz v4, :cond_1

    #@d
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 809
    return v6

    #@1a
    .line 811
    :cond_1
    iget-object v4, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@1c
    if-eqz v4, :cond_2

    #@1e
    iget-object v4, p0, Landroid/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 812
    return v6

    #@27
    .line 814
    :cond_2
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@29
    if-eqz v4, :cond_4

    #@2b
    if-eqz p1, :cond_4

    #@2d
    .line 815
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v1

    #@33
    .line 816
    .local v1, "numTypes":I
    const/4 v0, 0x0

    #@34
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@36
    .line 817
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Ljava/lang/Class;

    #@3e
    .line 818
    .local v3, "type":Ljava/lang/Class;
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_3

    #@44
    .line 819
    return v6

    #@45
    .line 816
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 823
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v3    # "type":Ljava/lang/Class;
    :cond_4
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@4a
    if-eqz v4, :cond_5

    #@4c
    if-eqz p1, :cond_5

    #@4e
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    if-eqz v4, :cond_5

    #@54
    .line 824
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@56
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_5

    #@60
    .line 825
    return v6

    #@61
    .line 828
    :cond_5
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@66
    move-result v4

    #@67
    if-nez v4, :cond_8

    #@69
    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v4

    #@6f
    if-nez v4, :cond_8

    #@71
    .line 829
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@73
    if-eqz v4, :cond_6

    #@75
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@7a
    move-result v4

    #@7b
    .line 828
    if-eqz v4, :cond_8

    #@7d
    .line 830
    :cond_6
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@7f
    if-eqz v4, :cond_7

    #@81
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@86
    move-result v4

    #@87
    .line 828
    if-eqz v4, :cond_8

    #@89
    .line 831
    :cond_7
    return v7

    #@8a
    .line 833
    :cond_8
    iget-object v4, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@8c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@93
    move-result v4

    #@94
    if-nez v4, :cond_9

    #@96
    iget-object v4, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9b
    move-result v4

    #@9c
    if-eqz v4, :cond_a

    #@9e
    .line 834
    :cond_9
    return v7

    #@9f
    .line 836
    :cond_a
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@a1
    if-eqz v4, :cond_b

    #@a3
    iget-object v4, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@a5
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@ac
    move-result v4

    #@ad
    if-eqz v4, :cond_b

    #@af
    .line 837
    return v7

    #@b0
    .line 839
    :cond_b
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@b2
    if-eqz v4, :cond_d

    #@b4
    .line 840
    const/4 v0, 0x0

    #@b5
    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@b7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@ba
    move-result v4

    #@bb
    if-ge v0, v4, :cond_d

    #@bd
    .line 841
    iget-object v4, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@bf
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c2
    move-result-object v4

    #@c3
    check-cast v4, Ljava/lang/Class;

    #@c5
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@c8
    move-result v4

    #@c9
    if-eqz v4, :cond_c

    #@cb
    .line 842
    return v7

    #@cc
    .line 840
    :cond_c
    add-int/lit8 v0, v0, 0x1

    #@ce
    goto :goto_1

    #@cf
    .line 846
    .end local v0    # "i":I
    :cond_d
    return v6
.end method

.method public pause(Landroid/view/View;)V
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/View;

    #@0
    .prologue
    .line 1675
    iget-boolean v8, p0, Landroid/transition/Transition;->mEnded:Z

    #@2
    if-nez v8, :cond_3

    #@4
    .line 1676
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    #@7
    move-result-object v5

    #@8
    .line 1677
    .local v5, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v4

    #@c
    .line 1678
    .local v4, "numOldAnims":I
    if-eqz p1, :cond_1

    #@e
    .line 1679
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    #@11
    move-result-object v7

    #@12
    .line 1680
    .local v7, "windowId":Landroid/view/WindowId;
    add-int/lit8 v1, v4, -0x1

    #@14
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@16
    .line 1681
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/transition/Transition$AnimationInfo;

    #@1c
    .line 1682
    .local v2, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    #@1e
    if-eqz v8, :cond_0

    #@20
    if-eqz v7, :cond_0

    #@22
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    #@24
    invoke-virtual {v7, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_0

    #@2a
    .line 1683
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/animation/Animator;

    #@30
    .line 1684
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    #@33
    .line 1680
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@35
    goto :goto_0

    #@36
    .line 1688
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v7    # "windowId":Landroid/view/WindowId;
    :cond_1
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@38
    if-eqz v8, :cond_2

    #@3a
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v8

    #@40
    if-lez v8, :cond_2

    #@42
    .line 1690
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@47
    move-result-object v6

    #@48
    check-cast v6, Ljava/util/ArrayList;

    #@4a
    .line 1691
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v3

    #@4e
    .line 1692
    .local v3, "numListeners":I
    const/4 v1, 0x0

    #@4f
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@51
    .line 1693
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v8

    #@55
    check-cast v8, Landroid/transition/Transition$TransitionListener;

    #@57
    invoke-interface {v8, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionPause(Landroid/transition/Transition;)V

    #@5a
    .line 1692
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 1696
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_2
    const/4 v8, 0x1

    #@5e
    iput-boolean v8, p0, Landroid/transition/Transition;->mPaused:Z

    #@60
    .line 1674
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    :cond_3
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 18
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1739
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    move-object/from16 v0, p0

    #@7
    iput-object v1, v0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@9
    .line 1740
    new-instance v1, Ljava/util/ArrayList;

    #@b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@e
    move-object/from16 v0, p0

    #@10
    iput-object v1, v0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@12
    .line 1741
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v2, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@1a
    move-object/from16 v0, p0

    #@1c
    invoke-direct {v0, v1, v2}, Landroid/transition/Transition;->matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    #@1f
    .line 1743
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    #@22
    move-result-object v15

    #@23
    .line 1744
    .local v15, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    #@26
    move-result v11

    #@27
    .line 1745
    .local v11, "numOldAnims":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    #@2a
    move-result-object v17

    #@2b
    .line 1746
    .local v17, "windowId":Landroid/view/WindowId;
    add-int/lit8 v10, v11, -0x1

    #@2d
    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_6

    #@2f
    .line 1747
    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@32
    move-result-object v7

    #@33
    check-cast v7, Landroid/animation/Animator;

    #@35
    .line 1748
    .local v7, "anim":Landroid/animation/Animator;
    if-eqz v7, :cond_3

    #@37
    .line 1749
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v12

    #@3b
    check-cast v12, Landroid/transition/Transition$AnimationInfo;

    #@3d
    .line 1750
    .local v12, "oldInfo":Landroid/transition/Transition$AnimationInfo;
    if-eqz v12, :cond_3

    #@3f
    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    #@41
    if-eqz v1, :cond_3

    #@43
    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    #@45
    move-object/from16 v0, v17

    #@47
    if-ne v1, v0, :cond_3

    #@49
    .line 1751
    iget-object v13, v12, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    #@4b
    .line 1752
    .local v13, "oldValues":Landroid/transition/TransitionValues;
    iget-object v14, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    #@4d
    .line 1753
    .local v14, "oldView":Landroid/view/View;
    const/4 v1, 0x1

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-virtual {v0, v14, v1}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@53
    move-result-object v16

    #@54
    .line 1754
    .local v16, "startValues":Landroid/transition/TransitionValues;
    const/4 v1, 0x1

    #@55
    move-object/from16 v0, p0

    #@57
    invoke-virtual {v0, v14, v1}, Landroid/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    #@5a
    move-result-object v9

    #@5b
    .line 1755
    .local v9, "endValues":Landroid/transition/TransitionValues;
    if-nez v16, :cond_0

    #@5d
    if-nez v9, :cond_0

    #@5f
    .line 1756
    move-object/from16 v0, p0

    #@61
    iget-object v1, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@63
    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    #@65
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v9

    #@69
    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    check-cast v9, Landroid/transition/TransitionValues;

    #@6b
    .line 1758
    .restart local v9    # "endValues":Landroid/transition/TransitionValues;
    :cond_0
    if-nez v16, :cond_1

    #@6d
    if-eqz v9, :cond_4

    #@6f
    .line 1759
    :cond_1
    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->transition:Landroid/transition/Transition;

    #@71
    invoke-virtual {v1, v13, v9}, Landroid/transition/Transition;->isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    #@74
    move-result v8

    #@75
    .line 1760
    :goto_1
    if-eqz v8, :cond_3

    #@77
    .line 1761
    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    #@7a
    move-result v1

    #@7b
    if-nez v1, :cond_2

    #@7d
    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_5

    #@83
    .line 1765
    :cond_2
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    #@86
    .line 1746
    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v13    # "oldValues":Landroid/transition/TransitionValues;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, -0x1

    #@88
    goto :goto_0

    #@89
    .line 1758
    .restart local v9    # "endValues":Landroid/transition/TransitionValues;
    .restart local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .restart local v13    # "oldValues":Landroid/transition/TransitionValues;
    .restart local v14    # "oldView":Landroid/view/View;
    .restart local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_4
    const/4 v8, 0x0

    #@8a
    .local v8, "cancel":Z
    goto :goto_1

    #@8b
    .line 1770
    .end local v8    # "cancel":Z
    :cond_5
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    goto :goto_2

    #@8f
    .line 1777
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v13    # "oldValues":Landroid/transition/TransitionValues;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_6
    move-object/from16 v0, p0

    #@91
    iget-object v3, v0, Landroid/transition/Transition;->mStartValues:Landroid/transition/TransitionValuesMaps;

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v4, v0, Landroid/transition/Transition;->mEndValues:Landroid/transition/TransitionValuesMaps;

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v5, v0, Landroid/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v6, v0, Landroid/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@9f
    move-object/from16 v1, p0

    #@a1
    move-object/from16 v2, p1

    #@a3
    invoke-virtual/range {v1 .. v6}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@a6
    .line 1778
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Transition;->runAnimators()V

    #@a9
    .line 1738
    return-void
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 2
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1988
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1989
    return-object p0

    #@6
    .line 1991
    :cond_0
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 1992
    iget-object v0, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1993
    iput-object v1, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@15
    .line 1995
    :cond_1
    return-object p0
.end method

.method public removeTarget(I)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    #@0
    .prologue
    .line 1056
    if-lez p1, :cond_0

    #@2
    .line 1057
    iget-object v0, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 1059
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    .line 1327
    if-eqz p1, :cond_0

    #@2
    .line 1328
    iget-object v0, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    .line 1330
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1344
    if-eqz p1, :cond_0

    #@2
    .line 1345
    iget-object v0, p0, Landroid/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    .line 1347
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1073
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1074
    iget-object v0, p0, Landroid/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 1076
    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1708
    iget-boolean v8, p0, Landroid/transition/Transition;->mPaused:Z

    #@3
    if-eqz v8, :cond_3

    #@5
    .line 1709
    iget-boolean v8, p0, Landroid/transition/Transition;->mEnded:Z

    #@7
    if-nez v8, :cond_2

    #@9
    .line 1710
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    #@c
    move-result-object v5

    #@d
    .line 1711
    .local v5, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@10
    move-result v4

    #@11
    .line 1712
    .local v4, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    #@14
    move-result-object v7

    #@15
    .line 1713
    .local v7, "windowId":Landroid/view/WindowId;
    add-int/lit8 v1, v4, -0x1

    #@17
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@19
    .line 1714
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/transition/Transition$AnimationInfo;

    #@1f
    .line 1715
    .local v2, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    #@21
    if-eqz v8, :cond_0

    #@23
    if-eqz v7, :cond_0

    #@25
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    #@27
    invoke-virtual {v7, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v8

    #@2b
    if-eqz v8, :cond_0

    #@2d
    .line 1716
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/animation/Animator;

    #@33
    .line 1717
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    #@36
    .line 1713
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@38
    goto :goto_0

    #@39
    .line 1720
    .end local v2    # "info":Landroid/transition/Transition$AnimationInfo;
    :cond_1
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@3b
    if-eqz v8, :cond_2

    #@3d
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v8

    #@43
    if-lez v8, :cond_2

    #@45
    .line 1722
    iget-object v8, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, Ljava/util/ArrayList;

    #@4d
    .line 1723
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v3

    #@51
    .line 1724
    .local v3, "numListeners":I
    const/4 v1, 0x0

    #@52
    :goto_1
    if-ge v1, v3, :cond_2

    #@54
    .line 1725
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v8

    #@58
    check-cast v8, Landroid/transition/Transition$TransitionListener;

    #@5a
    invoke-interface {v8, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionResume(Landroid/transition/Transition;)V

    #@5d
    .line 1724
    add-int/lit8 v1, v1, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 1729
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v7    # "windowId":Landroid/view/WindowId;
    :cond_2
    iput-boolean v9, p0, Landroid/transition/Transition;->mPaused:Z

    #@62
    .line 1707
    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    #@0
    .prologue
    .line 868
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    #@3
    .line 869
    invoke-static {}, Landroid/transition/Transition;->getRunningAnimators()Landroid/util/ArrayMap;

    #@6
    move-result-object v2

    #@7
    .line 871
    .local v2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/animation/Animator;

    #@19
    .line 875
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 876
    invoke-virtual {p0}, Landroid/transition/Transition;->start()V

    #@22
    .line 877
    invoke-direct {p0, v0, v2}, Landroid/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V

    #@25
    goto :goto_0

    #@26
    .line 880
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@2b
    .line 881
    invoke-virtual {p0}, Landroid/transition/Transition;->end()V

    #@2e
    .line 864
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    #@0
    .prologue
    .line 2175
    iput-boolean p1, p0, Landroid/transition/Transition;->mCanRemoveViews:Z

    #@2
    .line 2174
    return-void
.end method

.method public setDuration(J)Landroid/transition/Transition;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 330
    iput-wide p1, p0, Landroid/transition/Transition;->mDuration:J

    #@2
    .line 331
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    #@0
    .prologue
    .line 2009
    iput-object p1, p0, Landroid/transition/Transition;->mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    #@2
    .line 2008
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 384
    iput-object p1, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    .line 385
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 4
    .param p1, "matches"    # [I

    #@0
    .prologue
    .line 493
    if-eqz p1, :cond_0

    #@2
    array-length v2, p1

    #@3
    if-nez v2, :cond_1

    #@5
    .line 494
    :cond_0
    sget-object v2, Landroid/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@7
    iput-object v2, p0, Landroid/transition/Transition;->mMatchOrder:[I

    #@9
    .line 492
    :goto_0
    return-void

    #@a
    .line 496
    :cond_1
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_1
    array-length v2, p1

    #@c
    if-ge v0, v2, :cond_4

    #@e
    .line 497
    aget v1, p1, v0

    #@10
    .line 498
    .local v1, "match":I
    invoke-static {v1}, Landroid/transition/Transition;->isValidMatch(I)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_2

    #@16
    .line 499
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v3, "matches contains invalid value"

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 501
    :cond_2
    invoke-static {p1, v0}, Landroid/transition/Transition;->alreadyContains([II)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 502
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v3, "matches contains a duplicate value"

    #@2a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 496
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 505
    .end local v1    # "match":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, [I

    #@37
    iput-object v2, p0, Landroid/transition/Transition;->mMatchOrder:[I

    #@39
    goto :goto_0
.end method

.method public setNameOverrides(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2188
    .local p1, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/transition/Transition;->mNameOverrides:Landroid/util/ArrayMap;

    #@2
    .line 2187
    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    #@0
    .prologue
    .line 2077
    if-nez p1, :cond_0

    #@2
    .line 2078
    sget-object v0, Landroid/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    #@4
    iput-object v0, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    #@6
    .line 2076
    :goto_0
    return-void

    #@7
    .line 2080
    :cond_0
    iput-object p1, p0, Landroid/transition/Transition;->mPathMotion:Landroid/transition/PathMotion;

    #@9
    goto :goto_0
.end method

.method public setPropagation(Landroid/transition/TransitionPropagation;)V
    .locals 0
    .param p1, "transitionPropagation"    # Landroid/transition/TransitionPropagation;

    #@0
    .prologue
    .line 2129
    iput-object p1, p0, Landroid/transition/Transition;->mPropagation:Landroid/transition/TransitionPropagation;

    #@2
    .line 2128
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 2170
    iput-object p1, p0, Landroid/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    #@2
    .line 2171
    return-object p0
.end method

.method public setStartDelay(J)Landroid/transition/Transition;
    .locals 1
    .param p1, "startDelay"    # J

    #@0
    .prologue
    .line 357
    iput-wide p1, p0, Landroid/transition/Transition;->mStartDelay:J

    #@2
    .line 358
    return-object p0
.end method

.method protected start()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1891
    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    #@3
    if-nez v3, :cond_1

    #@5
    .line 1892
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@7
    if-eqz v3, :cond_0

    #@9
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v3

    #@f
    if-lez v3, :cond_0

    #@11
    .line 1894
    iget-object v3, p0, Landroid/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/util/ArrayList;

    #@19
    .line 1895
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v1

    #@1d
    .line 1896
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@20
    .line 1897
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Landroid/transition/Transition$TransitionListener;

    #@26
    invoke-interface {v3, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    #@29
    .line 1896
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 1900
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_0
    iput-boolean v4, p0, Landroid/transition/Transition;->mEnded:Z

    #@2e
    .line 1902
    :cond_1
    iget v3, p0, Landroid/transition/Transition;->mNumInstances:I

    #@30
    add-int/lit8 v3, v3, 0x1

    #@32
    iput v3, p0, Landroid/transition/Transition;->mNumInstances:I

    #@34
    .line 1890
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2201
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    .line 2236
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p0}, Landroid/transition/Transition;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, "@"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 2237
    invoke-virtual {p0}, Landroid/transition/Transition;->hashCode()I

    #@21
    move-result v3

    #@22
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 2236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 2237
    const-string/jumbo v3, ": "

    #@2d
    .line 2236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 2238
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Landroid/transition/Transition;->mDuration:J

    #@37
    cmp-long v2, v2, v6

    #@39
    if-eqz v2, :cond_0

    #@3b
    .line 2239
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v3, "dur("

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    iget-wide v4, p0, Landroid/transition/Transition;->mDuration:J

    #@4d
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    const-string/jumbo v3, ") "

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .line 2241
    :cond_0
    iget-wide v2, p0, Landroid/transition/Transition;->mStartDelay:J

    #@5e
    cmp-long v2, v2, v6

    #@60
    if-eqz v2, :cond_1

    #@62
    .line 2242
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    const-string/jumbo v3, "dly("

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    iget-wide v4, p0, Landroid/transition/Transition;->mStartDelay:J

    #@74
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    const-string/jumbo v3, ") "

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    .line 2244
    :cond_1
    iget-object v2, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@85
    if-eqz v2, :cond_2

    #@87
    .line 2245
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    const-string/jumbo v3, "interp("

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    iget-object v3, p0, Landroid/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    const-string/jumbo v3, ") "

    #@a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    .line 2247
    :cond_2
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@aa
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@ad
    move-result v2

    #@ae
    if-gtz v2, :cond_3

    #@b0
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b5
    move-result v2

    #@b6
    if-lez v2, :cond_8

    #@b8
    .line 2248
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    const-string/jumbo v3, "tgts("

    #@c4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v1

    #@cc
    .line 2249
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d1
    move-result v2

    #@d2
    if-lez v2, :cond_5

    #@d4
    .line 2250
    const/4 v0, 0x0

    #@d5
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@d7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@da
    move-result v2

    #@db
    if-ge v0, v2, :cond_5

    #@dd
    .line 2251
    if-lez v0, :cond_4

    #@df
    .line 2252
    new-instance v2, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v2

    #@e8
    const-string/jumbo v3, ", "

    #@eb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v2

    #@ef
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v1

    #@f3
    .line 2254
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v2

    #@fc
    iget-object v3, p0, Landroid/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@fe
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@101
    move-result-object v3

    #@102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v2

    #@106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v1

    #@10a
    .line 2250
    add-int/lit8 v0, v0, 0x1

    #@10c
    goto :goto_0

    #@10d
    .line 2257
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@10f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@112
    move-result v2

    #@113
    if-lez v2, :cond_7

    #@115
    .line 2258
    const/4 v0, 0x0

    #@116
    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11b
    move-result v2

    #@11c
    if-ge v0, v2, :cond_7

    #@11e
    .line 2259
    if-lez v0, :cond_6

    #@120
    .line 2260
    new-instance v2, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v2

    #@129
    const-string/jumbo v3, ", "

    #@12c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v2

    #@130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object v1

    #@134
    .line 2262
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v2

    #@13d
    iget-object v3, p0, Landroid/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@13f
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@142
    move-result-object v3

    #@143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v2

    #@147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v1

    #@14b
    .line 2258
    add-int/lit8 v0, v0, 0x1

    #@14d
    goto :goto_1

    #@14e
    .line 2265
    .end local v0    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v2

    #@157
    const-string/jumbo v3, ")"

    #@15a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v2

    #@15e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v1

    #@162
    .line 2267
    :cond_8
    return-object v1
.end method
