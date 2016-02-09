.class abstract Landroid/app/ActivityTransitionCoordinator;
.super Landroid/os/ResultReceiver;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;,
        Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;,
        Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;,
        Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    }
.end annotation


# static fields
.field protected static final KEY_ELEVATION:Ljava/lang/String; = "shared_element:elevation"

.field protected static final KEY_IMAGE_MATRIX:Ljava/lang/String; = "shared_element:imageMatrix"

.field static final KEY_REMOTE_RECEIVER:Ljava/lang/String; = "android:remoteReceiver"

.field protected static final KEY_SCALE_TYPE:Ljava/lang/String; = "shared_element:scaleType"

.field protected static final KEY_SCREEN_BOTTOM:Ljava/lang/String; = "shared_element:screenBottom"

.field protected static final KEY_SCREEN_LEFT:Ljava/lang/String; = "shared_element:screenLeft"

.field protected static final KEY_SCREEN_RIGHT:Ljava/lang/String; = "shared_element:screenRight"

.field protected static final KEY_SCREEN_TOP:Ljava/lang/String; = "shared_element:screenTop"

.field protected static final KEY_SNAPSHOT:Ljava/lang/String; = "shared_element:bitmap"

.field protected static final KEY_TRANSLATION_Z:Ljava/lang/String; = "shared_element:translationZ"

.field public static final MSG_CANCEL:I = 0x6a

.field public static final MSG_EXIT_TRANSITION_COMPLETE:I = 0x68

.field public static final MSG_HIDE_SHARED_ELEMENTS:I = 0x65

.field public static final MSG_SET_REMOTE_RECEIVER:I = 0x64

.field public static final MSG_SHARED_ELEMENT_DESTINATION:I = 0x6b

.field public static final MSG_START_EXIT_TRANSITION:I = 0x69

.field public static final MSG_TAKE_SHARED_ELEMENTS:I = 0x67

.field protected static final SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

.field private static final TAG:Ljava/lang/String; = "ActivityTransitionCoordinator"


# instance fields
.field protected final mAllSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

.field private mGhostViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIsReturning:Z

.field private mIsStartingTransition:Z

.field protected mListener:Landroid/app/SharedElementCallback;

.field private mOriginalAlphas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTransition:Ljava/lang/Runnable;

.field protected mResultReceiver:Landroid/os/ResultReceiver;

.field protected final mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementParentMatrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementTransitionComplete:Z

.field protected final mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsTransitionComplete:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ActivityTransitionCoordinator;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    #@6
    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p3, "listener"    # Landroid/app/SharedElementCallback;
    .param p4, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/SharedElementCallback;",
            "Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 212
    .local p2, "allSharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@8
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@f
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@16
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1d
    .line 198
    new-instance v0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, v1}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>(Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;)V

    #@23
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    #@25
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    .line 202
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    #@2c
    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    #@2e
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@31
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    #@33
    .line 213
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@35
    .line 214
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@37
    .line 215
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@39
    .line 216
    iput-boolean p4, p0, Landroid/app/ActivityTransitionCoordinator;->mIsReturning:Z

    #@3b
    .line 211
    return-void
.end method

.method private static getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitionArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 580
    new-instance v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    #@2
    invoke-direct {v3}, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;-><init>()V

    #@5
    .line 581
    .local v3, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@8
    move-result v4

    #@9
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    #@b
    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@e
    move-result v4

    #@f
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    #@11
    .line 583
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@14
    move-result v4

    #@15
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    #@17
    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@1a
    move-result v4

    #@1b
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    #@1d
    .line 585
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@20
    move-result v4

    #@21
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    #@23
    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@26
    move-result v4

    #@27
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    #@29
    .line 587
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    #@2c
    move-result v4

    #@2d
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    #@2f
    .line 588
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    #@32
    move-result v4

    #@33
    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    #@35
    .line 589
    instance-of v4, p0, Landroid/widget/ImageView;

    #@37
    if-nez v4, :cond_0

    #@39
    .line 590
    return-object v3

    #@3a
    .line 592
    :cond_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@3d
    move-result-object v0

    #@3e
    .line 593
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    #@40
    .line 594
    return-object v3

    #@41
    .line 596
    :cond_1
    const-string/jumbo v4, "shared_element:scaleType"

    #@44
    const/4 v5, -0x1

    #@45
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@48
    move-result v2

    #@49
    .line 597
    .local v2, "scaleTypeInt":I
    if-gez v2, :cond_2

    #@4b
    .line 598
    return-object v3

    #@4c
    :cond_2
    move-object v1, p0

    #@4d
    .line 601
    check-cast v1, Landroid/widget/ImageView;

    #@4f
    .line 602
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@52
    move-result-object v4

    #@53
    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@55
    .line 603
    iget-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@57
    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@59
    if-ne v4, v5, :cond_3

    #@5b
    .line 604
    new-instance v4, Landroid/graphics/Matrix;

    #@5d
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@60
    move-result-object v5

    #@61
    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@64
    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    #@66
    .line 606
    :cond_3
    return-object v3
.end method

