.class public Landroid/animation/LayoutTransition;
.super Ljava/lang/Object;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/LayoutTransition$TransitionListener;,
        Landroid/animation/LayoutTransition$CleanupCallback;
    }
.end annotation


# static fields
.field private static ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field public static final APPEARING:I = 0x2

.field public static final CHANGE_APPEARING:I = 0x0

.field public static final CHANGE_DISAPPEARING:I = 0x1

.field public static final CHANGING:I = 0x4

.field private static DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field private static DEFAULT_DURATION:J = 0x0L

.field public static final DISAPPEARING:I = 0x3

.field private static final FLAG_APPEARING:I = 0x1

.field private static final FLAG_CHANGE_APPEARING:I = 0x4

.field private static final FLAG_CHANGE_DISAPPEARING:I = 0x8

.field private static final FLAG_CHANGING:I = 0x10

.field private static final FLAG_DISAPPEARING:I = 0x2

.field private static defaultChange:Landroid/animation/ObjectAnimator;

.field private static defaultChangeIn:Landroid/animation/ObjectAnimator;

.field private static defaultChangeOut:Landroid/animation/ObjectAnimator;

.field private static defaultFadeIn:Landroid/animation/ObjectAnimator;

.field private static defaultFadeOut:Landroid/animation/ObjectAnimator;

.field private static sAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDisappearingInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final currentAppearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentChangingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentDisappearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutChangeListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateParentHierarchy:Z

.field private mAppearingAnim:Landroid/animation/Animator;

.field private mAppearingDelay:J

.field private mAppearingDuration:J

.field private mAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAnim:Landroid/animation/Animator;

.field private mChangingAppearingAnim:Landroid/animation/Animator;

.field private mChangingAppearingDelay:J

.field private mChangingAppearingDuration:J

.field private mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAppearingStagger:J

.field private mChangingDelay:J

.field private mChangingDisappearingAnim:Landroid/animation/Animator;

.field private mChangingDisappearingDelay:J

.field private mChangingDisappearingDuration:J

.field private mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingDisappearingStagger:J

.field private mChangingDuration:J

.field private mChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingStagger:J

.field private mDisappearingAnim:Landroid/animation/Animator;

.field private mDisappearingDelay:J

.field private mDisappearingDuration:J

.field private mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionTypes:I

.field private final pendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private staggerDelay:J


