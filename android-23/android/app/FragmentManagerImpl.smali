.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/app/FragmentManagerImpl$1;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

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
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
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
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/app/FragmentContainer;

.field mController:Landroid/app/FragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/app/Fragment;

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
    .locals 1

    #@0
    .prologue
    .line 401
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@3
    .line 400
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 400
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    #@4
    .line 463
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@7
    .line 476
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@9
    .line 477
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@b
    .line 479
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    #@d
    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    #@10
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@12
    .line 400
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    #@0
    .prologue
    .line 1410
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1411
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 1412
    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    #@9
    .line 1411
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1414
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1415
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    .line 1416
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
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 1415
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1409
    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 8
    .param p0, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 512
    if-nez p0, :cond_0

    #@4
    .line 513
    return v6

    #@5
    .line 515
    :cond_0
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    #@7
    if-eqz v4, :cond_2

    #@9
    move-object v2, p0

    #@a
    .line 516
    check-cast v2, Landroid/animation/ValueAnimator;

    #@c
    .line 517
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@f
    move-result-object v3

    #@10
    .line 518
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@12
    if-ge v1, v4, :cond_4

    #@14
    .line 519
    const-string/jumbo v4, "alpha"

    #@17
    aget-object v5, v3, v1

    #@19
    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_1

    #@23
    .line 520
    return v7

    #@24
    .line 518
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 523
    .end local v1    # "i":I
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    #@29
    if-eqz v4, :cond_4

    #@2b
    .line 524
    check-cast p0, Landroid/animation/AnimatorSet;

    #@2d
    .end local p0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    #@30
    move-result-object v0

    #@31
    .line 525
    .local v0, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    #@32
    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@35
    move-result v4

    #@36
    if-ge v1, v4, :cond_4

    #@38
    .line 526
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Landroid/animation/Animator;

    #@3e
    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_3

    #@44
    .line 527
    return v7

    #@45
    .line 525
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 531
    .end local v0    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_4
    return v6
.end method

