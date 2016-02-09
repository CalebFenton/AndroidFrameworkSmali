.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;,
        Landroid/support/v4/app/FragmentManagerImpl$1;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mController:Landroid/support/v4/app/FragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/high16 v4, 0x40200000    # 2.5f

    #@3
    const/high16 v3, 0x3fc00000    # 1.5f

    #@5
    .line 405
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@7
    .line 408
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v2, 0xb

    #@b
    if-lt v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    #@10
    .line 795
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@12
    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@15
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    #@17
    .line 796
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@19
    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@1c
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@1e
    .line 797
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@20
    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    #@23
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    #@25
    .line 798
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@27
    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    #@2a
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@2c
    .line 404
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 404
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    #@4
    .line 464
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@7
    .line 477
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@9
    .line 478
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@b
    .line 480
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    #@d
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    #@10
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@12
    .line 404
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    #@0
    .prologue
    .line 1437
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1438
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 1439
    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    #@9
    .line 1438
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1441
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1442
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Can not perform this action inside of "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 1442
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1436
    :cond_1
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    #@0
    .prologue
    .line 818
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@5
    .line 819
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@7
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@a
    .line 820
    const-wide/16 v2, 0xdc

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@f
    .line 821
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    #@0
    .prologue
    .line 804
    new-instance v10, Landroid/view/animation/AnimationSet;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@6
    .line 805
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #@8
    .line 806
    const/4 v5, 0x1

    #@9
    const/high16 v6, 0x3f000000    # 0.5f

    #@b
    const/4 v7, 0x1

    #@c
    const/high16 v8, 0x3f000000    # 0.5f

    #@e
    move v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p1

    #@11
    move v4, p2

    #@12
    .line 805
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    #@15
    .line 807
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    #@17
    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1a
    .line 808
    const-wide/16 v2, 0xdc

    #@1c
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    #@1f
    .line 809
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@22
    .line 810
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    #@24
    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@27
    .line 811
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@29
    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@2c
    .line 812
    const-wide/16 v2, 0xdc

    #@2e
    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@31
    .line 813
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@34
    .line 814
    return-object v10
.end method