# direct methods
.method static synthetic -get0(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/animation/LayoutTransition;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    #@2
    return-wide v0
.end method

.method static synthetic -get11(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/animation/LayoutTransition;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    #@2
    return-wide v0
.end method

.method static synthetic -get13(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get15()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    sget-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get16()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    sget-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get17()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    sget-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Landroid/animation/LayoutTransition;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/animation/LayoutTransition;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    #@2
    return-wide v0
.end method

.method static synthetic -get5(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/animation/LayoutTransition;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Landroid/animation/LayoutTransition;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    #@2
    return-wide v0
.end method

.method static synthetic -get8(Landroid/animation/LayoutTransition;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    #@2
    return-wide v0
.end method

.method static synthetic -get9(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/animation/LayoutTransition;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Landroid/animation/LayoutTransition;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 164
    const-wide/16 v0, 0x12c

    #@2
    sput-wide v0, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@4
    .line 198
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@6
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@9
    .line 197
    sput-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@b
    .line 199
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@d
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@10
    sput-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@12
    .line 200
    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@14
    sput-object v0, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@16
    .line 201
    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@18
    sput-object v0, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@1a
    .line 202
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@1c
    sput-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@1e
    .line 203
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@20
    sput-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@22
    .line 204
    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@24
    sput-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@26
    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x2

    #@1
    const-wide/16 v12, 0x0

    #@3
    const/4 v11, 0x0

    #@4
    const/4 v10, 0x1

    #@5
    const/4 v7, 0x0

    #@6
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 145
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    #@b
    .line 146
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    #@d
    .line 147
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    #@f
    .line 148
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    #@11
    .line 149
    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    #@13
    .line 169
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@15
    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    #@17
    .line 170
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@19
    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    #@1b
    .line 171
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@1d
    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    #@1f
    .line 172
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@21
    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    #@23
    .line 173
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@25
    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    #@27
    .line 181
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@29
    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    #@2b
    .line 182
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    #@2d
    .line 183
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    #@2f
    .line 184
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@31
    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    #@33
    .line 185
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    #@35
    .line 190
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    #@37
    .line 191
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    #@39
    .line 192
    iput-wide v12, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    #@3b
    .line 209
    sget-object v6, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@3d
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@3f
    .line 210
    sget-object v6, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@41
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@43
    .line 211
    sget-object v6, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@45
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@47
    .line 212
    sget-object v6, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@49
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@4b
    .line 213
    sget-object v6, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@4d
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@4f
    .line 224
    new-instance v6, Ljava/util/HashMap;

    #@51
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@54
    .line 223
    iput-object v6, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    #@56
    .line 226
    new-instance v6, Ljava/util/LinkedHashMap;

    #@58
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    #@5b
    .line 225
    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@5d
    .line 228
    new-instance v6, Ljava/util/LinkedHashMap;

    #@5f
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    #@62
    .line 227
    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@64
    .line 230
    new-instance v6, Ljava/util/LinkedHashMap;

    #@66
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    #@69
    .line 229
    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@6b
    .line 242
    new-instance v6, Ljava/util/HashMap;

    #@6d
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@70
    .line 241
    iput-object v6, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    #@72
    .line 256
    const/16 v6, 0xf

    #@74
    iput v6, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@76
    .line 270
    iput-boolean v10, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    #@78
    .line 279
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@7a
    if-nez v6, :cond_0

    #@7c
    .line 281
    const-string/jumbo v6, "left"

    #@7f
    filled-new-array {v11, v10}, [I

    #@82
    move-result-object v8

    #@83
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@86
    move-result-object v1

    #@87
    .line 282
    .local v1, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "top"

    #@8a
    filled-new-array {v11, v10}, [I

    #@8d
    move-result-object v8

    #@8e
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@91
    move-result-object v5

    #@92
    .line 283
    .local v5, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "right"

    #@95
    filled-new-array {v11, v10}, [I

    #@98
    move-result-object v8

    #@99
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@9c
    move-result-object v2

    #@9d
    .line 284
    .local v2, "pvhRight":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "bottom"

    #@a0
    filled-new-array {v11, v10}, [I

    #@a3
    move-result-object v8

    #@a4
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@a7
    move-result-object v0

    #@a8
    .line 285
    .local v0, "pvhBottom":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "scrollX"

    #@ab
    filled-new-array {v11, v10}, [I

    #@ae
    move-result-object v8

    #@af
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@b2
    move-result-object v3

    #@b3
    .line 286
    .local v3, "pvhScrollX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "scrollY"

    #@b6
    filled-new-array {v11, v10}, [I

    #@b9
    move-result-object v8

    #@ba
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    #@bd
    move-result-object v4

    #@be
    .local v4, "pvhScrollY":Landroid/animation/PropertyValuesHolder;
    move-object v6, v7

    #@bf
    .line 287
    check-cast v6, Ljava/lang/Object;

    #@c1
    const/4 v8, 0x6

    #@c2
    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    #@c4
    .line 288
    aput-object v1, v8, v11

    #@c6
    aput-object v5, v8, v10

    #@c8
    aput-object v2, v8, v14

    #@ca
    const/4 v9, 0x3

    #@cb
    aput-object v0, v8, v9

    #@cd
    const/4 v9, 0x4

    #@ce
    aput-object v3, v8, v9

    #@d0
    const/4 v9, 0x5

    #@d1
    aput-object v4, v8, v9

    #@d3
    .line 287
    invoke-static {v6, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d6
    move-result-object v6

    #@d7
    sput-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@d9
    .line 289
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@db
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@dd
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@e0
    .line 290
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@e2
    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    #@e4
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@e7
    .line 291
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@e9
    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@eb
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@ee
    .line 292
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@f0
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    #@f3
    move-result-object v6

    #@f4
    sput-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    #@f6
    .line 293
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    #@f8
    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    #@fa
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@fd
    .line 294
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    #@ff
    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@101
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@104
    .line 295
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@106
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    #@109
    move-result-object v6

    #@10a
    sput-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    #@10c
    .line 296
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    #@10e
    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    #@110
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@113
    .line 297
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    #@115
    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@117
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@11a
    .line 299
    const-string/jumbo v6, "alpha"

    #@11d
    new-array v8, v14, [F

    #@11f
    fill-array-data v8, :array_0

    #@122
    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@125
    move-result-object v6

    #@126
    sput-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    #@128
    .line 300
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    #@12a
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@12c
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@12f
    .line 301
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    #@131
    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    #@133
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@136
    .line 302
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    #@138
    iget-object v8, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@13a
    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@13d
    .line 303
    const-string/jumbo v6, "alpha"

    #@140
    new-array v8, v14, [F

    #@142
    fill-array-data v8, :array_1

    #@145
    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@148
    move-result-object v6

    #@149
    sput-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    #@14b
    .line 304
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    #@14d
    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    #@14f
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@152
    .line 305
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    #@154
    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    #@156
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@159
    .line 306
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    #@15b
    iget-object v7, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@15d
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@160
    .line 308
    .end local v0    # "pvhBottom":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "pvhLeft":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhRight":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "pvhScrollX":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "pvhScrollY":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "pvhTop":Landroid/animation/PropertyValuesHolder;
    :cond_0
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@162
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    #@164
    .line 309
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    #@166
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    #@168
    .line 310
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    #@16a
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    #@16c
    .line 311
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    #@16e
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    #@170
    .line 312
    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    #@172
    iput-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    #@174
    .line 278
    return-void

    #@175
    .line 299
    nop

    #@176
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@17e
    .line 303
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "changesLayout"    # Z

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x4

    #@3
    const/4 v4, 0x1

    #@4
    .line 1252
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1253
    return-void

    #@b
    .line 1255
    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@d
    and-int/lit8 v3, v3, 0x1

    #@f
    if-ne v3, v4, :cond_1

    #@11
    .line 1257
    const/4 v3, 0x3

    #@12
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@15
    .line 1259
    :cond_1
    if-eqz p3, :cond_2

    #@17
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@19
    and-int/lit8 v3, v3, 0x4

    #@1b
    if-ne v3, v5, :cond_2

    #@1d
    .line 1261
    invoke-virtual {p0, v6}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@20
    .line 1262
    invoke-virtual {p0, v5}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@23
    .line 1264
    :cond_2
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_3

    #@29
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@2b
    and-int/lit8 v3, v3, 0x1

    #@2d
    if-ne v3, v4, :cond_3

    #@2f
    .line 1266
    iget-object v3, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/util/ArrayList;

    #@37
    .line 1267
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v1

    #@3b
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_3

    #@41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    #@47
    .line 1268
    .local v0, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    invoke-interface {v0, p0, p1, p2, v7}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@4a
    goto :goto_0

    #@4b
    .line 1271
    .end local v0    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_3
    if-eqz p3, :cond_4

    #@4d
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@4f
    and-int/lit8 v3, v3, 0x4

    #@51
    if-ne v3, v5, :cond_4

    #@53
    .line 1272
    invoke-direct {p0, p1, p2, v7}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@56
    .line 1274
    :cond_4
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@58
    and-int/lit8 v3, v3, 0x1

    #@5a
    if-ne v3, v4, :cond_5

    #@5c
    .line 1275
    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@5f
    .line 1251
    :cond_5
    return-void
.end method

.method private hasListeners()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1280
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method private removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "changesLayout"    # Z

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x3

    #@3
    const/4 v4, 0x2

    #@4
    .line 1357
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1358
    return-void

    #@b
    .line 1360
    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@d
    and-int/lit8 v3, v3, 0x2

    #@f
    if-ne v3, v4, :cond_1

    #@11
    .line 1362
    invoke-virtual {p0, v4}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@14
    .line 1364
    :cond_1
    if-eqz p3, :cond_2

    #@16
    .line 1365
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@18
    and-int/lit8 v3, v3, 0x8

    #@1a
    if-ne v3, v6, :cond_2

    #@1c
    .line 1367
    const/4 v3, 0x1

    #@1d
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@20
    .line 1368
    const/4 v3, 0x4

    #@21
    invoke-virtual {p0, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    #@24
    .line 1370
    :cond_2
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@2c
    and-int/lit8 v3, v3, 0x2

    #@2e
    if-ne v3, v4, :cond_3

    #@30
    .line 1371
    iget-object v3, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Ljava/util/ArrayList;

    #@38
    .line 1373
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v1

    #@3c
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_3

    #@42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    #@48
    .line 1374
    .local v0, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    invoke-interface {v0, p0, p1, p2, v5}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@4b
    goto :goto_0

    #@4c
    .line 1377
    .end local v0    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_3
    if-eqz p3, :cond_4

    #@4e
    .line 1378
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@50
    and-int/lit8 v3, v3, 0x8

    #@52
    if-ne v3, v6, :cond_4

    #@54
    .line 1379
    invoke-direct {p0, p1, p2, v5}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@57
    .line 1381
    :cond_4
    iget v3, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@59
    and-int/lit8 v3, v3, 0x2

    #@5b
    if-ne v3, v4, :cond_5

    #@5d
    .line 1382
    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    #@60
    .line 1356
    :cond_5
    return-void
.end method

.method private runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1148
    iget-object v5, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v5, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/animation/Animator;

    #@8
    .line 1149
    .local v1, "currentAnimation":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    #@a
    .line 1150
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    #@d
    .line 1152
    :cond_0
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    #@f
    if-nez v5, :cond_2

    #@11
    .line 1153
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 1155
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Ljava/util/ArrayList;

    #@1f
    .line 1156
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v3

    #@23
    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_1

    #@29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/animation/LayoutTransition$TransitionListener;

    #@2f
    .line 1157
    .local v2, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    const/4 v5, 0x2

    #@30
    invoke-interface {v2, p0, p1, p2, v5}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@33
    goto :goto_0

    #@34
    .line 1160
    .end local v2    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_1
    return-void

    #@35
    .line 1162
    :cond_2
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    #@37
    invoke-virtual {v5}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@3a
    move-result-object v0

    #@3b
    .line 1163
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@3e
    .line 1164
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    #@40
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    #@43
    .line 1165
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    #@45
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@48
    .line 1166
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@4a
    sget-object v6, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@4c
    if-eq v5, v6, :cond_3

    #@4e
    .line 1167
    iget-object v5, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@50
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@53
    .line 1169
    :cond_3
    instance-of v5, v0, Landroid/animation/ObjectAnimator;

    #@55
    if-eqz v5, :cond_4

    #@57
    move-object v5, v0

    #@58
    .line 1170
    check-cast v5, Landroid/animation/ObjectAnimator;

    #@5a
    const-wide/16 v6, 0x0

    #@5c
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    #@5f
    .line 1172
    :cond_4
    new-instance v5, Landroid/animation/LayoutTransition$4;

    #@61
    invoke-direct {v5, p0, p2, p1}, Landroid/animation/LayoutTransition$4;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V

    #@64
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@67
    .line 1185
    iget-object v5, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@69
    invoke-virtual {v5, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 1186
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@6f
    .line 1147
    return-void
.end method

.method private runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 21
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "changeReason"    # I

    #@0
    .prologue
    .line 729
    const/4 v5, 0x0

    #@1
    .line 730
    .local v5, "baseAnimator":Landroid/animation/Animator;
    const/4 v13, 0x0

    #@2
    .line 732
    .local v13, "parentAnimator":Landroid/animation/Animator;
    packed-switch p3, :pswitch_data_0

    #@5
    .line 750
    const-wide/16 v6, 0x0

    #@7
    .line 754
    .end local v5    # "baseAnimator":Landroid/animation/Animator;
    .end local v13    # "parentAnimator":Landroid/animation/Animator;
    .local v6, "duration":J
    :goto_0
    if-nez v5, :cond_0

    #@9
    .line 755
    return-void

    #@a
    .line 734
    .end local v6    # "duration":J
    .restart local v5    # "baseAnimator":Landroid/animation/Animator;
    .restart local v13    # "parentAnimator":Landroid/animation/Animator;
    :pswitch_0
    move-object/from16 v0, p0

    #@c
    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    #@e
    .line 735
    .local v5, "baseAnimator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    #@10
    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    #@12
    .line 736
    .restart local v6    # "duration":J
    sget-object v13, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    #@14
    .local v13, "parentAnimator":Landroid/animation/Animator;
    goto :goto_0

    #@15
    .line 739
    .end local v6    # "duration":J
    .local v5, "baseAnimator":Landroid/animation/Animator;
    .local v13, "parentAnimator":Landroid/animation/Animator;
    :pswitch_1
    move-object/from16 v0, p0

    #@17
    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    #@19
    .line 740
    .local v5, "baseAnimator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    #@1b
    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    #@1d
    .line 741
    .restart local v6    # "duration":J
    sget-object v13, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    #@1f
    .local v13, "parentAnimator":Landroid/animation/Animator;
    goto :goto_0

    #@20
    .line 744
    .end local v6    # "duration":J
    .local v5, "baseAnimator":Landroid/animation/Animator;
    .local v13, "parentAnimator":Landroid/animation/Animator;
    :pswitch_2
    move-object/from16 v0, p0

    #@22
    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    #@24
    .line 745
    .local v5, "baseAnimator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    #@26
    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    #@28
    .line 746
    .restart local v6    # "duration":J
    sget-object v13, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    #@2a
    .local v13, "parentAnimator":Landroid/animation/Animator;
    goto :goto_0

    #@2b
    .line 759
    .end local v5    # "baseAnimator":Landroid/animation/Animator;
    .end local v13    # "parentAnimator":Landroid/animation/Animator;
    :cond_0
    const-wide/16 v2, 0x0

    #@2d
    move-object/from16 v0, p0

    #@2f
    iput-wide v2, v0, Landroid/animation/LayoutTransition;->staggerDelay:J

    #@31
    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@34
    move-result-object v19

    #@35
    .line 762
    .local v19, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_1

    #@3b
    .line 764
    return-void

    #@3c
    .line 766
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@3f
    move-result v18

    #@40
    .line 768
    .local v18, "numChildren":I
    const/16 v17, 0x0

    #@42
    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    #@44
    move/from16 v1, v18

    #@46
    if-ge v0, v1, :cond_3

    #@48
    .line 769
    move-object/from16 v0, p1

    #@4a
    move/from16 v1, v17

    #@4c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@4f
    move-result-object v8

    #@50
    .line 772
    .local v8, "child":Landroid/view/View;
    move-object/from16 v0, p2

    #@52
    if-eq v8, v0, :cond_2

    #@54
    move-object/from16 v2, p0

    #@56
    move-object/from16 v3, p1

    #@58
    move/from16 v4, p3

    #@5a
    .line 773
    invoke-direct/range {v2 .. v8}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    #@5d
    .line 768
    :cond_2
    add-int/lit8 v17, v17, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 776
    .end local v8    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    #@62
    iget-boolean v2, v0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    #@64
    if-eqz v2, :cond_5

    #@66
    .line 777
    move-object/from16 v16, p1

    #@68
    .line 778
    :goto_2
    if-eqz v16, :cond_5

    #@6a
    .line 779
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@6d
    move-result-object v20

    #@6e
    .line 780
    .local v20, "parentParent":Landroid/view/ViewParent;
    move-object/from16 v0, v20

    #@70
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@72
    if-eqz v2, :cond_4

    #@74
    move-object/from16 v11, v20

    #@76
    .line 781
    check-cast v11, Landroid/view/ViewGroup;

    #@78
    move-object/from16 v10, p0

    #@7a
    move/from16 v12, p3

    #@7c
    move-wide v14, v6

    #@7d
    invoke-direct/range {v10 .. v16}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    #@80
    move-object/from16 v16, v20

    #@82
    .line 783
    check-cast v16, Landroid/view/ViewGroup;

    #@84
    .local v16, "tempParent":Landroid/view/ViewGroup;
    goto :goto_2

    #@85
    .line 785
    .end local v16    # "tempParent":Landroid/view/ViewGroup;
    :cond_4
    const/16 v16, 0x0

    #@87
    .local v16, "tempParent":Landroid/view/ViewGroup;
    goto :goto_2

    #@88
    .line 794
    .end local v16    # "tempParent":Landroid/view/ViewGroup;
    .end local v20    # "parentParent":Landroid/view/ViewParent;
    :cond_5
    new-instance v9, Landroid/animation/LayoutTransition$CleanupCallback;

    #@8a
    move-object/from16 v0, p0

    #@8c
    iget-object v2, v0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    #@8e
    move-object/from16 v0, p1

    #@90
    invoke-direct {v9, v2, v0}, Landroid/animation/LayoutTransition$CleanupCallback;-><init>(Ljava/util/Map;Landroid/view/ViewGroup;)V

    #@93
    .line 795
    .local v9, "callback":Landroid/animation/LayoutTransition$CleanupCallback;
    move-object/from16 v0, v19

    #@95
    invoke-virtual {v0, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@98
    .line 796
    move-object/from16 v0, p1

    #@9a
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@9d
    .line 727
    return-void

    #@9e
    .line 732
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1196
    iget-object v6, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v6, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/animation/Animator;

    #@8
    .line 1197
    .local v1, "currentAnimation":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    #@a
    .line 1198
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    #@d
    .line 1200
    :cond_0
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    #@f
    if-nez v6, :cond_2

    #@11
    .line 1201
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_1

    #@17
    .line 1203
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Ljava/util/ArrayList;

    #@1f
    .line 1204
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v3

    #@23
    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_1

    #@29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/animation/LayoutTransition$TransitionListener;

    #@2f
    .line 1205
    .local v2, "listener":Landroid/animation/LayoutTransition$TransitionListener;
    const/4 v6, 0x3

    #@30
    invoke-interface {v2, p0, p1, p2, v6}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@33
    goto :goto_0

    #@34
    .line 1208
    .end local v2    # "listener":Landroid/animation/LayoutTransition$TransitionListener;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/LayoutTransition$TransitionListener;>;"
    :cond_1
    return-void

    #@35
    .line 1210
    :cond_2
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    #@37
    invoke-virtual {v6}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@3a
    move-result-object v0

    #@3b
    .line 1211
    .local v0, "anim":Landroid/animation/Animator;
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    #@3d
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    #@40
    .line 1212
    iget-wide v6, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    #@42
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@45
    .line 1213
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@47
    sget-object v7, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@49
    if-eq v6, v7, :cond_3

    #@4b
    .line 1214
    iget-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@4d
    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@50
    .line 1216
    :cond_3
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@53
    .line 1217
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    #@56
    move-result v5

    #@57
    .line 1218
    .local v5, "preAnimAlpha":F
    new-instance v6, Landroid/animation/LayoutTransition$5;

    #@59
    invoke-direct {v6, p0, p2, v5, p1}, Landroid/animation/LayoutTransition$5;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;FLandroid/view/ViewGroup;)V

    #@5c
    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@5f
    .line 1232
    instance-of v6, v0, Landroid/animation/ObjectAnimator;

    #@61
    if-eqz v6, :cond_4

    #@63
    move-object v6, v0

    #@64
    .line 1233
    check-cast v6, Landroid/animation/ObjectAnimator;

    #@66
    const-wide/16 v8, 0x0

    #@68
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    #@6b
    .line 1235
    :cond_4
    iget-object v6, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@6d
    invoke-virtual {v6, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 1236
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@73
    .line 1195
    return-void
.end method

.method private setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
    .locals 14
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "changeReason"    # I
    .param p3, "baseAnimator"    # Landroid/animation/Animator;
    .param p4, "duration"    # J
    .param p6, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 831
    iget-object v3, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    #@2
    move-object/from16 v0, p6

    #@4
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 832
    return-void

    #@b
    .line 839
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWidth()I

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_1

    #@11
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getHeight()I

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 840
    return-void

    #@18
    .line 844
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@1b
    move-result-object v4

    #@1c
    .line 847
    .local v4, "anim":Landroid/animation/Animator;
    move-object/from16 v0, p6

    #@1e
    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@21
    .line 851
    invoke-virtual {v4}, Landroid/animation/Animator;->setupStartValues()V

    #@24
    .line 854
    iget-object v3, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    #@26
    move-object/from16 v0, p6

    #@28
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v11

    #@2c
    check-cast v11, Landroid/animation/Animator;

    #@2e
    .line 855
    .local v11, "currentAnimation":Landroid/animation/Animator;
    if-eqz v11, :cond_2

    #@30
    .line 856
    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    #@33
    .line 857
    iget-object v3, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    #@35
    move-object/from16 v0, p6

    #@37
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 860
    :cond_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    #@3c
    move-object/from16 v0, p6

    #@3e
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 867
    const/4 v3, 0x2

    #@42
    new-array v3, v3, [F

    #@44
    fill-array-data v3, :array_0

    #@47
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@4a
    move-result-object v3

    #@4b
    .line 868
    const-wide/16 v6, 0x64

    #@4d
    add-long v6, v6, p4

    #@4f
    .line 867
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@52
    move-result-object v12

    #@53
    .line 869
    .local v12, "pendingAnimRemover":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/animation/LayoutTransition$1;

    #@55
    move-object/from16 v0, p6

    #@57
    invoke-direct {v3, p0, v0}, Landroid/animation/LayoutTransition$1;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;)V

    #@5a
    invoke-virtual {v12, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@5d
    .line 875
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    #@60
    .line 879
    new-instance v2, Landroid/animation/LayoutTransition$2;

    #@62
    move-object v3, p0

    #@63
    move/from16 v5, p2

    #@65
    move-wide/from16 v6, p4

    #@67
    move-object/from16 v8, p6

    #@69
    move-object v9, p1

    #@6a
    invoke-direct/range {v2 .. v9}, Landroid/animation/LayoutTransition$2;-><init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V

    #@6d
    .line 956
    .local v2, "listener":Landroid/view/View$OnLayoutChangeListener;
    new-instance v5, Landroid/animation/LayoutTransition$3;

    #@6f
    move-object v6, p0

    #@70
    move-object v7, p1

    #@71
    move-object/from16 v8, p6

    #@73
    move/from16 v9, p2

    #@75
    move-object v10, v2

    #@76
    invoke-direct/range {v5 .. v10}, Landroid/animation/LayoutTransition$3;-><init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V

    #@79
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@7c
    .line 994
    move-object/from16 v0, p6

    #@7e
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@81
    .line 996
    iget-object v3, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    #@83
    move-object/from16 v0, p6

    #@85
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88
    .line 825
    return-void

    #@89
    .line 867
    nop

    #@8a
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1318
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    #@4
    .line 1317
    return-void
.end method

.method public addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/LayoutTransition$TransitionListener;

    #@0
    .prologue
    .line 1429
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1430
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@b
    .line 1432
    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1428
    return-void
.end method

.method public cancel()V
    .locals 4

    #@0
    .prologue
    .line 1070
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@5
    move-result v3

    #@6
    if-lez v3, :cond_1

    #@8
    .line 1072
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@a
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Ljava/util/LinkedHashMap;

    #@10
    .line 1073
    .local v2, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v3

    #@14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/animation/Animator;

    #@24
    .line 1074
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@27
    goto :goto_0

    #@28
    .line 1076
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@2a
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    #@2d
    .line 1078
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    .end local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    :cond_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@2f
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@32
    move-result v3

    #@33
    if-lez v3, :cond_3

    #@35
    .line 1080
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@37
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Ljava/util/LinkedHashMap;

    #@3d
    .line 1081
    .restart local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@40
    move-result-object v3

    #@41
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v1

    #@45
    .restart local v1    # "anim$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_2

    #@4b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Landroid/animation/Animator;

    #@51
    .line 1082
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@54
    goto :goto_1

    #@55
    .line 1084
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@57
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    #@5a
    .line 1086
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    .end local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    :cond_3
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@5c
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@5f
    move-result v3

    #@60
    if-lez v3, :cond_5

    #@62
    .line 1088
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@64
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@67
    move-result-object v2

    #@68
    check-cast v2, Ljava/util/LinkedHashMap;

    #@6a
    .line 1089
    .restart local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@6d
    move-result-object v3

    #@6e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@71
    move-result-object v1

    #@72
    .restart local v1    # "anim$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_4

    #@78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Landroid/animation/Animator;

    #@7e
    .line 1090
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@81
    goto :goto_2

    #@82
    .line 1092
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_4
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@84
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    #@87
    .line 1069
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    .end local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    :cond_5
    return-void
.end method

.method public cancel(I)V
    .locals 4
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 1105
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1104
    :cond_0
    :goto_0
    return-void

    #@4
    .line 1109
    :pswitch_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@6
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@9
    move-result v3

    #@a
    if-lez v3, :cond_0

    #@c
    .line 1111
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@e
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Ljava/util/LinkedHashMap;

    #@14
    .line 1112
    .local v2, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/animation/Animator;

    #@28
    .line 1113
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@2b
    goto :goto_1

    #@2c
    .line 1115
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@2e
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    #@31
    goto :goto_0

    #@32
    .line 1119
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    .end local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    :pswitch_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@34
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@37
    move-result v3

    #@38
    if-lez v3, :cond_0

    #@3a
    .line 1121
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@3c
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Ljava/util/LinkedHashMap;

    #@42
    .line 1122
    .restart local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@45
    move-result-object v3

    #@46
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v1

    #@4a
    .restart local v1    # "anim$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_2

    #@50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Landroid/animation/Animator;

    #@56
    .line 1123
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@59
    goto :goto_2

    #@5a
    .line 1125
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@5c
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    #@5f
    goto :goto_0

    #@60
    .line 1129
    .end local v1    # "anim$iterator":Ljava/util/Iterator;
    .end local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    :pswitch_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@62
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@65
    move-result v3

    #@66
    if-lez v3, :cond_0

    #@68
    .line 1131
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@6a
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Ljava/util/LinkedHashMap;

    #@70
    .line 1132
    .restart local v2    # "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@73
    move-result-object v3

    #@74
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@77
    move-result-object v1

    #@78
    .restart local v1    # "anim$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7b
    move-result v3

    #@7c
    if-eqz v3, :cond_3

    #@7e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    check-cast v0, Landroid/animation/Animator;

    #@84
    .line 1133
    .restart local v0    # "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@87
    goto :goto_3

    #@88
    .line 1135
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@8a
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    #@8d
    goto/16 :goto_0

    #@8f
    .line 1105
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public disableTransitionType(I)V
    .locals 1
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 370
    packed-switch p1, :pswitch_data_0

    #@3
    .line 369
    :goto_0
    return-void

    #@4
    .line 372
    :pswitch_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@6
    and-int/lit8 v0, v0, -0x2

    #@8
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@a
    goto :goto_0

    #@b
    .line 375
    :pswitch_1
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@d
    and-int/lit8 v0, v0, -0x3

    #@f
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@11
    goto :goto_0

    #@12
    .line 378
    :pswitch_2
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@14
    and-int/lit8 v0, v0, -0x5

    #@16
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@18
    goto :goto_0

    #@19
    .line 381
    :pswitch_3
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@1b
    and-int/lit8 v0, v0, -0x9

    #@1d
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@1f
    goto :goto_0

    #@20
    .line 384
    :pswitch_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@22
    and-int/lit8 v0, v0, -0x11

    #@24
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@26
    goto :goto_0

    #@27
    .line 370
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public enableTransitionType(I)V
    .locals 1
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 343
    packed-switch p1, :pswitch_data_0

    #@3
    .line 342
    :goto_0
    return-void

    #@4
    .line 345
    :pswitch_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@6
    or-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@a
    goto :goto_0

    #@b
    .line 348
    :pswitch_1
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@d
    or-int/lit8 v0, v0, 0x2

    #@f
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@11
    goto :goto_0

    #@12
    .line 351
    :pswitch_2
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@14
    or-int/lit8 v0, v0, 0x4

    #@16
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@18
    goto :goto_0

    #@19
    .line 354
    :pswitch_3
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@1b
    or-int/lit8 v0, v0, 0x8

    #@1d
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@1f
    goto :goto_0

    #@20
    .line 357
    :pswitch_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@22
    or-int/lit8 v0, v0, 0x10

    #@24
    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@26
    goto :goto_0

    #@27
    .line 343
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public endChangingAnimations()V
    .locals 4

    #@0
    .prologue
    .line 1030
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/LinkedHashMap;

    #@8
    .line 1031
    .local v2, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/animation/Animator;

    #@1c
    .line 1032
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@1f
    .line 1033
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@22
    goto :goto_0

    #@23
    .line 1036
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@25
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    #@28
    .line 1028
    return-void
.end method

.method public getAnimator(I)Landroid/animation/Animator;
    .locals 1
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 696
    packed-switch p1, :pswitch_data_0

    #@3
    .line 709
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 698
    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    #@7
    return-object v0

    #@8
    .line 700
    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    #@a
    return-object v0

    #@b
    .line 702
    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    #@d
    return-object v0

    #@e
    .line 704
    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    #@10
    return-object v0

    #@11
    .line 706
    :pswitch_4
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    #@13
    return-object v0

    #@14
    .line 696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getDuration(I)J
    .locals 2
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 515
    packed-switch p1, :pswitch_data_0

    #@3
    .line 528
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 517
    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    #@8
    return-wide v0

    #@9
    .line 519
    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    #@b
    return-wide v0

    #@c
    .line 521
    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    #@e
    return-wide v0

    #@f
    .line 523
    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    #@11
    return-wide v0

    #@12
    .line 525
    :pswitch_4
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    #@14
    return-wide v0

    #@15
    .line 515
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 620
    packed-switch p1, :pswitch_data_0

    #@3
    .line 633
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 622
    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@7
    return-object v0

    #@8
    .line 624
    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@a
    return-object v0

    #@b
    .line 626
    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@d
    return-object v0

    #@e
    .line 628
    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@10
    return-object v0

    #@11
    .line 630
    :pswitch_4
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@13
    return-object v0

    #@14
    .line 620
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getStagger(I)J
    .locals 2
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 565
    packed-switch p1, :pswitch_data_0

    #@3
    .line 574
    :pswitch_0
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 567
    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    #@8
    return-wide v0

    #@9
    .line 569
    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    #@b
    return-wide v0

    #@c
    .line 571
    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    #@e
    return-wide v0

    #@f
    .line 565
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getStartDelay(I)J
    .locals 2
    .param p1, "transitionType"    # I

    #@0
    .prologue
    .line 456
    packed-switch p1, :pswitch_data_0

    #@3
    .line 469
    const-wide/16 v0, 0x0

    #@5
    return-wide v0

    #@6
    .line 458
    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    #@8
    return-wide v0

    #@9
    .line 460
    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    #@b
    return-wide v0

    #@c
    .line 462
    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    #@e
    return-wide v0

    #@f
    .line 464
    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    #@11
    return-wide v0

    #@12
    .line 466
    :pswitch_4
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    #@14
    return-wide v0

    #@15
    .line 456
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getTransitionListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1452
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1404
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    #@4
    .line 1403
    return-void
.end method

.method public hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "newVisibility"    # I

    #@0
    .prologue
    .line 1419
    const/16 v0, 0x8

    #@2
    if-ne p3, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    #@8
    .line 1418
    return-void

    #@9
    .line 1419
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isChangingLayout()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1048
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@3
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isRunning()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1057
    iget-object v2, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@4
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    #@7
    move-result v2

    #@8
    if-gtz v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    #@c
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    #@f
    move-result v2

    #@10
    if-lez v2, :cond_1

    #@12
    :cond_0
    :goto_0
    return v0

    #@13
    .line 1058
    :cond_1
    iget-object v2, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    #@15
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    #@18
    move-result v2

    #@19
    if-gtz v2, :cond_0

    #@1b
    move v0, v1

    #@1c
    goto :goto_0
.end method

.method public isTransitionTypeEnabled(I)Z
    .locals 4
    .param p1, "transitionType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 398
    packed-switch p1, :pswitch_data_0

    #@5
    .line 410
    return v1

    #@6
    .line 400
    :pswitch_0
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@8
    and-int/lit8 v2, v2, 0x1

    #@a
    if-ne v2, v0, :cond_0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    move v0, v1

    #@e
    goto :goto_0

    #@f
    .line 402
    :pswitch_1
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@11
    and-int/lit8 v2, v2, 0x2

    #@13
    const/4 v3, 0x2

    #@14
    if-ne v2, v3, :cond_1

    #@16
    :goto_1
    return v0

    #@17
    :cond_1
    move v0, v1

    #@18
    goto :goto_1

    #@19
    .line 404
    :pswitch_2
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@1b
    and-int/lit8 v2, v2, 0x4

    #@1d
    const/4 v3, 0x4

    #@1e
    if-ne v2, v3, :cond_2

    #@20
    :goto_2
    return v0

    #@21
    :cond_2
    move v0, v1

    #@22
    goto :goto_2

    #@23
    .line 406
    :pswitch_3
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@25
    and-int/lit8 v2, v2, 0x8

    #@27
    const/16 v3, 0x8

    #@29
    if-ne v2, v3, :cond_3

    #@2b
    :goto_3
    return v0

    #@2c
    :cond_3
    move v0, v1

    #@2d
    goto :goto_3

    #@2e
    .line 408
    :pswitch_4
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@30
    and-int/lit8 v2, v2, 0x10

    #@32
    const/16 v3, 0x10

    #@34
    if-ne v2, v3, :cond_4

    #@36
    :goto_4
    return v0

    #@37
    :cond_4
    move v0, v1

    #@38
    goto :goto_4

    #@39
    .line 398
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public layoutChange(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 1296
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1297
    return-void

    #@7
    .line 1299
    :cond_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    #@9
    and-int/lit8 v0, v0, 0x10

    #@b
    const/16 v1, 0x10

    #@d
    if-ne v0, v1, :cond_1

    #@f
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->isRunning()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 1295
    :cond_1
    :goto_0
    return-void

    #@16
    .line 1304
    :cond_2
    const/4 v0, 0x0

    #@17
    const/4 v1, 0x4

    #@18
    invoke-direct {p0, p1, v0, v1}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    #@1b
    goto :goto_0
.end method

.method public removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1396
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    #@4
    .line 1395
    return-void
.end method

.method public removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/LayoutTransition$TransitionListener;

    #@0
    .prologue
    .line 1441
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1442
    return-void

    #@5
    .line 1444
    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 1440
    return-void
.end method

.method public setAnimateParentHierarchy(Z)V
    .locals 0
    .param p1, "animateParentHierarchy"    # Z

    #@0
    .prologue
    .line 817
    iput-boolean p1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    #@2
    .line 816
    return-void
.end method

.method public setAnimator(ILandroid/animation/Animator;)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 667
    packed-switch p1, :pswitch_data_0

    #@3
    .line 666
    :goto_0
    return-void

    #@4
    .line 669
    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    #@6
    goto :goto_0

    #@7
    .line 672
    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    #@9
    goto :goto_0

    #@a
    .line 675
    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    #@c
    goto :goto_0

    #@d
    .line 678
    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    #@f
    goto :goto_0

    #@10
    .line 681
    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    #@12
    goto :goto_0

    #@13
    .line 667
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setDuration(IJ)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "duration"    # J

    #@0
    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    #@3
    .line 483
    :goto_0
    return-void

    #@4
    .line 486
    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    #@6
    goto :goto_0

    #@7
    .line 489
    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    #@9
    goto :goto_0

    #@a
    .line 492
    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    #@c
    goto :goto_0

    #@d
    .line 495
    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    #@f
    goto :goto_0

    #@10
    .line 498
    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    #@12
    goto :goto_0

    #@13
    .line 484
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 324
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    #@2
    .line 325
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    #@4
    .line 326
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    #@6
    .line 327
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    #@8
    .line 328
    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    #@a
    .line 323
    return-void
.end method

.method public setInterpolator(ILandroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "interpolator"    # Landroid/animation/TimeInterpolator;

    #@0
    .prologue
    .line 589
    packed-switch p1, :pswitch_data_0

    #@3
    .line 588
    :goto_0
    return-void

    #@4
    .line 591
    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@6
    goto :goto_0

    #@7
    .line 594
    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@9
    goto :goto_0

    #@a
    .line 597
    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    #@c
    goto :goto_0

    #@d
    .line 600
    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    #@f
    goto :goto_0

    #@10
    .line 603
    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    #@12
    goto :goto_0

    #@13
    .line 589
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public setStagger(IJ)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "duration"    # J

    #@0
    .prologue
    .line 541
    packed-switch p1, :pswitch_data_0

    #@3
    .line 540
    :goto_0
    :pswitch_0
    return-void

    #@4
    .line 543
    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    #@6
    goto :goto_0

    #@7
    .line 546
    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    #@9
    goto :goto_0

    #@a
    .line 549
    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    #@c
    goto :goto_0

    #@d
    .line 541
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setStartDelay(IJ)V
    .locals 0
    .param p1, "transitionType"    # I
    .param p2, "delay"    # J

    #@0
    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    #@3
    .line 424
    :goto_0
    return-void

    #@4
    .line 427
    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    #@6
    goto :goto_0

    #@7
    .line 430
    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    #@9
    goto :goto_0

    #@a
    .line 433
    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    #@c
    goto :goto_0

    #@d
    .line 436
    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    #@f
    goto :goto_0

    #@10
    .line 439
    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    #@12
    goto :goto_0

    #@13
    .line 425
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public showChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1326
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    #@4
    .line 1325
    return-void
.end method

.method public showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "oldVisibility"    # I

    #@0
    .prologue
    .line 1341
    const/16 v0, 0x8

    #@2
    if-ne p3, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    #@8
    .line 1340
    return-void

    #@9
    .line 1341
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public startChangingAnimations()V
    .locals 6

    #@0
    .prologue
    .line 1011
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/LinkedHashMap;

    #@8
    .line 1012
    .local v2, "currentAnimCopy":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/animation/Animator;

    #@1c
    .line 1013
    .local v0, "anim":Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    #@1e
    if-eqz v3, :cond_0

    #@20
    move-object v3, v0

    #@21
    .line 1014
    check-cast v3, Landroid/animation/ObjectAnimator;

    #@23
    const-wide/16 v4, 0x0

    #@25
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    #@28
    .line 1016
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@2b
    goto :goto_0

    #@2c
    .line 1009
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-void
.end method