.method private getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 512
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    #@2
    if-nez v4, :cond_1

    #@4
    const/4 v0, -0x1

    #@5
    .line 514
    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_2

    #@7
    .line 515
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    #@a
    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object v3

    #@e
    .line 517
    .local v3, "viewParent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/ViewGroup;

    #@10
    if-eqz v4, :cond_0

    #@12
    move-object v1, v3

    #@13
    .line 519
    check-cast v1, Landroid/view/ViewGroup;

    #@15
    .line 520
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    #@18
    .line 521
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    #@1b
    move-result v4

    #@1c
    int-to-float v4, v4

    #@1d
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    #@20
    move-result v5

    #@21
    int-to-float v5, v5

    #@22
    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@25
    .line 511
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    :goto_1
    return-void

    #@26
    .line 513
    .end local v0    # "index":I
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@2b
    move-result v0

    #@2c
    .restart local v0    # "index":I
    goto :goto_0

    #@2d
    .line 526
    :cond_2
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroid/graphics/Matrix;

    #@35
    .line 527
    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@38
    goto :goto_1
.end method

.method public static isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z
    .locals 2
    .param p0, "viewParent"    # Landroid/view/ViewParent;
    .param p1, "decor"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 820
    if-eq p0, p1, :cond_0

    #@2
    instance-of v1, p0, Landroid/view/ViewGroup;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v0, p0

    #@7
    .line 823
    check-cast v0, Landroid/view/ViewGroup;

    #@9
    .line 824
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 825
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 821
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1

    #@13
    .line 827
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1, p1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    #@1a
    move-result v1

    #@1b
    return v1
.end method

.method private static isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 267
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v1

    #@4
    .line 268
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v0, 0x0

    #@5
    .line 269
    .local v0, "isNested":Z
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    #@7
    if-eqz v3, :cond_0

    #@9
    move-object v2, v1

    #@a
    .line 270
    check-cast v2, Landroid/view/View;

    #@c
    .line 271
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 272
    const/4 v0, 0x1

    #@13
    .line 277
    .end local v2    # "parentView":Landroid/view/View;
    :cond_0
    return v0

    #@14
    .line 275
    .restart local v2    # "parentView":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@17
    move-result-object v1

    #@18
    goto :goto_0
.end method

.method protected static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 1
    .param p0, "transition1"    # Landroid/transition/Transition;
    .param p1, "transition2"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 385
    if-nez p0, :cond_0

    #@2
    .line 386
    return-object p1

    #@3
    .line 387
    :cond_0
    if-nez p1, :cond_1

    #@5
    .line 388
    return-object p0

    #@6
    .line 390
    :cond_1
    new-instance v0, Landroid/transition/TransitionSet;

    #@8
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@b
    .line 391
    .local v0, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@e
    .line 392
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@11
    .line 393
    return-object v0
.end method

.method private static scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I
    .locals 2
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    #@0
    .prologue
    .line 926
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 927
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    #@8
    aget-object v1, v1, v0

    #@a
    if-ne p0, v1, :cond_0

    #@c
    .line 928
    return v0

    #@d
    .line 926
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 931
    :cond_1
    const/4 v1, -0x1

    #@11
    return v1
.end method