.method public static reverseTransit(I)I
    .locals 1
    .param p0, "transit"    # I

    #@0
    .prologue
    .line 2116
    const/4 v0, 0x0

    #@1
    .line 2117
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 2128
    :goto_0
    return v0

    #@5
    .line 2119
    :sswitch_0
    const/16 v0, 0x2002

    #@7
    .line 2120
    goto :goto_0

    #@8
    .line 2122
    :sswitch_1
    const/16 v0, 0x1001

    #@a
    .line 2123
    goto :goto_0

    #@b
    .line 2125
    :sswitch_2
    const/16 v0, 0x1003

    #@d
    .line 2126
    goto :goto_0

    #@e
    .line 2117
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 547
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 548
    :cond_0
    return-void

    #@5
    .line 550
    :cond_1
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 551
    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    #@d
    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    #@10
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@13
    .line 546
    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/animation/Animator;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 535
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 536
    :cond_0
    return v0

    #@6
    .line 538
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_2

    #@c
    .line 539
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    #@f
    move-result v1

    #@10
    .line 538
    if-eqz v1, :cond_2

    #@12
    .line 540
    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    #@15
    move-result v0

    #@16
    .line 538
    :cond_2
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 487
    const-string/jumbo v3, "FragmentManager"

    #@4
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 488
    new-instance v1, Landroid/util/LogWriter;

    #@d
    const-string/jumbo v3, "FragmentManager"

    #@10
    const/4 v4, 0x6

    #@11
    invoke-direct {v1, v4, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@14
    .line 489
    .local v1, "logw":Landroid/util/LogWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    #@16
    const/16 v3, 0x400

    #@18
    invoke-direct {v2, v1, v5, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@1b
    .line 490
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 491
    const-string/jumbo v3, "FragmentManager"

    #@22
    const-string/jumbo v4, "Activity state:"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 493
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@2a
    const-string/jumbo v4, "  "

    #@2d
    const/4 v5, 0x0

    #@2e
    new-array v5, v5, [Ljava/lang/String;

    #@30
    const/4 v6, 0x0

    #@31
    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 507
    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@37
    .line 508
    throw p1

    #@38
    .line 494
    :catch_0
    move-exception v0

    #@39
    .line 495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@3c
    .line 496
    const-string/jumbo v3, "FragmentManager"

    #@3f
    const-string/jumbo v4, "Failed dumping state"

    #@42
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_0

    #@46
    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "FragmentManager"

    #@49
    const-string/jumbo v4, "Fragment manager state:"

    #@4c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 501
    :try_start_1
    const-string/jumbo v3, "  "

    #@52
    const/4 v4, 0x0

    #@53
    new-array v4, v4, [Ljava/lang/String;

    #@55
    const/4 v5, 0x0

    #@56
    invoke-virtual {p0, v3, v5, v2, v4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@59
    goto :goto_0

    #@5a
    .line 502
    :catch_1
    move-exception v0

    #@5b
    .line 503
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@5e
    .line 504
    const-string/jumbo v3, "FragmentManager"

    #@61
    const-string/jumbo v4, "Failed dumping state"

    #@64
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    #@0
    .prologue
    .line 2133
    const/4 v0, -0x1

    #@1
    .line 2134
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 2151
    :goto_0
    return v0

    #@5
    .line 2136
    :sswitch_0
    if-eqz p1, :cond_0

    #@7
    .line 2137
    const/4 v0, 0x0

    #@8
    goto :goto_0

    #@9
    .line 2138
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    .line 2141
    :sswitch_1
    if-eqz p1, :cond_1

    #@d
    .line 2142
    const/4 v0, 0x2

    #@e
    goto :goto_0

    #@f
    .line 2143
    :cond_1
    const/4 v0, 0x3

    #@10
    goto :goto_0

    #@11
    .line 2146
    :sswitch_2
    if-eqz p1, :cond_2

    #@13
    .line 2147
    const/4 v0, 0x4

    #@14
    goto :goto_0

    #@15
    .line 2148
    :cond_2
    const/4 v0, 0x5

    #@16
    goto :goto_0

    #@17
    .line 2134
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
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .locals 1
    .param p1, "state"    # Landroid/app/BackStackRecord;

    #@0
    .prologue
    .line 1567
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1568
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@b
    .line 1570
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1571
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@13
    .line 1566
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1212
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@c
    .line 1215
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1216
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    #@2d
    .line 1217
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@2f
    if-nez v0, :cond_4

    #@31
    .line 1218
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 1219
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
    .line 1221
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 1222
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    #@5a
    .line 1223
    const/4 v0, 0x0

    #@5b
    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    #@5d
    .line 1224
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@5f
    if-eqz v0, :cond_3

    #@61
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@63
    if-eqz v0, :cond_3

    #@65
    .line 1225
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@67
    .line 1227
    :cond_3
    if-eqz p2, :cond_4

    #@69
    .line 1228
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    #@6c
    .line 1211
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 632
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@b
    .line 634
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 630
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Landroid/app/BackStackRecord;

    #@0
    .prologue
    .line 1447
    monitor-enter p0

    #@1
    .line 1448
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-gtz v1, :cond_3

    #@d
    .line 1449
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 1450
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@18
    .line 1452
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 1453
    .local v0, "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1454
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    monitor-exit p0

    #@4d
    .line 1455
    return v0

    #@4e
    .line 1458
    .end local v0    # "index":I
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@50
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

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
    .line 1459
    .restart local v0    # "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1460
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    monitor-exit p0

    #@91
    .line 1461
    return v0

    #@92
    .line 1447
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@93
    monitor-exit p0

    #@94
    throw v1
.end method

.method public attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .locals 2
    .param p2, "container"    # Landroid/app/FragmentContainer;
    .param p3, "parent"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1936
    .local p1, "host":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

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
    .line 1937
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@f
    .line 1938
    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@11
    .line 1939
    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@13
    .line 1935
    return-void
.end method

.method public attachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1332
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1333
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@22
    if-eqz v0, :cond_5

    #@24
    .line 1334
    iput-boolean v5, p1, Landroid/app/Fragment;->mDetached:Z

    #@26
    .line 1335
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    #@28
    if-nez v0, :cond_5

    #@2a
    .line 1336
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 1337
    new-instance v0, Ljava/util/ArrayList;

    #@30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@35
    .line 1339
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 1340
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
    .line 1342
    :cond_2
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1343
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    .line 1344
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    #@7c
    .line 1345
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@7e
    if-eqz v0, :cond_4

    #@80
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@82
    if-eqz v0, :cond_4

    #@84
    .line 1346
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@86
    .line 1348
    :cond_4
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@88
    move-object v0, p0

    #@89
    move-object v1, p1

    #@8a
    move v3, p2

    #@8b
    move v4, p3

    #@8c
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@8f
    .line 1331
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    #@0
    .prologue
    .line 557
    new-instance v0, Landroid/app/BackStackRecord;

    #@2
    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    #@5
    return-object v0
.end method

.method public detachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1313
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1314
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@22
    if-nez v0, :cond_4

    #@24
    .line 1315
    iput-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    #@26
    .line 1316
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 1318
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 1319
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1320
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@51
    .line 1322
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@53
    if-eqz v0, :cond_3

    #@55
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@57
    if-eqz v0, :cond_3

    #@59
    .line 1323
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@5b
    .line 1325
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    #@5d
    move-object v0, p0

    #@5e
    move-object v1, p1

    #@5f
    move v3, p2

    #@60
    move v4, p3

    #@61
    .line 1326
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@64
    .line 1312
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1952
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1953
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1951
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1988
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 1989
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 1990
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 1991
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 1992
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    #@1a
    .line 1989
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1987
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 2082
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2083
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2084
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2085
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2086
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 2087
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 2083
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2092
    .end local v0    # "f":Landroid/app/Fragment;
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
    .line 1947
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1948
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1946
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 2021
    const/4 v3, 0x0

    #@1
    .line 2022
    .local v3, "show":Z
    const/4 v2, 0x0

    #@2
    .line 2023
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4
    if-eqz v4, :cond_2

    #@6
    .line 2024
    const/4 v1, 0x0

    #@7
    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v4

    #@d
    if-ge v1, v4, :cond_2

    #@f
    .line 2025
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/app/Fragment;

    #@17
    .line 2026
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@19
    .line 2027
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 2028
    const/4 v3, 0x1

    #@20
    .line 2029
    if-nez v2, :cond_0

    #@22
    .line 2030
    new-instance v2, Ljava/util/ArrayList;

    #@24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 2032
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 2024
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2038
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@2f
    if-eqz v4, :cond_4

    #@31
    .line 2039
    const/4 v1, 0x0

    #@32
    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v4

    #@38
    if-ge v1, v4, :cond_4

    #@3a
    .line 2040
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/app/Fragment;

    #@42
    .line 2041
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v2, :cond_3

    #@44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 2039
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 2042
    :cond_3
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    #@50
    goto :goto_2

    #@51
    .line 2047
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@53
    .line 2049
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
    .line 1979
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@5
    .line 1980
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@8
    .line 1981
    invoke-virtual {p0, v2, v2}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@b
    .line 1982
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@d
    .line 1983
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@f
    .line 1984
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@11
    .line 1978
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    #@0
    .prologue
    .line 1975
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 1974
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 1999
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2000
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2001
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2002
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2003
    invoke-virtual {v0}, Landroid/app/Fragment;->performLowMemory()V

    #@1a
    .line 2000
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1998
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 2068
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2069
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2070
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2071
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2072
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 2073
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 2069
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2078
    .end local v0    # "f":Landroid/app/Fragment;
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
    .line 2096
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2097
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2098
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2099
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2100
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    #@1a
    .line 2097
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2095
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    #@0
    .prologue
    .line 1967
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 1966
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2053
    const/4 v2, 0x0

    #@1
    .line 2054
    .local v2, "show":Z
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 2055
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_1

    #@e
    .line 2056
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/Fragment;

    #@16
    .line 2057
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@18
    .line 2058
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 2059
    const/4 v2, 0x1

    #@1f
    .line 2055
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2064
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public dispatchResume()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1962
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1963
    const/4 v0, 0x5

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1961
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1957
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1958
    const/4 v0, 0x4

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 1956
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    #@0
    .prologue
    .line 1971
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 1970
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    .line 2010
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2011
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_1

    #@d
    .line 2012
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2013
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2014
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    #@1a
    .line 2011
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2009
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
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
    .line 706
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
    .line 709
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 710
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 711
    .local v0, "N":I
    if-lez v0, :cond_1

    #@20
    .line 712
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    const-string/jumbo v6, "Active Fragments in "

    #@26
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 713
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
    .line 714
    const-string/jumbo v6, ":"

    #@37
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 715
    const/4 v3, 0x0

    #@3b
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@3d
    .line 716
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Landroid/app/Fragment;

    #@45
    .line 717
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    const-string/jumbo v6, "  #"

    #@4b
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 718
    const-string/jumbo v6, ": "

    #@54
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5a
    .line 719
    if-eqz v2, :cond_0

    #@5c
    .line 720
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5f
    .line 715
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_0

    #@62
    .line 726
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@64
    if-eqz v6, :cond_2

    #@66
    .line 727
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6b
    move-result v0

    #@6c
    .line 728
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    #@6e
    .line 729
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v6, "Added Fragments:"

    #@74
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77
    .line 730
    const/4 v3, 0x0

    #@78
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    #@7a
    .line 731
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/app/Fragment;

    #@82
    .line 732
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    const-string/jumbo v6, "  #"

    #@88
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@8e
    .line 733
    const-string/jumbo v6, ": "

    #@91
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    #@97
    move-result-object v6

    #@98
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9b
    .line 730
    add-int/lit8 v3, v3, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 738
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@a0
    if-eqz v6, :cond_3

    #@a2
    .line 739
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v0

    #@a8
    .line 740
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    #@aa
    .line 741
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    const-string/jumbo v6, "Fragments Created Menus:"

    #@b0
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b3
    .line 742
    const/4 v3, 0x0

    #@b4
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    #@b6
    .line 743
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bb
    move-result-object v2

    #@bc
    check-cast v2, Landroid/app/Fragment;

    #@be
    .line 744
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    const-string/jumbo v6, "  #"

    #@c4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@ca
    .line 745
    const-string/jumbo v6, ": "

    #@cd
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d7
    .line 742
    add-int/lit8 v3, v3, 0x1

    #@d9
    goto :goto_2

    #@da
    .line 750
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@dc
    if-eqz v6, :cond_4

    #@de
    .line 751
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v0

    #@e4
    .line 752
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    #@e6
    .line 753
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    const-string/jumbo v6, "Back Stack:"

    #@ec
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 754
    const/4 v3, 0x0

    #@f0
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    #@f2
    .line 755
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@f4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f7
    move-result-object v1

    #@f8
    check-cast v1, Landroid/app/BackStackRecord;

    #@fa
    .line 756
    .local v1, "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd
    const-string/jumbo v6, "  #"

    #@100
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@103
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@106
    .line 757
    const-string/jumbo v6, ": "

    #@109
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10c
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    #@10f
    move-result-object v6

    #@110
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 758
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@116
    .line 754
    add-int/lit8 v3, v3, 0x1

    #@118
    goto :goto_3

    #@119
    .line 763
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    #@11a
    .line 764
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@11c
    if-eqz v6, :cond_5

    #@11e
    .line 765
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@120
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@123
    move-result v0

    #@124
    .line 766
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    #@126
    .line 767
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    const-string/jumbo v6, "Back Stack Indices:"

    #@12c
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 768
    const/4 v3, 0x0

    #@130
    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    #@132
    .line 769
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@134
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@137
    move-result-object v1

    #@138
    check-cast v1, Landroid/app/BackStackRecord;

    #@13a
    .line 770
    .restart local v1    # "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    const-string/jumbo v6, "  #"

    #@140
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@146
    .line 771
    const-string/jumbo v6, ": "

    #@149
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@14f
    .line 768
    add-int/lit8 v3, v3, 0x1

    #@151
    goto :goto_4

    #@152
    .line 776
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@154
    if-eqz v6, :cond_6

    #@156
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@158
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@15b
    move-result v6

    #@15c
    if-lez v6, :cond_6

    #@15e
    .line 777
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    const-string/jumbo v6, "mAvailBackStackIndices: "

    #@164
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    .line 778
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

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
    .line 782
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@177
    if-eqz v6, :cond_7

    #@179
    .line 783
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@17b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@17e
    move-result v0

    #@17f
    .line 784
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    #@181
    .line 785
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    const-string/jumbo v6, "Pending Actions:"

    #@187
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18a
    .line 786
    const/4 v3, 0x0

    #@18b
    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    #@18d
    .line 787
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@18f
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@192
    move-result-object v5

    #@193
    check-cast v5, Ljava/lang/Runnable;

    #@195
    .line 788
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    const-string/jumbo v6, "  #"

    #@19b
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@1a1
    .line 789
    const-string/jumbo v6, ": "

    #@1a4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1aa
    .line 786
    add-int/lit8 v3, v3, 0x1

    #@1ac
    goto :goto_5

    #@1ad
    .line 763
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
    .line 794
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b3
    const-string/jumbo v6, "FragmentManager misc state:"

    #@1b6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b9
    .line 795
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bc
    const-string/jumbo v6, "  mHost="

    #@1bf
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@1c4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1c7
    .line 796
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ca
    const-string/jumbo v6, "  mContainer="

    #@1cd
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@1d2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1d5
    .line 797
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@1d7
    if-eqz v6, :cond_8

    #@1d9
    .line 798
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc
    const-string/jumbo v6, "  mParent="

    #@1df
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@1e4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1e7
    .line 800
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ea
    const-string/jumbo v6, "  mCurState="

    #@1ed
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    iget v6, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@1f2
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    #@1f5
    .line 801
    const-string/jumbo v6, " mStateSaved="

    #@1f8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fb
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@1fd
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@200
    .line 802
    const-string/jumbo v6, " mDestroyed="

    #@203
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@206
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@208
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@20b
    .line 803
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@20d
    if-eqz v6, :cond_9

    #@20f
    .line 804
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    const-string/jumbo v6, "  mNeedMenuInvalidate="

    #@215
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@218
    .line 805
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@21a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@21d
    .line 807
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@21f
    if-eqz v6, :cond_a

    #@221
    .line 808
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@224
    const-string/jumbo v6, "  mNoTransactionsBecause="

    #@227
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22a
    .line 809
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@22c
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22f
    .line 811
    :cond_a
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@231
    if-eqz v6, :cond_b

    #@233
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@235
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@238
    move-result v6

    #@239
    if-lez v6, :cond_b

    #@23b
    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23e
    const-string/jumbo v6, "  mAvailIndices: "

    #@241
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@244
    .line 813
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

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
    .line 705
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    #@0
    .prologue
    .line 1428
    if-nez p2, :cond_0

    #@2
    .line 1429
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@5
    .line 1431
    :cond_0
    monitor-enter p0

    #@6
    .line 1432
    :try_start_0
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@8
    if-nez v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@c
    if-nez v0, :cond_2

    #@e
    .line 1433
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
    .line 1431
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0

    #@1a
    .line 1435
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 1436
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@25
    .line 1438
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1439
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    const/4 v1, 0x1

    #@31
    if-ne v0, v1, :cond_4

    #@33
    .line 1440
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@35
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@38
    move-result-object v0

    #@39
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@3e
    .line 1441
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@40
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@43
    move-result-object v0

    #@44
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    :cond_4
    monitor-exit p0

    #@4a
    .line 1427
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
    .line 1506
    iget-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1507
    new-instance v5, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v6, "Recursive entry to executePendingTransactions"

    #@b
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5

    #@f
    .line 1510
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@12
    move-result-object v5

    #@13
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@15
    invoke-virtual {v6}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v6

    #@1d
    if-eq v5, v6, :cond_1

    #@1f
    .line 1511
    new-instance v5, Ljava/lang/IllegalStateException;

    #@21
    const-string/jumbo v6, "Must be called from main thread of process"

    #@24
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v5

    #@28
    .line 1514
    :cond_1
    const/4 v0, 0x0

    #@29
    .line 1519
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    #@2a
    .line 1520
    :try_start_0
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@2c
    if-eqz v5, :cond_2

    #@2e
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

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
    .line 1542
    iget-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@39
    if-eqz v5, :cond_9

    #@3b
    .line 1543
    const/4 v3, 0x0

    #@3c
    .line 1544
    .local v3, "loadersRunning":Z
    const/4 v2, 0x0

    #@3d
    .end local v3    # "loadersRunning":Z
    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v5

    #@43
    if-ge v2, v5, :cond_8

    #@45
    .line 1545
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Landroid/app/Fragment;

    #@4d
    .line 1546
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    #@4f
    iget-object v5, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@51
    if-eqz v5, :cond_3

    #@53
    .line 1547
    iget-object v5, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@55
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@58
    move-result v5

    #@59
    or-int/2addr v3, v5

    #@5a
    .line 1544
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 1524
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "i":I
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@62
    move-result v4

    #@63
    .line 1525
    .local v4, "numActions":I
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@65
    if-eqz v5, :cond_5

    #@67
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@69
    array-length v5, v5

    #@6a
    if-ge v5, v4, :cond_6

    #@6c
    .line 1526
    :cond_5
    new-array v5, v4, [Ljava/lang/Runnable;

    #@6e
    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@70
    .line 1528
    :cond_6
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@72
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@74
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@77
    .line 1529
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@79
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    #@7c
    .line 1530
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@7e
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@81
    move-result-object v5

    #@82
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@84
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    monitor-exit p0

    #@88
    .line 1533
    const/4 v5, 0x1

    #@89
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@8b
    .line 1534
    const/4 v2, 0x0

    #@8c
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_7

    #@8e
    .line 1535
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@90
    aget-object v5, v5, v2

    #@92
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    #@95
    .line 1536
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@97
    aput-object v7, v5, v2

    #@99
    .line 1534
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_2

    #@9c
    .line 1519
    .end local v2    # "i":I
    .end local v4    # "numActions":I
    :catchall_0
    move-exception v5

    #@9d
    monitor-exit p0

    #@9e
    throw v5

    #@9f
    .line 1538
    .restart local v2    # "i":I
    .restart local v4    # "numActions":I
    :cond_7
    iput-boolean v8, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@a1
    .line 1539
    const/4 v0, 0x1

    #@a2
    goto :goto_0

    #@a3
    .line 1550
    .end local v4    # "numActions":I
    :cond_8
    if-nez v3, :cond_9

    #@a5
    .line 1551
    iput-boolean v8, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@a7
    .line 1552
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@aa
    .line 1555
    .end local v2    # "i":I
    :cond_9
    return v0
.end method

.method public executePendingTransactions()Z
    .locals 1

    #@0
    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1354
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1356
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

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
    .line 1357
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/app/Fragment;

    #@17
    .line 1358
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@19
    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    #@1b
    if-ne v2, p1, :cond_0

    #@1d
    .line 1359
    return-object v0

    #@1e
    .line 1356
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 1363
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 1365
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

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
    .line 1366
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/app/Fragment;

    #@37
    .line 1367
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    #@39
    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    #@3b
    if-ne v2, p1, :cond_2

    #@3d
    .line 1368
    return-object v0

    #@3e
    .line 1365
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@40
    goto :goto_1

    #@41
    .line 1372
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1376
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 1378
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

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
    .line 1379
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/app/Fragment;

    #@19
    .line 1380
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@1b
    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 1381
    return-object v0

    #@24
    .line 1378
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 1385
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    if-eqz v2, :cond_3

    #@2b
    if-eqz p1, :cond_3

    #@2d
    .line 1387
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

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
    .line 1388
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/app/Fragment;

    #@3f
    .line 1389
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    #@41
    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 1390
    return-object v0

    #@4a
    .line 1387
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@4c
    goto :goto_1

    #@4d
    .line 1394
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1398
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 1399
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

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
    .line 1400
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/app/Fragment;

    #@19
    .line 1401
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@1b
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1402
    return-object v0

    #@22
    .line 1399
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0

    #@25
    .line 1406
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1492
    monitor-enter p0

    #@1
    .line 1493
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1494
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1495
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@12
    .line 1497
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1498
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

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
    .line 1491
    return-void

    #@3b
    .line 1492
    :catchall_0
    move-exception v0

    #@3c
    monitor-exit p0

    #@3d
    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    #@8
    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

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

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 655
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5
    move-result v1

    #@6
    .line 656
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    #@8
    .line 657
    return-object v3

    #@9
    .line 659
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 660
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
    .line 661
    const-string/jumbo v4, ": index "

    #@26
    .line 660
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
    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@38
    .line 663
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/app/Fragment;

    #@40
    .line 664
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_2

    #@42
    .line 665
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
    .line 666
    const-string/jumbo v4, ": index "

    #@57
    .line 665
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
    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@69
    .line 668
    :cond_2
    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    #@0
    .prologue
    .line 2247
    return-object p0
.end method

.method public hideFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1259
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "FragmentManager"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "hide: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 1260
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    #@21
    if-nez v2, :cond_3

    #@23
    .line 1261
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    #@25
    .line 1262
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 1263
    const/4 v2, 0x0

    #@2a
    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@2d
    move-result-object v0

    #@2e
    .line 1265
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_4

    #@30
    .line 1266
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@32
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@35
    .line 1269
    move-object v1, p1

    #@36
    .line 1270
    .local v1, "finalFragment":Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$6;

    #@38
    invoke-direct {v2, p0, v1}, Landroid/app/FragmentManagerImpl$6;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    #@3b
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3e
    .line 1278
    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@40
    invoke-direct {p0, v2, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@43
    .line 1279
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@46
    .line 1284
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "finalFragment":Landroid/app/Fragment;
    :cond_1
    :goto_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    #@48
    if-eqz v2, :cond_2

    #@4a
    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@4c
    if-eqz v2, :cond_2

    #@4e
    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@50
    if-eqz v2, :cond_2

    #@52
    .line 1285
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@54
    .line 1287
    :cond_2
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    #@57
    .line 1258
    :cond_3
    return-void

    #@58
    .line 1281
    .restart local v0    # "anim":Landroid/animation/Animator;
    :cond_4
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@5a
    const/16 v3, 0x8

    #@5c
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@5f
    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    #@0
    .prologue
    .line 2108
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@6
    const/4 v1, 0x5

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 2109
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@b
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    #@e
    .line 2107
    :goto_0
    return-void

    #@f
    .line 2111
    :cond_0
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@12
    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    #@0
    .prologue
    .line 686
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@2
    return v0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 820
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    #@4
    .line 819
    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    #@7
    move-result-object v2

    #@8
    .line 821
    .local v2, "animObj":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    #@a
    .line 822
    return-object v2

    #@b
    .line 825
    :cond_0
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 826
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@11
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@14
    move-result-object v5

    #@15
    iget v6, p1, Landroid/app/Fragment;->mNextAnim:I

    #@17
    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@1a
    move-result-object v1

    #@1b
    .line 827
    .local v1, "anim":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    #@1d
    .line 828
    return-object v1

    #@1e
    .line 832
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_1
    if-nez p2, :cond_2

    #@20
    .line 833
    return-object v8

    #@21
    .line 836
    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    #@24
    move-result v4

    #@25
    .line 837
    .local v4, "styleIndex":I
    if-gez v4, :cond_3

    #@27
    .line 838
    return-object v8

    #@28
    .line 841
    :cond_3
    if-nez p4, :cond_4

    #@2a
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@2c
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_4

    #@32
    .line 842
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@34
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    #@37
    move-result p4

    #@38
    .line 844
    :cond_4
    if-nez p4, :cond_5

    #@3a
    .line 845
    return-object v8

    #@3b
    .line 848
    :cond_5
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@3d
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@40
    move-result-object v5

    #@41
    .line 849
    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    #@43
    .line 848
    invoke-virtual {v5, p4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@46
    move-result-object v3

    #@47
    .line 850
    .local v3, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4a
    move-result v0

    #@4b
    .line 851
    .local v0, "anim":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@4e
    .line 853
    if-nez v0, :cond_6

    #@50
    .line 854
    return-object v8

    #@51
    .line 857
    :cond_6
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@53
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@56
    move-result-object v5

    #@57
    invoke-static {v5, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    #@5a
    move-result-object v5

    #@5b
    return-object v5
.end method

.method makeActive(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 1178
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1179
    return-void

    #@5
    .line 1182
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@7
    if-eqz v0, :cond_1

    #@9
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-gtz v0, :cond_4

    #@11
    .line 1183
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    if-nez v0, :cond_2

    #@15
    .line 1184
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1c
    .line 1186
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v0

    #@22
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@24
    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    #@27
    .line 1187
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1193
    :goto_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1177
    :cond_3
    return-void

    #@4b
    .line 1190
    :cond_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@4d
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

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
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@61
    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    #@64
    .line 1191
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@66
    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    #@68
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@6b
    goto :goto_0
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1197
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    #@3
    if-gez v0, :cond_0

    #@5
    .line 1198
    return-void

    #@6
    .line 1201
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1202
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@26
    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    #@28
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 1203
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    #@31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@36
    .line 1206
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@38
    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    #@3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 1207
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@43
    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@45
    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    #@48
    .line 1208
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    #@4b
    .line 1196
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
    .line 1134
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@3
    if-nez v0, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 1135
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "No activity"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1138
    :cond_0
    if-nez p4, :cond_1

    #@12
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@14
    if-ne v0, p1, :cond_1

    #@16
    .line 1139
    return-void

    #@17
    .line 1142
    :cond_1
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@19
    .line 1143
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1b
    if-eqz v0, :cond_5

    #@1d
    .line 1144
    const/4 v7, 0x0

    #@1e
    .line 1145
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    #@1f
    .end local v7    # "loadersRunning":Z
    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v0

    #@25
    if-ge v6, v0, :cond_3

    #@27
    .line 1146
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Landroid/app/Fragment;

    #@2f
    .line 1147
    .local v1, "f":Landroid/app/Fragment;
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
    .line 1148
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@38
    .line 1149
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 1150
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3e
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@41
    move-result v0

    #@42
    or-int/2addr v7, v0

    #@43
    .line 1145
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1155
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_3
    if-nez v7, :cond_4

    #@48
    .line 1156
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@4b
    .line 1159
    :cond_4
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4d
    if-eqz v0, :cond_5

    #@4f
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@51
    if-eqz v0, :cond_5

    #@53
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@55
    const/4 v2, 0x5

    #@56
    if-ne v0, v2, :cond_5

    #@58
    .line 1160
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@5a
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    #@5d
    .line 1161
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@5f
    .line 1133
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
    .line 1130
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@4
    .line 1129
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1126
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v4, v3

    #@6
    move v5, v3

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@a
    .line 1125
    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .locals 10
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    #@0
    .prologue
    .line 874
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 879
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@a
    if-eqz v0, :cond_2

    #@c
    :cond_1
    const/4 v0, 0x1

    #@d
    if-le p2, v0, :cond_2

    #@f
    .line 880
    const/4 p2, 0x1

    #@10
    .line 882
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    #@12
    if-eqz v0, :cond_3

    #@14
    iget v0, p1, Landroid/app/Fragment;->mState:I

    #@16
    if-le p2, v0, :cond_3

    #@18
    .line 884
    iget p2, p1, Landroid/app/Fragment;->mState:I

    #@1a
    .line 888
    :cond_3
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@1c
    if-eqz v0, :cond_4

    #@1e
    iget v0, p1, Landroid/app/Fragment;->mState:I

    #@20
    const/4 v1, 0x4

    #@21
    if-ge v0, v1, :cond_4

    #@23
    const/4 v0, 0x3

    #@24
    if-le p2, v0, :cond_4

    #@26
    .line 889
    const/4 p2, 0x3

    #@27
    .line 891
    :cond_4
    iget v0, p1, Landroid/app/Fragment;->mState:I

    #@29
    if-ge v0, p2, :cond_1e

    #@2b
    .line 895
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@2d
    if-eqz v0, :cond_5

    #@2f
    iget-boolean v0, p1, Landroid/app/Fragment;->mInLayout:Z

    #@31
    if-eqz v0, :cond_8

    #@33
    .line 898
    :cond_5
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@35
    if-eqz v0, :cond_6

    #@37
    .line 903
    const/4 v0, 0x0

    #@38
    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@3a
    .line 904
    iget v2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@3c
    const/4 v3, 0x0

    #@3d
    const/4 v4, 0x0

    #@3e
    const/4 v5, 0x1

    #@3f
    move-object v0, p0

    #@40
    move-object v1, p1

    #@41
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@44
    .line 906
    :cond_6
    iget v0, p1, Landroid/app/Fragment;->mState:I

    #@46
    packed-switch v0, :pswitch_data_0

    #@49
    .line 1122
    :cond_7
    :goto_0
    iput p2, p1, Landroid/app/Fragment;->mState:I

    #@4b
    .line 873
    return-void

    #@4c
    .line 896
    :cond_8
    return-void

    #@4d
    .line 908
    :pswitch_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@4f
    if-eqz v0, :cond_9

    #@51
    const-string/jumbo v0, "FragmentManager"

    #@54
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v2, "moveto CREATED: "

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 909
    :cond_9
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@6d
    if-eqz v0, :cond_b

    #@6f
    .line 910
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@71
    .line 911
    const-string/jumbo v1, "android:view_state"

    #@74
    .line 910
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@77
    move-result-object v0

    #@78
    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@7a
    .line 912
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@7c
    .line 913
    const-string/jumbo v1, "android:target_state"

    #@7f
    .line 912
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    #@82
    move-result-object v0

    #@83
    iput-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@85
    .line 914
    iget-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@87
    if-eqz v0, :cond_a

    #@89
    .line 915
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@8b
    .line 916
    const-string/jumbo v1, "android:target_req_state"

    #@8e
    const/4 v2, 0x0

    #@8f
    .line 915
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@92
    move-result v0

    #@93
    iput v0, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    #@95
    .line 918
    :cond_a
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@97
    .line 919
    const-string/jumbo v1, "android:user_visible_hint"

    #@9a
    const/4 v2, 0x1

    #@9b
    .line 918
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9e
    move-result v0

    #@9f
    iput-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@a1
    .line 920
    iget-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@a3
    if-nez v0, :cond_b

    #@a5
    .line 921
    const/4 v0, 0x1

    #@a6
    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@a8
    .line 922
    const/4 v0, 0x3

    #@a9
    if-le p2, v0, :cond_b

    #@ab
    .line 923
    const/4 p2, 0x3

    #@ac
    .line 927
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@ae
    iput-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@b0
    .line 928
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@b2
    iput-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@b4
    .line 929
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@b6
    if-eqz v0, :cond_c

    #@b8
    .line 930
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@ba
    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@bc
    .line 929
    :goto_1
    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@be
    .line 931
    const/4 v0, 0x0

    #@bf
    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    #@c1
    .line 932
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@c3
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@c6
    move-result-object v0

    #@c7
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    #@ca
    .line 933
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    #@cc
    if-nez v0, :cond_d

    #@ce
    .line 934
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@d0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v2, "Fragment "

    #@d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v1

    #@dc
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v1

    #@e0
    .line 935
    const-string/jumbo v2, " did not call through to super.onAttach()"

    #@e3
    .line 934
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@ee
    throw v0

    #@ef
    .line 930
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@f1
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    #@f4
    move-result-object v0

    #@f5
    goto :goto_1

    #@f6
    .line 937
    :cond_d
    iget-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@f8
    if-nez v0, :cond_e

    #@fa
    .line 938
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@fc
    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    #@ff
    .line 941
    :cond_e
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    #@101
    if-nez v0, :cond_f

    #@103
    .line 942
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@105
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    #@108
    .line 944
    :cond_f
    const/4 v0, 0x0

    #@109
    iput-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    #@10b
    .line 945
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@10d
    if-eqz v0, :cond_11

    #@10f
    .line 950
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@111
    .line 949
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@114
    move-result-object v0

    #@115
    .line 950
    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@117
    const/4 v2, 0x0

    #@118
    .line 949
    invoke-virtual {p1, v0, v2, v1}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@11b
    move-result-object v0

    #@11c
    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@11e
    .line 951
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@120
    if-eqz v0, :cond_11

    #@122
    .line 952
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@124
    const/4 v1, 0x0

    #@125
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    #@128
    .line 953
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    #@12a
    if-eqz v0, :cond_10

    #@12c
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@12e
    const/16 v1, 0x8

    #@130
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@133
    .line 954
    :cond_10
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@135
    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@137
    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@13a
    .line 958
    :cond_11
    :pswitch_1
    const/4 v0, 0x1

    #@13b
    if-le p2, v0, :cond_19

    #@13d
    .line 959
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@13f
    if-eqz v0, :cond_12

    #@141
    const-string/jumbo v0, "FragmentManager"

    #@144
    new-instance v1, Ljava/lang/StringBuilder;

    #@146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@149
    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    #@14c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v1

    #@150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v1

    #@154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v1

    #@158
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    .line 960
    :cond_12
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@15d
    if-nez v0, :cond_17

    #@15f
    .line 961
    const/4 v7, 0x0

    #@160
    .line 962
    .local v7, "container":Landroid/view/ViewGroup;
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    #@162
    if-eqz v0, :cond_13

    #@164
    .line 963
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@166
    iget v1, p1, Landroid/app/Fragment;->mContainerId:I

    #@168
    invoke-virtual {v0, v1}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    #@16b
    move-result-object v7

    #@16c
    .end local v7    # "container":Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    #@16e
    .line 964
    .local v7, "container":Landroid/view/ViewGroup;
    if-nez v7, :cond_13

    #@170
    iget-boolean v0, p1, Landroid/app/Fragment;->mRestored:Z

    #@172
    if-eqz v0, :cond_1d

    #@174
    .line 972
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_13
    :goto_2
    iput-object v7, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@176
    .line 974
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@178
    .line 973
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@17b
    move-result-object v0

    #@17c
    .line 974
    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@17e
    .line 973
    invoke-virtual {p1, v0, v7, v1}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@181
    move-result-object v0

    #@182
    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@184
    .line 975
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@186
    if-eqz v0, :cond_17

    #@188
    .line 976
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@18a
    const/4 v1, 0x0

    #@18b
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    #@18e
    .line 977
    if-eqz v7, :cond_15

    #@190
    .line 978
    const/4 v0, 0x1

    #@191
    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@194
    move-result-object v6

    #@195
    .line 980
    .local v6, "anim":Landroid/animation/Animator;
    if-eqz v6, :cond_14

    #@197
    .line 981
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@199
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@19c
    .line 982
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@19e
    invoke-direct {p0, v0, v6}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@1a1
    .line 983
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    #@1a4
    .line 985
    :cond_14
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1a6
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1a9
    .line 987
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_15
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    #@1ab
    if-eqz v0, :cond_16

    #@1ad
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1af
    const/16 v1, 0x8

    #@1b1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1b4
    .line 988
    :cond_16
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1b6
    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1b8
    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@1bb
    .line 992
    :cond_17
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1bd
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    #@1c0
    .line 993
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1c2
    if-eqz v0, :cond_18

    #@1c4
    .line 994
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1c6
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    #@1c9
    .line 996
    :cond_18
    const/4 v0, 0x0

    #@1ca
    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1cc
    .line 1000
    :cond_19
    :pswitch_2
    const/4 v0, 0x3

    #@1cd
    if-le p2, v0, :cond_1b

    #@1cf
    .line 1001
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@1d1
    if-eqz v0, :cond_1a

    #@1d3
    const-string/jumbo v0, "FragmentManager"

    #@1d6
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    const-string/jumbo v2, "moveto STARTED: "

    #@1de
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v1

    #@1e2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v1

    #@1e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e9
    move-result-object v1

    #@1ea
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1ed
    .line 1002
    :cond_1a
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    #@1f0
    .line 1005
    :cond_1b
    :pswitch_3
    const/4 v0, 0x4

    #@1f1
    if-le p2, v0, :cond_7

    #@1f3
    .line 1006
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@1f5
    if-eqz v0, :cond_1c

    #@1f7
    const-string/jumbo v0, "FragmentManager"

    #@1fa
    new-instance v1, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v2, "moveto RESUMED: "

    #@202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v1

    #@206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v1

    #@20a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20d
    move-result-object v1

    #@20e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@211
    .line 1007
    :cond_1c
    const/4 v0, 0x1

    #@212
    iput-boolean v0, p1, Landroid/app/Fragment;->mResumed:Z

    #@214
    .line 1008
    invoke-virtual {p1}, Landroid/app/Fragment;->performResume()V

    #@217
    .line 1010
    const/4 v0, 0x0

    #@218
    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@21a
    .line 1011
    const/4 v0, 0x0

    #@21b
    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@21d
    goto/16 :goto_0

    #@21f
    .line 965
    .restart local v7    # "container":Landroid/view/ViewGroup;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@221
    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    #@223
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@226
    const-string/jumbo v2, "No view found for id 0x"

    #@229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v1

    #@22d
    .line 967
    iget v2, p1, Landroid/app/Fragment;->mContainerId:I

    #@22f
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@232
    move-result-object v2

    #@233
    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v1

    #@237
    .line 967
    const-string/jumbo v2, " ("

    #@23a
    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23d
    move-result-object v1

    #@23e
    .line 968
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@241
    move-result-object v2

    #@242
    iget v3, p1, Landroid/app/Fragment;->mContainerId:I

    #@244
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@247
    move-result-object v2

    #@248
    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v1

    #@24c
    .line 969
    const-string/jumbo v2, ") for fragment "

    #@24f
    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v1

    #@253
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v1

    #@257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25a
    move-result-object v1

    #@25b
    .line 965
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25e
    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@261
    goto/16 :goto_2

    #@263
    .line 1014
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_1e
    iget v0, p1, Landroid/app/Fragment;->mState:I

    #@265
    if-le v0, p2, :cond_7

    #@267
    .line 1015
    iget v0, p1, Landroid/app/Fragment;->mState:I

    #@269
    packed-switch v0, :pswitch_data_1

    #@26c
    goto/16 :goto_0

    #@26e
    .line 1074
    :cond_1f
    :goto_3
    :pswitch_4
    const/4 v0, 0x1

    #@26f
    if-ge p2, v0, :cond_7

    #@271
    .line 1075
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@273
    if-eqz v0, :cond_20

    #@275
    .line 1076
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@277
    if-eqz v0, :cond_20

    #@279
    .line 1083
    iget-object v6, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@27b
    .line 1084
    .restart local v6    # "anim":Landroid/animation/Animator;
    const/4 v0, 0x0

    #@27c
    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@27e
    .line 1085
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    #@281
    .line 1088
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_20
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@283
    if-eqz v0, :cond_2b

    #@285
    .line 1093
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@287
    .line 1094
    const/4 p2, 0x1

    #@288
    goto/16 :goto_0

    #@28a
    .line 1017
    :pswitch_5
    const/4 v0, 0x5

    #@28b
    if-ge p2, v0, :cond_22

    #@28d
    .line 1018
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@28f
    if-eqz v0, :cond_21

    #@291
    const-string/jumbo v0, "FragmentManager"

    #@294
    new-instance v1, Ljava/lang/StringBuilder;

    #@296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@299
    const-string/jumbo v2, "movefrom RESUMED: "

    #@29c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v1

    #@2a0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v1

    #@2a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v1

    #@2a8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2ab
    .line 1019
    :cond_21
    invoke-virtual {p1}, Landroid/app/Fragment;->performPause()V

    #@2ae
    .line 1020
    const/4 v0, 0x0

    #@2af
    iput-boolean v0, p1, Landroid/app/Fragment;->mResumed:Z

    #@2b1
    .line 1023
    :cond_22
    :pswitch_6
    const/4 v0, 0x4

    #@2b2
    if-ge p2, v0, :cond_24

    #@2b4
    .line 1024
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@2b6
    if-eqz v0, :cond_23

    #@2b8
    const-string/jumbo v0, "FragmentManager"

    #@2bb
    new-instance v1, Ljava/lang/StringBuilder;

    #@2bd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c0
    const-string/jumbo v2, "movefrom STARTED: "

    #@2c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v1

    #@2c7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v1

    #@2cb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ce
    move-result-object v1

    #@2cf
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d2
    .line 1025
    :cond_23
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    #@2d5
    .line 1029
    :cond_24
    :pswitch_7
    const/4 v0, 0x2

    #@2d6
    if-ge p2, v0, :cond_1f

    #@2d8
    .line 1030
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@2da
    if-eqz v0, :cond_25

    #@2dc
    const-string/jumbo v0, "FragmentManager"

    #@2df
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e4
    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    #@2e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ea
    move-result-object v1

    #@2eb
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ee
    move-result-object v1

    #@2ef
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f2
    move-result-object v1

    #@2f3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f6
    .line 1031
    :cond_25
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@2f8
    if-eqz v0, :cond_26

    #@2fa
    .line 1034
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@2fc
    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    #@2ff
    move-result v0

    #@300
    if-eqz v0, :cond_26

    #@302
    iget-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@304
    if-nez v0, :cond_26

    #@306
    .line 1035
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    #@309
    .line 1038
    :cond_26
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    #@30c
    .line 1039
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@30e
    if-eqz v0, :cond_29

    #@310
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@312
    if-eqz v0, :cond_29

    #@314
    .line 1040
    const/4 v6, 0x0

    #@315
    .line 1041
    .local v6, "anim":Landroid/animation/Animator;
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@317
    if-lez v0, :cond_27

    #@319
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@31b
    if-eqz v0, :cond_2a

    #@31d
    .line 1045
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_27
    :goto_4
    if-eqz v6, :cond_28

    #@31f
    .line 1046
    iget-object v7, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@321
    .line 1047
    .restart local v7    # "container":Landroid/view/ViewGroup;
    iget-object v9, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@323
    .line 1048
    .local v9, "view":Landroid/view/View;
    move-object v8, p1

    #@324
    .line 1049
    .local v8, "fragment":Landroid/app/Fragment;
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    #@327
    .line 1050
    iput-object v6, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@329
    .line 1051
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@32b
    .line 1052
    new-instance v0, Landroid/app/FragmentManagerImpl$5;

    #@32d
    invoke-direct {v0, p0, v7, v9, v8}, Landroid/app/FragmentManagerImpl$5;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    #@330
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@333
    .line 1063
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@335
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@338
    .line 1064
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@33a
    invoke-direct {p0, v0, v6}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@33d
    .line 1065
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    #@340
    .line 1068
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v8    # "fragment":Landroid/app/Fragment;
    .end local v9    # "view":Landroid/view/View;
    :cond_28
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@342
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@344
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@347
    .line 1070
    :cond_29
    const/4 v0, 0x0

    #@348
    iput-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@34a
    .line 1071
    const/4 v0, 0x0

    #@34b
    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@34d
    goto/16 :goto_3

    #@34f
    .line 1042
    .restart local v6    # "anim":Landroid/animation/Animator;
    :cond_2a
    const/4 v0, 0x0

    #@350
    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@353
    move-result-object v6

    #@354
    .local v6, "anim":Landroid/animation/Animator;
    goto :goto_4

    #@355
    .line 1096
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_2b
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@357
    if-eqz v0, :cond_2c

    #@359
    const-string/jumbo v0, "FragmentManager"

    #@35c
    new-instance v1, Ljava/lang/StringBuilder;

    #@35e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@361
    const-string/jumbo v2, "movefrom CREATED: "

    #@364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    move-result-object v1

    #@368
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36b
    move-result-object v1

    #@36c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36f
    move-result-object v1

    #@370
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@373
    .line 1097
    :cond_2c
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    #@375
    if-nez v0, :cond_2d

    #@377
    .line 1098
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroy()V

    #@37a
    .line 1101
    :cond_2d
    const/4 v0, 0x0

    #@37b
    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    #@37d
    .line 1102
    invoke-virtual {p1}, Landroid/app/Fragment;->onDetach()V

    #@380
    .line 1103
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    #@382
    if-nez v0, :cond_2e

    #@384
    .line 1104
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@386
    new-instance v1, Ljava/lang/StringBuilder;

    #@388
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38b
    const-string/jumbo v2, "Fragment "

    #@38e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@391
    move-result-object v1

    #@392
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@395
    move-result-object v1

    #@396
    .line 1105
    const-string/jumbo v2, " did not call through to super.onDetach()"

    #@399
    .line 1104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39c
    move-result-object v1

    #@39d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a0
    move-result-object v1

    #@3a1
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3a4
    throw v0

    #@3a5
    .line 1107
    :cond_2e
    if-nez p5, :cond_7

    #@3a7
    .line 1108
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    #@3a9
    if-nez v0, :cond_2f

    #@3ab
    .line 1109
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    #@3ae
    goto/16 :goto_0

    #@3b0
    .line 1111
    :cond_2f
    const/4 v0, 0x0

    #@3b1
    iput-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@3b3
    .line 1112
    const/4 v0, 0x0

    #@3b4
    iput-object v0, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@3b6
    .line 1113
    const/4 v0, 0x0

    #@3b7
    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3b9
    .line 1114
    const/4 v0, 0x0

    #@3ba
    iput-object v0, p1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3bc
    goto/16 :goto_0

    #@3be
    .line 906
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@3cc
    .line 1015
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    #@0
    .prologue
    .line 1943
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 1942
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
    .line 2156
    const-string/jumbo v0, "fragment"

    #@7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2157
    return-object v4

    #@e
    .line 2160
    :cond_0
    const-string/jumbo v0, "class"

    #@11
    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    .line 2162
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->Fragment:[I

    #@17
    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v6

    #@1b
    .line 2163
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_1

    #@1d
    .line 2164
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    .line 2166
    :cond_1
    invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@24
    move-result v9

    #@25
    .line 2167
    .local v9, "id":I
    const/4 v0, 0x2

    #@26
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    .line 2168
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@2d
    .line 2170
    if-eqz p1, :cond_2

    #@2f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@32
    move-result v7

    #@33
    .line 2171
    .local v7, "containerId":I
    :goto_0
    if-ne v7, v5, :cond_3

    #@35
    if-ne v9, v5, :cond_3

    #@37
    if-nez v10, :cond_3

    #@39
    .line 2172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3b
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 2173
    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with"

    #@4b
    .line 2172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 2174
    const-string/jumbo v3, " an id for "

    #@52
    .line 2172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v0

    #@62
    .line 2170
    .end local v7    # "containerId":I
    :cond_2
    const/4 v7, 0x0

    #@63
    .restart local v7    # "containerId":I
    goto :goto_0

    #@64
    .line 2180
    :cond_3
    if-eq v9, v5, :cond_8

    #@66
    invoke-virtual {p0, v9}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    #@69
    move-result-object v1

    #@6a
    .line 2181
    :goto_1
    if-nez v1, :cond_4

    #@6c
    if-eqz v10, :cond_4

    #@6e
    .line 2182
    invoke-virtual {p0, v10}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    #@71
    move-result-object v1

    #@72
    .line 2184
    :cond_4
    if-nez v1, :cond_5

    #@74
    if-eq v7, v5, :cond_5

    #@76
    .line 2185
    invoke-virtual {p0, v7}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    #@79
    move-result-object v1

    #@7a
    .line 2188
    :cond_5
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@7c
    if-eqz v0, :cond_6

    #@7e
    const-string/jumbo v0, "FragmentManager"

    #@81
    new-instance v4, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v5, "onCreateView: id=0x"

    #@89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v4

    #@8d
    .line 2189
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    .line 2188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    .line 2189
    const-string/jumbo v5, " fname="

    #@98
    .line 2188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 2190
    const-string/jumbo v5, " existing="

    #@a3
    .line 2188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 2191
    :cond_6
    if-nez v1, :cond_a

    #@b4
    .line 2192
    invoke-static {p3, v8}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    #@b7
    move-result-object v1

    #@b8
    .line 2193
    .local v1, "fragment":Landroid/app/Fragment;
    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    #@ba
    .line 2194
    if-eqz v9, :cond_9

    #@bc
    move v0, v9

    #@bd
    :goto_2
    iput v0, v1, Landroid/app/Fragment;->mFragmentId:I

    #@bf
    .line 2195
    iput v7, v1, Landroid/app/Fragment;->mContainerId:I

    #@c1
    .line 2196
    iput-object v10, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@c3
    .line 2197
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    #@c5
    .line 2198
    iput-object p0, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@c7
    .line 2199
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@c9
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@cc
    move-result-object v0

    #@cd
    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@cf
    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@d2
    .line 2200
    invoke-virtual {p0, v1, v2}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@d5
    .line 2222
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_7
    :goto_3
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@d7
    if-ge v0, v2, :cond_c

    #@d9
    iget-boolean v0, v1, Landroid/app/Fragment;->mFromLayout:Z

    #@db
    if-eqz v0, :cond_c

    #@dd
    move-object v0, p0

    #@de
    move v4, v3

    #@df
    move v5, v3

    #@e0
    .line 2223
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@e3
    .line 2228
    :goto_4
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@e5
    if-nez v0, :cond_d

    #@e7
    .line 2229
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e9
    new-instance v2, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v3, "Fragment "

    #@f1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v2

    #@f9
    .line 2230
    const-string/jumbo v3, " did not create a view."

    #@fc
    .line 2229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v2

    #@104
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@107
    throw v0

    #@108
    .line 2180
    :cond_8
    const/4 v1, 0x0

    #@109
    .local v1, "fragment":Landroid/app/Fragment;
    goto/16 :goto_1

    #@10b
    .local v1, "fragment":Landroid/app/Fragment;
    :cond_9
    move v0, v7

    #@10c
    .line 2194
    goto :goto_2

    #@10d
    .line 2201
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_a
    iget-boolean v0, v1, Landroid/app/Fragment;->mInLayout:Z

    #@10f
    if-eqz v0, :cond_b

    #@111
    .line 2204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@113
    new-instance v2, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@11b
    move-result-object v3

    #@11c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v2

    #@120
    .line 2205
    const-string/jumbo v3, ": Duplicate id 0x"

    #@123
    .line 2204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v2

    #@127
    .line 2205
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12a
    move-result-object v3

    #@12b
    .line 2204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v2

    #@12f
    .line 2206
    const-string/jumbo v3, ", tag "

    #@132
    .line 2204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v2

    #@136
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v2

    #@13a
    .line 2206
    const-string/jumbo v3, ", or parent id 0x"

    #@13d
    .line 2204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v2

    #@141
    .line 2206
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@144
    move-result-object v3

    #@145
    .line 2204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v2

    #@149
    .line 2207
    const-string/jumbo v3, " with another fragment for "

    #@14c
    .line 2204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v2

    #@150
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v2

    #@154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v2

    #@158
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15b
    throw v0

    #@15c
    .line 2211
    :cond_b
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    #@15e
    .line 2215
    iget-boolean v0, v1, Landroid/app/Fragment;->mRetaining:Z

    #@160
    if-nez v0, :cond_7

    #@162
    .line 2216
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@164
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@167
    move-result-object v0

    #@168
    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@16a
    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@16d
    goto/16 :goto_3

    #@16f
    .line 2225
    :cond_c
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    #@172
    goto/16 :goto_4

    #@174
    .line 2232
    :cond_d
    if-eqz v9, :cond_e

    #@176
    .line 2233
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@178
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    #@17b
    .line 2235
    :cond_e
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@17d
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@180
    move-result-object v0

    #@181
    if-nez v0, :cond_f

    #@183
    .line 2236
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@185
    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@188
    .line 2238
    :cond_f
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@18a
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2243
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 861
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 862
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 864
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@c
    .line 865
    return-void

    #@d
    .line 867
    :cond_0
    iput-boolean v3, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@f
    .line 868
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move v4, v3

    #@14
    move v5, v3

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@18
    .line 860
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 2

    #@0
    .prologue
    .line 567
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    #@2
    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;)V

    #@5
    .line 571
    const/4 v1, 0x0

    #@6
    .line 567
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 566
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
    .line 599
    if-gez p1, :cond_0

    #@3
    .line 600
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
    .line 602
    :cond_0
    new-instance v0, Landroid/app/FragmentManagerImpl$4;

    #@1f
    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$4;-><init>(Landroid/app/FragmentManagerImpl;II)V

    #@22
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@25
    .line 598
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 583
    new-instance v0, Landroid/app/FragmentManagerImpl$3;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V

    #@5
    .line 587
    const/4 v1, 0x0

    #@6
    .line 583
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 582
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    #@0
    .prologue
    .line 576
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 577
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 578
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, -0x1

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

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
    .line 611
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 612
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 613
    if-gez p1, :cond_0

    #@8
    .line 614
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
    .line 616
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@24
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@27
    move-result-object v0

    #@28
    const/4 v1, 0x0

    #@29
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

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
    .line 592
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 593
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 594
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    const/4 v1, -0x1

    #@d
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

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
    .line 1575
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v9, :cond_0

    #@4
    .line 1576
    const/4 v9, 0x0

    #@5
    return v9

    #@6
    .line 1578
    :cond_0
    if-nez p2, :cond_2

    #@8
    if-gez p3, :cond_2

    #@a
    and-int/lit8 v9, p4, 0x1

    #@c
    if-nez v9, :cond_2

    #@e
    .line 1579
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v9

    #@14
    add-int/lit8 v5, v9, -0x1

    #@16
    .line 1580
    .local v5, "last":I
    if-gez v5, :cond_1

    #@18
    .line 1581
    const/4 v9, 0x0

    #@19
    return v9

    #@1a
    .line 1583
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/app/BackStackRecord;

    #@22
    .line 1584
    .local v1, "bss":Landroid/app/BackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    #@24
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@27
    .line 1585
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    #@29
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@2c
    .line 1586
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    invoke-virtual {v1, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@2f
    .line 1587
    const/4 v9, 0x1

    #@30
    const/4 v10, 0x0

    #@31
    invoke-virtual {v1, v9, v10, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    #@34
    .line 1588
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@37
    .line 1644
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    .end local v5    # "last":I
    :goto_0
    const/4 v9, 0x1

    #@38
    return v9

    #@39
    .line 1590
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    :cond_2
    const/4 v4, -0x1

    #@3a
    .line 1591
    .local v4, "index":I
    if-nez p2, :cond_3

    #@3c
    if-ltz p3, :cond_a

    #@3e
    .line 1594
    :cond_3
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v9

    #@44
    add-int/lit8 v4, v9, -0x1

    #@46
    .line 1595
    :goto_1
    if-ltz v4, :cond_4

    #@48
    .line 1596
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Landroid/app/BackStackRecord;

    #@50
    .line 1597
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_5

    #@52
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v9

    #@5a
    if-eqz v9, :cond_5

    #@5c
    .line 1605
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_4
    if-gez v4, :cond_7

    #@5e
    .line 1606
    const/4 v9, 0x0

    #@5f
    return v9

    #@60
    .line 1600
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_5
    if-ltz p3, :cond_6

    #@62
    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    #@64
    if-eq p3, v9, :cond_4

    #@66
    .line 1603
    :cond_6
    add-int/lit8 v4, v4, -0x1

    #@68
    goto :goto_1

    #@69
    .line 1608
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_7
    and-int/lit8 v9, p4, 0x1

    #@6b
    if-eqz v9, :cond_a

    #@6d
    .line 1609
    add-int/lit8 v4, v4, -0x1

    #@6f
    .line 1611
    :goto_2
    if-ltz v4, :cond_a

    #@71
    .line 1612
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@73
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v1

    #@77
    check-cast v1, Landroid/app/BackStackRecord;

    #@79
    .line 1613
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_8

    #@7b
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v9

    #@83
    if-nez v9, :cond_9

    #@85
    .line 1614
    :cond_8
    if-ltz p3, :cond_a

    #@87
    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    #@89
    if-ne p3, v9, :cond_a

    #@8b
    .line 1615
    :cond_9
    add-int/lit8 v4, v4, -0x1

    #@8d
    .line 1616
    goto :goto_2

    #@8e
    .line 1622
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_a
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@93
    move-result v9

    #@94
    add-int/lit8 v9, v9, -0x1

    #@96
    if-ne v4, v9, :cond_b

    #@98
    .line 1623
    const/4 v9, 0x0

    #@99
    return v9

    #@9a
    .line 1626
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    #@9c
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@9f
    .line 1627
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

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
    .line 1628
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@ab
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@ae
    move-result-object v9

    #@af
    check-cast v9, Landroid/app/BackStackRecord;

    #@b1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4
    .line 1627
    add-int/lit8 v3, v3, -0x1

    #@b6
    goto :goto_3

    #@b7
    .line 1630
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@ba
    move-result v9

    #@bb
    add-int/lit8 v0, v9, -0x1

    #@bd
    .line 1631
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    #@bf
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@c2
    .line 1632
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    #@c4
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@c7
    .line 1633
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    const/4 v3, 0x0

    #@c8
    :goto_4
    if-gt v3, v0, :cond_d

    #@ca
    .line 1634
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@cd
    move-result-object v9

    #@ce
    check-cast v9, Landroid/app/BackStackRecord;

    #@d0
    invoke-virtual {v9, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@d3
    .line 1633
    add-int/lit8 v3, v3, 0x1

    #@d5
    goto :goto_4

    #@d6
    .line 1636
    :cond_d
    const/4 v7, 0x0

    #@d7
    .line 1637
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    const/4 v3, 0x0

    #@d8
    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :goto_5
    if-gt v3, v0, :cond_10

    #@da
    .line 1638
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1639
    :cond_e
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ff
    move-result-object v9

    #@100
    check-cast v9, Landroid/app/BackStackRecord;

    #@102
    if-ne v3, v0, :cond_f

    #@104
    const/4 v10, 0x1

    #@105
    :goto_6
    invoke-virtual {v9, v10, v7, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    #@108
    move-result-object v7

    #@109
    .line 1637
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    add-int/lit8 v3, v3, 0x1

    #@10b
    goto :goto_5

    #@10c
    .line 1639
    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :cond_f
    const/4 v10, 0x0

    #@10d
    goto :goto_6

    #@10e
    .line 1642
    :cond_10
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@111
    goto/16 :goto_0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 646
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 647
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
    .line 648
    const-string/jumbo v2, " is not currently in the FragmentManager"

    #@19
    .line 647
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
    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@27
    .line 650
    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    #@29
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c
    .line 645
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1234
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    iget v3, p1, Landroid/app/Fragment;->mBackStackNesting:I

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
    .line 1235
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_6

    #@33
    const/4 v6, 0x0

    #@34
    .line 1236
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@36
    if-eqz v0, :cond_1

    #@38
    if-eqz v6, :cond_5

    #@3a
    .line 1245
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 1246
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@43
    .line 1248
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@45
    if-eqz v0, :cond_3

    #@47
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@49
    if-eqz v0, :cond_3

    #@4b
    .line 1249
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4d
    .line 1251
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    #@4f
    .line 1252
    iput-boolean v2, p1, Landroid/app/Fragment;->mRemoving:Z

    #@51
    .line 1253
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
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@5b
    .line 1233
    :cond_5
    return-void

    #@5c
    .line 1235
    .end local v6    # "inactive":Z
    :cond_6
    const/4 v6, 0x1

    #@5d
    .restart local v6    # "inactive":Z
    goto :goto_0
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    #@0
    .prologue
    .line 639
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 640
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    .line 638
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    #@0
    .prologue
    .line 1559
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1560
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 1561
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    #@15
    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    #@18
    .line 1560
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1558
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
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "nonConfig":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 1823
    if-nez p1, :cond_0

    #@4
    return-void

    #@5
    :cond_0
    move-object v2, p1

    #@6
    .line 1824
    check-cast v2, Landroid/app/FragmentManagerState;

    #@8
    .line 1825
    .local v2, "fms":Landroid/app/FragmentManagerState;
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@a
    if-nez v7, :cond_1

    #@c
    return-void

    #@d
    .line 1829
    :cond_1
    if-eqz p2, :cond_4

    #@f
    .line 1830
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
    .line 1831
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/app/Fragment;

    #@1c
    .line 1832
    .local v1, "f":Landroid/app/Fragment;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1833
    :cond_2
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@3c
    iget v8, v1, Landroid/app/Fragment;->mIndex:I

    #@3e
    aget-object v3, v7, v8

    #@40
    .line 1834
    .local v3, "fs":Landroid/app/FragmentState;
    iput-object v1, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@42
    .line 1835
    iput-object v10, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@44
    .line 1836
    iput v11, v1, Landroid/app/Fragment;->mBackStackNesting:I

    #@46
    .line 1837
    iput-boolean v11, v1, Landroid/app/Fragment;->mInLayout:Z

    #@48
    .line 1838
    iput-boolean v11, v1, Landroid/app/Fragment;->mAdded:Z

    #@4a
    .line 1839
    iput-object v10, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@4c
    .line 1840
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@4e
    if-eqz v7, :cond_3

    #@50
    .line 1841
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@52
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@54
    invoke-virtual {v8}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@5f
    .line 1842
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@61
    .line 1843
    const-string/jumbo v8, "android:view_state"

    #@64
    .line 1842
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@67
    move-result-object v7

    #@68
    iput-object v7, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@6a
    .line 1844
    iget-object v7, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@6c
    iput-object v7, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@6e
    .line 1830
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@70
    goto :goto_0

    #@71
    .line 1851
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v3    # "fs":Landroid/app/FragmentState;
    .end local v4    # "i":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    #@73
    iget-object v8, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@75
    array-length v8, v8

    #@76
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@79
    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@7b
    .line 1852
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@7d
    if-eqz v7, :cond_5

    #@7f
    .line 1853
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@81
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@84
    .line 1855
    :cond_5
    const/4 v4, 0x0

    #@85
    .restart local v4    # "i":I
    :goto_1
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@87
    array-length v7, v7

    #@88
    if-ge v4, v7, :cond_a

    #@8a
    .line 1856
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@8c
    aget-object v3, v7, v4

    #@8e
    .line 1857
    .restart local v3    # "fs":Landroid/app/FragmentState;
    if-eqz v3, :cond_7

    #@90
    .line 1858
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@92
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@94
    invoke-virtual {v3, v7, v8}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/Fragment;)Landroid/app/Fragment;

    #@97
    move-result-object v1

    #@98
    .line 1859
    .restart local v1    # "f":Landroid/app/Fragment;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1860
    :cond_6
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@c3
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c6
    .line 1864
    iput-object v10, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@c8
    .line 1855
    .end local v1    # "f":Landroid/app/Fragment;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@ca
    goto :goto_1

    #@cb
    .line 1866
    :cond_7
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@cd
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d0
    .line 1867
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@d2
    if-nez v7, :cond_8

    #@d4
    .line 1868
    new-instance v7, Ljava/util/ArrayList;

    #@d6
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@d9
    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@db
    .line 1870
    :cond_8
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1871
    :cond_9
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@fb
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fe
    move-result-object v8

    #@ff
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@102
    goto :goto_2

    #@103
    .line 1876
    .end local v3    # "fs":Landroid/app/FragmentState;
    :cond_a
    if-eqz p2, :cond_d

    #@105
    .line 1877
    const/4 v4, 0x0

    #@106
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@109
    move-result v7

    #@10a
    if-ge v4, v7, :cond_d

    #@10c
    .line 1878
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10f
    move-result-object v1

    #@110
    check-cast v1, Landroid/app/Fragment;

    #@112
    .line 1879
    .restart local v1    # "f":Landroid/app/Fragment;
    iget v7, v1, Landroid/app/Fragment;->mTargetIndex:I

    #@114
    if-ltz v7, :cond_b

    #@116
    .line 1880
    iget v7, v1, Landroid/app/Fragment;->mTargetIndex:I

    #@118
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@11a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@11d
    move-result v8

    #@11e
    if-ge v7, v8, :cond_c

    #@120
    .line 1881
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@122
    iget v8, v1, Landroid/app/Fragment;->mTargetIndex:I

    #@124
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@127
    move-result-object v7

    #@128
    check-cast v7, Landroid/app/Fragment;

    #@12a
    iput-object v7, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@12c
    .line 1877
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    #@12e
    goto :goto_3

    #@12f
    .line 1883
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
    .line 1884
    const-string/jumbo v9, " target no longer exists: "

    #@145
    .line 1883
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v8

    #@149
    .line 1884
    iget v9, v1, Landroid/app/Fragment;->mTargetIndex:I

    #@14b
    .line 1883
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
    .line 1885
    iput-object v10, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@158
    goto :goto_4

    #@159
    .line 1892
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_d
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    #@15b
    if-eqz v7, :cond_11

    #@15d
    .line 1893
    new-instance v7, Ljava/util/ArrayList;

    #@15f
    iget-object v8, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    #@161
    array-length v8, v8

    #@162
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@165
    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@167
    .line 1894
    const/4 v4, 0x0

    #@168
    :goto_5
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    #@16a
    array-length v7, v7

    #@16b
    if-ge v4, v7, :cond_12

    #@16d
    .line 1895
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16f
    iget-object v8, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    #@171
    aget v8, v8, v4

    #@173
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@176
    move-result-object v1

    #@177
    check-cast v1, Landroid/app/Fragment;

    #@179
    .line 1896
    .restart local v1    # "f":Landroid/app/Fragment;
    if-nez v1, :cond_e

    #@17b
    .line 1897
    new-instance v7, Ljava/lang/IllegalStateException;

    #@17d
    .line 1898
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
    iget-object v9, v2, Landroid/app/FragmentManagerState;->mAdded:[I

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
    .line 1897
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@198
    invoke-direct {p0, v7}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@19b
    .line 1900
    :cond_e
    const/4 v7, 0x1

    #@19c
    iput-boolean v7, v1, Landroid/app/Fragment;->mAdded:Z

    #@19e
    .line 1901
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1902
    :cond_f
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1c9
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1cc
    move-result v7

    #@1cd
    if-eqz v7, :cond_10

    #@1cf
    .line 1903
    new-instance v7, Ljava/lang/IllegalStateException;

    #@1d1
    const-string/jumbo v8, "Already added!"

    #@1d4
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d7
    throw v7

    #@1d8
    .line 1905
    :cond_10
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1da
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1dd
    .line 1894
    add-int/lit8 v4, v4, 0x1

    #@1df
    goto :goto_5

    #@1e0
    .line 1908
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_11
    iput-object v10, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1e2
    .line 1912
    :cond_12
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@1e4
    if-eqz v7, :cond_15

    #@1e6
    .line 1913
    new-instance v7, Ljava/util/ArrayList;

    #@1e8
    iget-object v8, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@1ea
    array-length v8, v8

    #@1eb
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@1ee
    iput-object v7, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1f0
    .line 1914
    const/4 v4, 0x0

    #@1f1
    :goto_6
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@1f3
    array-length v7, v7

    #@1f4
    if-ge v4, v7, :cond_16

    #@1f6
    .line 1915
    iget-object v7, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@1f8
    aget-object v7, v7, v4

    #@1fa
    invoke-virtual {v7, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    #@1fd
    move-result-object v0

    #@1fe
    .line 1916
    .local v0, "bse":Landroid/app/BackStackRecord;
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@200
    if-eqz v7, :cond_13

    #@202
    .line 1917
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
    .line 1918
    const-string/jumbo v9, " (index "

    #@218
    .line 1917
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v8

    #@21c
    .line 1918
    iget v9, v0, Landroid/app/BackStackRecord;->mIndex:I

    #@21e
    .line 1917
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@221
    move-result-object v8

    #@222
    .line 1918
    const-string/jumbo v9, "): "

    #@225
    .line 1917
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
    .line 1919
    new-instance v5, Landroid/util/LogWriter;

    #@236
    const-string/jumbo v7, "FragmentManager"

    #@239
    const/4 v8, 0x2

    #@23a
    invoke-direct {v5, v8, v7}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@23d
    .line 1920
    .local v5, "logw":Landroid/util/LogWriter;
    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    #@23f
    const/16 v7, 0x400

    #@241
    invoke-direct {v6, v5, v11, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@244
    .line 1921
    .local v6, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v7, "  "

    #@247
    invoke-virtual {v0, v7, v6, v11}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@24a
    .line 1922
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    #@24d
    .line 1924
    .end local v5    # "logw":Landroid/util/LogWriter;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_13
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@24f
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@252
    .line 1925
    iget v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    #@254
    if-ltz v7, :cond_14

    #@256
    .line 1926
    iget v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    #@258
    invoke-virtual {p0, v7, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    #@25b
    .line 1914
    :cond_14
    add-int/lit8 v4, v4, 0x1

    #@25d
    goto :goto_6

    #@25e
    .line 1930
    .end local v0    # "bse":Landroid/app/BackStackRecord;
    :cond_15
    iput-object v10, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@260
    .line 1820
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
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1648
    const/4 v1, 0x0

    #@1
    .line 1649
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3
    if-eqz v3, :cond_3

    #@5
    .line 1650
    const/4 v2, 0x0

    #@6
    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v2, v3, :cond_3

    #@e
    .line 1651
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/Fragment;

    #@16
    .line 1652
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@18
    iget-boolean v3, v0, Landroid/app/Fragment;->mRetainInstance:Z

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 1653
    if-nez v1, :cond_0

    #@1e
    .line 1654
    new-instance v1, Ljava/util/ArrayList;

    #@20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 1656
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 1657
    const/4 v3, 0x1

    #@27
    iput-boolean v3, v0, Landroid/app/Fragment;->mRetaining:Z

    #@29
    .line 1658
    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@2b
    if-eqz v3, :cond_2

    #@2d
    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@2f
    iget v3, v3, Landroid/app/Fragment;->mIndex:I

    #@31
    :goto_1
    iput v3, v0, Landroid/app/Fragment;->mTargetIndex:I

    #@33
    .line 1659
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1650
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_0

    #@54
    .line 1658
    :cond_2
    const/4 v3, -0x1

    #@55
    goto :goto_1

    #@56
    .line 1663
    .end local v0    # "f":Landroid/app/Fragment;
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
    .line 1718
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@4
    .line 1720
    const/4 v9, 0x1

    #@5
    iput-boolean v9, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@7
    .line 1722
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@9
    if-eqz v9, :cond_0

    #@b
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v9

    #@11
    if-gtz v9, :cond_1

    #@13
    .line 1723
    :cond_0
    return-object v12

    #@14
    .line 1727
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    .line 1728
    .local v0, "N":I
    new-array v1, v0, [Landroid/app/FragmentState;

    #@1c
    .line 1729
    .local v1, "active":[Landroid/app/FragmentState;
    const/4 v7, 0x0

    #@1d
    .line 1730
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    #@1e
    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_8

    #@20
    .line 1731
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Landroid/app/Fragment;

    #@28
    .line 1732
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_6

    #@2a
    .line 1733
    iget v9, v4, Landroid/app/Fragment;->mIndex:I

    #@2c
    if-gez v9, :cond_2

    #@2e
    .line 1734
    new-instance v9, Ljava/lang/IllegalStateException;

    #@30
    .line 1735
    new-instance v10, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v11, "Failure saving state: active "

    #@38
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v10

    #@3c
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v10

    #@40
    .line 1736
    const-string/jumbo v11, " has cleared index: "

    #@43
    .line 1735
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v10

    #@47
    .line 1736
    iget v11, v4, Landroid/app/Fragment;->mIndex:I

    #@49
    .line 1735
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    .line 1734
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@54
    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@57
    .line 1739
    :cond_2
    const/4 v7, 0x1

    #@58
    .line 1741
    new-instance v6, Landroid/app/FragmentState;

    #@5a
    invoke-direct {v6, v4}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    #@5d
    .line 1742
    .local v6, "fs":Landroid/app/FragmentState;
    aput-object v6, v1, v8

    #@5f
    .line 1744
    iget v9, v4, Landroid/app/Fragment;->mState:I

    #@61
    if-lez v9, :cond_7

    #@63
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@65
    if-nez v9, :cond_7

    #@67
    .line 1745
    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    #@6a
    move-result-object v9

    #@6b
    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@6d
    .line 1747
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@6f
    if-eqz v9, :cond_5

    #@71
    .line 1748
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@73
    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    #@75
    if-gez v9, :cond_3

    #@77
    .line 1749
    new-instance v9, Ljava/lang/IllegalStateException;

    #@79
    .line 1750
    new-instance v10, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v11, "Failure saving state: "

    #@81
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v10

    #@85
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v10

    #@89
    .line 1751
    const-string/jumbo v11, " has target not in fragment manager: "

    #@8c
    .line 1750
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v10

    #@90
    .line 1751
    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@92
    .line 1750
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v10

    #@96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v10

    #@9a
    .line 1749
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9d
    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@a0
    .line 1753
    :cond_3
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@a2
    if-nez v9, :cond_4

    #@a4
    .line 1754
    new-instance v9, Landroid/os/Bundle;

    #@a6
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@a9
    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@ab
    .line 1756
    :cond_4
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@ad
    .line 1757
    const-string/jumbo v10, "android:target_state"

    #@b0
    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@b2
    .line 1756
    invoke-virtual {p0, v9, v10, v11}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    #@b5
    .line 1758
    iget v9, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    #@b7
    if-eqz v9, :cond_5

    #@b9
    .line 1759
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@bb
    .line 1760
    const-string/jumbo v10, "android:target_req_state"

    #@be
    .line 1761
    iget v11, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    #@c0
    .line 1759
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c3
    .line 1769
    :cond_5
    :goto_1
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@c5
    if-eqz v9, :cond_6

    #@c7
    const-string/jumbo v9, "FragmentManager"

    #@ca
    new-instance v10, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v11, "Saved state of "

    #@d2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v10

    #@d6
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v10

    #@da
    const-string/jumbo v11, ": "

    #@dd
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v10

    #@e1
    .line 1770
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@e3
    .line 1769
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v10

    #@e7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v10

    #@eb
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ee
    .line 1730
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@f0
    goto/16 :goto_0

    #@f2
    .line 1766
    .restart local v6    # "fs":Landroid/app/FragmentState;
    :cond_7
    iget-object v9, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@f4
    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@f6
    goto :goto_1

    #@f7
    .line 1774
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_8
    if-nez v7, :cond_a

    #@f9
    .line 1775
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@fb
    if-eqz v9, :cond_9

    #@fd
    const-string/jumbo v9, "FragmentManager"

    #@100
    const-string/jumbo v10, "saveAllState: no fragments!"

    #@103
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 1776
    :cond_9
    return-object v12

    #@107
    .line 1779
    :cond_a
    const/4 v2, 0x0

    #@108
    .line 1780
    .local v2, "added":[I
    const/4 v3, 0x0

    #@109
    .line 1783
    .local v3, "backStack":[Landroid/app/BackStackState;
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10b
    if-eqz v9, :cond_d

    #@10d
    .line 1784
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@112
    move-result v0

    #@113
    .line 1785
    if-lez v0, :cond_d

    #@115
    .line 1786
    new-array v2, v0, [I

    #@117
    .line 1787
    .local v2, "added":[I
    const/4 v8, 0x0

    #@118
    :goto_2
    if-ge v8, v0, :cond_d

    #@11a
    .line 1788
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11c
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11f
    move-result-object v9

    #@120
    check-cast v9, Landroid/app/Fragment;

    #@122
    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    #@124
    aput v9, v2, v8

    #@126
    .line 1789
    aget v9, v2, v8

    #@128
    if-gez v9, :cond_b

    #@12a
    .line 1790
    new-instance v9, Ljava/lang/IllegalStateException;

    #@12c
    .line 1791
    new-instance v10, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v11, "Failure saving state: active "

    #@134
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v10

    #@138
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@13a
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13d
    move-result-object v11

    #@13e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v10

    #@142
    .line 1792
    const-string/jumbo v11, " has cleared index: "

    #@145
    .line 1791
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v10

    #@149
    .line 1792
    aget v11, v2, v8

    #@14b
    .line 1791
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v10

    #@14f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v10

    #@153
    .line 1790
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@156
    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@159
    .line 1794
    :cond_b
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@15b
    if-eqz v9, :cond_c

    #@15d
    const-string/jumbo v9, "FragmentManager"

    #@160
    new-instance v10, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v11, "saveAllState: adding fragment #"

    #@168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v10

    #@16c
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v10

    #@170
    .line 1795
    const-string/jumbo v11, ": "

    #@173
    .line 1794
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v10

    #@177
    .line 1795
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@179
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17c
    move-result-object v11

    #@17d
    .line 1794
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v10

    #@181
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v10

    #@185
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    .line 1787
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@18a
    goto :goto_2

    #@18b
    .line 1801
    .end local v2    # "added":[I
    :cond_d
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@18d
    if-eqz v9, :cond_f

    #@18f
    .line 1802
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@191
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@194
    move-result v0

    #@195
    .line 1803
    if-lez v0, :cond_f

    #@197
    .line 1804
    new-array v3, v0, [Landroid/app/BackStackState;

    #@199
    .line 1805
    .local v3, "backStack":[Landroid/app/BackStackState;
    const/4 v8, 0x0

    #@19a
    :goto_3
    if-ge v8, v0, :cond_f

    #@19c
    .line 1806
    new-instance v10, Landroid/app/BackStackState;

    #@19e
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1a0
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a3
    move-result-object v9

    #@1a4
    check-cast v9, Landroid/app/BackStackRecord;

    #@1a6
    invoke-direct {v10, p0, v9}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    #@1a9
    aput-object v10, v3, v8

    #@1ab
    .line 1807
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@1ad
    if-eqz v9, :cond_e

    #@1af
    const-string/jumbo v9, "FragmentManager"

    #@1b2
    new-instance v10, Ljava/lang/StringBuilder;

    #@1b4
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1b7
    const-string/jumbo v11, "saveAllState: adding back stack #"

    #@1ba
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v10

    #@1be
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v10

    #@1c2
    .line 1808
    const-string/jumbo v11, ": "

    #@1c5
    .line 1807
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v10

    #@1c9
    .line 1808
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1cb
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ce
    move-result-object v11

    #@1cf
    .line 1807
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v10

    #@1d3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d6
    move-result-object v10

    #@1d7
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1da
    .line 1805
    :cond_e
    add-int/lit8 v8, v8, 0x1

    #@1dc
    goto :goto_3

    #@1dd
    .line 1813
    .end local v3    # "backStack":[Landroid/app/BackStackState;
    :cond_f
    new-instance v5, Landroid/app/FragmentManagerState;

    #@1df
    invoke-direct {v5}, Landroid/app/FragmentManagerState;-><init>()V

    #@1e2
    .line 1814
    .local v5, "fms":Landroid/app/FragmentManagerState;
    iput-object v1, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@1e4
    .line 1815
    iput-object v2, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    #@1e6
    .line 1816
    iput-object v3, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@1e8
    .line 1817
    return-object v5
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1683
    const/4 v0, 0x0

    #@2
    .line 1685
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1686
    new-instance v1, Landroid/os/Bundle;

    #@8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@d
    .line 1688
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@f
    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    #@12
    .line 1689
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@14
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1690
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1c
    .line 1691
    .local v0, "result":Landroid/os/Bundle;
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1e
    .line 1694
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1695
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    #@25
    .line 1697
    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1698
    if-nez v0, :cond_3

    #@2b
    .line 1699
    new-instance v0, Landroid/os/Bundle;

    #@2d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@30
    .line 1702
    :cond_3
    const-string/jumbo v1, "android:view_state"

    #@33
    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@35
    .line 1701
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@38
    .line 1704
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@3a
    if-nez v1, :cond_6

    #@3c
    .line 1705
    if-nez v0, :cond_5

    #@3e
    .line 1706
    new-instance v0, Landroid/os/Bundle;

    #@40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@43
    .line 1709
    :cond_5
    const-string/jumbo v1, "android:user_visible_hint"

    #@46
    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4b
    .line 1712
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 673
    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    #@3
    if-gez v2, :cond_0

    #@5
    .line 674
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
    .line 675
    const-string/jumbo v4, " is not currently in the FragmentManager"

    #@1a
    .line 674
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
    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@28
    .line 677
    :cond_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@2a
    if-lez v2, :cond_2

    #@2c
    .line 678
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    #@2f
    move-result-object v0

    #@30
    .line 679
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    #@32
    new-instance v1, Landroid/app/Fragment$SavedState;

    #@34
    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    #@37
    :cond_1
    return-object v1

    #@38
    .line 681
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1667
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1668
    return-void

    #@6
    .line 1670
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@8
    if-nez v0, :cond_2

    #@a
    .line 1671
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@11
    .line 1675
    :goto_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@13
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@18
    .line 1676
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v0

    #@1e
    if-lez v0, :cond_1

    #@20
    .line 1677
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@22
    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@24
    .line 1678
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@26
    .line 1666
    :cond_1
    return-void

    #@27
    .line 1673
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@2c
    goto :goto_0
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    #@0
    .prologue
    .line 1467
    monitor-enter p0

    #@1
    .line 1468
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1469
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@c
    .line 1471
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    .line 1472
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    #@14
    .line 1473
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1474
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    :goto_0
    monitor-exit p0

    #@43
    .line 1466
    return-void

    #@44
    .line 1476
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    #@46
    .line 1477
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@48
    const/4 v2, 0x0

    #@49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 1478
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@4e
    if-nez v1, :cond_3

    #@50
    .line 1479
    new-instance v1, Ljava/util/ArrayList;

    #@52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@55
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@57
    .line 1481
    :cond_3
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1482
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    .line 1483
    add-int/lit8 v0, v0, 0x1

    #@80
    goto :goto_1

    #@81
    .line 1485
    :cond_5
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1486
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@af
    goto :goto_0

    #@b0
    .line 1467
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    #@b1
    monitor-exit p0

    #@b2
    throw v1
.end method

.method public showFragment(Landroid/app/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1292
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

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
    .line 1293
    :cond_0
    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 1294
    iput-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    #@26
    .line 1295
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 1296
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@2d
    move-result-object v0

    #@2e
    .line 1298
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    #@30
    .line 1299
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@32
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@35
    .line 1300
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@37
    invoke-direct {p0, v1, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@3a
    .line 1301
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@3d
    .line 1303
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3f
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    #@42
    .line 1305
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    #@44
    if-eqz v1, :cond_3

    #@46
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@48
    if-eqz v1, :cond_3

    #@4a
    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@4c
    if-eqz v1, :cond_3

    #@4e
    .line 1306
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@50
    .line 1308
    :cond_3
    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    #@53
    .line 1291
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    #@0
    .prologue
    .line 1167
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 1169
    :cond_0
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    if-ge v1, v2, :cond_2

    #@e
    .line 1170
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/Fragment;

    #@16
    .line 1171
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@18
    .line 1172
    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    #@1b
    .line 1169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1166
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 692
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 693
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
    .line 694
    const-string/jumbo v1, " in "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 695
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 696
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@24
    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@27
    .line 700
    :goto_0
    const-string/jumbo v1, "}}"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 698
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@34
    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@37
    goto :goto_0
.end method