.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
    .locals 4
    .param p0, "anim"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 488
    instance-of v2, p0, Landroid/view/animation/AlphaAnimation;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 489
    return v3

    #@6
    .line 490
    :cond_0
    instance-of v2, p0, Landroid/view/animation/AnimationSet;

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 491
    check-cast p0, Landroid/view/animation/AnimationSet;

    #@c
    .end local p0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    .line 492
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@14
    move-result v2

    #@15
    if-ge v1, v2, :cond_2

    #@17
    .line 493
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 494
    return v3

    #@20
    .line 492
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 498
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    #@24
    return v2
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    #@0
    .prologue
    .line 2143
    const/4 v0, 0x0

    #@1
    .line 2144
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 2155
    :goto_0
    return v0

    #@5
    .line 2146
    :sswitch_0
    const/16 v0, 0x2002

    #@7
    .line 2147
    goto :goto_0

    #@8
    .line 2149
    :sswitch_1
    const/16 v0, 0x1001

    #@a
    .line 2150
    goto :goto_0

    #@b
    .line 2152
    :sswitch_2
    const/16 v0, 0x1003

    #@d
    .line 2153
    goto :goto_0

    #@e
    .line 2144
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 903
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 904
    :cond_0
    return-void

    #@5
    .line 906
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 907
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    #@d
    invoke-direct {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    #@10
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@13
    .line 902
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 502
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 503
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    #@a
    move-result v1

    #@b
    .line 502
    if-eqz v1, :cond_0

    #@d
    .line 504
    invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z

    #@10
    move-result v0

    #@11
    .line 502
    :cond_0
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    #@0
    .prologue
    .line 508
    const-string/jumbo v3, "FragmentManager"

    #@3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 509
    const-string/jumbo v3, "FragmentManager"

    #@d
    const-string/jumbo v4, "Activity state:"

    #@10
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 510
    new-instance v1, Landroid/support/v4/util/LogWriter;

    #@15
    const-string/jumbo v3, "FragmentManager"

    #@18
    invoke-direct {v1, v3}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@1b
    .line 511
    .local v1, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    #@1d
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@20
    .line 512
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 514
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@26
    const-string/jumbo v4, "  "

    #@29
    const/4 v5, 0x0

    #@2a
    new-array v5, v5, [Ljava/lang/String;

    #@2c
    const/4 v6, 0x0

    #@2d
    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 525
    :goto_0
    throw p1

    #@31
    .line 515
    :catch_0
    move-exception v0

    #@32
    .line 516
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    #@35
    const-string/jumbo v4, "Failed dumping state"

    #@38
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_0

    #@3c
    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "  "

    #@3f
    const/4 v4, 0x0

    #@40
    new-array v4, v4, [Ljava/lang/String;

    #@42
    const/4 v5, 0x0

    #@43
    invoke-virtual {p0, v3, v5, v2, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@46
    goto :goto_0

    #@47
    .line 521
    :catch_1
    move-exception v0

    #@48
    .line 522
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FragmentManager"

    #@4b
    const-string/jumbo v4, "Failed dumping state"

    #@4e
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    #@0
    .prologue
    .line 2167
    const/4 v0, -0x1

    #@1
    .line 2168
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 2179
    :goto_0
    return v0

    #@5
    .line 2170
    :sswitch_0
    if-eqz p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_0

    #@9
    :cond_0
    const/4 v0, 0x2

    #@a
    goto :goto_0

    #@b
    .line 2173
    :sswitch_1
    if-eqz p1, :cond_1

    #@d
    const/4 v0, 0x3

    #@e
    goto :goto_0

    #@f
    :cond_1
    const/4 v0, 0x4

    #@10
    goto :goto_0

    #@11
    .line 2176
    :sswitch_2
    if-eqz p1, :cond_2

    #@13
    const/4 v0, 0x5

    #@14
    goto :goto_0

    #@15
    :cond_2
    const/4 v0, 0x6

    #@16
    goto :goto_0

    #@17
    .line 2168
    nop

    #@18
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/app/BackStackRecord;

    #@0
    .prologue
    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@b
    .line 1597
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1598
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@13
    .line 1593
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1261
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1262
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@c
    .line 1264
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    const-string/jumbo v0, "FragmentManager"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "add: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1265
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    #@2d
    .line 1266
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@2f
    if-nez v0, :cond_4

    #@31
    .line 1267
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 1268
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "Fragment already added: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0

    #@53
    .line 1270
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 1271
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@5a
    .line 1272
    const/4 v0, 0x0

    #@5b
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@5d
    .line 1273
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@5f
    if-eqz v0, :cond_3

    #@61
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@63
    if-eqz v0, :cond_3

    #@65
    .line 1274
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@67
    .line 1276
    :cond_3
    if-eqz p2, :cond_4

    #@69
    .line 1277
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    #@6c
    .line 1260
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 605
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@b
    .line 607
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 603
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    #@0
    .prologue
    .line 1474
    monitor-enter p0

    #@1
    .line 1475
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-gtz v1, :cond_3

    #@d
    .line 1476
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 1477
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@18
    .line 1479
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 1480
    .local v0, "index":I
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@20
    if-eqz v1, :cond_2

    #@22
    const-string/jumbo v1, "FragmentManager"

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Setting back stack index "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, " to "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 1481
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    monitor-exit p0

    #@4d
    .line 1482
    return v0

    #@4e
    .line 1485
    .end local v0    # "index":I
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@50
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v2

    #@56
    add-int/lit8 v2, v2, -0x1

    #@58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Ljava/lang/Integer;

    #@5e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@61
    move-result v0

    #@62
    .line 1486
    .restart local v0    # "index":I
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@64
    if-eqz v1, :cond_4

    #@66
    const-string/jumbo v1, "FragmentManager"

    #@69
    new-instance v2, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v3, "Adding back stack index "

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    const-string/jumbo v3, " with "

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 1487
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    monitor-exit p0

    #@91
    .line 1488
    return v0

    #@92
    .line 1474
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@93
    monitor-exit p0

    #@94
    throw v1
.end method

.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "host"    # Landroid/support/v4/app/FragmentHostCallback;
    .param p2, "container"    # Landroid/support/v4/app/FragmentContainer;
    .param p3, "parent"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 1974
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already attached"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1975
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@f
    .line 1976
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@11
    .line 1977
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@13
    .line 1973
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1359
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "FragmentManager"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "attach: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1360
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@22
    if-eqz v0, :cond_5

    #@24
    .line 1361
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@26
    .line 1362
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@28
    if-nez v0, :cond_5

    #@2a
    .line 1363
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    #@30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@35
    .line 1366
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 1367
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v2, "Fragment already added: "

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 1369
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@59
    if-eqz v0, :cond_3

    #@5b
    const-string/jumbo v0, "FragmentManager"

    #@5e
    new-instance v1, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v2, "add from attach: "

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 1370
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    .line 1371
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@7c
    .line 1372
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@7e
    if-eqz v0, :cond_4

    #@80
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@82
    if-eqz v0, :cond_4

    #@84
    .line 1373
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@86
    .line 1375
    :cond_4
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@88
    move-object v0, p0

    #@89
    move-object v1, p1

    #@8a
    move v3, p2

    #@8b
    move v4, p3

    #@8c
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@8f
    .line 1358
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 1

    #@0
    .prologue
    .line 530
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    #@5
    return-object v0
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1340
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "FragmentManager"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "detach: "

    #@11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1341
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@22
    if-nez v0, :cond_4

    #@24
    .line 1342
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@26
    .line 1343
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 1345
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 1346
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@30
    if-eqz v0, :cond_1

    #@32
    const-string/jumbo v0, "FragmentManager"

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, "remove from detach: "

    #@3d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 1347
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@51
    .line 1349
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@53
    if-eqz v0, :cond_3

    #@55
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@57
    if-eqz v0, :cond_3

    #@59
    .line 1350
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@5b
    .line 1352
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@5d
    move-object v0, p0

    #@5e
    move-object v1, p1

    #@5f
    move v3, p2

    #@60
    move v4, p3

    #@61
    .line 1353
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@64
    .line 1339
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1990
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1991
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1989
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2035
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2036
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2037
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@15
    .line 2038
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2039
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    #@1a
    .line 2036
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2034
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 2118
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2119
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2120
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@15
    .line 2121
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2122
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 2123
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 2119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2128
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public dispatchCreate()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1985
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1986
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1984
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 2057
    const/4 v3, 0x0

    #@1
    .line 2058
    .local v3, "show":Z
    const/4 v2, 0x0

    #@2
    .line 2059
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4
    if-eqz v4, :cond_2

    #@6
    .line 2060
    const/4 v1, 0x0

    #@7
    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v4

    #@d
    if-ge v1, v4, :cond_2

    #@f
    .line 2061
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@17
    .line 2062
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    #@19
    .line 2063
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 2064
    const/4 v3, 0x1

    #@20
    .line 2065
    if-nez v2, :cond_0

    #@22
    .line 2066
    new-instance v2, Ljava/util/ArrayList;

    #@24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 2068
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 2060
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2074
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@2f
    if-eqz v4, :cond_4

    #@31
    .line 2075
    const/4 v1, 0x0

    #@32
    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v4

    #@38
    if-ge v1, v4, :cond_4

    #@3a
    .line 2076
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@42
    .line 2077
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_3

    #@44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 2075
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 2078
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    #@50
    goto :goto_2

    #@51
    .line 2083
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@53
    .line 2085
    return v3
.end method

.method public dispatchDestroy()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 2026
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@5
    .line 2027
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@8
    .line 2028
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@b
    .line 2029
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@d
    .line 2030
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@f
    .line 2031
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@11
    .line 2025
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    #@0
    .prologue
    .line 2022
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 2021
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 2046
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2047
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2048
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@15
    .line 2049
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2050
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    #@1a
    .line 2047
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2045
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 2104
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2105
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2106
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@15
    .line 2107
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2108
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 2109
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 2105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2114
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2132
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2133
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2134
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@15
    .line 2135
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2136
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    #@1a
    .line 2133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2131
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    #@0
    .prologue
    .line 2005
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 2004
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2089
    const/4 v2, 0x0

    #@1
    .line 2090
    .local v2, "show":Z
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 2091
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_1

    #@e
    .line 2092
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    .line 2093
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@18
    .line 2094
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 2095
    const/4 v2, 0x1

    #@1f
    .line 2091
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2100
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public dispatchReallyStop()V
    .locals 2

    #@0
    .prologue
    .line 2018
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 2017
    return-void
.end method

.method public dispatchResume()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2000
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 2001
    const/4 v0, 0x5

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1999
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1995
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1996
    const/4 v0, 0x4

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1994
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    #@0
    .prologue
    .line 2012
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 2014
    const/4 v0, 0x3

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@8
    .line 2008
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 684
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v6

    #@9
    const-string/jumbo v7, "    "

    #@c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    .line 687
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 688
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 689
    .local v0, "N":I
    if-lez v0, :cond_1

    #@20
    .line 690
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    const-string/jumbo v6, "Active Fragments in "

    #@26
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 691
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2c
    move-result v6

    #@2d
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 692
    const-string/jumbo v6, ":"

    #@37
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 693
    const/4 v3, 0x0

    #@3b
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@3d
    .line 694
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@45
    .line 695
    .local v2, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    const-string/jumbo v6, "  #"

    #@4b
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 696
    const-string/jumbo v6, ": "

    #@54
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5a
    .line 697
    if-eqz v2, :cond_0

    #@5c
    .line 698
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5f
    .line 693
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_0

    #@62
    .line 704
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@64
    if-eqz v6, :cond_2

    #@66
    .line 705
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6b
    move-result v0

    #@6c
    .line 706
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    #@6e
    .line 707
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v6, "Added Fragments:"

    #@74
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77
    .line 708
    const/4 v3, 0x0

    #@78
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    #@7a
    .line 709
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@82
    .line 710
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    const-string/jumbo v6, "  #"

    #@88
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@8e
    .line 711
    const-string/jumbo v6, ": "

    #@91
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9b
    .line 708
    add-int/lit8 v3, v3, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 716
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@a0
    if-eqz v6, :cond_3

    #@a2
    .line 717
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v0

    #@a8
    .line 718
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    #@aa
    .line 719
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    const-string/jumbo v6, "Fragments Created Menus:"

    #@b0
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b3
    .line 720
    const/4 v3, 0x0

    #@b4
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    #@b6
    .line 721
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bb
    move-result-object v2

    #@bc
    check-cast v2, Landroid/support/v4/app/Fragment;

    #@be
    .line 722
    .restart local v2    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    const-string/jumbo v6, "  #"

    #@c4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@ca
    .line 723
    const-string/jumbo v6, ": "

    #@cd
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d7
    .line 720
    add-int/lit8 v3, v3, 0x1

    #@d9
    goto :goto_2

    #@da
    .line 728
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@dc
    if-eqz v6, :cond_4

    #@de
    .line 729
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v0

    #@e4
    .line 730
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    #@e6
    .line 731
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    const-string/jumbo v6, "Back Stack:"

    #@ec
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 732
    const/4 v3, 0x0

    #@f0
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    #@f2
    .line 733
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@f4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f7
    move-result-object v1

    #@f8
    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    #@fa
    .line 734
    .local v1, "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd
    const-string/jumbo v6, "  #"

    #@100
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@103
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@106
    .line 735
    const-string/jumbo v6, ": "

    #@109
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10c
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    #@10f
    move-result-object v6

    #@110
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 736
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@116
    .line 732
    add-int/lit8 v3, v3, 0x1

    #@118
    goto :goto_3

    #@119
    .line 741
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    #@11a
    .line 742
    :try_start_0
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@11c
    if-eqz v6, :cond_5

    #@11e
    .line 743
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@120
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@123
    move-result v0

    #@124
    .line 744
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    #@126
    .line 745
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    const-string/jumbo v6, "Back Stack Indices:"

    #@12c
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 746
    const/4 v3, 0x0

    #@130
    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    #@132
    .line 747
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@134
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@137
    move-result-object v1

    #@138
    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    #@13a
    .line 748
    .restart local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    const-string/jumbo v6, "  #"

    #@140
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@146
    .line 749
    const-string/jumbo v6, ": "

    #@149
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@14f
    .line 746
    add-int/lit8 v3, v3, 0x1

    #@151
    goto :goto_4

    #@152
    .line 754
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/support/v4/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@154
    if-eqz v6, :cond_6

    #@156
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@158
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@15b
    move-result v6

    #@15c
    if-lez v6, :cond_6

    #@15e
    .line 755
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    const-string/jumbo v6, "mAvailBackStackIndices: "

    #@164
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    .line 756
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@169
    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@16c
    move-result-object v6

    #@16d
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@170
    move-result-object v6

    #@171
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@174
    :cond_6
    monitor-exit p0

    #@175
    .line 760
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@177
    if-eqz v6, :cond_7

    #@179
    .line 761
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@17b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@17e
    move-result v0

    #@17f
    .line 762
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    #@181
    .line 763
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    const-string/jumbo v6, "Pending Actions:"

    #@187
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18a
    .line 764
    const/4 v3, 0x0

    #@18b
    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    #@18d
    .line 765
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@18f
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@192
    move-result-object v5

    #@193
    check-cast v5, Ljava/lang/Runnable;

    #@195
    .line 766
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    const-string/jumbo v6, "  #"

    #@19b
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@1a1
    .line 767
    const-string/jumbo v6, ": "

    #@1a4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1aa
    .line 764
    add-int/lit8 v3, v3, 0x1

    #@1ac
    goto :goto_5

    #@1ad
    .line 741
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    #@1ae
    monitor-exit p0

    #@1af
    throw v6

    #@1b0
    .line 772
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b3
    const-string/jumbo v6, "FragmentManager misc state:"

    #@1b6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b9
    .line 773
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bc
    const-string/jumbo v6, "  mHost="

    #@1bf
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c2
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@1c4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1c7
    .line 774
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ca
    const-string/jumbo v6, "  mContainer="

    #@1cd
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d0
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@1d2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1d5
    .line 775
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@1d7
    if-eqz v6, :cond_8

    #@1d9
    .line 776
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc
    const-string/jumbo v6, "  mParent="

    #@1df
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e2
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@1e4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1e7
    .line 778
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ea
    const-string/jumbo v6, "  mCurState="

    #@1ed
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@1f2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1f5
    .line 779
    const-string/jumbo v6, " mStateSaved="

    #@1f8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fb
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@1fd
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@200
    .line 780
    const-string/jumbo v6, " mDestroyed="

    #@203
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@206
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@208
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@20b
    .line 781
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@20d
    if-eqz v6, :cond_9

    #@20f
    .line 782
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    const-string/jumbo v6, "  mNeedMenuInvalidate="

    #@215
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@218
    .line 783
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@21a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@21d
    .line 785
    :cond_9
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@21f
    if-eqz v6, :cond_a

    #@221
    .line 786
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@224
    const-string/jumbo v6, "  mNoTransactionsBecause="

    #@227
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22a
    .line 787
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@22c
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22f
    .line 789
    :cond_a
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@231
    if-eqz v6, :cond_b

    #@233
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@235
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@238
    move-result v6

    #@239
    if-lez v6, :cond_b

    #@23b
    .line 790
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23e
    const-string/jumbo v6, "  mAvailIndices: "

    #@241
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@244
    .line 791
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@246
    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@249
    move-result-object v6

    #@24a
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@24d
    move-result-object v6

    #@24e
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@251
    .line 683
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    #@0
    .prologue
    .line 1455
    if-nez p2, :cond_0

    #@2
    .line 1456
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@5
    .line 1458
    :cond_0
    monitor-enter p0

    #@6
    .line 1459
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@8
    if-nez v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@c
    if-nez v0, :cond_2

    #@e
    .line 1460
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v1, "Activity has been destroyed"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1458
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0

    #@1a
    .line 1462
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 1463
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@25
    .line 1465
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1466
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    const/4 v1, 0x1

    #@31
    if-ne v0, v1, :cond_4

    #@33
    .line 1467
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@35
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@38
    move-result-object v0

    #@39
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@3e
    .line 1468
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@40
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@43
    move-result-object v0

    #@44
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    :cond_4
    monitor-exit p0

    #@4a
    .line 1454
    return-void
.end method

.method public execPendingActions()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1533
    iget-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1534
    new-instance v5, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v6, "Recursive entry to executePendingTransactions"

    #@b
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5

    #@f
    .line 1537
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@12
    move-result-object v5

    #@13
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@15
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v6

    #@1d
    if-eq v5, v6, :cond_1

    #@1f
    .line 1538
    new-instance v5, Ljava/lang/IllegalStateException;

    #@21
    const-string/jumbo v6, "Must be called from main thread of process"

    #@24
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v5

    #@28
    .line 1541
    :cond_1
    const/4 v0, 0x0

    #@29
    .line 1546
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    #@2a
    .line 1547
    :try_start_0
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@2c
    if-eqz v5, :cond_2

    #@2e
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_4

    #@36
    :cond_2
    monitor-exit p0

    #@37
    .line 1569
    iget-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@39
    if-eqz v5, :cond_9

    #@3b
    .line 1570
    const/4 v3, 0x0

    #@3c
    .line 1571
    .local v3, "loadersRunning":Z
    const/4 v2, 0x0

    #@3d
    .end local v3    # "loadersRunning":Z
    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v5

    #@43
    if-ge v2, v5, :cond_8

    #@45
    .line 1572
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Landroid/support/v4/app/Fragment;

    #@4d
    .line 1573
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_3

    #@4f
    iget-object v5, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@51
    if-eqz v5, :cond_3

    #@53
    .line 1574
    iget-object v5, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@55
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@58
    move-result v5

    #@59
    or-int/2addr v3, v5

    #@5a
    .line 1571
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 1551
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@62
    move-result v4

    #@63
    .line 1552
    .local v4, "numActions":I
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@65
    if-eqz v5, :cond_5

    #@67
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@69
    array-length v5, v5

    #@6a
    if-ge v5, v4, :cond_6

    #@6c
    .line 1553
    :cond_5
    new-array v5, v4, [Ljava/lang/Runnable;

    #@6e
    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@70
    .line 1555
    :cond_6
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@72
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@74
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@77
    .line 1556
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@7c
    .line 1557
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@7e
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@81
    move-result-object v5

    #@82
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@84
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    monitor-exit p0

    #@88
    .line 1560
    const/4 v5, 0x1

    #@89
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@8b
    .line 1561
    const/4 v2, 0x0

    #@8c
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_7

    #@8e
    .line 1562
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@90
    aget-object v5, v5, v2

    #@92
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    #@95
    .line 1563
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@97
    aput-object v7, v5, v2

    #@99
    .line 1561
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 1546
    .end local v2    # "i":I
    .end local v4    # "numActions":I
    :catchall_0
    move-exception v5

    #@9d
    monitor-exit p0

    #@9e
    throw v5

    #@9f
    .line 1565
    .restart local v2    # "i":I
    .restart local v4    # "numActions":I
    :cond_7
    iput-boolean v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@a1
    .line 1566
    const/4 v0, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 1577
    .end local v4    # "numActions":I
    :cond_8
    if-nez v3, :cond_9

    #@a5
    .line 1578
    iput-boolean v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@a7
    .line 1579
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@aa
    .line 1582
    .end local v2    # "i":I
    :cond_9
    return v0
.end method

.method public executePendingTransactions()Z
    .locals 1

    #@0
    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1381
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1383
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    add-int/lit8 v1, v2, -0x1

    #@d
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@f
    .line 1384
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@17
    .line 1385
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@19
    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@1b
    if-ne v2, p1, :cond_0

    #@1d
    .line 1386
    return-object v0

    #@1e
    .line 1383
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 1390
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 1392
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v2

    #@2b
    add-int/lit8 v1, v2, -0x1

    #@2d
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@2f
    .line 1393
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@37
    .line 1394
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    #@39
    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@3b
    if-ne v2, p1, :cond_2

    #@3d
    .line 1395
    return-object v0

    #@3e
    .line 1392
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@40
    goto :goto_1

    #@41
    .line 1399
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1403
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 1405
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v1, v2, -0x1

    #@f
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@11
    .line 1406
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@19
    .line 1407
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1408
    return-object v0

    #@24
    .line 1405
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 1412
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    if-eqz v2, :cond_3

    #@2b
    if-eqz p1, :cond_3

    #@2d
    .line 1414
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v2

    #@33
    add-int/lit8 v1, v2, -0x1

    #@35
    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    #@37
    .line 1415
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@3f
    .line 1416
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    #@41
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 1417
    return-object v0

    #@4a
    .line 1414
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@4c
    goto :goto_1

    #@4d
    .line 1421
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1425
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 1426
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v1, v2, -0x1

    #@f
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@11
    .line 1427
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@19
    .line 1428
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    #@1b
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1429
    return-object v0

    #@22
    .line 1426
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0

    #@25
    .line 1433
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1519
    monitor-enter p0

    #@1
    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1521
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@12
    .line 1524
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    const-string/jumbo v0, "FragmentManager"

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Freeing back stack index "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1525
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit p0

    #@3a
    .line 1518
    return-void

    #@3b
    .line 1519
    :catchall_0
    move-exception v0

    #@3c
    monitor-exit p0

    #@3d
    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 599
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    #@8
    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    #@0
    .prologue
    .line 594
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 628
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5
    move-result v1

    #@6
    .line 629
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    #@8
    .line 630
    return-object v3

    #@9
    .line 632
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 633
    new-instance v2, Ljava/lang/IllegalStateException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Fragment no longer exists for key "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 634
    const-string/jumbo v4, ": index "

    #@26
    .line 633
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@35
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@38
    .line 636
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@40
    .line 637
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_2

    #@42
    .line 638
    new-instance v2, Ljava/lang/IllegalStateException;

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "Fragment no longer exists for key "

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 639
    const-string/jumbo v4, ": index "

    #@57
    .line 638
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@66
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@69
    .line 641
    :cond_2
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;
    .locals 0

    #@0
    .prologue
    .line 2275
    return-object p0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1300
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const-string/jumbo v1, "FragmentManager"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "hide: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1301
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@21
    if-nez v1, :cond_4

    #@23
    .line 1302
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@25
    .line 1303
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 1304
    const/4 v1, 0x0

    #@2a
    invoke-virtual {p0, p1, p2, v1, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@2d
    move-result-object v0

    #@2e
    .line 1306
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    #@30
    .line 1307
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@32
    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    #@35
    .line 1308
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@37
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@3a
    .line 1310
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@3c
    const/16 v2, 0x8

    #@3e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@41
    .line 1312
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@43
    if-eqz v1, :cond_3

    #@45
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@47
    if-eqz v1, :cond_3

    #@49
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@4b
    if-eqz v1, :cond_3

    #@4d
    .line 1313
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4f
    .line 1315
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    #@52
    .line 1299
    :cond_4
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 664
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@2
    return v0
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    #@0
    .prologue
    const v8, 0x3f79999a    # 0.975f

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    const/high16 v5, 0x3f800000    # 1.0f

    #@7
    .line 827
    iget v3, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@9
    .line 826
    invoke-virtual {p1, p2, p3, v3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    #@c
    move-result-object v1

    #@d
    .line 828
    .local v1, "animObj":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    #@f
    .line 829
    return-object v1

    #@10
    .line 832
    :cond_0
    iget v3, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 833
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@16
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@19
    move-result-object v3

    #@1a
    iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@1c
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@1f
    move-result-object v0

    #@20
    .line 834
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    #@22
    .line 835
    return-object v0

    #@23
    .line 839
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    if-nez p2, :cond_2

    #@25
    .line 840
    return-object v7

    #@26
    .line 843
    :cond_2
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    #@29
    move-result v2

    #@2a
    .line 844
    .local v2, "styleIndex":I
    if-gez v2, :cond_3

    #@2c
    .line 845
    return-object v7

    #@2d
    .line 848
    :cond_3
    packed-switch v2, :pswitch_data_0

    #@30
    .line 863
    if-nez p4, :cond_4

    #@32
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@34
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_4

    #@3a
    .line 864
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@3c
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    #@3f
    move-result p4

    #@40
    .line 866
    :cond_4
    if-nez p4, :cond_5

    #@42
    .line 867
    return-object v7

    #@43
    .line 850
    :pswitch_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@45
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@48
    move-result-object v3

    #@49
    const/high16 v4, 0x3f900000    # 1.125f

    #@4b
    invoke-static {v3, v4, v5, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@4e
    move-result-object v3

    #@4f
    return-object v3

    #@50
    .line 852
    :pswitch_1
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@52
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@55
    move-result-object v3

    #@56
    invoke-static {v3, v5, v8, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@59
    move-result-object v3

    #@5a
    return-object v3

    #@5b
    .line 854
    :pswitch_2
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@5d
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@60
    move-result-object v3

    #@61
    invoke-static {v3, v8, v5, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@64
    move-result-object v3

    #@65
    return-object v3

    #@66
    .line 856
    :pswitch_3
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@68
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@6b
    move-result-object v3

    #@6c
    const v4, 0x3f89999a    # 1.075f

    #@6f
    invoke-static {v3, v5, v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@72
    move-result-object v3

    #@73
    return-object v3

    #@74
    .line 858
    :pswitch_4
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@76
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@79
    move-result-object v3

    #@7a
    invoke-static {v3, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    #@7d
    move-result-object v3

    #@7e
    return-object v3

    #@7f
    .line 860
    :pswitch_5
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@81
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@84
    move-result-object v3

    #@85
    invoke-static {v3, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    #@88
    move-result-object v3

    #@89
    return-object v3

    #@8a
    .line 880
    :cond_5
    return-object v7

    #@8b
    .line 848
    nop

    #@8c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 1227
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1228
    return-void

    #@5
    .line 1231
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@7
    if-eqz v0, :cond_1

    #@9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-gtz v0, :cond_4

    #@11
    .line 1232
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    if-nez v0, :cond_2

    #@15
    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1c
    .line 1235
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v0

    #@22
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@24
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    #@27
    .line 1236
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1242
    :goto_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2e
    if-eqz v0, :cond_3

    #@30
    const-string/jumbo v0, "FragmentManager"

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "Allocated fragment index "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 1226
    :cond_3
    return-void

    #@4b
    .line 1239
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@4d
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v1

    #@53
    add-int/lit8 v1, v1, -0x1

    #@55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Ljava/lang/Integer;

    #@5b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5e
    move-result v0

    #@5f
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@61
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    #@64
    .line 1240
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@66
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@68
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@6b
    goto :goto_0
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1246
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3
    if-gez v0, :cond_0

    #@5
    .line 1247
    return-void

    #@6
    .line 1250
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    const-string/jumbo v0, "FragmentManager"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Freeing fragment index "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1251
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@26
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@28
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 1252
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    #@31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@36
    .line 1255
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@38
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 1256
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@43
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@45
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    #@48
    .line 1257
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    #@4b
    .line 1245
    return-void
.end method

.method moveToState(IIIZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1183
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@3
    if-nez v0, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 1184
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "No host"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1187
    :cond_0
    if-nez p4, :cond_1

    #@12
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@14
    if-ne v0, p1, :cond_1

    #@16
    .line 1188
    return-void

    #@17
    .line 1191
    :cond_1
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@19
    .line 1192
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1b
    if-eqz v0, :cond_5

    #@1d
    .line 1193
    const/4 v7, 0x0

    #@1e
    .line 1194
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    #@1f
    .end local v7    # "loadersRunning":Z
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v0

    #@25
    if-ge v6, v0, :cond_3

    #@27
    .line 1195
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Landroid/support/v4/app/Fragment;

    #@2f
    .line 1196
    .local v1, "f":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    #@31
    move-object v0, p0

    #@32
    move v2, p1

    #@33
    move v3, p2

    #@34
    move v4, p3

    #@35
    .line 1197
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@38
    .line 1198
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 1199
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3e
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@41
    move-result v0

    #@42
    or-int/2addr v7, v0

    #@43
    .line 1194
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1204
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_3
    if-nez v7, :cond_4

    #@48
    .line 1205
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@4b
    .line 1208
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4d
    if-eqz v0, :cond_5

    #@4f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@51
    if-eqz v0, :cond_5

    #@53
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@55
    const/4 v2, 0x5

    #@56
    if-ne v0, v2, :cond_5

    #@58
    .line 1209
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@5a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    #@5d
    .line 1210
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@5f
    .line 1182
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method moveToState(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1179
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@4
    .line 1178
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1175
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v4, v3

    #@6
    move v5, v3

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@a
    .line 1174
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 11
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    #@0
    .prologue
    .line 914
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    if-le p2, v0, :cond_1

    #@b
    .line 915
    const/4 p2, 0x1

    #@c
    .line 917
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@12
    if-le p2, v0, :cond_2

    #@14
    .line 919
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@16
    .line 923
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@18
    if-eqz v0, :cond_3

    #@1a
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@1c
    const/4 v1, 0x4

    #@1d
    if-ge v0, v1, :cond_3

    #@1f
    const/4 v0, 0x3

    #@20
    if-le p2, v0, :cond_3

    #@22
    .line 924
    const/4 p2, 0x3

    #@23
    .line 926
    :cond_3
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@25
    if-ge v0, p2, :cond_21

    #@27
    .line 930
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@29
    if-eqz v0, :cond_4

    #@2b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@2d
    if-eqz v0, :cond_7

    #@2f
    .line 933
    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@31
    if-eqz v0, :cond_5

    #@33
    .line 938
    const/4 v0, 0x0

    #@34
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@36
    .line 939
    iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@38
    const/4 v3, 0x0

    #@39
    const/4 v4, 0x0

    #@3a
    const/4 v5, 0x1

    #@3b
    move-object v0, p0

    #@3c
    move-object v1, p1

    #@3d
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@40
    .line 941
    :cond_5
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@42
    packed-switch v0, :pswitch_data_0

    #@45
    .line 1171
    :cond_6
    :goto_0
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@47
    .line 912
    return-void

    #@48
    .line 931
    :cond_7
    return-void

    #@49
    .line 943
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4b
    if-eqz v0, :cond_8

    #@4d
    const-string/jumbo v0, "FragmentManager"

    #@50
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v2, "moveto CREATED: "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 944
    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@69
    if-eqz v0, :cond_a

    #@6b
    .line 945
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@6d
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@6f
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@7a
    .line 946
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@7c
    .line 947
    const-string/jumbo v1, "android:view_state"

    #@7f
    .line 946
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@82
    move-result-object v0

    #@83
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@85
    .line 948
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@87
    .line 949
    const-string/jumbo v1, "android:target_state"

    #@8a
    .line 948
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@8d
    move-result-object v0

    #@8e
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@90
    .line 950
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@92
    if-eqz v0, :cond_9

    #@94
    .line 951
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@96
    .line 952
    const-string/jumbo v1, "android:target_req_state"

    #@99
    const/4 v2, 0x0

    #@9a
    .line 951
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@9d
    move-result v0

    #@9e
    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@a0
    .line 954
    :cond_9
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@a2
    .line 955
    const-string/jumbo v1, "android:user_visible_hint"

    #@a5
    const/4 v2, 0x1

    #@a6
    .line 954
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@a9
    move-result v0

    #@aa
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@ac
    .line 956
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@ae
    if-nez v0, :cond_a

    #@b0
    .line 957
    const/4 v0, 0x1

    #@b1
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@b3
    .line 958
    const/4 v0, 0x3

    #@b4
    if-le p2, v0, :cond_a

    #@b6
    .line 959
    const/4 p2, 0x3

    #@b7
    .line 963
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@b9
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@bb
    .line 964
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@bd
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@bf
    .line 965
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@c1
    if-eqz v0, :cond_b

    #@c3
    .line 966
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@c5
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@c7
    .line 965
    :goto_1
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@c9
    .line 967
    const/4 v0, 0x0

    #@ca
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@cc
    .line 968
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@ce
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@d1
    move-result-object v0

    #@d2
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    #@d5
    .line 969
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@d7
    if-nez v0, :cond_c

    #@d9
    .line 970
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@db
    new-instance v1, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v2, "Fragment "

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v1

    #@eb
    .line 971
    const-string/jumbo v2, " did not call through to super.onAttach()"

    #@ee
    .line 970
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v1

    #@f6
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@f9
    throw v0

    #@fa
    .line 966
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@fc
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;

    #@ff
    move-result-object v0

    #@100
    goto :goto_1

    #@101
    .line 973
    :cond_c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@103
    if-nez v0, :cond_d

    #@105
    .line 974
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@107
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    #@10a
    .line 977
    :cond_d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@10c
    if-nez v0, :cond_e

    #@10e
    .line 978
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@110
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    #@113
    .line 980
    :cond_e
    const/4 v0, 0x0

    #@114
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@116
    .line 981
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@118
    if-eqz v0, :cond_10

    #@11a
    .line 986
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@11c
    .line 985
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@11f
    move-result-object v0

    #@120
    .line 986
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@122
    const/4 v2, 0x0

    #@123
    .line 985
    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@126
    move-result-object v0

    #@127
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@129
    .line 987
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@12b
    if-eqz v0, :cond_1d

    #@12d
    .line 988
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@12f
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@131
    .line 989
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@133
    const/16 v1, 0xb

    #@135
    if-lt v0, v1, :cond_1c

    #@137
    .line 990
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@139
    const/4 v1, 0x0

    #@13a
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    #@13d
    .line 994
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@13f
    if-eqz v0, :cond_f

    #@141
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@143
    const/16 v1, 0x8

    #@145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@148
    .line 995
    :cond_f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@14a
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@14c
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@14f
    .line 1001
    :cond_10
    :goto_3
    :pswitch_1
    const/4 v0, 0x1

    #@150
    if-le p2, v0, :cond_18

    #@152
    .line 1002
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@154
    if-eqz v0, :cond_11

    #@156
    const-string/jumbo v0, "FragmentManager"

    #@159
    new-instance v1, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    #@161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v1

    #@165
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v1

    #@169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v1

    #@16d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@170
    .line 1003
    :cond_11
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@172
    if-nez v0, :cond_16

    #@174
    .line 1004
    const/4 v7, 0x0

    #@175
    .line 1005
    .local v7, "container":Landroid/view/ViewGroup;
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@177
    if-eqz v0, :cond_12

    #@179
    .line 1006
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@17b
    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@17d
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    #@180
    move-result-object v7

    #@181
    .end local v7    # "container":Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    #@183
    .line 1007
    .local v7, "container":Landroid/view/ViewGroup;
    if-nez v7, :cond_12

    #@185
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    #@187
    if-eqz v0, :cond_1e

    #@189
    .line 1015
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_12
    :goto_4
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@18b
    .line 1017
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@18d
    .line 1016
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@190
    move-result-object v0

    #@191
    .line 1017
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@193
    .line 1016
    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@196
    move-result-object v0

    #@197
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@199
    .line 1018
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@19b
    if-eqz v0, :cond_20

    #@19d
    .line 1019
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@19f
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@1a1
    .line 1020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1a3
    const/16 v1, 0xb

    #@1a5
    if-lt v0, v1, :cond_1f

    #@1a7
    .line 1021
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1a9
    const/4 v1, 0x0

    #@1aa
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    #@1ad
    .line 1025
    :goto_5
    if-eqz v7, :cond_14

    #@1af
    .line 1026
    const/4 v0, 0x1

    #@1b0
    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@1b3
    move-result-object v6

    #@1b4
    .line 1028
    .local v6, "anim":Landroid/view/animation/Animation;
    if-eqz v6, :cond_13

    #@1b6
    .line 1029
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1b8
    invoke-direct {p0, v0, v6}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    #@1bb
    .line 1030
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1bd
    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@1c0
    .line 1032
    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1c2
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1c5
    .line 1034
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_14
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@1c7
    if-eqz v0, :cond_15

    #@1c9
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1cb
    const/16 v1, 0x8

    #@1cd
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1d0
    .line 1035
    :cond_15
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1d2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1d4
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@1d7
    .line 1041
    :cond_16
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1d9
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    #@1dc
    .line 1042
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1de
    if-eqz v0, :cond_17

    #@1e0
    .line 1043
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1e2
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    #@1e5
    .line 1045
    :cond_17
    const/4 v0, 0x0

    #@1e6
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1e8
    .line 1049
    :cond_18
    :pswitch_2
    const/4 v0, 0x3

    #@1e9
    if-le p2, v0, :cond_1a

    #@1eb
    .line 1050
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1ed
    if-eqz v0, :cond_19

    #@1ef
    const-string/jumbo v0, "FragmentManager"

    #@1f2
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v2, "moveto STARTED: "

    #@1fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v1

    #@1fe
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v1

    #@202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@205
    move-result-object v1

    #@206
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@209
    .line 1051
    :cond_19
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    #@20c
    .line 1054
    :cond_1a
    :pswitch_3
    const/4 v0, 0x4

    #@20d
    if-le p2, v0, :cond_6

    #@20f
    .line 1055
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@211
    if-eqz v0, :cond_1b

    #@213
    const-string/jumbo v0, "FragmentManager"

    #@216
    new-instance v1, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v2, "moveto RESUMED: "

    #@21e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v1

    #@222
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v1

    #@226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v1

    #@22a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22d
    .line 1056
    :cond_1b
    const/4 v0, 0x1

    #@22e
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@230
    .line 1057
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    #@233
    .line 1058
    const/4 v0, 0x0

    #@234
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@236
    .line 1059
    const/4 v0, 0x0

    #@237
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@239
    goto/16 :goto_0

    #@23b
    .line 992
    :cond_1c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@23d
    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    #@240
    move-result-object v0

    #@241
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@243
    goto/16 :goto_2

    #@245
    .line 997
    :cond_1d
    const/4 v0, 0x0

    #@246
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@248
    goto/16 :goto_3

    #@24a
    .line 1008
    .restart local v7    # "container":Landroid/view/ViewGroup;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24c
    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    #@24e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@251
    const-string/jumbo v2, "No view found for id 0x"

    #@254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v1

    #@258
    .line 1010
    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@25a
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@25d
    move-result-object v2

    #@25e
    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    move-result-object v1

    #@262
    .line 1010
    const-string/jumbo v2, " ("

    #@265
    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@268
    move-result-object v1

    #@269
    .line 1011
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@26c
    move-result-object v2

    #@26d
    iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@26f
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@272
    move-result-object v2

    #@273
    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v1

    #@277
    .line 1012
    const-string/jumbo v2, ") for fragment "

    #@27a
    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27d
    move-result-object v1

    #@27e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@281
    move-result-object v1

    #@282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@285
    move-result-object v1

    #@286
    .line 1008
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@289
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@28c
    goto/16 :goto_4

    #@28e
    .line 1023
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_1f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@290
    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    #@293
    move-result-object v0

    #@294
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@296
    goto/16 :goto_5

    #@298
    .line 1037
    :cond_20
    const/4 v0, 0x0

    #@299
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@29b
    goto/16 :goto_6

    #@29d
    .line 1062
    :cond_21
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@29f
    if-le v0, p2, :cond_6

    #@2a1
    .line 1063
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@2a3
    packed-switch v0, :pswitch_data_1

    #@2a6
    goto/16 :goto_0

    #@2a8
    .line 1123
    :cond_22
    :goto_7
    :pswitch_4
    const/4 v0, 0x1

    #@2a9
    if-ge p2, v0, :cond_6

    #@2ab
    .line 1124
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@2ad
    if-eqz v0, :cond_23

    #@2af
    .line 1125
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@2b1
    if-eqz v0, :cond_23

    #@2b3
    .line 1132
    iget-object v9, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@2b5
    .line 1133
    .local v9, "v":Landroid/view/View;
    const/4 v0, 0x0

    #@2b6
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@2b8
    .line 1134
    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    #@2bb
    .line 1137
    .end local v9    # "v":Landroid/view/View;
    :cond_23
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@2bd
    if-eqz v0, :cond_30

    #@2bf
    .line 1142
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@2c1
    .line 1143
    const/4 p2, 0x1

    #@2c2
    goto/16 :goto_0

    #@2c4
    .line 1065
    :pswitch_5
    const/4 v0, 0x5

    #@2c5
    if-ge p2, v0, :cond_25

    #@2c7
    .line 1066
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2c9
    if-eqz v0, :cond_24

    #@2cb
    const-string/jumbo v0, "FragmentManager"

    #@2ce
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d3
    const-string/jumbo v2, "movefrom RESUMED: "

    #@2d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v1

    #@2da
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v1

    #@2de
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e1
    move-result-object v1

    #@2e2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e5
    .line 1067
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    #@2e8
    .line 1068
    const/4 v0, 0x0

    #@2e9
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@2eb
    .line 1071
    :cond_25
    :pswitch_6
    const/4 v0, 0x4

    #@2ec
    if-ge p2, v0, :cond_27

    #@2ee
    .line 1072
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2f0
    if-eqz v0, :cond_26

    #@2f2
    const-string/jumbo v0, "FragmentManager"

    #@2f5
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2fa
    const-string/jumbo v2, "movefrom STARTED: "

    #@2fd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@300
    move-result-object v1

    #@301
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v1

    #@305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@308
    move-result-object v1

    #@309
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30c
    .line 1073
    :cond_26
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    #@30f
    .line 1076
    :cond_27
    :pswitch_7
    const/4 v0, 0x3

    #@310
    if-ge p2, v0, :cond_29

    #@312
    .line 1077
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@314
    if-eqz v0, :cond_28

    #@316
    const-string/jumbo v0, "FragmentManager"

    #@319
    new-instance v1, Ljava/lang/StringBuilder;

    #@31b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31e
    const-string/jumbo v2, "movefrom STOPPED: "

    #@321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@324
    move-result-object v1

    #@325
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v1

    #@329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32c
    move-result-object v1

    #@32d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@330
    .line 1078
    :cond_28
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    #@333
    .line 1081
    :cond_29
    :pswitch_8
    const/4 v0, 0x2

    #@334
    if-ge p2, v0, :cond_22

    #@336
    .line 1082
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@338
    if-eqz v0, :cond_2a

    #@33a
    const-string/jumbo v0, "FragmentManager"

    #@33d
    new-instance v1, Ljava/lang/StringBuilder;

    #@33f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@342
    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    #@345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@348
    move-result-object v1

    #@349
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v1

    #@34d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@350
    move-result-object v1

    #@351
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@354
    .line 1083
    :cond_2a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@356
    if-eqz v0, :cond_2b

    #@358
    .line 1086
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@35a
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z

    #@35d
    move-result v0

    #@35e
    if-eqz v0, :cond_2b

    #@360
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@362
    if-nez v0, :cond_2b

    #@364
    .line 1087
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    #@367
    .line 1090
    :cond_2b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    #@36a
    .line 1091
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@36c
    if-eqz v0, :cond_2e

    #@36e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@370
    if-eqz v0, :cond_2e

    #@372
    .line 1092
    const/4 v6, 0x0

    #@373
    .line 1093
    .local v6, "anim":Landroid/view/animation/Animation;
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@375
    if-lez v0, :cond_2c

    #@377
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@379
    if-eqz v0, :cond_2f

    #@37b
    .line 1097
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_2c
    :goto_8
    if-eqz v6, :cond_2d

    #@37d
    .line 1098
    move-object v8, p1

    #@37e
    .line 1099
    .local v8, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@380
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@382
    .line 1100
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@384
    .line 1101
    iget-object v10, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@386
    .line 1102
    .local v10, "viewToAnimate":Landroid/view/View;
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$5;

    #@388
    invoke-direct {v0, p0, v10, v6, v8}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    #@38b
    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@38e
    .line 1114
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@390
    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@393
    .line 1116
    .end local v8    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v10    # "viewToAnimate":Landroid/view/View;
    :cond_2d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@395
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@397
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@39a
    .line 1118
    :cond_2e
    const/4 v0, 0x0

    #@39b
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@39d
    .line 1119
    const/4 v0, 0x0

    #@39e
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@3a0
    .line 1120
    const/4 v0, 0x0

    #@3a1
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@3a3
    goto/16 :goto_7

    #@3a5
    .line 1094
    .restart local v6    # "anim":Landroid/view/animation/Animation;
    :cond_2f
    const/4 v0, 0x0

    #@3a6
    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@3a9
    move-result-object v6

    #@3aa
    .local v6, "anim":Landroid/view/animation/Animation;
    goto :goto_8

    #@3ab
    .line 1145
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_30
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@3ad
    if-eqz v0, :cond_31

    #@3af
    const-string/jumbo v0, "FragmentManager"

    #@3b2
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b7
    const-string/jumbo v2, "movefrom CREATED: "

    #@3ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bd
    move-result-object v1

    #@3be
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c1
    move-result-object v1

    #@3c2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c5
    move-result-object v1

    #@3c6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3c9
    .line 1146
    :cond_31
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@3cb
    if-nez v0, :cond_32

    #@3cd
    .line 1147
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    #@3d0
    .line 1150
    :cond_32
    const/4 v0, 0x0

    #@3d1
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3d3
    .line 1151
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    #@3d6
    .line 1152
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3d8
    if-nez v0, :cond_33

    #@3da
    .line 1153
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@3dc
    new-instance v1, Ljava/lang/StringBuilder;

    #@3de
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e1
    const-string/jumbo v2, "Fragment "

    #@3e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e7
    move-result-object v1

    #@3e8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3eb
    move-result-object v1

    #@3ec
    .line 1154
    const-string/jumbo v2, " did not call through to super.onDetach()"

    #@3ef
    .line 1153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f2
    move-result-object v1

    #@3f3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f6
    move-result-object v1

    #@3f7
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3fa
    throw v0

    #@3fb
    .line 1156
    :cond_33
    if-nez p5, :cond_6

    #@3fd
    .line 1157
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@3ff
    if-nez v0, :cond_34

    #@401
    .line 1158
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    #@404
    goto/16 :goto_0

    #@406
    .line 1160
    :cond_34
    const/4 v0, 0x0

    #@407
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@409
    .line 1161
    const/4 v0, 0x0

    #@40a
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@40c
    .line 1162
    const/4 v0, 0x0

    #@40d
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@40f
    .line 1163
    const/4 v0, 0x0

    #@410
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@412
    goto/16 :goto_0

    #@414
    .line 941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@422
    .line 1063
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    #@0
    .prologue
    .line 1981
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1980
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 2184
    const-string/jumbo v0, "fragment"

    #@7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2185
    return-object v4

    #@e
    .line 2188
    :cond_0
    const-string/jumbo v0, "class"

    #@11
    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    .line 2189
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    #@17
    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v6

    #@1b
    .line 2190
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_1

    #@1d
    .line 2191
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    .line 2193
    :cond_1
    invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@24
    move-result v9

    #@25
    .line 2194
    .local v9, "id":I
    const/4 v0, 0x2

    #@26
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    .line 2195
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@2d
    .line 2197
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2f
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@32
    move-result-object v0

    #@33
    invoke-static {v0, v8}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_2

    #@39
    .line 2200
    return-object v4

    #@3a
    .line 2203
    :cond_2
    if-eqz p1, :cond_3

    #@3c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3f
    move-result v7

    #@40
    .line 2204
    .local v7, "containerId":I
    :goto_0
    if-ne v7, v5, :cond_4

    #@42
    if-ne v9, v5, :cond_4

    #@44
    if-nez v10, :cond_4

    #@46
    .line 2205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 2206
    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    #@58
    .line 2205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v0

    #@68
    .line 2203
    .end local v7    # "containerId":I
    :cond_3
    const/4 v7, 0x0

    #@69
    .restart local v7    # "containerId":I
    goto :goto_0

    #@6a
    .line 2212
    :cond_4
    if-eq v9, v5, :cond_9

    #@6c
    invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    #@6f
    move-result-object v1

    #@70
    .line 2213
    :goto_1
    if-nez v1, :cond_5

    #@72
    if-eqz v10, :cond_5

    #@74
    .line 2214
    invoke-virtual {p0, v10}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@77
    move-result-object v1

    #@78
    .line 2216
    :cond_5
    if-nez v1, :cond_6

    #@7a
    if-eq v7, v5, :cond_6

    #@7c
    .line 2217
    invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    #@7f
    move-result-object v1

    #@80
    .line 2220
    :cond_6
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@82
    if-eqz v0, :cond_7

    #@84
    const-string/jumbo v0, "FragmentManager"

    #@87
    new-instance v4, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v5, "onCreateView: id=0x"

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    .line 2221
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    .line 2220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    .line 2221
    const-string/jumbo v5, " fname="

    #@9e
    .line 2220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    .line 2222
    const-string/jumbo v5, " existing="

    #@a9
    .line 2220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    .line 2223
    :cond_7
    if-nez v1, :cond_b

    #@ba
    .line 2224
    invoke-static {p3, v8}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@bd
    move-result-object v1

    #@be
    .line 2225
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@c0
    .line 2226
    if-eqz v9, :cond_a

    #@c2
    move v0, v9

    #@c3
    :goto_2
    iput v0, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@c5
    .line 2227
    iput v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@c7
    .line 2228
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@c9
    .line 2229
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@cb
    .line 2230
    iput-object p0, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@cd
    .line 2231
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@cf
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@d2
    move-result-object v0

    #@d3
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@d5
    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@d8
    .line 2232
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@db
    .line 2255
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_8
    :goto_3
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@dd
    if-ge v0, v2, :cond_d

    #@df
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@e1
    if-eqz v0, :cond_d

    #@e3
    move-object v0, p0

    #@e4
    move v4, v3

    #@e5
    move v5, v3

    #@e6
    .line 2256
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@e9
    .line 2261
    :goto_4
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@eb
    if-nez v0, :cond_e

    #@ed
    .line 2262
    new-instance v0, Ljava/lang/IllegalStateException;

    #@ef
    new-instance v2, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v3, "Fragment "

    #@f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v2

    #@ff
    .line 2263
    const-string/jumbo v3, " did not create a view."

    #@102
    .line 2262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v2

    #@106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v2

    #@10a
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v0

    #@10e
    .line 2212
    :cond_9
    const/4 v1, 0x0

    #@10f
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_1

    #@111
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    :cond_a
    move v0, v7

    #@112
    .line 2226
    goto :goto_2

    #@113
    .line 2234
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_b
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@115
    if-eqz v0, :cond_c

    #@117
    .line 2237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@119
    new-instance v2, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@121
    move-result-object v3

    #@122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v2

    #@126
    .line 2238
    const-string/jumbo v3, ": Duplicate id 0x"

    #@129
    .line 2237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v2

    #@12d
    .line 2238
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@130
    move-result-object v3

    #@131
    .line 2237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v2

    #@135
    .line 2239
    const-string/jumbo v3, ", tag "

    #@138
    .line 2237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v2

    #@140
    .line 2239
    const-string/jumbo v3, ", or parent id 0x"

    #@143
    .line 2237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v2

    #@147
    .line 2239
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14a
    move-result-object v3

    #@14b
    .line 2237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v2

    #@14f
    .line 2240
    const-string/jumbo v3, " with another fragment for "

    #@152
    .line 2237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v2

    #@156
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v2

    #@15a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15d
    move-result-object v2

    #@15e
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@161
    throw v0

    #@162
    .line 2244
    :cond_c
    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@164
    .line 2248
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@166
    if-nez v0, :cond_8

    #@168
    .line 2249
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@16a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@16d
    move-result-object v0

    #@16e
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@170
    invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@173
    goto/16 :goto_3

    #@175
    .line 2258
    :cond_d
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    #@178
    goto/16 :goto_4

    #@17a
    .line 2265
    :cond_e
    if-eqz v9, :cond_f

    #@17c
    .line 2266
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@17e
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    #@181
    .line 2268
    :cond_f
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@183
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@186
    move-result-object v0

    #@187
    if-nez v0, :cond_10

    #@189
    .line 2269
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@18b
    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@18e
    .line 2271
    :cond_10
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@190
    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 884
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 885
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 887
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@c
    .line 888
    return-void

    #@d
    .line 890
    :cond_0
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@f
    .line 891
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move v4, v3

    #@14
    move v5, v3

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@18
    .line 883
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 2

    #@0
    .prologue
    .line 540
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    #@5
    .line 544
    const/4 v1, 0x0

    #@6
    .line 540
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 539
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 572
    if-gez p1, :cond_0

    #@3
    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Bad id: "

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
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 575
    :cond_0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    #@1f
    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    #@22
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@25
    .line 571
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 556
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$3;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    #@5
    .line 560
    const/4 v1, 0x0

    #@6
    .line 556
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 555
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    #@0
    .prologue
    .line 549
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 550
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 551
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, -0x1

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 584
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 585
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 586
    if-gez p1, :cond_0

    #@8
    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Bad id: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 589
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@24
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@27
    move-result-object v0

    #@28
    const/4 v1, 0x0

    #@29
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 565
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 566
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 567
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    const/4 v1, -0x1

    #@d
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1603
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v9, :cond_0

    #@4
    .line 1604
    const/4 v9, 0x0

    #@5
    return v9

    #@6
    .line 1606
    :cond_0
    if-nez p2, :cond_2

    #@8
    if-gez p3, :cond_2

    #@a
    and-int/lit8 v9, p4, 0x1

    #@c
    if-nez v9, :cond_2

    #@e
    .line 1607
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v9

    #@14
    add-int/lit8 v5, v9, -0x1

    #@16
    .line 1608
    .local v5, "last":I
    if-gez v5, :cond_1

    #@18
    .line 1609
    const/4 v9, 0x0

    #@19
    return v9

    #@1a
    .line 1611
    :cond_1
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    #@22
    .line 1612
    .local v1, "bss":Landroid/support/v4/app/BackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    #@24
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@27
    .line 1613
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    #@29
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@2c
    .line 1614
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {v1, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@2f
    .line 1615
    const/4 v9, 0x1

    #@30
    const/4 v10, 0x0

    #@31
    invoke-virtual {v1, v9, v10, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@34
    .line 1616
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@37
    .line 1672
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    .end local v5    # "last":I
    :goto_0
    const/4 v9, 0x1

    #@38
    return v9

    #@39
    .line 1618
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    :cond_2
    const/4 v4, -0x1

    #@3a
    .line 1619
    .local v4, "index":I
    if-nez p2, :cond_3

    #@3c
    if-ltz p3, :cond_a

    #@3e
    .line 1622
    :cond_3
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v9

    #@44
    add-int/lit8 v4, v9, -0x1

    #@46
    .line 1623
    :goto_1
    if-ltz v4, :cond_4

    #@48
    .line 1624
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    #@50
    .line 1625
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_5

    #@52
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v9

    #@5a
    if-eqz v9, :cond_5

    #@5c
    .line 1633
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_4
    if-gez v4, :cond_7

    #@5e
    .line 1634
    const/4 v9, 0x0

    #@5f
    return v9

    #@60
    .line 1628
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_5
    if-ltz p3, :cond_6

    #@62
    iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@64
    if-eq p3, v9, :cond_4

    #@66
    .line 1631
    :cond_6
    add-int/lit8 v4, v4, -0x1

    #@68
    goto :goto_1

    #@69
    .line 1636
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_7
    and-int/lit8 v9, p4, 0x1

    #@6b
    if-eqz v9, :cond_a

    #@6d
    .line 1637
    add-int/lit8 v4, v4, -0x1

    #@6f
    .line 1639
    :goto_2
    if-ltz v4, :cond_a

    #@71
    .line 1640
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@73
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v1

    #@77
    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    #@79
    .line 1641
    .restart local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_8

    #@7b
    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v9

    #@83
    if-nez v9, :cond_9

    #@85
    .line 1642
    :cond_8
    if-ltz p3, :cond_a

    #@87
    iget v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@89
    if-ne p3, v9, :cond_a

    #@8b
    .line 1643
    :cond_9
    add-int/lit8 v4, v4, -0x1

    #@8d
    .line 1644
    goto :goto_2

    #@8e
    .line 1650
    .end local v1    # "bss":Landroid/support/v4/app/BackStackRecord;
    :cond_a
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v9

    #@94
    add-int/lit8 v9, v9, -0x1

    #@96
    if-ne v4, v9, :cond_b

    #@98
    .line 1651
    const/4 v9, 0x0

    #@99
    return v9

    #@9a
    .line 1654
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    #@9c
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@9f
    .line 1655
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@a1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@a4
    move-result v9

    #@a5
    add-int/lit8 v3, v9, -0x1

    #@a7
    .local v3, "i":I
    :goto_3
    if-le v3, v4, :cond_c

    #@a9
    .line 1656
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@ab
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@ae
    move-result-object v9

    #@af
    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    #@b1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4
    .line 1655
    add-int/lit8 v3, v3, -0x1

    #@b6
    goto :goto_3

    #@b7
    .line 1658
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@ba
    move-result v9

    #@bb
    add-int/lit8 v0, v9, -0x1

    #@bd
    .line 1659
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    #@bf
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@c2
    .line 1660
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    #@c4
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@c7
    .line 1661
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/Fragment;>;"
    const/4 v3, 0x0

    #@c8
    :goto_4
    if-gt v3, v0, :cond_d

    #@ca
    .line 1662
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@cd
    move-result-object v9

    #@ce
    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    #@d0
    invoke-virtual {v9, v2, v6}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@d3
    .line 1661
    add-int/lit8 v3, v3, 0x1

    #@d5
    goto :goto_4

    #@d6
    .line 1664
    :cond_d
    const/4 v7, 0x0

    #@d7
    .line 1665
    .local v7, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    const/4 v3, 0x0

    #@d8
    .end local v7    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :goto_5
    if-gt v3, v0, :cond_10

    #@da
    .line 1666
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@dc
    if-eqz v9, :cond_e

    #@de
    const-string/jumbo v9, "FragmentManager"

    #@e1
    new-instance v10, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v11, "Popping back stack state: "

    #@e9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v10

    #@ed
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f0
    move-result-object v11

    #@f1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v10

    #@f5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v10

    #@f9
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@fc
    .line 1667
    :cond_e
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ff
    move-result-object v9

    #@100
    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    #@102
    if-ne v3, v0, :cond_f

    #@104
    const/4 v10, 0x1

    #@105
    :goto_6
    invoke-virtual {v9, v10, v7, v2, v6}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    #@108
    move-result-object v7

    #@109
    .line 1665
    .local v7, "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    add-int/lit8 v3, v3, 0x1

    #@10b
    goto :goto_5

    #@10c
    .line 1667
    .end local v7    # "state":Landroid/support/v4/app/BackStackRecord$TransitionState;
    :cond_f
    const/4 v10, 0x0

    #@10d
    goto :goto_6

    #@10e
    .line 1670
    :cond_10
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@111
    goto/16 :goto_0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 619
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Fragment "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 621
    const-string/jumbo v2, " is not currently in the FragmentManager"

    #@19
    .line 620
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@27
    .line 623
    :cond_0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    #@29
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c
    .line 618
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1283
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "FragmentManager"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "remove: "

    #@11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v3, " nesting="

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1284
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_6

    #@33
    const/4 v6, 0x0

    #@34
    .line 1285
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@36
    if-eqz v0, :cond_1

    #@38
    if-eqz v6, :cond_5

    #@3a
    .line 1286
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 1287
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@43
    .line 1289
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@45
    if-eqz v0, :cond_3

    #@47
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@49
    if-eqz v0, :cond_3

    #@4b
    .line 1290
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4d
    .line 1292
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@4f
    .line 1293
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@51
    .line 1294
    if-eqz v6, :cond_4

    #@53
    move v2, v5

    #@54
    :cond_4
    move-object v0, p0

    #@55
    move-object v1, p1

    #@56
    move v3, p2

    #@57
    move v4, p3

    #@58
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@5b
    .line 1282
    :cond_5
    return-void

    #@5c
    .line 1284
    .end local v6    # "inactive":Z
    :cond_6
    const/4 v6, 0x1

    #@5d
    .restart local v6    # "inactive":Z
    goto :goto_0
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 613
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    .line 611
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    #@0
    .prologue
    .line 1586
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1587
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 1588
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    #@15
    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    #@18
    .line 1587
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1585
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "nonConfig":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 1862
    if-nez p1, :cond_0

    #@4
    return-void

    #@5
    :cond_0
    move-object v2, p1

    #@6
    .line 1863
    check-cast v2, Landroid/support/v4/app/FragmentManagerState;

    #@8
    .line 1864
    .local v2, "fms":Landroid/support/v4/app/FragmentManagerState;
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@a
    if-nez v7, :cond_1

    #@c
    return-void

    #@d
    .line 1868
    :cond_1
    if-eqz p2, :cond_4

    #@f
    .line 1869
    const/4 v4, 0x0

    #@10
    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@13
    move-result v7

    #@14
    if-ge v4, v7, :cond_4

    #@16
    .line 1870
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/support/v4/app/Fragment;

    #@1c
    .line 1871
    .local v1, "f":Landroid/support/v4/app/Fragment;
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1e
    if-eqz v7, :cond_2

    #@20
    const-string/jumbo v7, "FragmentManager"

    #@23
    new-instance v8, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v9, "restoreAllState: re-attaching retained "

    #@2b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1872
    :cond_2
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@3c
    iget v8, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3e
    aget-object v3, v7, v8

    #@40
    .line 1873
    .local v3, "fs":Landroid/support/v4/app/FragmentState;
    iput-object v1, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@42
    .line 1874
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@44
    .line 1875
    iput v11, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@46
    .line 1876
    iput-boolean v11, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@48
    .line 1877
    iput-boolean v11, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@4a
    .line 1878
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@4c
    .line 1879
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@4e
    if-eqz v7, :cond_3

    #@50
    .line 1880
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@52
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@54
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@5f
    .line 1881
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@61
    .line 1882
    const-string/jumbo v8, "android:view_state"

    #@64
    .line 1881
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@67
    move-result-object v7

    #@68
    iput-object v7, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@6a
    .line 1883
    iget-object v7, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@6c
    iput-object v7, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@6e
    .line 1869
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@70
    goto :goto_0

    #@71
    .line 1890
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "fs":Landroid/support/v4/app/FragmentState;
    .end local v4    # "i":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    #@73
    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@75
    array-length v8, v8

    #@76
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@79
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@7b
    .line 1891
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@7d
    if-eqz v7, :cond_5

    #@7f
    .line 1892
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@84
    .line 1894
    :cond_5
    const/4 v4, 0x0

    #@85
    .restart local v4    # "i":I
    :goto_1
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@87
    array-length v7, v7

    #@88
    if-ge v4, v7, :cond_a

    #@8a
    .line 1895
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@8c
    aget-object v3, v7, v4

    #@8e
    .line 1896
    .restart local v3    # "fs":Landroid/support/v4/app/FragmentState;
    if-eqz v3, :cond_7

    #@90
    .line 1897
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@92
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@94
    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    #@97
    move-result-object v1

    #@98
    .line 1898
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@9a
    if-eqz v7, :cond_6

    #@9c
    const-string/jumbo v7, "FragmentManager"

    #@9f
    new-instance v8, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v9, "restoreAllState: active #"

    #@a7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v8

    #@ab
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    const-string/jumbo v9, ": "

    #@b2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v8

    #@b6
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v8

    #@be
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    .line 1899
    :cond_6
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@c3
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c6
    .line 1903
    iput-object v10, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@c8
    .line 1894
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@ca
    goto :goto_1

    #@cb
    .line 1905
    :cond_7
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@cd
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d0
    .line 1906
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@d2
    if-nez v7, :cond_8

    #@d4
    .line 1907
    new-instance v7, Ljava/util/ArrayList;

    #@d6
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@d9
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@db
    .line 1909
    :cond_8
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@dd
    if-eqz v7, :cond_9

    #@df
    const-string/jumbo v7, "FragmentManager"

    #@e2
    new-instance v8, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v9, "restoreAllState: avail #"

    #@ea
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v8

    #@ee
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v8

    #@f2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v8

    #@f6
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f9
    .line 1910
    :cond_9
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@fb
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fe
    move-result-object v8

    #@ff
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@102
    goto :goto_2

    #@103
    .line 1915
    .end local v3    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_a
    if-eqz p2, :cond_d

    #@105
    .line 1916
    const/4 v4, 0x0

    #@106
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@109
    move-result v7

    #@10a
    if-ge v4, v7, :cond_d

    #@10c
    .line 1917
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10f
    move-result-object v1

    #@110
    check-cast v1, Landroid/support/v4/app/Fragment;

    #@112
    .line 1918
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    iget v7, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@114
    if-ltz v7, :cond_b

    #@116
    .line 1919
    iget v7, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@118
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@11a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@11d
    move-result v8

    #@11e
    if-ge v7, v8, :cond_c

    #@120
    .line 1920
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@122
    iget v8, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@124
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@127
    move-result-object v7

    #@128
    check-cast v7, Landroid/support/v4/app/Fragment;

    #@12a
    iput-object v7, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@12c
    .line 1916
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    #@12e
    goto :goto_3

    #@12f
    .line 1922
    :cond_c
    const-string/jumbo v7, "FragmentManager"

    #@132
    new-instance v8, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v9, "Re-attaching retained fragment "

    #@13a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v8

    #@13e
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v8

    #@142
    .line 1923
    const-string/jumbo v9, " target no longer exists: "

    #@145
    .line 1922
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v8

    #@149
    .line 1923
    iget v9, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@14b
    .line 1922
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v8

    #@14f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v8

    #@153
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@156
    .line 1924
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@158
    goto :goto_4

    #@159
    .line 1931
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_d
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@15b
    if-eqz v7, :cond_11

    #@15d
    .line 1932
    new-instance v7, Ljava/util/ArrayList;

    #@15f
    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@161
    array-length v8, v8

    #@162
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@165
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@167
    .line 1933
    const/4 v4, 0x0

    #@168
    :goto_5
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@16a
    array-length v7, v7

    #@16b
    if-ge v4, v7, :cond_12

    #@16d
    .line 1934
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16f
    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@171
    aget v8, v8, v4

    #@173
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@176
    move-result-object v1

    #@177
    check-cast v1, Landroid/support/v4/app/Fragment;

    #@179
    .line 1935
    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_e

    #@17b
    .line 1936
    new-instance v7, Ljava/lang/IllegalStateException;

    #@17d
    .line 1937
    new-instance v8, Ljava/lang/StringBuilder;

    #@17f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@182
    const-string/jumbo v9, "No instantiated fragment for index #"

    #@185
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v8

    #@189
    iget-object v9, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@18b
    aget v9, v9, v4

    #@18d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@190
    move-result-object v8

    #@191
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v8

    #@195
    .line 1936
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@198
    invoke-direct {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@19b
    .line 1939
    :cond_e
    const/4 v7, 0x1

    #@19c
    iput-boolean v7, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@19e
    .line 1940
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1a0
    if-eqz v7, :cond_f

    #@1a2
    const-string/jumbo v7, "FragmentManager"

    #@1a5
    new-instance v8, Ljava/lang/StringBuilder;

    #@1a7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1aa
    const-string/jumbo v9, "restoreAllState: added #"

    #@1ad
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v8

    #@1b1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v8

    #@1b5
    const-string/jumbo v9, ": "

    #@1b8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v8

    #@1bc
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1bf
    move-result-object v8

    #@1c0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c3
    move-result-object v8

    #@1c4
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c7
    .line 1941
    :cond_f
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1c9
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1cc
    move-result v7

    #@1cd
    if-eqz v7, :cond_10

    #@1cf
    .line 1942
    new-instance v7, Ljava/lang/IllegalStateException;

    #@1d1
    const-string/jumbo v8, "Already added!"

    #@1d4
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d7
    throw v7

    #@1d8
    .line 1944
    :cond_10
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1da
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1dd
    .line 1933
    add-int/lit8 v4, v4, 0x1

    #@1df
    goto :goto_5

    #@1e0
    .line 1947
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_11
    iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1e2
    .line 1951
    :cond_12
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1e4
    if-eqz v7, :cond_15

    #@1e6
    .line 1952
    new-instance v7, Ljava/util/ArrayList;

    #@1e8
    iget-object v8, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1ea
    array-length v8, v8

    #@1eb
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@1ee
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1f0
    .line 1953
    const/4 v4, 0x0

    #@1f1
    :goto_6
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1f3
    array-length v7, v7

    #@1f4
    if-ge v4, v7, :cond_16

    #@1f6
    .line 1954
    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1f8
    aget-object v7, v7, v4

    #@1fa
    invoke-virtual {v7, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    #@1fd
    move-result-object v0

    #@1fe
    .line 1955
    .local v0, "bse":Landroid/support/v4/app/BackStackRecord;
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@200
    if-eqz v7, :cond_13

    #@202
    .line 1956
    const-string/jumbo v7, "FragmentManager"

    #@205
    new-instance v8, Ljava/lang/StringBuilder;

    #@207
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@20a
    const-string/jumbo v9, "restoreAllState: back stack #"

    #@20d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v8

    #@211
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@214
    move-result-object v8

    #@215
    .line 1957
    const-string/jumbo v9, " (index "

    #@218
    .line 1956
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v8

    #@21c
    .line 1957
    iget v9, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@21e
    .line 1956
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@221
    move-result-object v8

    #@222
    .line 1957
    const-string/jumbo v9, "): "

    #@225
    .line 1956
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v8

    #@229
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v8

    #@22d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@230
    move-result-object v8

    #@231
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@234
    .line 1958
    new-instance v5, Landroid/support/v4/util/LogWriter;

    #@236
    const-string/jumbo v7, "FragmentManager"

    #@239
    invoke-direct {v5, v7}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@23c
    .line 1959
    .local v5, "logw":Landroid/support/v4/util/LogWriter;
    new-instance v6, Ljava/io/PrintWriter;

    #@23e
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@241
    .line 1960
    .local v6, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v7, "  "

    #@244
    invoke-virtual {v0, v7, v6, v11}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@247
    .line 1962
    .end local v5    # "logw":Landroid/support/v4/util/LogWriter;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_13
    iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@249
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24c
    .line 1963
    iget v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@24e
    if-ltz v7, :cond_14

    #@250
    .line 1964
    iget v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@252
    invoke-virtual {p0, v7, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    #@255
    .line 1953
    :cond_14
    add-int/lit8 v4, v4, 0x1

    #@257
    goto :goto_6

    #@258
    .line 1968
    .end local v0    # "bse":Landroid/support/v4/app/BackStackRecord;
    :cond_15
    iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@25a
    .line 1859
    :cond_16
    return-void
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1676
    const/4 v1, 0x0

    #@1
    .line 1677
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3
    if-eqz v3, :cond_3

    #@5
    .line 1678
    const/4 v2, 0x0

    #@6
    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v2, v3, :cond_3

    #@e
    .line 1679
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    .line 1680
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    #@18
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 1681
    if-nez v1, :cond_0

    #@1e
    .line 1682
    new-instance v1, Ljava/util/ArrayList;

    #@20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 1684
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 1685
    const/4 v3, 0x1

    #@27
    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@29
    .line 1686
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@2f
    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    #@31
    :goto_1
    iput v3, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@33
    .line 1687
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@35
    if-eqz v3, :cond_1

    #@37
    const-string/jumbo v3, "FragmentManager"

    #@3a
    new-instance v4, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v5, "retainNonConfig: keeping retained "

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 1678
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_0

    #@54
    .line 1686
    :cond_2
    const/4 v3, -0x1

    #@55
    goto :goto_1

    #@56
    .line 1691
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@4
    .line 1748
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    #@6
    if-eqz v9, :cond_0

    #@8
    .line 1758
    const/4 v9, 0x1

    #@9
    iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@b
    .line 1761
    :cond_0
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@d
    if-eqz v9, :cond_1

    #@f
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v9

    #@15
    if-gtz v9, :cond_2

    #@17
    .line 1762
    :cond_1
    return-object v12

    #@18
    .line 1766
    :cond_2
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 1767
    .local v0, "N":I
    new-array v1, v0, [Landroid/support/v4/app/FragmentState;

    #@20
    .line 1768
    .local v1, "active":[Landroid/support/v4/app/FragmentState;
    const/4 v7, 0x0

    #@21
    .line 1769
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    #@22
    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_9

    #@24
    .line 1770
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/support/v4/app/Fragment;

    #@2c
    .line 1771
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_7

    #@2e
    .line 1772
    iget v9, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    #@30
    if-gez v9, :cond_3

    #@32
    .line 1773
    new-instance v9, Ljava/lang/IllegalStateException;

    #@34
    .line 1774
    new-instance v10, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v11, "Failure saving state: active "

    #@3c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v10

    #@40
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    .line 1775
    const-string/jumbo v11, " has cleared index: "

    #@47
    .line 1774
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v10

    #@4b
    .line 1775
    iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    #@4d
    .line 1774
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v10

    #@55
    .line 1773
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@58
    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@5b
    .line 1778
    :cond_3
    const/4 v7, 0x1

    #@5c
    .line 1780
    new-instance v6, Landroid/support/v4/app/FragmentState;

    #@5e
    invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    #@61
    .line 1781
    .local v6, "fs":Landroid/support/v4/app/FragmentState;
    aput-object v6, v1, v8

    #@63
    .line 1783
    iget v9, v4, Landroid/support/v4/app/Fragment;->mState:I

    #@65
    if-lez v9, :cond_8

    #@67
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@69
    if-nez v9, :cond_8

    #@6b
    .line 1784
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    #@6e
    move-result-object v9

    #@6f
    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@71
    .line 1786
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@73
    if-eqz v9, :cond_6

    #@75
    .line 1787
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@77
    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    #@79
    if-gez v9, :cond_4

    #@7b
    .line 1788
    new-instance v9, Ljava/lang/IllegalStateException;

    #@7d
    .line 1789
    new-instance v10, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v11, "Failure saving state: "

    #@85
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v10

    #@89
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v10

    #@8d
    .line 1790
    const-string/jumbo v11, " has target not in fragment manager: "

    #@90
    .line 1789
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v10

    #@94
    .line 1790
    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@96
    .line 1789
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v10

    #@9a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v10

    #@9e
    .line 1788
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a1
    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@a4
    .line 1792
    :cond_4
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@a6
    if-nez v9, :cond_5

    #@a8
    .line 1793
    new-instance v9, Landroid/os/Bundle;

    #@aa
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@ad
    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@af
    .line 1795
    :cond_5
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@b1
    .line 1796
    const-string/jumbo v10, "android:target_state"

    #@b4
    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@b6
    .line 1795
    invoke-virtual {p0, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    #@b9
    .line 1797
    iget v9, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@bb
    if-eqz v9, :cond_6

    #@bd
    .line 1798
    iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@bf
    .line 1799
    const-string/jumbo v10, "android:target_req_state"

    #@c2
    .line 1800
    iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@c4
    .line 1798
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c7
    .line 1808
    :cond_6
    :goto_1
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@c9
    if-eqz v9, :cond_7

    #@cb
    const-string/jumbo v9, "FragmentManager"

    #@ce
    new-instance v10, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v11, "Saved state of "

    #@d6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v10

    #@da
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v10

    #@de
    const-string/jumbo v11, ": "

    #@e1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v10

    #@e5
    .line 1809
    iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@e7
    .line 1808
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v10

    #@eb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v10

    #@ef
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f2
    .line 1769
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@f4
    goto/16 :goto_0

    #@f6
    .line 1805
    .restart local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_8
    iget-object v9, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@f8
    iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@fa
    goto :goto_1

    #@fb
    .line 1813
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    .end local v6    # "fs":Landroid/support/v4/app/FragmentState;
    :cond_9
    if-nez v7, :cond_b

    #@fd
    .line 1814
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@ff
    if-eqz v9, :cond_a

    #@101
    const-string/jumbo v9, "FragmentManager"

    #@104
    const-string/jumbo v10, "saveAllState: no fragments!"

    #@107
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10a
    .line 1815
    :cond_a
    return-object v12

    #@10b
    .line 1818
    :cond_b
    const/4 v2, 0x0

    #@10c
    .line 1819
    .local v2, "added":[I
    const/4 v3, 0x0

    #@10d
    .line 1822
    .local v3, "backStack":[Landroid/support/v4/app/BackStackState;
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10f
    if-eqz v9, :cond_e

    #@111
    .line 1823
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@113
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@116
    move-result v0

    #@117
    .line 1824
    if-lez v0, :cond_e

    #@119
    .line 1825
    new-array v2, v0, [I

    #@11b
    .line 1826
    .local v2, "added":[I
    const/4 v8, 0x0

    #@11c
    :goto_2
    if-ge v8, v0, :cond_e

    #@11e
    .line 1827
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@120
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@123
    move-result-object v9

    #@124
    check-cast v9, Landroid/support/v4/app/Fragment;

    #@126
    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    #@128
    aput v9, v2, v8

    #@12a
    .line 1828
    aget v9, v2, v8

    #@12c
    if-gez v9, :cond_c

    #@12e
    .line 1829
    new-instance v9, Ljava/lang/IllegalStateException;

    #@130
    .line 1830
    new-instance v10, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v11, "Failure saving state: active "

    #@138
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v10

    #@13c
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@13e
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@141
    move-result-object v11

    #@142
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v10

    #@146
    .line 1831
    const-string/jumbo v11, " has cleared index: "

    #@149
    .line 1830
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v10

    #@14d
    .line 1831
    aget v11, v2, v8

    #@14f
    .line 1830
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@152
    move-result-object v10

    #@153
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v10

    #@157
    .line 1829
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15a
    invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@15d
    .line 1833
    :cond_c
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@15f
    if-eqz v9, :cond_d

    #@161
    const-string/jumbo v9, "FragmentManager"

    #@164
    new-instance v10, Ljava/lang/StringBuilder;

    #@166
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v11, "saveAllState: adding fragment #"

    #@16c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v10

    #@170
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@173
    move-result-object v10

    #@174
    .line 1834
    const-string/jumbo v11, ": "

    #@177
    .line 1833
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v10

    #@17b
    .line 1834
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@17d
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@180
    move-result-object v11

    #@181
    .line 1833
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v10

    #@185
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v10

    #@189
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@18c
    .line 1826
    :cond_d
    add-int/lit8 v8, v8, 0x1

    #@18e
    goto :goto_2

    #@18f
    .line 1840
    .end local v2    # "added":[I
    :cond_e
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@191
    if-eqz v9, :cond_10

    #@193
    .line 1841
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@195
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@198
    move-result v0

    #@199
    .line 1842
    if-lez v0, :cond_10

    #@19b
    .line 1843
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    #@19d
    .line 1844
    .local v3, "backStack":[Landroid/support/v4/app/BackStackState;
    const/4 v8, 0x0

    #@19e
    :goto_3
    if-ge v8, v0, :cond_10

    #@1a0
    .line 1845
    new-instance v10, Landroid/support/v4/app/BackStackState;

    #@1a2
    iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1a4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a7
    move-result-object v9

    #@1a8
    check-cast v9, Landroid/support/v4/app/BackStackRecord;

    #@1aa
    invoke-direct {v10, v9}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    #@1ad
    aput-object v10, v3, v8

    #@1af
    .line 1846
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1b1
    if-eqz v9, :cond_f

    #@1b3
    const-string/jumbo v9, "FragmentManager"

    #@1b6
    new-instance v10, Ljava/lang/StringBuilder;

    #@1b8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1bb
    const-string/jumbo v11, "saveAllState: adding back stack #"

    #@1be
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v10

    #@1c2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v10

    #@1c6
    .line 1847
    const-string/jumbo v11, ": "

    #@1c9
    .line 1846
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v10

    #@1cd
    .line 1847
    iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1cf
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d2
    move-result-object v11

    #@1d3
    .line 1846
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v10

    #@1d7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1da
    move-result-object v10

    #@1db
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1de
    .line 1844
    :cond_f
    add-int/lit8 v8, v8, 0x1

    #@1e0
    goto :goto_3

    #@1e1
    .line 1852
    .end local v3    # "backStack":[Landroid/support/v4/app/BackStackState;
    :cond_10
    new-instance v5, Landroid/support/v4/app/FragmentManagerState;

    #@1e3
    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    #@1e6
    .line 1853
    .local v5, "fms":Landroid/support/v4/app/FragmentManagerState;
    iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@1e8
    .line 1854
    iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@1ea
    .line 1855
    iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1ec
    .line 1856
    return-object v5
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1711
    const/4 v0, 0x0

    #@2
    .line 1713
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1714
    new-instance v1, Landroid/os/Bundle;

    #@8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@d
    .line 1716
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@f
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    #@12
    .line 1717
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@14
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1718
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1c
    .line 1719
    .local v0, "result":Landroid/os/Bundle;
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1e
    .line 1722
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1723
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    #@25
    .line 1725
    :cond_2
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1726
    if-nez v0, :cond_3

    #@2b
    .line 1727
    new-instance v0, Landroid/os/Bundle;

    #@2d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@30
    .line 1730
    :cond_3
    const-string/jumbo v1, "android:view_state"

    #@33
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@35
    .line 1729
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@38
    .line 1732
    :cond_4
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@3a
    if-nez v1, :cond_6

    #@3c
    .line 1733
    if-nez v0, :cond_5

    #@3e
    .line 1734
    new-instance v0, Landroid/os/Bundle;

    #@40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@43
    .line 1737
    :cond_5
    const-string/jumbo v1, "android:user_visible_hint"

    #@46
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4b
    .line 1740
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 651
    iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3
    if-gez v2, :cond_0

    #@5
    .line 652
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "Fragment "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 653
    const-string/jumbo v4, " is not currently in the FragmentManager"

    #@1a
    .line 652
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@28
    .line 655
    :cond_0
    iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@2a
    if-lez v2, :cond_2

    #@2c
    .line 656
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    #@2f
    move-result-object v0

    #@30
    .line 657
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    #@32
    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    #@34
    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    #@37
    :cond_1
    return-object v1

    #@38
    .line 659
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1695
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1696
    return-void

    #@6
    .line 1698
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@8
    if-nez v0, :cond_2

    #@a
    .line 1699
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@11
    .line 1703
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@13
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@18
    .line 1704
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v0

    #@1e
    if-lez v0, :cond_1

    #@20
    .line 1705
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@22
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@24
    .line 1706
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@26
    .line 1694
    :cond_1
    return-void

    #@27
    .line 1701
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@2c
    goto :goto_0
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/support/v4/app/BackStackRecord;

    #@0
    .prologue
    .line 1494
    monitor-enter p0

    #@1
    .line 1495
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1496
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@c
    .line 1498
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    .line 1499
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    #@14
    .line 1500
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@16
    if-eqz v1, :cond_1

    #@18
    const-string/jumbo v1, "FragmentManager"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Setting back stack index "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " to "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 1501
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :goto_0
    monitor-exit p0

    #@43
    .line 1493
    return-void

    #@44
    .line 1503
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    #@46
    .line 1504
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@48
    const/4 v2, 0x0

    #@49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 1505
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@4e
    if-nez v1, :cond_3

    #@50
    .line 1506
    new-instance v1, Ljava/util/ArrayList;

    #@52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@55
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@57
    .line 1508
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@59
    if-eqz v1, :cond_4

    #@5b
    const-string/jumbo v1, "FragmentManager"

    #@5e
    new-instance v2, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v3, "Adding available back stack index "

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 1509
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    .line 1510
    add-int/lit8 v0, v0, 0x1

    #@80
    goto :goto_1

    #@81
    .line 1512
    :cond_5
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@83
    if-eqz v1, :cond_6

    #@85
    const-string/jumbo v1, "FragmentManager"

    #@88
    new-instance v2, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v3, "Adding back stack index "

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    const-string/jumbo v3, " with "

    #@9b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    .line 1513
    :cond_6
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@af
    goto :goto_0

    #@b0
    .line 1494
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    #@b1
    monitor-exit p0

    #@b2
    throw v1
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1320
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    const-string/jumbo v1, "FragmentManager"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "show: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1321
    :cond_0
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 1322
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@26
    .line 1323
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 1324
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@2d
    move-result-object v0

    #@2e
    .line 1326
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    #@30
    .line 1327
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@32
    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    #@35
    .line 1328
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@37
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@3a
    .line 1330
    :cond_1
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@3c
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    #@3f
    .line 1332
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@41
    if-eqz v1, :cond_3

    #@43
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@45
    if-eqz v1, :cond_3

    #@47
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@49
    if-eqz v1, :cond_3

    #@4b
    .line 1333
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4d
    .line 1335
    :cond_3
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    #@50
    .line 1319
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    #@0
    .prologue
    .line 1216
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 1218
    :cond_0
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    if-ge v1, v2, :cond_2

    #@e
    .line 1219
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    .line 1220
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    #@18
    .line 1221
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    #@1b
    .line 1218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1215
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 670
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 671
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 672
    const-string/jumbo v1, " in "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 673
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 674
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@24
    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@27
    .line 678
    :goto_0
    const-string/jumbo v1, "}}"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 676
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@34
    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@37
    goto :goto_0
.end method