.method private setEpicenter(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 317
    if-nez p1, :cond_0

    #@3
    .line 318
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    #@5
    invoke-virtual {v1, v2}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    #@8
    .line 316
    :goto_0
    return-void

    #@9
    .line 320
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    #@b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@e
    .line 321
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    #@11
    .line 322
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    #@13
    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    #@16
    goto :goto_0
.end method

.method protected static setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "originalState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    const/high16 v10, 0x40000000    # 2.0f

    #@2
    .line 642
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v6

    #@7
    if-ge v1, v6, :cond_1

    #@9
    .line 643
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/view/View;

    #@f
    .line 644
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    #@15
    .line 645
    .local v3, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    instance-of v6, v4, Landroid/widget/ImageView;

    #@17
    if-eqz v6, :cond_0

    #@19
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@1b
    if-eqz v6, :cond_0

    #@1d
    move-object v2, v4

    #@1e
    .line 646
    check-cast v2, Landroid/widget/ImageView;

    #@20
    .line 647
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@22
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@25
    .line 648
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@27
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@29
    if-ne v6, v7, :cond_0

    #@2b
    .line 649
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    #@2d
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    #@30
    .line 652
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    #@32
    invoke-virtual {v4, v6}, Landroid/view/View;->setElevation(F)V

    #@35
    .line 653
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    #@37
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationZ(F)V

    #@3a
    .line 654
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    #@3c
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3f
    move-result v5

    #@40
    .line 656
    .local v5, "widthSpec":I
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    #@42
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@45
    move-result v0

    #@46
    .line 658
    .local v0, "heightSpec":I
    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    #@49
    .line 659
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    #@4b
    iget v7, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    #@4d
    iget v8, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    #@4f
    iget v9, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    #@51
    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    #@54
    .line 642
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_0

    #@57
    .line 641
    .end local v0    # "heightSpec":I
    .end local v3    # "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "widthSpec":I
    :cond_1
    return-void
.end method

.method private setSharedElementMatrices()V
    .locals 7

    #@0
    .prologue
    .line 495
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 496
    .local v2, "numSharedElements":I
    if-lez v2, :cond_0

    #@8
    .line 497
    new-instance v5, Ljava/util/ArrayList;

    #@a
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    iput-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    #@f
    .line 499
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@12
    .line 500
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/view/View;

    #@1a
    .line 503
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/view/ViewGroup;

    #@20
    .line 504
    .local v3, "parent":Landroid/view/ViewGroup;
    new-instance v1, Landroid/graphics/Matrix;

    #@22
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@25
    .line 505
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    #@28
    .line 506
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    #@2b
    move-result v5

    #@2c
    int-to-float v5, v5

    #@2d
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    #@30
    move-result v6

    #@31
    int-to-float v6, v6

    #@32
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@35
    .line 507
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 499
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 494
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V
    .locals 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempRect"    # Landroid/graphics/RectF;
    .param p6, "decorLoc"    # [I

    #@0
    .prologue
    .line 421
    move-object/from16 v0, p3

    #@2
    move-object/from16 v1, p2

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@7
    move-result-object v17

    #@8
    .line 422
    .local v17, "sharedElementBundle":Landroid/os/Bundle;
    if-nez v17, :cond_0

    #@a
    .line 423
    return-void

    #@b
    .line 426
    :cond_0
    move-object/from16 v0, p1

    #@d
    instance-of v0, v0, Landroid/widget/ImageView;

    #@f
    move/from16 v26, v0

    #@11
    if-eqz v26, :cond_1

    #@13
    .line 427
    const-string/jumbo v26, "shared_element:scaleType"

    #@16
    const/16 v27, -0x1

    #@18
    move-object/from16 v0, v17

    #@1a
    move-object/from16 v1, v26

    #@1c
    move/from16 v2, v27

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@21
    move-result v16

    #@22
    .line 428
    .local v16, "scaleTypeInt":I
    if-ltz v16, :cond_1

    #@24
    move-object/from16 v10, p1

    #@26
    .line 429
    check-cast v10, Landroid/widget/ImageView;

    #@28
    .line 430
    .local v10, "imageView":Landroid/widget/ImageView;
    sget-object v26, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    #@2a
    aget-object v15, v26, v16

    #@2c
    .line 431
    .local v15, "scaleType":Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@2f
    .line 432
    sget-object v26, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@31
    move-object/from16 v0, v26

    #@33
    if-ne v15, v0, :cond_1

    #@35
    .line 433
    const-string/jumbo v26, "shared_element:imageMatrix"

    #@38
    move-object/from16 v0, v17

    #@3a
    move-object/from16 v1, v26

    #@3c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    #@3f
    move-result-object v13

    #@40
    .line 434
    .local v13, "matrixValues":[F
    move-object/from16 v0, p4

    #@42
    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->setValues([F)V

    #@45
    .line 435
    move-object/from16 v0, p4

    #@47
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    #@4a
    .line 440
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v13    # "matrixValues":[F
    .end local v15    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v16    # "scaleTypeInt":I
    :cond_1
    const-string/jumbo v26, "shared_element:translationZ"

    #@4d
    move-object/from16 v0, v17

    #@4f
    move-object/from16 v1, v26

    #@51
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@54
    move-result v25

    #@55
    .line 441
    .local v25, "z":F
    move-object/from16 v0, p1

    #@57
    move/from16 v1, v25

    #@59
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    #@5c
    .line 442
    const-string/jumbo v26, "shared_element:elevation"

    #@5f
    move-object/from16 v0, v17

    #@61
    move-object/from16 v1, v26

    #@63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@66
    move-result v6

    #@67
    .line 443
    .local v6, "elevation":F
    move-object/from16 v0, p1

    #@69
    invoke-virtual {v0, v6}, Landroid/view/View;->setElevation(F)V

    #@6c
    .line 445
    const-string/jumbo v26, "shared_element:screenLeft"

    #@6f
    move-object/from16 v0, v17

    #@71
    move-object/from16 v1, v26

    #@73
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@76
    move-result v11

    #@77
    .line 446
    .local v11, "left":F
    const-string/jumbo v26, "shared_element:screenTop"

    #@7a
    move-object/from16 v0, v17

    #@7c
    move-object/from16 v1, v26

    #@7e
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@81
    move-result v18

    #@82
    .line 447
    .local v18, "top":F
    const-string/jumbo v26, "shared_element:screenRight"

    #@85
    move-object/from16 v0, v17

    #@87
    move-object/from16 v1, v26

    #@89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@8c
    move-result v14

    #@8d
    .line 448
    .local v14, "right":F
    const-string/jumbo v26, "shared_element:screenBottom"

    #@90
    move-object/from16 v0, v17

    #@92
    move-object/from16 v1, v26

    #@94
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@97
    move-result v5

    #@98
    .line 450
    .local v5, "bottom":F
    if-eqz p6, :cond_2

    #@9a
    .line 451
    const/16 v26, 0x0

    #@9c
    aget v26, p6, v26

    #@9e
    move/from16 v0, v26

    #@a0
    int-to-float v0, v0

    #@a1
    move/from16 v26, v0

    #@a3
    sub-float v11, v11, v26

    #@a5
    .line 452
    const/16 v26, 0x1

    #@a7
    aget v26, p6, v26

    #@a9
    move/from16 v0, v26

    #@ab
    int-to-float v0, v0

    #@ac
    move/from16 v26, v0

    #@ae
    sub-float v18, v18, v26

    #@b0
    .line 453
    const/16 v26, 0x0

    #@b2
    aget v26, p6, v26

    #@b4
    move/from16 v0, v26

    #@b6
    int-to-float v0, v0

    #@b7
    move/from16 v26, v0

    #@b9
    sub-float v14, v14, v26

    #@bb
    .line 454
    const/16 v26, 0x1

    #@bd
    aget v26, p6, v26

    #@bf
    move/from16 v0, v26

    #@c1
    int-to-float v0, v0

    #@c2
    move/from16 v26, v0

    #@c4
    sub-float v5, v5, v26

    #@c6
    .line 483
    :goto_0
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@c9
    move-result v23

    #@ca
    .line 484
    .local v23, "x":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    #@cd
    move-result v24

    #@ce
    .line 485
    .local v24, "y":I
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    #@d1
    move-result v26

    #@d2
    sub-int v21, v26, v23

    #@d4
    .line 486
    .local v21, "width":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    #@d7
    move-result v26

    #@d8
    sub-int v8, v26, v24

    #@da
    .line 487
    .local v8, "height":I
    const/high16 v26, 0x40000000    # 2.0f

    #@dc
    move/from16 v0, v21

    #@de
    move/from16 v1, v26

    #@e0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@e3
    move-result v22

    #@e4
    .line 488
    .local v22, "widthSpec":I
    const/high16 v26, 0x40000000    # 2.0f

    #@e6
    move/from16 v0, v26

    #@e8
    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@eb
    move-result v9

    #@ec
    .line 489
    .local v9, "heightSpec":I
    move-object/from16 v0, p1

    #@ee
    move/from16 v1, v22

    #@f0
    invoke-virtual {v0, v1, v9}, Landroid/view/View;->measure(II)V

    #@f3
    .line 491
    add-int v26, v23, v21

    #@f5
    add-int v27, v24, v8

    #@f7
    move-object/from16 v0, p1

    #@f9
    move/from16 v1, v23

    #@fb
    move/from16 v2, v24

    #@fd
    move/from16 v3, v26

    #@ff
    move/from16 v4, v27

    #@101
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    #@104
    .line 420
    return-void

    #@105
    .line 457
    .end local v8    # "height":I
    .end local v9    # "heightSpec":I
    .end local v21    # "width":I
    .end local v22    # "widthSpec":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_2
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, p1

    #@109
    move-object/from16 v2, p4

    #@10b
    invoke-direct {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@10e
    .line 458
    move-object/from16 v0, p5

    #@110
    move/from16 v1, v18

    #@112
    invoke-virtual {v0, v11, v1, v14, v5}, Landroid/graphics/RectF;->set(FFFF)V

    #@115
    .line 459
    invoke-virtual/range {p4 .. p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@118
    .line 461
    move-object/from16 v0, p5

    #@11a
    iget v12, v0, Landroid/graphics/RectF;->left:F

    #@11c
    .line 462
    .local v12, "leftInParent":F
    move-object/from16 v0, p5

    #@11e
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@120
    move/from16 v19, v0

    #@122
    .line 465
    .local v19, "topInParent":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    #@125
    move-result-object v26

    #@126
    move-object/from16 v0, v26

    #@128
    move-object/from16 v1, p5

    #@12a
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@12d
    .line 466
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    #@130
    move-result v20

    #@131
    .line 467
    .local v20, "width":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    #@134
    move-result v7

    #@135
    .line 470
    .local v7, "height":F
    const/16 v26, 0x0

    #@137
    move-object/from16 v0, p1

    #@139
    move/from16 v1, v26

    #@13b
    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    #@13e
    .line 471
    const/16 v26, 0x0

    #@140
    move-object/from16 v0, p1

    #@142
    move/from16 v1, v26

    #@144
    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    #@147
    .line 472
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    #@14a
    move-result v26

    #@14b
    move-object/from16 v0, p1

    #@14d
    move/from16 v1, v26

    #@14f
    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    #@152
    .line 473
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@155
    move-result v26

    #@156
    move-object/from16 v0, p1

    #@158
    move/from16 v1, v26

    #@15a
    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    #@15d
    .line 474
    const/16 v26, 0x0

    #@15f
    const/16 v27, 0x0

    #@161
    move-object/from16 v0, p5

    #@163
    move/from16 v1, v26

    #@165
    move/from16 v2, v27

    #@167
    move/from16 v3, v20

    #@169
    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    #@16c
    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@16f
    move-result-object v26

    #@170
    move-object/from16 v0, v26

    #@172
    move-object/from16 v1, p5

    #@174
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@177
    .line 477
    move-object/from16 v0, p5

    #@179
    iget v0, v0, Landroid/graphics/RectF;->left:F

    #@17b
    move/from16 v26, v0

    #@17d
    sub-float v11, v12, v26

    #@17f
    .line 478
    move-object/from16 v0, p5

    #@181
    iget v0, v0, Landroid/graphics/RectF;->top:F

    #@183
    move/from16 v26, v0

    #@185
    sub-float v18, v19, v26

    #@187
    .line 479
    add-float v14, v11, v20

    #@189
    .line 480
    add-float v5, v18, v7

    #@18b
    goto/16 :goto_0
.end method

.method private setSharedElements(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x1

    #@1
    .line 246
    .local v1, "isFirstRun":Z
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_4

    #@7
    .line 247
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v3

    #@b
    .line 248
    .local v3, "numSharedElements":I
    add-int/lit8 v0, v3, -0x1

    #@d
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@f
    .line 249
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Landroid/view/View;

    #@15
    .line 250
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/lang/String;

    #@1b
    .line 251
    .local v2, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@1d
    if-eqz v4, :cond_0

    #@1f
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    if-nez v2, :cond_2

    #@27
    .line 252
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@2a
    .line 248
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 253
    :cond_2
    invoke-static {v4, p1}, Landroid/app/ActivityTransitionCoordinator;->isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_1

    #@33
    .line 254
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 255
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 256
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@40
    goto :goto_2

    #@41
    .line 259
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    #@42
    goto :goto_0

    #@43
    .line 244
    .end local v0    # "i":I
    .end local v3    # "numSharedElements":I
    :cond_4
    return-void
.end method

.method private showView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setTransitionAlpha"    # Z

    #@0
    .prologue
    .line 710
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Float;

    #@8
    .line 711
    .local v0, "alpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    #@a
    .line 712
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@d
    move-result v1

    #@e
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    #@11
    .line 714
    :cond_0
    if-eqz p2, :cond_1

    #@13
    .line 715
    const/high16 v1, 0x3f800000    # 1.0f

    #@15
    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    #@18
    .line 709
    :cond_1
    return-void
.end method

.method private startInputWhenTransitionsComplete()V
    .locals 3

    #@0
    .prologue
    .line 893
    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 894
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@b
    move-result-object v0

    #@c
    .line 895
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    #@e
    .line 896
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@11
    move-result-object v1

    #@12
    .line 897
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    const/4 v2, 0x0

    #@13
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    #@16
    .line 899
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->onTransitionsComplete()V

    #@19
    .line 892
    .end local v0    # "decor":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method protected cancelPendingTransitions()Z
    .locals 1

    #@0
    .prologue
    .line 786
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    #@3
    .line 787
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    #@5
    return v0
.end method

.method protected captureSharedElementState()Landroid/os/Bundle;
    .locals 7

    #@0
    .prologue
    .line 664
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 665
    .local v3, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/RectF;

    #@7
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    #@a
    .line 666
    .local v5, "tempBounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@f
    .line 667
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v6, 0x0

    #@10
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    if-ge v6, v0, :cond_0

    #@18
    .line 668
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/view/View;

    #@20
    .line 669
    .local v1, "sharedElement":Landroid/view/View;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/String;

    #@28
    .local v2, "name":Ljava/lang/String;
    move-object v0, p0

    #@29
    .line 670
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    #@2c
    .line 667
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 672
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method protected captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempBounds"    # Landroid/graphics/RectF;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 731
    new-instance v4, Landroid/os/Bundle;

    #@3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@6
    .line 732
    .local v4, "sharedElementBundle":Landroid/os/Bundle;
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    #@9
    .line 733
    invoke-virtual {p1, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    #@c
    .line 734
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@f
    move-result v5

    #@10
    int-to-float v5, v5

    #@11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@14
    move-result v6

    #@15
    int-to-float v6, v6

    #@16
    invoke-virtual {p5, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    #@19
    .line 735
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    #@1c
    .line 737
    const-string/jumbo v5, "shared_element:screenLeft"

    #@1f
    iget v6, p5, Landroid/graphics/RectF;->left:F

    #@21
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@24
    .line 738
    const-string/jumbo v5, "shared_element:screenRight"

    #@27
    iget v6, p5, Landroid/graphics/RectF;->right:F

    #@29
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@2c
    .line 739
    const-string/jumbo v5, "shared_element:screenTop"

    #@2f
    iget v6, p5, Landroid/graphics/RectF;->top:F

    #@31
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@34
    .line 740
    const-string/jumbo v5, "shared_element:screenBottom"

    #@37
    iget v6, p5, Landroid/graphics/RectF;->bottom:F

    #@39
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@3c
    .line 741
    const-string/jumbo v5, "shared_element:translationZ"

    #@3f
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    #@42
    move-result v6

    #@43
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@46
    .line 742
    const-string/jumbo v5, "shared_element:elevation"

    #@49
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    #@4c
    move-result v6

    #@4d
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@50
    .line 744
    const/4 v0, 0x0

    #@51
    .line 745
    .local v0, "bitmap":Landroid/os/Parcelable;
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@53
    if-eqz v5, :cond_0

    #@55
    .line 746
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@57
    invoke-virtual {v5, p1, p4, p5}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    #@5a
    move-result-object v0

    #@5b
    .line 749
    .end local v0    # "bitmap":Landroid/os/Parcelable;
    :cond_0
    if-eqz v0, :cond_1

    #@5d
    .line 750
    const-string/jumbo v5, "shared_element:bitmap"

    #@60
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@63
    .line 753
    :cond_1
    instance-of v5, p1, Landroid/widget/ImageView;

    #@65
    if-eqz v5, :cond_2

    #@67
    move-object v1, p1

    #@68
    .line 754
    check-cast v1, Landroid/widget/ImageView;

    #@6a
    .line 755
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@6d
    move-result-object v5

    #@6e
    invoke-static {v5}, Landroid/app/ActivityTransitionCoordinator;->scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I

    #@71
    move-result v3

    #@72
    .line 756
    .local v3, "scaleTypeInt":I
    const-string/jumbo v5, "shared_element:scaleType"

    #@75
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@78
    .line 757
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    #@7b
    move-result-object v5

    #@7c
    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@7e
    if-ne v5, v6, :cond_2

    #@80
    .line 758
    const/16 v5, 0x9

    #@82
    new-array v2, v5, [F

    #@84
    .line 759
    .local v2, "matrix":[F
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    #@8b
    .line 760
    const-string/jumbo v5, "shared_element:imageMatrix"

    #@8e
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@91
    .line 764
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "matrix":[F
    .end local v3    # "scaleTypeInt":I
    :cond_2
    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@94
    .line 730
    return-void
.end method

.method protected clearState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 677
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@3
    .line 678
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 679
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@a
    .line 680
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@f
    .line 681
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@11
    .line 682
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    #@13
    .line 683
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@15
    .line 684
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    #@17
    .line 675
    return-void
.end method

.method protected configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "includeTransitioningViews"    # Z

    #@0
    .prologue
    .line 376
    if-eqz p1, :cond_0

    #@2
    .line 377
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    #@5
    move-result-object p1

    #@6
    .line 378
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    #@8
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    #@b
    .line 379
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityTransitionCoordinator;->setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    #@e
    move-result-object p1

    #@f
    .line 381
    :cond_0
    return-object p1
.end method

.method public copyMappedViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method protected createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 610
    .local p2, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    #@3
    move-result v10

    #@4
    .line 611
    .local v10, "numSharedElements":I
    new-instance v13, Ljava/util/ArrayList;

    #@6
    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 612
    .local v13, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_0

    #@b
    .line 613
    return-object v13

    #@c
    .line 615
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    #@13
    move-result-object v7

    #@14
    .line 616
    .local v7, "context":Landroid/content/Context;
    const/4 v0, 0x2

    #@15
    new-array v6, v0, [I

    #@17
    .line 617
    .local v6, "decorLoc":[I
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@1a
    move-result-object v8

    #@1b
    .line 618
    .local v8, "decorView":Landroid/view/ViewGroup;
    if-eqz v8, :cond_1

    #@1d
    .line 619
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@20
    .line 621
    :cond_1
    new-instance v4, Landroid/graphics/Matrix;

    #@22
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@25
    .line 622
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v9

    #@29
    .local v9, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_4

    #@2f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/lang/String;

    #@35
    .line 623
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@38
    move-result-object v12

    #@39
    .line 624
    .local v12, "sharedElementBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    #@3a
    .line 625
    .local v1, "snapshot":Landroid/view/View;
    if-eqz v12, :cond_3

    #@3c
    .line 626
    const-string/jumbo v0, "shared_element:bitmap"

    #@3f
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@42
    move-result-object v11

    #@43
    .line 627
    .local v11, "parcelable":Landroid/os/Parcelable;
    if-eqz v11, :cond_2

    #@45
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@47
    if-eqz v0, :cond_2

    #@49
    .line 628
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@4b
    invoke-virtual {v0, v7, v11}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    #@4e
    move-result-object v1

    #@4f
    .line 630
    .end local v1    # "snapshot":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_3

    #@51
    .line 631
    const/4 v5, 0x0

    #@52
    move-object v0, p0

    #@53
    move-object v3, p1

    #@54
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    #@57
    .line 635
    .end local v11    # "parcelable":Landroid/os/Parcelable;
    :cond_3
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    goto :goto_0

    #@5b
    .line 637
    .end local v2    # "name":Ljava/lang/String;
    .end local v12    # "sharedElementBundle":Landroid/os/Bundle;
    :cond_4
    return-object v13
.end method

.method public getAcceptedNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getAllSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getDecor()Landroid/view/ViewGroup;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 299
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    goto :goto_0
.end method

.method protected getFadeDuration()J
    .locals 2

    #@0
    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public getMappedNames()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 331
    new-instance v1, Ljava/util/ArrayList;

    #@2
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 332
    .local v1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    if-ge v0, v2, :cond_0

    #@14
    .line 333
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/view/View;

    #@1c
    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 332
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 335
    :cond_0
    return-object v1
.end method

.method protected abstract getViewsTransition()Landroid/transition/Transition;
.end method

.method protected getWindow()Landroid/view/Window;
    .locals 1

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@2
    return-object v0
.end method

.method protected hideViews(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 692
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 693
    .local v0, "count":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 694
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/view/View;

    #@d
    .line 695
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_0

    #@15
    .line 696
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    #@1a
    move-result v4

    #@1b
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 698
    :cond_0
    const/4 v3, 0x0

    #@23
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    #@26
    .line 693
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 691
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected isViewsTransitionComplete()Z
    .locals 1

    #@0
    .prologue
    .line 880
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    #@2
    return v0
.end method

.method protected mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 399
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 400
    .local v2, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p1, :cond_0

    #@7
    .line 401
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_1

    #@e
    .line 402
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Ljava/lang/String;

    #@14
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Landroid/view/View;

    #@1a
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 401
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 405
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@23
    move-result-object v0

    #@24
    .line 406
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    #@26
    .line 407
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    #@29
    .line 410
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-object v2
.end method

.method protected moveSharedElementWithParent()Z
    .locals 1

    #@0
    .prologue
    .line 816
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected moveSharedElementsFromOverlay()V
    .locals 9

    #@0
    .prologue
    .line 832
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v4

    #@6
    .line 833
    .local v4, "numListeners":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    .line 834
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    #@11
    .line 835
    .local v3, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v3}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->getView()Landroid/view/View;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v6

    #@19
    check-cast v6, Landroid/view/ViewGroup;

    #@1b
    .line 836
    .local v6, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@22
    .line 833
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 838
    .end local v3    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@2a
    .line 840
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@2c
    if-eqz v8, :cond_1

    #@2e
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@30
    invoke-virtual {v8}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_1

    #@36
    .line 843
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@39
    move-result-object v1

    #@3a
    .line 844
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    #@3c
    .line 845
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    #@3f
    move-result-object v5

    #@40
    .line 846
    .local v5, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v0

    #@46
    .line 847
    .local v0, "count":I
    const/4 v2, 0x0

    #@47
    :goto_1
    if-ge v2, v0, :cond_2

    #@49
    .line 848
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v7

    #@4f
    check-cast v7, Landroid/view/View;

    #@51
    .line 849
    .local v7, "sharedElement":Landroid/view/View;
    invoke-static {v7}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    #@54
    .line 847
    add-int/lit8 v2, v2, 0x1

    #@56
    goto :goto_1

    #@57
    .line 841
    .end local v0    # "count":I
    .end local v1    # "decor":Landroid/view/ViewGroup;
    .end local v5    # "overlay":Landroid/view/ViewGroupOverlay;
    .end local v7    # "sharedElement":Landroid/view/View;
    :cond_1
    return-void

    #@58
    .line 831
    .restart local v1    # "decor":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method protected moveSharedElementsToOverlay()V
    .locals 9

    #@0
    .prologue
    .line 791
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@2
    if-eqz v8, :cond_1

    #@4
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    #@6
    invoke-virtual {v8}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_1

    #@c
    .line 794
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementMatrices()V

    #@f
    .line 795
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v4

    #@15
    .line 796
    .local v4, "numSharedElements":I
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@18
    move-result-object v0

    #@19
    .line 797
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    #@1b
    .line 798
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->moveSharedElementWithParent()Z

    #@1e
    move-result v3

    #@1f
    .line 799
    .local v3, "moveWithParent":Z
    new-instance v6, Landroid/graphics/Matrix;

    #@21
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    #@24
    .line 800
    .local v6, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    #@27
    .line 801
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Landroid/view/View;

    #@2f
    .line 802
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    #@32
    .line 803
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v8

    #@38
    check-cast v8, Landroid/graphics/Matrix;

    #@3a
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@3d
    .line 804
    invoke-static {v7, v0, v6}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    #@40
    .line 805
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Landroid/view/ViewGroup;

    #@46
    .line 806
    .local v5, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    #@48
    invoke-static {v5, v0}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    #@4b
    move-result v8

    #@4c
    if-eqz v8, :cond_2

    #@4e
    .line 800
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_0

    #@51
    .line 792
    .end local v0    # "decor":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v3    # "moveWithParent":Z
    .end local v4    # "numSharedElements":I
    .end local v5    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    return-void

    #@52
    .line 807
    .restart local v0    # "decor":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    .restart local v3    # "moveWithParent":Z
    .restart local v4    # "numSharedElements":I
    .restart local v5    # "parent":Landroid/view/ViewGroup;
    .restart local v6    # "tempMatrix":Landroid/graphics/Matrix;
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    new-instance v2, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    #@54
    invoke-direct {v2, v7, v5, v0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    #@57
    .line 808
    .local v2, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v8, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@5e
    .line 809
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63
    goto :goto_1

    #@64
    .line 790
    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    .end local v3    # "moveWithParent":Z
    .end local v5    # "parent":Landroid/view/ViewGroup;
    .end local v6    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected notifySharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 556
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 557
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@6
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@8
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@d
    .line 555
    :cond_0
    return-void
.end method

.method protected onTransitionsComplete()V
    .locals 0

    #@0
    .prologue
    .line 911
    return-void
.end method

.method protected pauseInput()V
    .locals 3

    #@0
    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    .line 905
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_1

    #@6
    const/4 v1, 0x0

    #@7
    .line 906
    :goto_0
    if-eqz v1, :cond_0

    #@9
    .line 907
    const/4 v2, 0x1

    #@a
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    #@d
    .line 903
    :cond_0
    return-void

    #@e
    .line 905
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@11
    move-result-object v1

    #@12
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    goto :goto_0
.end method

.method protected scheduleGhostVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 865
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    .line 866
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 867
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v1

    #@a
    .line 868
    new-instance v2, Landroid/app/ActivityTransitionCoordinator$2;

    #@c
    invoke-direct {v2, p0, v0, p1}, Landroid/app/ActivityTransitionCoordinator$2;-><init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;I)V

    #@f
    .line 867
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@12
    .line 864
    :cond_0
    return-void
.end method

.method protected scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 562
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@3
    move-result-object v0

    #@4
    .line 563
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 564
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@9
    move-result-object v1

    #@a
    .line 565
    new-instance v2, Landroid/app/ActivityTransitionCoordinator$1;

    #@c
    invoke-direct {v2, p0, v0, p1}, Landroid/app/ActivityTransitionCoordinator$1;-><init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;Ljava/util/ArrayList;)V

    #@f
    .line 564
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@12
    .line 561
    :cond_0
    return-void
.end method

.method protected setEpicenter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 306
    const/4 v0, 0x0

    #@2
    .line 307
    .local v0, "epicenter":Landroid/view/View;
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 313
    .end local v0    # "epicenter":Landroid/view/View;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter(Landroid/view/View;)V

    #@15
    .line 305
    return-void

    #@16
    .line 308
    .restart local v0    # "epicenter":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@18
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@21
    move-result v1

    #@22
    .line 309
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@24
    .line 310
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    .end local v0    # "epicenter":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    #@2c
    .local v0, "epicenter":Landroid/view/View;
    goto :goto_0
.end method

.method protected setGhostVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 855
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 856
    .local v2, "numSharedElements":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@9
    .line 857
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/view/View;

    #@11
    invoke-static {v3}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    #@14
    move-result-object v0

    #@15
    .line 858
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_0

    #@17
    .line 859
    invoke-virtual {v0, p1}, Landroid/view/GhostView;->setVisibility(I)V

    #@1a
    .line 856
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 854
    .end local v0    # "ghostView":Landroid/view/GhostView;
    :cond_1
    return-void
.end method

.method protected setResultReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 414
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    #@2
    .line 413
    return-void
.end method

.method protected setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "sharedElementState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    #@1
    .line 534
    new-instance v9, Ljava/util/ArrayList;

    #@3
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 535
    .local v9, "originalImageState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    if-eqz p1, :cond_0

    #@8
    .line 536
    new-instance v4, Landroid/graphics/Matrix;

    #@a
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    #@d
    .line 537
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    #@f
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    #@12
    .line 538
    .local v5, "tempRect":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v8

    #@18
    .line 539
    .local v8, "numSharedElements":I
    const/4 v7, 0x0

    #@19
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@1b
    .line 540
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/view/View;

    #@23
    .line 541
    .local v1, "sharedElement":Landroid/view/View;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/String;

    #@2b
    .line 542
    .local v2, "name":Ljava/lang/String;
    invoke-static {v1, v2, p1}, Landroid/app/ActivityTransitionCoordinator;->getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    #@2e
    move-result-object v10

    #@2f
    .line 544
    .local v10, "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    move-object v0, p0

    #@33
    move-object v3, p1

    #@34
    .line 545
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    #@37
    .line 539
    add-int/lit8 v7, v7, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 549
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v5    # "tempRect":Landroid/graphics/RectF;
    .end local v7    # "i":I
    .end local v8    # "numSharedElements":I
    .end local v10    # "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 550
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@40
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    #@42
    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v0, v3, v6, p2}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    #@47
    .line 552
    :cond_1
    return-object v9
.end method

.method protected setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 5
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "add"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 345
    if-eqz p1, :cond_0

    #@3
    if-eqz p2, :cond_1

    #@5
    .line 346
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@7
    if-eqz v3, :cond_0

    #@9
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@e
    move-result v3

    #@f
    .line 345
    if-eqz v3, :cond_1

    #@11
    .line 347
    :cond_0
    return-object v4

    #@12
    .line 351
    :cond_1
    new-instance v1, Landroid/transition/TransitionSet;

    #@14
    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    #@17
    .line 352
    .local v1, "set":Landroid/transition/TransitionSet;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 353
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v3

    #@21
    add-int/lit8 v0, v3, -0x1

    #@23
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@25
    .line 354
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/view/View;

    #@2d
    .line 355
    .local v2, "view":Landroid/view/View;
    if-eqz p2, :cond_2

    #@2f
    .line 356
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    #@32
    .line 353
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_0

    #@35
    .line 358
    :cond_2
    const/4 v3, 0x1

    #@36
    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    #@39
    goto :goto_1

    #@3a
    .line 364
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@3d
    .line 366
    if-nez p2, :cond_4

    #@3f
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@41
    if-eqz v3, :cond_4

    #@43
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_5

    #@4b
    .line 371
    :cond_4
    :goto_2
    return-object v1

    #@4c
    .line 368
    :cond_5
    new-instance v3, Landroid/transition/TransitionSet;

    #@4e
    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    #@51
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    #@54
    move-result-object v1

    #@55
    goto :goto_2
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    #@0
    .prologue
    .line 889
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    #@3
    .line 890
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    #@6
    .line 888
    return-void
.end method

.method protected showViews(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "setTransitionAlpha"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 703
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 704
    .local v0, "count":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 705
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/view/View;

    #@d
    invoke-direct {p0, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    #@10
    .line 704
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 702
    :cond_0
    return-void
.end method

.method protected startTransition(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 769
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 770
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    #@6
    .line 768
    :goto_0
    return-void

    #@7
    .line 772
    :cond_0
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    #@a
    .line 773
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@d
    goto :goto_0
.end method

.method protected stripOffscreenViews()V
    .locals 4

    #@0
    .prologue
    .line 281
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 282
    return-void

    #@5
    .line 284
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@a
    .line 285
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v3

    #@10
    add-int/lit8 v0, v3, -0x1

    #@12
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@14
    .line 286
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/view/View;

    #@1c
    .line 287
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_1

    #@22
    .line 288
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    .line 289
    const/4 v3, 0x1

    #@28
    invoke-direct {p0, v2, v3}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    #@2b
    .line 285
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 280
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected transitionStarted()V
    .locals 1

    #@0
    .prologue
    .line 778
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    #@3
    .line 777
    return-void
.end method

.method protected viewsReady(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 220
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@2
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    #@5
    .line 221
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 222
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    #@b
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v2, p1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    #@10
    .line 224
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setSharedElements(Landroid/util/ArrayMap;)V

    #@13
    .line 225
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_2

    #@19
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 226
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@20
    move-result-object v0

    #@21
    .line 227
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    #@23
    .line 228
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->captureTransitioningViews(Ljava/util/List;)V

    #@28
    .line 230
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    #@2a
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@2f
    .line 232
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter()V

    #@32
    .line 219
    return-void
.end method

.method protected viewsTransitionComplete()V
    .locals 1

    #@0
    .prologue
    .line 884
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    #@3
    .line 885
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    #@6
    .line 883
    return-void
.end method
