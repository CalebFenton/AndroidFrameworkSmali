.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$1;,
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
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
    .line 402
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@3
    .line 401
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 401
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    #@4
    .line 464
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@7
    .line 477
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@9
    .line 478
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@b
    .line 480
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    #@d
    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    #@10
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@12
    .line 401
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    #@0
    .prologue
    .line 1433
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1434
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 1435
    const-string/jumbo v1, "Can not perform this action after onSaveInstanceState"

    #@9
    .line 1434
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1437
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1438
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    .line 1439
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
    .line 1438
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1432
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
    .line 513
    if-nez p0, :cond_0

    #@4
    .line 514
    return v6

    #@5
    .line 516
    :cond_0
    instance-of v4, p0, Landroid/animation/ValueAnimator;

    #@7
    if-eqz v4, :cond_2

    #@9
    move-object v2, p0

    #@a
    .line 517
    check-cast v2, Landroid/animation/ValueAnimator;

    #@c
    .line 518
    .local v2, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    #@f
    move-result-object v3

    #@10
    .line 519
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@12
    if-ge v1, v4, :cond_4

    #@14
    .line 520
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
    .line 521
    return v7

    #@24
    .line 519
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 524
    .end local v1    # "i":I
    .end local v2    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_2
    instance-of v4, p0, Landroid/animation/AnimatorSet;

    #@29
    if-eqz v4, :cond_4

    #@2b
    .line 525
    check-cast p0, Landroid/animation/AnimatorSet;

    #@2d
    .end local p0    # "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    #@30
    move-result-object v0

    #@31
    .line 526
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
    .line 527
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
    .line 528
    return v7

    #@45
    .line 526
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 532
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
    .line 2226
    const/4 v0, 0x0

    #@1
    .line 2227
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 2238
    :goto_0
    return v0

    #@5
    .line 2229
    :sswitch_0
    const/16 v0, 0x2002

    #@7
    .line 2230
    goto :goto_0

    #@8
    .line 2232
    :sswitch_1
    const/16 v0, 0x1001

    #@a
    .line 2233
    goto :goto_0

    #@b
    .line 2235
    :sswitch_2
    const/16 v0, 0x1003

    #@d
    .line 2236
    goto :goto_0

    #@e
    .line 2227
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
    .line 548
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 549
    :cond_0
    return-void

    #@5
    .line 551
    :cond_1
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 552
    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    #@d
    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    #@10
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@13
    .line 547
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
    .line 536
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 537
    :cond_0
    return v0

    #@6
    .line 539
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_2

    #@c
    .line 540
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    #@f
    move-result v1

    #@10
    .line 539
    if-eqz v1, :cond_2

    #@12
    .line 541
    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    #@15
    move-result v0

    #@16
    .line 539
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
    .line 488
    const-string/jumbo v3, "FragmentManager"

    #@4
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 489
    new-instance v1, Landroid/util/LogWriter;

    #@d
    const-string/jumbo v3, "FragmentManager"

    #@10
    const/4 v4, 0x6

    #@11
    invoke-direct {v1, v4, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@14
    .line 490
    .local v1, "logw":Landroid/util/LogWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    #@16
    const/16 v3, 0x400

    #@18
    invoke-direct {v2, v1, v5, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@1b
    .line 491
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 492
    const-string/jumbo v3, "FragmentManager"

    #@22
    const-string/jumbo v4, "Activity state:"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 494
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
    .line 508
    :goto_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@37
    .line 509
    throw p1

    #@38
    .line 495
    :catch_0
    move-exception v0

    #@39
    .line 496
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@3c
    .line 497
    const-string/jumbo v3, "FragmentManager"

    #@3f
    const-string/jumbo v4, "Failed dumping state"

    #@42
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_0

    #@46
    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "FragmentManager"

    #@49
    const-string/jumbo v4, "Fragment manager state:"

    #@4c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 502
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
    .line 503
    :catch_1
    move-exception v0

    #@5b
    .line 504
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    #@5e
    .line 505
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
    .line 2243
    const/4 v0, -0x1

    #@1
    .line 2244
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    #@4
    .line 2261
    :goto_0
    return v0

    #@5
    .line 2246
    :sswitch_0
    if-eqz p1, :cond_0

    #@7
    .line 2247
    const/4 v0, 0x0

    #@8
    goto :goto_0

    #@9
    .line 2248
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    .line 2251
    :sswitch_1
    if-eqz p1, :cond_1

    #@d
    .line 2252
    const/4 v0, 0x2

    #@e
    goto :goto_0

    #@f
    .line 2253
    :cond_1
    const/4 v0, 0x3

    #@10
    goto :goto_0

    #@11
    .line 2256
    :sswitch_2
    if-eqz p1, :cond_2

    #@13
    .line 2257
    const/4 v0, 0x4

    #@14
    goto :goto_0

    #@15
    .line 2258
    :cond_2
    const/4 v0, 0x5

    #@16
    goto :goto_0

    #@17
    .line 2244
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
    .line 1615
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1616
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@b
    .line 1618
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1619
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@13
    .line 1614
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
    .line 1235
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1236
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@c
    .line 1238
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
    .line 1239
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    #@2d
    .line 1240
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@2f
    if-nez v0, :cond_4

    #@31
    .line 1241
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 1242
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
    .line 1244
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 1245
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    #@5a
    .line 1246
    const/4 v0, 0x0

    #@5b
    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    #@5d
    .line 1247
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@5f
    if-eqz v0, :cond_3

    #@61
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@63
    if-eqz v0, :cond_3

    #@65
    .line 1248
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@67
    .line 1250
    :cond_3
    if-eqz p2, :cond_4

    #@69
    .line 1251
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    #@6c
    .line 1234
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    #@0
    .prologue
    .line 632
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 633
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@b
    .line 635
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 631
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 4
    .param p1, "bse"    # Landroid/app/BackStackRecord;

    #@0
    .prologue
    .line 1470
    monitor-enter p0

    #@1
    .line 1471
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
    .line 1472
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 1473
    new-instance v1, Ljava/util/ArrayList;

    #@13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@18
    .line 1475
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 1476
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
    .line 1477
    :cond_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    monitor-exit p0

    #@4d
    .line 1478
    return v0

    #@4e
    .line 1481
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
    .line 1482
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
    .line 1483
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@8d
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    monitor-exit p0

    #@91
    .line 1484
    return v0

    #@92
    .line 1470
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
    .line 2022
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
    .line 2023
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@f
    .line 2024
    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@11
    .line 2025
    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@13
    .line 2021
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
    .line 1355
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
    .line 1356
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@22
    if-eqz v0, :cond_5

    #@24
    .line 1357
    iput-boolean v5, p1, Landroid/app/Fragment;->mDetached:Z

    #@26
    .line 1358
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    #@28
    if-nez v0, :cond_5

    #@2a
    .line 1359
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    #@30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@35
    .line 1362
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 1363
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
    .line 1365
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
    .line 1366
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    .line 1367
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    #@7c
    .line 1368
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@7e
    if-eqz v0, :cond_4

    #@80
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@82
    if-eqz v0, :cond_4

    #@84
    .line 1369
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@86
    .line 1371
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
    .line 1354
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    #@0
    .prologue
    .line 558
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
    .line 1336
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
    .line 1337
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@22
    if-nez v0, :cond_4

    #@24
    .line 1338
    iput-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    #@26
    .line 1339
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 1341
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2c
    if-eqz v0, :cond_2

    #@2e
    .line 1342
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
    .line 1343
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@51
    .line 1345
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@53
    if-eqz v0, :cond_3

    #@55
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@57
    if-eqz v0, :cond_3

    #@59
    .line 1346
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@5b
    .line 1348
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
    .line 1349
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@64
    .line 1335
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2038
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 2039
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 2037
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2098
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2099
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
    .line 2100
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2101
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2102
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    #@1a
    .line 2099
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2097
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
    .line 2192
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2193
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
    .line 2194
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2195
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2196
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 2197
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 2193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2202
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
    .line 2033
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 2034
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 2032
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 2131
    const/4 v3, 0x0

    #@1
    .line 2132
    .local v3, "show":Z
    const/4 v2, 0x0

    #@2
    .line 2133
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4
    if-eqz v4, :cond_2

    #@6
    .line 2134
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
    .line 2135
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/app/Fragment;

    #@17
    .line 2136
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@19
    .line 2137
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 2138
    const/4 v3, 0x1

    #@20
    .line 2139
    if-nez v2, :cond_0

    #@22
    .line 2140
    new-instance v2, Ljava/util/ArrayList;

    #@24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 2142
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 2134
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2148
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@2f
    if-eqz v4, :cond_4

    #@31
    .line 2149
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
    .line 2150
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/app/Fragment;

    #@42
    .line 2151
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v2, :cond_3

    #@44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_3

    #@4a
    .line 2149
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 2152
    :cond_3
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    #@50
    goto :goto_2

    #@51
    .line 2157
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_4
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@53
    .line 2159
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
    .line 2065
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@5
    .line 2066
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@8
    .line 2067
    invoke-virtual {p0, v2, v2}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@b
    .line 2068
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@d
    .line 2069
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@f
    .line 2070
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@11
    .line 2064
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 2

    #@0
    .prologue
    .line 2061
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 2060
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    #@0
    .prologue
    .line 2109
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2110
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
    .line 2111
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2112
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2113
    invoke-virtual {v0}, Landroid/app/Fragment;->performLowMemory()V

    #@1a
    .line 2110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2108
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    #@0
    .prologue
    .line 2074
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2075
    return-void

    #@5
    .line 2077
    :cond_0
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
    if-ltz v1, :cond_2

    #@f
    .line 2078
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/app/Fragment;

    #@17
    .line 2079
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@19
    .line 2080
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performMultiWindowModeChanged(Z)V

    #@1c
    .line 2077
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2073
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 2178
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2179
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
    .line 2180
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2181
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2182
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 2183
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 2179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2188
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
    .line 2206
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2207
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
    .line 2208
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2209
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2210
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    #@1a
    .line 2207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2205
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    #@0
    .prologue
    .line 2053
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 2052
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 3
    .param p1, "isInPictureInPictureMode"    # Z

    #@0
    .prologue
    .line 2086
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2087
    return-void

    #@5
    .line 2089
    :cond_0
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
    if-ltz v1, :cond_2

    #@f
    .line 2090
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/app/Fragment;

    #@17
    .line 2091
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@19
    .line 2092
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPictureInPictureModeChanged(Z)V

    #@1c
    .line 2089
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2085
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2163
    const/4 v2, 0x0

    #@1
    .line 2164
    .local v2, "show":Z
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 2165
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
    .line 2166
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/Fragment;

    #@16
    .line 2167
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@18
    .line 2168
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 2169
    const/4 v2, 0x1

    #@1f
    .line 2165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2174
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
    .line 2048
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 2049
    const/4 v0, 0x5

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 2047
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2043
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 2044
    const/4 v0, 0x4

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    .line 2042
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    #@0
    .prologue
    .line 2057
    const/4 v0, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    .line 2056
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    .line 2120
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 2121
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
    .line 2122
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/Fragment;

    #@15
    .line 2123
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@17
    .line 2124
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    #@1a
    .line 2121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 2119
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 4

    #@0
    .prologue
    .line 1591
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@2
    if-eqz v3, :cond_2

    #@4
    .line 1592
    const/4 v2, 0x0

    #@5
    .line 1593
    .local v2, "loadersRunning":Z
    const/4 v1, 0x0

    #@6
    .end local v2    # "loadersRunning":Z
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_1

    #@e
    .line 1594
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/Fragment;

    #@16
    .line 1595
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@18
    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 1596
    iget-object v3, v0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1e
    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@21
    move-result v3

    #@22
    or-int/2addr v2, v3

    #@23
    .line 1593
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1599
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_1
    if-nez v2, :cond_2

    #@28
    .line 1600
    const/4 v3, 0x0

    #@29
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@2b
    .line 1601
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@2e
    .line 1590
    .end local v1    # "i":I
    :cond_2
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
    .line 707
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
    .line 710
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 711
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 712
    .local v0, "N":I
    if-lez v0, :cond_1

    #@20
    .line 713
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    const-string/jumbo v6, "Active Fragments in "

    #@26
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    .line 714
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
    .line 715
    const-string/jumbo v6, ":"

    #@37
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 716
    const/4 v3, 0x0

    #@3b
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@3d
    .line 717
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    check-cast v2, Landroid/app/Fragment;

    #@45
    .line 718
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@48
    const-string/jumbo v6, "  #"

    #@4b
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 719
    const-string/jumbo v6, ": "

    #@54
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5a
    .line 720
    if-eqz v2, :cond_0

    #@5c
    .line 721
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5f
    .line 716
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_0

    #@62
    .line 727
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@64
    if-eqz v6, :cond_2

    #@66
    .line 728
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@6b
    move-result v0

    #@6c
    .line 729
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    #@6e
    .line 730
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v6, "Added Fragments:"

    #@74
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@77
    .line 731
    const/4 v3, 0x0

    #@78
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    #@7a
    .line 732
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/app/Fragment;

    #@82
    .line 733
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    const-string/jumbo v6, "  #"

    #@88
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@8e
    .line 734
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
    .line 731
    add-int/lit8 v3, v3, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 739
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@a0
    if-eqz v6, :cond_3

    #@a2
    .line 740
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v0

    #@a8
    .line 741
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    #@aa
    .line 742
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ad
    const-string/jumbo v6, "Fragments Created Menus:"

    #@b0
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b3
    .line 743
    const/4 v3, 0x0

    #@b4
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    #@b6
    .line 744
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bb
    move-result-object v2

    #@bc
    check-cast v2, Landroid/app/Fragment;

    #@be
    .line 745
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c1
    const-string/jumbo v6, "  #"

    #@c4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@ca
    .line 746
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
    .line 743
    add-int/lit8 v3, v3, 0x1

    #@d9
    goto :goto_2

    #@da
    .line 751
    .end local v0    # "N":I
    .end local v2    # "f":Landroid/app/Fragment;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@dc
    if-eqz v6, :cond_4

    #@de
    .line 752
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v0

    #@e4
    .line 753
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    #@e6
    .line 754
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e9
    const-string/jumbo v6, "Back Stack:"

    #@ec
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ef
    .line 755
    const/4 v3, 0x0

    #@f0
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    #@f2
    .line 756
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@f4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f7
    move-result-object v1

    #@f8
    check-cast v1, Landroid/app/BackStackRecord;

    #@fa
    .line 757
    .local v1, "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fd
    const-string/jumbo v6, "  #"

    #@100
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@103
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@106
    .line 758
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
    .line 759
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@116
    .line 755
    add-int/lit8 v3, v3, 0x1

    #@118
    goto :goto_3

    #@119
    .line 764
    .end local v0    # "N":I
    .end local v1    # "bs":Landroid/app/BackStackRecord;
    .end local v3    # "i":I
    :cond_4
    monitor-enter p0

    #@11a
    .line 765
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@11c
    if-eqz v6, :cond_5

    #@11e
    .line 766
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@120
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@123
    move-result v0

    #@124
    .line 767
    .restart local v0    # "N":I
    if-lez v0, :cond_5

    #@126
    .line 768
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@129
    const-string/jumbo v6, "Back Stack Indices:"

    #@12c
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12f
    .line 769
    const/4 v3, 0x0

    #@130
    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_5

    #@132
    .line 770
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@134
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@137
    move-result-object v1

    #@138
    check-cast v1, Landroid/app/BackStackRecord;

    #@13a
    .line 771
    .restart local v1    # "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    const-string/jumbo v6, "  #"

    #@140
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@143
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@146
    .line 772
    const-string/jumbo v6, ": "

    #@149
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14c
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@14f
    .line 769
    add-int/lit8 v3, v3, 0x1

    #@151
    goto :goto_4

    #@152
    .line 777
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
    .line 778
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    const-string/jumbo v6, "mAvailBackStackIndices: "

    #@164
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@167
    .line 779
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
    .line 783
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@177
    if-eqz v6, :cond_7

    #@179
    .line 784
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@17b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@17e
    move-result v0

    #@17f
    .line 785
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    #@181
    .line 786
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    const-string/jumbo v6, "Pending Actions:"

    #@187
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18a
    .line 787
    const/4 v3, 0x0

    #@18b
    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_7

    #@18d
    .line 788
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@18f
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@192
    move-result-object v5

    #@193
    check-cast v5, Ljava/lang/Runnable;

    #@195
    .line 789
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@198
    const-string/jumbo v6, "  #"

    #@19b
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@1a1
    .line 790
    const-string/jumbo v6, ": "

    #@1a4
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1aa
    .line 787
    add-int/lit8 v3, v3, 0x1

    #@1ac
    goto :goto_5

    #@1ad
    .line 764
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
    .line 795
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b3
    const-string/jumbo v6, "FragmentManager misc state:"

    #@1b6
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b9
    .line 796
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
    .line 797
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
    .line 798
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@1d7
    if-eqz v6, :cond_8

    #@1d9
    .line 799
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
    .line 801
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
    .line 802
    const-string/jumbo v6, " mStateSaved="

    #@1f8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fb
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@1fd
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    #@200
    .line 803
    const-string/jumbo v6, " mDestroyed="

    #@203
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@206
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@208
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@20b
    .line 804
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@20d
    if-eqz v6, :cond_9

    #@20f
    .line 805
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    const-string/jumbo v6, "  mNeedMenuInvalidate="

    #@215
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@218
    .line 806
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@21a
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    #@21d
    .line 808
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@21f
    if-eqz v6, :cond_a

    #@221
    .line 809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@224
    const-string/jumbo v6, "  mNoTransactionsBecause="

    #@227
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22a
    .line 810
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@22c
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22f
    .line 812
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
    .line 813
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23e
    const-string/jumbo v6, "  mAvailIndices: "

    #@241
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@244
    .line 814
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
    .line 706
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    #@0
    .prologue
    .line 1451
    if-nez p2, :cond_0

    #@2
    .line 1452
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@5
    .line 1454
    :cond_0
    monitor-enter p0

    #@6
    .line 1455
    :try_start_0
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@8
    if-nez v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@c
    if-nez v0, :cond_2

    #@e
    .line 1456
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
    .line 1454
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0

    #@1a
    .line 1458
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 1459
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@25
    .line 1461
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1462
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
    .line 1463
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
    .line 1464
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
    .line 1450
    return-void
.end method

.method public execPendingActions()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1549
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 1550
    new-instance v3, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v4, "Recursive entry to executePendingTransactions"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 1553
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@15
    invoke-virtual {v4}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v4

    #@1d
    if-eq v3, v4, :cond_1

    #@1f
    .line 1554
    new-instance v3, Ljava/lang/IllegalStateException;

    #@21
    const-string/jumbo v4, "Must be called from main thread of process"

    #@24
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 1557
    :cond_1
    const/4 v0, 0x0

    #@29
    .line 1562
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    #@2a
    .line 1563
    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@2c
    if-eqz v3, :cond_2

    #@2e
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_3

    #@36
    :cond_2
    monitor-exit p0

    #@37
    .line 1585
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    #@3a
    .line 1587
    return v0

    #@3b
    .line 1567
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v2

    #@41
    .line 1568
    .local v2, "numActions":I
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@43
    if-eqz v3, :cond_4

    #@45
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@47
    array-length v3, v3

    #@48
    if-ge v3, v2, :cond_5

    #@4a
    .line 1569
    :cond_4
    new-array v3, v2, [Ljava/lang/Runnable;

    #@4c
    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@4e
    .line 1571
    :cond_5
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@50
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@52
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@55
    .line 1572
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@5a
    .line 1573
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@5c
    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@5f
    move-result-object v3

    #@60
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@62
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    monitor-exit p0

    #@66
    .line 1576
    const/4 v3, 0x1

    #@67
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@69
    .line 1577
    const/4 v1, 0x0

    #@6a
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    #@6c
    .line 1578
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@6e
    aget-object v3, v3, v1

    #@70
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    #@73
    .line 1579
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@75
    aput-object v5, v3, v1

    #@77
    .line 1577
    add-int/lit8 v1, v1, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 1562
    .end local v1    # "i":I
    .end local v2    # "numActions":I
    :catchall_0
    move-exception v3

    #@7b
    monitor-exit p0

    #@7c
    throw v3

    #@7d
    .line 1581
    .restart local v1    # "i":I
    .restart local v2    # "numActions":I
    :cond_6
    iput-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@7f
    .line 1582
    const/4 v0, 0x1

    #@80
    goto :goto_0
.end method

.method public execSingleAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    #@0
    .prologue
    .line 1526
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1527
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "FragmentManager is already executing transactions"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1530
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@13
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1a
    move-result-object v1

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 1531
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1f
    const-string/jumbo v1, "Must be called from main thread of fragment host"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 1534
    :cond_1
    if-nez p2, :cond_2

    #@28
    .line 1535
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@2b
    .line 1538
    :cond_2
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@2e
    .line 1539
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@31
    .line 1540
    const/4 v0, 0x0

    #@32
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@34
    .line 1542
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    #@37
    .line 1525
    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    #@0
    .prologue
    .line 563
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
    .line 1377
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1379
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
    .line 1380
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/app/Fragment;

    #@17
    .line 1381
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@19
    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    #@1b
    if-ne v2, p1, :cond_0

    #@1d
    .line 1382
    return-object v0

    #@1e
    .line 1379
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 1386
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 1388
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
    .line 1389
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/app/Fragment;

    #@37
    .line 1390
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    #@39
    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    #@3b
    if-ne v2, p1, :cond_2

    #@3d
    .line 1391
    return-object v0

    #@3e
    .line 1388
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@40
    goto :goto_1

    #@41
    .line 1395
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
    .line 1399
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 1401
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
    .line 1402
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/app/Fragment;

    #@19
    .line 1403
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
    .line 1404
    return-object v0

    #@24
    .line 1401
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@26
    goto :goto_0

    #@27
    .line 1408
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    if-eqz v2, :cond_3

    #@2b
    if-eqz p1, :cond_3

    #@2d
    .line 1410
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
    .line 1411
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/app/Fragment;

    #@3f
    .line 1412
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
    .line 1413
    return-object v0

    #@4a
    .line 1410
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@4c
    goto :goto_1

    #@4d
    .line 1417
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
    .line 1421
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3
    if-eqz v2, :cond_1

    #@5
    if-eqz p1, :cond_1

    #@7
    .line 1422
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
    .line 1423
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/app/Fragment;

    #@19
    .line 1424
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    #@1b
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1425
    return-object v0

    #@22
    .line 1422
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0

    #@25
    .line 1429
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
    .line 1515
    monitor-enter p0

    #@1
    .line 1516
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 1517
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1518
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@12
    .line 1520
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
    .line 1521
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
    .line 1514
    return-void

    #@3b
    .line 1515
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
    .line 627
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
    .line 622
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
    .line 656
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@5
    move-result v1

    #@6
    .line 657
    .local v1, "index":I
    if-ne v1, v2, :cond_0

    #@8
    .line 658
    return-object v3

    #@9
    .line 660
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v2

    #@f
    if-lt v1, v2, :cond_1

    #@11
    .line 661
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
    .line 662
    const-string/jumbo v4, ": index "

    #@26
    .line 661
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
    .line 664
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/app/Fragment;

    #@40
    .line 665
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_2

    #@42
    .line 666
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
    .line 667
    const-string/jumbo v4, ": index "

    #@57
    .line 666
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
    .line 669
    :cond_2
    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    #@0
    .prologue
    .line 2359
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
    .line 1282
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
    .line 1283
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    #@21
    if-nez v2, :cond_3

    #@23
    .line 1284
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    #@25
    .line 1285
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 1286
    const/4 v2, 0x0

    #@2a
    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@2d
    move-result-object v0

    #@2e
    .line 1288
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_4

    #@30
    .line 1289
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@32
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@35
    .line 1292
    move-object v1, p1

    #@36
    .line 1293
    .local v1, "finalFragment":Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$6;

    #@38
    invoke-direct {v2, p0, p1}, Landroid/app/FragmentManagerImpl$6;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    #@3b
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3e
    .line 1301
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@40
    invoke-direct {p0, v2, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@43
    .line 1302
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@46
    .line 1307
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
    .line 1308
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@54
    .line 1310
    :cond_2
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    #@57
    .line 1281
    :cond_3
    return-void

    #@58
    .line 1304
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
    .line 2218
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
    .line 2219
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@b
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    #@e
    .line 2217
    :goto_0
    return-void

    #@f
    .line 2221
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
    .line 687
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@2
    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 874
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@2
    if-lt v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
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
    .line 821
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    #@4
    .line 820
    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    #@7
    move-result-object v2

    #@8
    .line 822
    .local v2, "animObj":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    #@a
    .line 823
    return-object v2

    #@b
    .line 826
    :cond_0
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 827
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
    .line 828
    .local v1, "anim":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    #@1d
    .line 829
    return-object v1

    #@1e
    .line 833
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_1
    if-nez p2, :cond_2

    #@20
    .line 834
    return-object v8

    #@21
    .line 837
    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    #@24
    move-result v4

    #@25
    .line 838
    .local v4, "styleIndex":I
    if-gez v4, :cond_3

    #@27
    .line 839
    return-object v8

    #@28
    .line 842
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
    .line 843
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@34
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    #@37
    move-result p4

    #@38
    .line 845
    :cond_4
    if-nez p4, :cond_5

    #@3a
    .line 846
    return-object v8

    #@3b
    .line 849
    :cond_5
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@3d
    invoke-virtual {v5}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@40
    move-result-object v5

    #@41
    .line 850
    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    #@43
    .line 849
    invoke-virtual {v5, p4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@46
    move-result-object v3

    #@47
    .line 851
    .local v3, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4a
    move-result v0

    #@4b
    .line 852
    .local v0, "anim":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@4e
    .line 854
    if-nez v0, :cond_6

    #@50
    .line 855
    return-object v8

    #@51
    .line 858
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
    .line 1201
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 1202
    return-void

    #@5
    .line 1205
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
    .line 1206
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    if-nez v0, :cond_2

    #@15
    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1c
    .line 1209
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
    .line 1210
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1216
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
    .line 1200
    :cond_3
    return-void

    #@4b
    .line 1213
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
    .line 1214
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
    .line 1220
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    #@3
    if-gez v0, :cond_0

    #@5
    .line 1221
    return-void

    #@6
    .line 1224
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
    .line 1225
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@26
    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    #@28
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 1226
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    #@31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@34
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@36
    .line 1229
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
    .line 1230
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@43
    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@45
    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    #@48
    .line 1231
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    #@4b
    .line 1219
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
    .line 1157
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@3
    if-nez v0, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 1158
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "No activity"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 1161
    :cond_0
    if-nez p4, :cond_1

    #@12
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@14
    if-ne v0, p1, :cond_1

    #@16
    .line 1162
    return-void

    #@17
    .line 1165
    :cond_1
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@19
    .line 1166
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1b
    if-eqz v0, :cond_5

    #@1d
    .line 1167
    const/4 v7, 0x0

    #@1e
    .line 1168
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
    .line 1169
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Landroid/app/Fragment;

    #@2f
    .line 1170
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
    .line 1171
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@38
    .line 1172
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 1173
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3e
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@41
    move-result v0

    #@42
    or-int/2addr v7, v0

    #@43
    .line 1168
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1178
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_3
    if-nez v7, :cond_4

    #@48
    .line 1179
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@4b
    .line 1182
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
    .line 1183
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@5a
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    #@5d
    .line 1184
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@5f
    .line 1156
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
    .line 1153
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@4
    .line 1152
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 6
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1149
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
    .line 1148
    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .locals 14
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    #@0
    .prologue
    .line 879
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 884
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    #@6
    if-eqz v2, :cond_1

    #@8
    iget-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    #@a
    if-eqz v2, :cond_2

    #@c
    :cond_1
    const/4 v2, 0x1

    #@d
    move/from16 v0, p2

    #@f
    if-le v0, v2, :cond_2

    #@11
    .line 885
    const/16 p2, 0x1

    #@13
    .line 887
    :cond_2
    iget-boolean v2, p1, Landroid/app/Fragment;->mRemoving:Z

    #@15
    if-eqz v2, :cond_3

    #@17
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@19
    move/from16 v0, p2

    #@1b
    if-le v0, v2, :cond_3

    #@1d
    .line 889
    iget v0, p1, Landroid/app/Fragment;->mState:I

    #@1f
    move/from16 p2, v0

    #@21
    .line 893
    :cond_3
    iget-boolean v2, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@23
    if-eqz v2, :cond_4

    #@25
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@27
    const/4 v3, 0x4

    #@28
    if-ge v2, v3, :cond_4

    #@2a
    const/4 v2, 0x3

    #@2b
    move/from16 v0, p2

    #@2d
    if-le v0, v2, :cond_4

    #@2f
    .line 894
    const/16 p2, 0x3

    #@31
    .line 896
    :cond_4
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@33
    move/from16 v0, p2

    #@35
    if-ge v2, v0, :cond_21

    #@37
    .line 900
    iget-boolean v2, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@39
    if-eqz v2, :cond_5

    #@3b
    iget-boolean v2, p1, Landroid/app/Fragment;->mInLayout:Z

    #@3d
    if-eqz v2, :cond_9

    #@3f
    .line 903
    :cond_5
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@41
    if-eqz v2, :cond_6

    #@43
    .line 908
    const/4 v2, 0x0

    #@44
    iput-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@46
    .line 909
    iget v4, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@48
    const/4 v5, 0x0

    #@49
    const/4 v6, 0x0

    #@4a
    const/4 v7, 0x1

    #@4b
    move-object v2, p0

    #@4c
    move-object v3, p1

    #@4d
    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@50
    .line 911
    :cond_6
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@52
    packed-switch v2, :pswitch_data_0

    #@55
    .line 1141
    :cond_7
    :goto_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@57
    move/from16 v0, p2

    #@59
    if-eq v2, v0, :cond_8

    #@5b
    .line 1142
    const-string/jumbo v2, "FragmentManager"

    #@5e
    new-instance v3, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v4, "moveToState: Fragment state for "

    #@66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    const-string/jumbo v4, " not updated inline; "

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    .line 1143
    const-string/jumbo v4, "expected state "

    #@78
    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    move/from16 v0, p2

    #@7e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v3

    #@82
    .line 1143
    const-string/jumbo v4, " found "

    #@85
    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    .line 1143
    iget v4, p1, Landroid/app/Fragment;->mState:I

    #@8b
    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 1144
    move/from16 v0, p2

    #@98
    iput v0, p1, Landroid/app/Fragment;->mState:I

    #@9a
    .line 878
    :cond_8
    return-void

    #@9b
    .line 901
    :cond_9
    return-void

    #@9c
    .line 913
    :pswitch_0
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@9e
    if-eqz v2, :cond_a

    #@a0
    const-string/jumbo v2, "FragmentManager"

    #@a3
    new-instance v3, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v4, "moveto CREATED: "

    #@ab
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v3

    #@b7
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 914
    :cond_a
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@bc
    if-eqz v2, :cond_c

    #@be
    .line 915
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@c0
    .line 916
    const-string/jumbo v3, "android:view_state"

    #@c3
    .line 915
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@c6
    move-result-object v2

    #@c7
    iput-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@c9
    .line 917
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@cb
    .line 918
    const-string/jumbo v3, "android:target_state"

    #@ce
    .line 917
    invoke-virtual {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    #@d1
    move-result-object v2

    #@d2
    iput-object v2, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@d4
    .line 919
    iget-object v2, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@d6
    if-eqz v2, :cond_b

    #@d8
    .line 920
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@da
    .line 921
    const-string/jumbo v3, "android:target_req_state"

    #@dd
    const/4 v4, 0x0

    #@de
    .line 920
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@e1
    move-result v2

    #@e2
    iput v2, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    #@e4
    .line 923
    :cond_b
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@e6
    .line 924
    const-string/jumbo v3, "android:user_visible_hint"

    #@e9
    const/4 v4, 0x1

    #@ea
    .line 923
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@ed
    move-result v2

    #@ee
    iput-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@f0
    .line 925
    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@f2
    if-nez v2, :cond_c

    #@f4
    .line 926
    const/4 v2, 0x1

    #@f5
    iput-boolean v2, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@f7
    .line 927
    const/4 v2, 0x3

    #@f8
    move/from16 v0, p2

    #@fa
    if-le v0, v2, :cond_c

    #@fc
    .line 928
    const/16 p2, 0x3

    #@fe
    .line 932
    :cond_c
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@100
    iput-object v2, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@102
    .line 933
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@104
    iput-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@106
    .line 934
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@108
    if-eqz v2, :cond_d

    #@10a
    .line 935
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@10c
    iget-object v2, v2, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@10e
    .line 934
    :goto_1
    iput-object v2, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@110
    .line 936
    const/4 v2, 0x0

    #@111
    iput-boolean v2, p1, Landroid/app/Fragment;->mCalled:Z

    #@113
    .line 937
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@115
    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@118
    move-result-object v2

    #@119
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    #@11c
    .line 938
    iget-boolean v2, p1, Landroid/app/Fragment;->mCalled:Z

    #@11e
    if-nez v2, :cond_e

    #@120
    .line 939
    new-instance v2, Landroid/util/SuperNotCalledException;

    #@122
    new-instance v3, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v4, "Fragment "

    #@12a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v3

    #@12e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v3

    #@132
    .line 940
    const-string/jumbo v4, " did not call through to super.onAttach()"

    #@135
    .line 939
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v3

    #@139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v3

    #@13d
    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@140
    throw v2

    #@141
    .line 935
    :cond_d
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@143
    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    #@146
    move-result-object v2

    #@147
    goto :goto_1

    #@148
    .line 942
    :cond_e
    iget-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@14a
    if-nez v2, :cond_1e

    #@14c
    .line 943
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@14e
    invoke-virtual {v2, p1}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    #@151
    .line 948
    :goto_2
    iget-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    #@153
    if-nez v2, :cond_1f

    #@155
    .line 949
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@157
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    #@15a
    .line 954
    :goto_3
    const/4 v2, 0x0

    #@15b
    iput-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    #@15d
    .line 955
    iget-boolean v2, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@15f
    if-eqz v2, :cond_10

    #@161
    .line 960
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@163
    .line 959
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@166
    move-result-object v2

    #@167
    .line 960
    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@169
    const/4 v4, 0x0

    #@16a
    .line 959
    invoke-virtual {p1, v2, v4, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@16d
    move-result-object v2

    #@16e
    iput-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@170
    .line 961
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@172
    if-eqz v2, :cond_10

    #@174
    .line 962
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@176
    const/4 v3, 0x0

    #@177
    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    #@17a
    .line 963
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    #@17c
    if-eqz v2, :cond_f

    #@17e
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@180
    const/16 v3, 0x8

    #@182
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@185
    .line 964
    :cond_f
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@187
    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@189
    invoke-virtual {p1, v2, v3}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@18c
    .line 968
    :cond_10
    :pswitch_1
    const/4 v2, 0x1

    #@18d
    move/from16 v0, p2

    #@18f
    if-le v0, v2, :cond_19

    #@191
    .line 969
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@193
    if-eqz v2, :cond_11

    #@195
    const-string/jumbo v2, "FragmentManager"

    #@198
    new-instance v3, Ljava/lang/StringBuilder;

    #@19a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19d
    const-string/jumbo v4, "moveto ACTIVITY_CREATED: "

    #@1a0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v3

    #@1a4
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v3

    #@1a8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v3

    #@1ac
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1af
    .line 970
    :cond_11
    iget-boolean v2, p1, Landroid/app/Fragment;->mFromLayout:Z

    #@1b1
    if-nez v2, :cond_17

    #@1b3
    .line 971
    const/4 v9, 0x0

    #@1b4
    .line 972
    .local v9, "container":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/app/Fragment;->mContainerId:I

    #@1b6
    if-eqz v2, :cond_13

    #@1b8
    .line 973
    iget v2, p1, Landroid/app/Fragment;->mContainerId:I

    #@1ba
    const/4 v3, -0x1

    #@1bb
    if-ne v2, v3, :cond_12

    #@1bd
    .line 974
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1bf
    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c4
    const-string/jumbo v4, "Cannot create fragment "

    #@1c7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v3

    #@1cb
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v3

    #@1cf
    .line 977
    const-string/jumbo v4, " for a container view with no id"

    #@1d2
    .line 975
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v3

    #@1d6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d9
    move-result-object v3

    #@1da
    .line 974
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1dd
    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@1e0
    .line 979
    :cond_12
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    #@1e2
    iget v3, p1, Landroid/app/Fragment;->mContainerId:I

    #@1e4
    invoke-virtual {v2, v3}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    #@1e7
    move-result-object v9

    #@1e8
    .end local v9    # "container":Landroid/view/ViewGroup;
    check-cast v9, Landroid/view/ViewGroup;

    #@1ea
    .line 980
    .local v9, "container":Landroid/view/ViewGroup;
    if-nez v9, :cond_13

    #@1ec
    iget-boolean v2, p1, Landroid/app/Fragment;->mRestored:Z

    #@1ee
    if-eqz v2, :cond_20

    #@1f0
    .line 994
    .end local v9    # "container":Landroid/view/ViewGroup;
    :cond_13
    :goto_4
    iput-object v9, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@1f2
    .line 996
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1f4
    .line 995
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@1f7
    move-result-object v2

    #@1f8
    .line 996
    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1fa
    .line 995
    invoke-virtual {p1, v2, v9, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@1fd
    move-result-object v2

    #@1fe
    iput-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@200
    .line 997
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@202
    if-eqz v2, :cond_17

    #@204
    .line 998
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@206
    const/4 v3, 0x0

    #@207
    invoke-virtual {v2, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    #@20a
    .line 999
    if-eqz v9, :cond_15

    #@20c
    .line 1000
    const/4 v2, 0x1

    #@20d
    move/from16 v0, p3

    #@20f
    move/from16 v1, p4

    #@211
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@214
    move-result-object v8

    #@215
    .line 1002
    .local v8, "anim":Landroid/animation/Animator;
    if-eqz v8, :cond_14

    #@217
    .line 1003
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@219
    invoke-virtual {v8, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@21c
    .line 1004
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@21e
    invoke-direct {p0, v2, v8}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@221
    .line 1005
    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    #@224
    .line 1007
    :cond_14
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@226
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@229
    .line 1009
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_15
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    #@22b
    if-eqz v2, :cond_16

    #@22d
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@22f
    const/16 v3, 0x8

    #@231
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@234
    .line 1010
    :cond_16
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@236
    iget-object v3, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@238
    invoke-virtual {p1, v2, v3}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@23b
    .line 1014
    :cond_17
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@23d
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    #@240
    .line 1015
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@242
    if-eqz v2, :cond_18

    #@244
    .line 1016
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@246
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    #@249
    .line 1018
    :cond_18
    const/4 v2, 0x0

    #@24a
    iput-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@24c
    .line 1021
    :cond_19
    :pswitch_2
    const/4 v2, 0x2

    #@24d
    move/from16 v0, p2

    #@24f
    if-le v0, v2, :cond_1a

    #@251
    .line 1022
    const/4 v2, 0x3

    #@252
    iput v2, p1, Landroid/app/Fragment;->mState:I

    #@254
    .line 1025
    :cond_1a
    :pswitch_3
    const/4 v2, 0x3

    #@255
    move/from16 v0, p2

    #@257
    if-le v0, v2, :cond_1c

    #@259
    .line 1026
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@25b
    if-eqz v2, :cond_1b

    #@25d
    const-string/jumbo v2, "FragmentManager"

    #@260
    new-instance v3, Ljava/lang/StringBuilder;

    #@262
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@265
    const-string/jumbo v4, "moveto STARTED: "

    #@268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26b
    move-result-object v3

    #@26c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26f
    move-result-object v3

    #@270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@273
    move-result-object v3

    #@274
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@277
    .line 1027
    :cond_1b
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    #@27a
    .line 1030
    :cond_1c
    :pswitch_4
    const/4 v2, 0x4

    #@27b
    move/from16 v0, p2

    #@27d
    if-le v0, v2, :cond_7

    #@27f
    .line 1031
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@281
    if-eqz v2, :cond_1d

    #@283
    const-string/jumbo v2, "FragmentManager"

    #@286
    new-instance v3, Ljava/lang/StringBuilder;

    #@288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28b
    const-string/jumbo v4, "moveto RESUMED: "

    #@28e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v3

    #@292
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@295
    move-result-object v3

    #@296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@299
    move-result-object v3

    #@29a
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29d
    .line 1032
    :cond_1d
    invoke-virtual {p1}, Landroid/app/Fragment;->performResume()V

    #@2a0
    .line 1034
    const/4 v2, 0x0

    #@2a1
    iput-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@2a3
    .line 1035
    const/4 v2, 0x0

    #@2a4
    iput-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@2a6
    goto/16 :goto_0

    #@2a8
    .line 945
    :cond_1e
    iget-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@2aa
    invoke-virtual {v2, p1}, Landroid/app/Fragment;->onAttachFragment(Landroid/app/Fragment;)V

    #@2ad
    goto/16 :goto_2

    #@2af
    .line 951
    :cond_1f
    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@2b1
    const/4 v3, 0x1

    #@2b2
    invoke-virtual {p1, v2, v3}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    #@2b5
    .line 952
    const/4 v2, 0x1

    #@2b6
    iput v2, p1, Landroid/app/Fragment;->mState:I

    #@2b8
    goto/16 :goto_3

    #@2ba
    .line 983
    .restart local v9    # "container":Landroid/view/ViewGroup;
    :cond_20
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@2bd
    move-result-object v2

    #@2be
    iget v3, p1, Landroid/app/Fragment;->mContainerId:I

    #@2c0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c3
    move-result-object v12

    #@2c4
    .line 987
    .local v12, "resName":Ljava/lang/String;
    :goto_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2c6
    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2cb
    const-string/jumbo v4, "No view found for id 0x"

    #@2ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    move-result-object v3

    #@2d2
    .line 989
    iget v4, p1, Landroid/app/Fragment;->mContainerId:I

    #@2d4
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2d7
    move-result-object v4

    #@2d8
    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v3

    #@2dc
    .line 989
    const-string/jumbo v4, " ("

    #@2df
    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v3

    #@2e3
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v3

    #@2e7
    .line 991
    const-string/jumbo v4, ") for fragment "

    #@2ea
    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v3

    #@2ee
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v3

    #@2f2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f5
    move-result-object v3

    #@2f6
    .line 987
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f9
    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@2fc
    goto/16 :goto_4

    #@2fe
    .line 984
    .end local v12    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@2ff
    .line 985
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v12, "unknown"

    #@302
    .restart local v12    # "resName":Ljava/lang/String;
    goto :goto_5

    #@303
    .line 1038
    .end local v9    # "container":Landroid/view/ViewGroup;
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v12    # "resName":Ljava/lang/String;
    :cond_21
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@305
    move/from16 v0, p2

    #@307
    if-le v2, v0, :cond_7

    #@309
    .line 1039
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@30b
    packed-switch v2, :pswitch_data_1

    #@30e
    goto/16 :goto_0

    #@310
    .line 1097
    :cond_22
    :goto_6
    :pswitch_5
    const/4 v2, 0x1

    #@311
    move/from16 v0, p2

    #@313
    if-ge v0, v2, :cond_7

    #@315
    .line 1098
    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@317
    if-eqz v2, :cond_23

    #@319
    .line 1099
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@31b
    if-eqz v2, :cond_23

    #@31d
    .line 1106
    iget-object v8, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@31f
    .line 1107
    .restart local v8    # "anim":Landroid/animation/Animator;
    const/4 v2, 0x0

    #@320
    iput-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@322
    .line 1108
    invoke-virtual {v8}, Landroid/animation/Animator;->cancel()V

    #@325
    .line 1111
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_23
    iget-object v2, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@327
    if-eqz v2, :cond_2e

    #@329
    .line 1116
    move/from16 v0, p2

    #@32b
    iput v0, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@32d
    .line 1117
    const/16 p2, 0x1

    #@32f
    goto/16 :goto_0

    #@331
    .line 1041
    :pswitch_6
    const/4 v2, 0x5

    #@332
    move/from16 v0, p2

    #@334
    if-ge v0, v2, :cond_25

    #@336
    .line 1042
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@338
    if-eqz v2, :cond_24

    #@33a
    const-string/jumbo v2, "FragmentManager"

    #@33d
    new-instance v3, Ljava/lang/StringBuilder;

    #@33f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@342
    const-string/jumbo v4, "movefrom RESUMED: "

    #@345
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@348
    move-result-object v3

    #@349
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v3

    #@34d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@350
    move-result-object v3

    #@351
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@354
    .line 1043
    :cond_24
    invoke-virtual {p1}, Landroid/app/Fragment;->performPause()V

    #@357
    .line 1046
    :cond_25
    :pswitch_7
    const/4 v2, 0x4

    #@358
    move/from16 v0, p2

    #@35a
    if-ge v0, v2, :cond_27

    #@35c
    .line 1047
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@35e
    if-eqz v2, :cond_26

    #@360
    const-string/jumbo v2, "FragmentManager"

    #@363
    new-instance v3, Ljava/lang/StringBuilder;

    #@365
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@368
    const-string/jumbo v4, "movefrom STARTED: "

    #@36b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36e
    move-result-object v3

    #@36f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@372
    move-result-object v3

    #@373
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@376
    move-result-object v3

    #@377
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@37a
    .line 1048
    :cond_26
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    #@37d
    .line 1052
    :cond_27
    :pswitch_8
    const/4 v2, 0x2

    #@37e
    move/from16 v0, p2

    #@380
    if-ge v0, v2, :cond_22

    #@382
    .line 1053
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@384
    if-eqz v2, :cond_28

    #@386
    const-string/jumbo v2, "FragmentManager"

    #@389
    new-instance v3, Ljava/lang/StringBuilder;

    #@38b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38e
    const-string/jumbo v4, "movefrom ACTIVITY_CREATED: "

    #@391
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@394
    move-result-object v3

    #@395
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@398
    move-result-object v3

    #@399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39c
    move-result-object v3

    #@39d
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3a0
    .line 1054
    :cond_28
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3a2
    if-eqz v2, :cond_29

    #@3a4
    .line 1057
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@3a6
    invoke-virtual {v2, p1}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    #@3a9
    move-result v2

    #@3aa
    if-eqz v2, :cond_29

    #@3ac
    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@3ae
    if-nez v2, :cond_29

    #@3b0
    .line 1058
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    #@3b3
    .line 1061
    :cond_29
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    #@3b6
    .line 1062
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3b8
    if-eqz v2, :cond_2c

    #@3ba
    iget-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@3bc
    if-eqz v2, :cond_2c

    #@3be
    .line 1063
    const/4 v8, 0x0

    #@3bf
    .line 1064
    .local v8, "anim":Landroid/animation/Animator;
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@3c1
    if-lez v2, :cond_2a

    #@3c3
    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    #@3c5
    if-eqz v2, :cond_2d

    #@3c7
    .line 1068
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_2a
    :goto_7
    if-eqz v8, :cond_2b

    #@3c9
    .line 1069
    iget-object v9, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@3cb
    .line 1070
    .restart local v9    # "container":Landroid/view/ViewGroup;
    iget-object v13, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3cd
    .line 1071
    .local v13, "view":Landroid/view/View;
    move-object v11, p1

    #@3ce
    .line 1072
    .local v11, "fragment":Landroid/app/Fragment;
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    #@3d1
    .line 1073
    iput-object v8, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@3d3
    .line 1074
    move/from16 v0, p2

    #@3d5
    iput v0, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@3d7
    .line 1075
    new-instance v2, Landroid/app/FragmentManagerImpl$5;

    #@3d9
    invoke-direct {v2, p0, v9, v13, p1}, Landroid/app/FragmentManagerImpl$5;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    #@3dc
    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3df
    .line 1086
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3e1
    invoke-virtual {v8, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@3e4
    .line 1087
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3e6
    invoke-direct {p0, v2, v8}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@3e9
    .line 1088
    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    #@3ec
    .line 1091
    .end local v9    # "container":Landroid/view/ViewGroup;
    .end local v11    # "fragment":Landroid/app/Fragment;
    .end local v13    # "view":Landroid/view/View;
    :cond_2b
    iget-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@3ee
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3f0
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@3f3
    .line 1093
    :cond_2c
    const/4 v2, 0x0

    #@3f4
    iput-object v2, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@3f6
    .line 1094
    const/4 v2, 0x0

    #@3f7
    iput-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3f9
    goto/16 :goto_6

    #@3fb
    .line 1065
    .restart local v8    # "anim":Landroid/animation/Animator;
    :cond_2d
    const/4 v2, 0x0

    #@3fc
    move/from16 v0, p3

    #@3fe
    move/from16 v1, p4

    #@400
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@403
    move-result-object v8

    #@404
    .local v8, "anim":Landroid/animation/Animator;
    goto :goto_7

    #@405
    .line 1119
    .end local v8    # "anim":Landroid/animation/Animator;
    :cond_2e
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@407
    if-eqz v2, :cond_2f

    #@409
    const-string/jumbo v2, "FragmentManager"

    #@40c
    new-instance v3, Ljava/lang/StringBuilder;

    #@40e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@411
    const-string/jumbo v4, "movefrom CREATED: "

    #@414
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@417
    move-result-object v3

    #@418
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41b
    move-result-object v3

    #@41c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41f
    move-result-object v3

    #@420
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@423
    .line 1120
    :cond_2f
    iget-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    #@425
    if-nez v2, :cond_30

    #@427
    .line 1121
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroy()V

    #@42a
    .line 1126
    :goto_8
    invoke-virtual {p1}, Landroid/app/Fragment;->performDetach()V

    #@42d
    .line 1127
    if-nez p5, :cond_7

    #@42f
    .line 1128
    iget-boolean v2, p1, Landroid/app/Fragment;->mRetaining:Z

    #@431
    if-nez v2, :cond_31

    #@433
    .line 1129
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    #@436
    goto/16 :goto_0

    #@438
    .line 1123
    :cond_30
    const/4 v2, 0x0

    #@439
    iput v2, p1, Landroid/app/Fragment;->mState:I

    #@43b
    goto :goto_8

    #@43c
    .line 1131
    :cond_31
    const/4 v2, 0x0

    #@43d
    iput-object v2, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@43f
    .line 1132
    const/4 v2, 0x0

    #@440
    iput-object v2, p1, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@442
    .line 1133
    const/4 v2, 0x0

    #@443
    iput-object v2, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@445
    goto/16 :goto_0

    #@447
    .line 911
    nop

    #@448
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@456
    .line 1039
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    #@0
    .prologue
    .line 2029
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    .line 2028
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
    const/4 v4, -0x1

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 2266
    const-string/jumbo v0, "fragment"

    #@7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2267
    return-object v1

    #@e
    .line 2270
    :cond_0
    const-string/jumbo v0, "class"

    #@11
    invoke-interface {p4, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    .line 2272
    .local v8, "fname":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->Fragment:[I

    #@17
    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v6

    #@1b
    .line 2273
    .local v6, "a":Landroid/content/res/TypedArray;
    if-nez v8, :cond_1

    #@1d
    .line 2274
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    .line 2276
    :cond_1
    invoke-virtual {v6, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@24
    move-result v9

    #@25
    .line 2277
    .local v9, "id":I
    const/4 v0, 0x2

    #@26
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    .line 2278
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@2d
    .line 2280
    if-eqz p1, :cond_2

    #@2f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@32
    move-result v7

    #@33
    .line 2281
    .local v7, "containerId":I
    :goto_0
    if-ne v7, v4, :cond_3

    #@35
    if-ne v9, v4, :cond_3

    #@37
    if-nez v10, :cond_3

    #@39
    .line 2282
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
    .line 2283
    const-string/jumbo v3, ": Must specify unique android:id, android:tag, or have a parent with"

    #@4b
    .line 2282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    .line 2284
    const-string/jumbo v3, " an id for "

    #@52
    .line 2282
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
    .end local v7    # "containerId":I
    :cond_2
    move v7, v3

    #@63
    .line 2280
    goto :goto_0

    #@64
    .line 2290
    .restart local v7    # "containerId":I
    :cond_3
    if-eq v9, v4, :cond_4

    #@66
    invoke-virtual {p0, v9}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    #@69
    move-result-object v1

    #@6a
    .line 2291
    .local v1, "fragment":Landroid/app/Fragment;
    :cond_4
    if-nez v1, :cond_5

    #@6c
    if-eqz v10, :cond_5

    #@6e
    .line 2292
    invoke-virtual {p0, v10}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    #@71
    move-result-object v1

    #@72
    .line 2294
    :cond_5
    if-nez v1, :cond_6

    #@74
    if-eq v7, v4, :cond_6

    #@76
    .line 2295
    invoke-virtual {p0, v7}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    #@79
    move-result-object v1

    #@7a
    .line 2298
    :cond_6
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@7c
    if-eqz v0, :cond_7

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
    .line 2299
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    .line 2298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    .line 2299
    const-string/jumbo v5, " fname="

    #@98
    .line 2298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 2300
    const-string/jumbo v5, " existing="

    #@a3
    .line 2298
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
    .line 2301
    :cond_7
    if-nez v1, :cond_a

    #@b4
    .line 2302
    invoke-static {p3, v8}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    #@b7
    move-result-object v1

    #@b8
    .line 2303
    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    #@ba
    .line 2304
    if-eqz v9, :cond_9

    #@bc
    move v0, v9

    #@bd
    :goto_1
    iput v0, v1, Landroid/app/Fragment;->mFragmentId:I

    #@bf
    .line 2305
    iput v7, v1, Landroid/app/Fragment;->mContainerId:I

    #@c1
    .line 2306
    iput-object v10, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@c3
    .line 2307
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    #@c5
    .line 2308
    iput-object p0, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@c7
    .line 2309
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@c9
    iput-object v0, v1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@cb
    .line 2310
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@cd
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@d0
    move-result-object v0

    #@d1
    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@d3
    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@d6
    .line 2311
    invoke-virtual {p0, v1, v2}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    #@d9
    .line 2334
    :cond_8
    :goto_2
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@db
    if-ge v0, v2, :cond_c

    #@dd
    iget-boolean v0, v1, Landroid/app/Fragment;->mFromLayout:Z

    #@df
    if-eqz v0, :cond_c

    #@e1
    move-object v0, p0

    #@e2
    move v4, v3

    #@e3
    move v5, v3

    #@e4
    .line 2335
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    #@e7
    .line 2340
    :goto_3
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@e9
    if-nez v0, :cond_d

    #@eb
    .line 2341
    new-instance v0, Ljava/lang/IllegalStateException;

    #@ed
    new-instance v2, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v3, "Fragment "

    #@f5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v2

    #@f9
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    .line 2342
    const-string/jumbo v3, " did not create a view."

    #@100
    .line 2341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v2

    #@104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v2

    #@108
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10b
    throw v0

    #@10c
    :cond_9
    move v0, v7

    #@10d
    .line 2304
    goto :goto_1

    #@10e
    .line 2312
    :cond_a
    iget-boolean v0, v1, Landroid/app/Fragment;->mInLayout:Z

    #@110
    if-eqz v0, :cond_b

    #@112
    .line 2315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@114
    new-instance v2, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@11c
    move-result-object v3

    #@11d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v2

    #@121
    .line 2316
    const-string/jumbo v3, ": Duplicate id 0x"

    #@124
    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v2

    #@128
    .line 2316
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12b
    move-result-object v3

    #@12c
    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v2

    #@130
    .line 2317
    const-string/jumbo v3, ", tag "

    #@133
    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v2

    #@137
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v2

    #@13b
    .line 2317
    const-string/jumbo v3, ", or parent id 0x"

    #@13e
    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v2

    #@142
    .line 2317
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@145
    move-result-object v3

    #@146
    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v2

    #@14a
    .line 2318
    const-string/jumbo v3, " with another fragment for "

    #@14d
    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v2

    #@151
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v2

    #@155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v2

    #@159
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15c
    throw v0

    #@15d
    .line 2322
    :cond_b
    iput-boolean v2, v1, Landroid/app/Fragment;->mInLayout:Z

    #@15f
    .line 2323
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@161
    iput-object v0, v1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@163
    .line 2327
    iget-boolean v0, v1, Landroid/app/Fragment;->mRetaining:Z

    #@165
    if-nez v0, :cond_8

    #@167
    .line 2328
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@169
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@16c
    move-result-object v0

    #@16d
    iget-object v4, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@16f
    invoke-virtual {v1, v0, p4, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@172
    goto/16 :goto_2

    #@174
    .line 2337
    :cond_c
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    #@177
    goto/16 :goto_3

    #@179
    .line 2344
    :cond_d
    if-eqz v9, :cond_e

    #@17b
    .line 2345
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@17d
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    #@180
    .line 2347
    :cond_e
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@182
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@185
    move-result-object v0

    #@186
    if-nez v0, :cond_f

    #@188
    .line 2348
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@18a
    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@18d
    .line 2350
    :cond_f
    iget-object v0, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@18f
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 2355
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
    .line 862
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 863
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 865
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@c
    .line 866
    return-void

    #@d
    .line 868
    :cond_0
    iput-boolean v3, p1, Landroid/app/Fragment;->mDeferStart:Z

    #@f
    .line 869
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
    .line 861
    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 2

    #@0
    .prologue
    .line 568
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    #@2
    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;)V

    #@5
    .line 572
    const/4 v1, 0x0

    #@6
    .line 568
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 567
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
    .line 600
    if-gez p1, :cond_0

    #@3
    .line 601
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
    .line 603
    :cond_0
    new-instance v0, Landroid/app/FragmentManagerImpl$4;

    #@1f
    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$4;-><init>(Landroid/app/FragmentManagerImpl;II)V

    #@22
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@25
    .line 599
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 584
    new-instance v0, Landroid/app/FragmentManagerImpl$3;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V

    #@5
    .line 588
    const/4 v1, 0x0

    #@6
    .line 584
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    .line 583
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    #@0
    .prologue
    .line 577
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 578
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 579
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
    .line 612
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 613
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 614
    if-gez p1, :cond_0

    #@8
    .line 615
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
    .line 617
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
    .line 593
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    .line 594
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    .line 595
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
    .line 1623
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v9, :cond_0

    #@4
    .line 1624
    const/4 v9, 0x0

    #@5
    return v9

    #@6
    .line 1626
    :cond_0
    if-nez p2, :cond_3

    #@8
    if-gez p3, :cond_3

    #@a
    and-int/lit8 v9, p4, 0x1

    #@c
    if-nez v9, :cond_3

    #@e
    .line 1627
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v9

    #@14
    add-int/lit8 v5, v9, -0x1

    #@16
    .line 1628
    .local v5, "last":I
    if-gez v5, :cond_1

    #@18
    .line 1629
    const/4 v9, 0x0

    #@19
    return v9

    #@1a
    .line 1631
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/app/BackStackRecord;

    #@22
    .line 1632
    .local v1, "bss":Landroid/app/BackStackRecord;
    new-instance v2, Landroid/util/SparseArray;

    #@24
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@27
    .line 1633
    .local v2, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    #@29
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@2c
    .line 1634
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget v9, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@2e
    const/4 v10, 0x1

    #@2f
    if-lt v9, v10, :cond_2

    #@31
    .line 1635
    invoke-virtual {v1, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@34
    .line 1637
    :cond_2
    const/4 v9, 0x1

    #@35
    const/4 v10, 0x0

    #@36
    invoke-virtual {v1, v9, v10, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    #@39
    .line 1638
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@3c
    .line 1696
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    .end local v5    # "last":I
    :goto_0
    const/4 v9, 0x1

    #@3d
    return v9

    #@3e
    .line 1640
    .end local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    :cond_3
    const/4 v4, -0x1

    #@3f
    .line 1641
    .local v4, "index":I
    if-nez p2, :cond_4

    #@41
    if-ltz p3, :cond_b

    #@43
    .line 1644
    :cond_4
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v9

    #@49
    add-int/lit8 v4, v9, -0x1

    #@4b
    .line 1645
    :goto_1
    if-ltz v4, :cond_5

    #@4d
    .line 1646
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v1

    #@53
    check-cast v1, Landroid/app/BackStackRecord;

    #@55
    .line 1647
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_6

    #@57
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v9

    #@5f
    if-eqz v9, :cond_6

    #@61
    .line 1655
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_5
    if-gez v4, :cond_8

    #@63
    .line 1656
    const/4 v9, 0x0

    #@64
    return v9

    #@65
    .line 1650
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_6
    if-ltz p3, :cond_7

    #@67
    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    #@69
    if-eq p3, v9, :cond_5

    #@6b
    .line 1653
    :cond_7
    add-int/lit8 v4, v4, -0x1

    #@6d
    goto :goto_1

    #@6e
    .line 1658
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_8
    and-int/lit8 v9, p4, 0x1

    #@70
    if-eqz v9, :cond_b

    #@72
    .line 1659
    add-int/lit8 v4, v4, -0x1

    #@74
    .line 1661
    :goto_2
    if-ltz v4, :cond_b

    #@76
    .line 1662
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v1

    #@7c
    check-cast v1, Landroid/app/BackStackRecord;

    #@7e
    .line 1663
    .restart local v1    # "bss":Landroid/app/BackStackRecord;
    if-eqz p2, :cond_9

    #@80
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v9

    #@88
    if-nez v9, :cond_a

    #@8a
    .line 1664
    :cond_9
    if-ltz p3, :cond_b

    #@8c
    iget v9, v1, Landroid/app/BackStackRecord;->mIndex:I

    #@8e
    if-ne p3, v9, :cond_b

    #@90
    .line 1665
    :cond_a
    add-int/lit8 v4, v4, -0x1

    #@92
    .line 1666
    goto :goto_2

    #@93
    .line 1672
    .end local v1    # "bss":Landroid/app/BackStackRecord;
    :cond_b
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@95
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@98
    move-result v9

    #@99
    add-int/lit8 v9, v9, -0x1

    #@9b
    if-ne v4, v9, :cond_c

    #@9d
    .line 1673
    const/4 v9, 0x0

    #@9e
    return v9

    #@9f
    .line 1676
    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    #@a1
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@a4
    .line 1677
    .local v8, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@a9
    move-result v9

    #@aa
    add-int/lit8 v3, v9, -0x1

    #@ac
    .local v3, "i":I
    :goto_3
    if-le v3, v4, :cond_d

    #@ae
    .line 1678
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@b0
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@b3
    move-result-object v9

    #@b4
    check-cast v9, Landroid/app/BackStackRecord;

    #@b6
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b9
    .line 1677
    add-int/lit8 v3, v3, -0x1

    #@bb
    goto :goto_3

    #@bc
    .line 1680
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@bf
    move-result v9

    #@c0
    add-int/lit8 v0, v9, -0x1

    #@c2
    .line 1681
    .local v0, "LAST":I
    new-instance v2, Landroid/util/SparseArray;

    #@c4
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@c7
    .line 1682
    .restart local v2    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    #@c9
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@cc
    .line 1683
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget v9, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    #@ce
    const/4 v10, 0x1

    #@cf
    if-lt v9, v10, :cond_e

    #@d1
    .line 1684
    const/4 v3, 0x0

    #@d2
    :goto_4
    if-gt v3, v0, :cond_e

    #@d4
    .line 1685
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d7
    move-result-object v9

    #@d8
    check-cast v9, Landroid/app/BackStackRecord;

    #@da
    invoke-virtual {v9, v2, v6}, Landroid/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@dd
    .line 1684
    add-int/lit8 v3, v3, 0x1

    #@df
    goto :goto_4

    #@e0
    .line 1688
    :cond_e
    const/4 v7, 0x0

    #@e1
    .line 1689
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    const/4 v3, 0x0

    #@e2
    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :goto_5
    if-gt v3, v0, :cond_11

    #@e4
    .line 1690
    sget-boolean v9, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@e6
    if-eqz v9, :cond_f

    #@e8
    const-string/jumbo v9, "FragmentManager"

    #@eb
    new-instance v10, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v11, "Popping back stack state: "

    #@f3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v10

    #@f7
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fa
    move-result-object v11

    #@fb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v10

    #@ff
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v10

    #@103
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 1691
    :cond_f
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@109
    move-result-object v9

    #@10a
    check-cast v9, Landroid/app/BackStackRecord;

    #@10c
    if-ne v3, v0, :cond_10

    #@10e
    const/4 v10, 0x1

    #@10f
    :goto_6
    invoke-virtual {v9, v10, v7, v2, v6}, Landroid/app/BackStackRecord;->popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;

    #@112
    move-result-object v7

    #@113
    .line 1689
    .local v7, "state":Landroid/app/BackStackRecord$TransitionState;
    add-int/lit8 v3, v3, 0x1

    #@115
    goto :goto_5

    #@116
    .line 1691
    .end local v7    # "state":Landroid/app/BackStackRecord$TransitionState;
    :cond_10
    const/4 v10, 0x0

    #@117
    goto :goto_6

    #@118
    .line 1694
    :cond_11
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@11b
    goto/16 :goto_0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 647
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 648
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
    .line 649
    const-string/jumbo v2, " is not currently in the FragmentManager"

    #@19
    .line 648
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
    .line 651
    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    #@29
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c
    .line 646
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
    .line 1257
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
    .line 1258
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_6

    #@33
    const/4 v6, 0x0

    #@34
    .line 1259
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    #@36
    if-eqz v0, :cond_1

    #@38
    if-eqz v6, :cond_5

    #@3a
    .line 1268
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 1269
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@43
    .line 1271
    :cond_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    #@45
    if-eqz v0, :cond_3

    #@47
    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    #@49
    if-eqz v0, :cond_3

    #@4b
    .line 1272
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4d
    .line 1274
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    #@4f
    .line 1275
    iput-boolean v2, p1, Landroid/app/Fragment;->mRemoving:Z

    #@51
    .line 1276
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
    .line 1256
    :cond_5
    return-void

    #@5c
    .line 1258
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
    .line 640
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 641
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    .line 639
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    #@0
    .prologue
    .line 1607
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1608
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
    .line 1609
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
    .line 1608
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1606
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/app/FragmentManagerNonConfig;

    #@0
    .prologue
    .line 1898
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    :cond_0
    move-object v5, p1

    #@4
    .line 1899
    check-cast v5, Landroid/app/FragmentManagerState;

    #@6
    .line 1900
    .local v5, "fms":Landroid/app/FragmentManagerState;
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@8
    if-nez v11, :cond_1

    #@a
    return-void

    #@b
    .line 1902
    :cond_1
    const/4 v2, 0x0

    #@c
    .line 1906
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    if-eqz p2, :cond_5

    #@e
    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    #@11
    move-result-object v9

    #@12
    .line 1908
    .local v9, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    .line 1909
    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    if-eqz v9, :cond_4

    #@18
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@1b
    move-result v3

    #@1c
    .line 1910
    .local v3, "count":I
    :goto_0
    const/4 v7, 0x0

    #@1d
    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_5

    #@1f
    .line 1911
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/app/Fragment;

    #@25
    .line 1912
    .local v4, "f":Landroid/app/Fragment;
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@27
    if-eqz v11, :cond_2

    #@29
    const-string/jumbo v11, "FragmentManager"

    #@2c
    new-instance v12, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v13, "restoreAllState: re-attaching retained "

    #@34
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v12

    #@38
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v12

    #@3c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v12

    #@40
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 1913
    :cond_2
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@45
    iget v12, v4, Landroid/app/Fragment;->mIndex:I

    #@47
    aget-object v6, v11, v12

    #@49
    .line 1914
    .local v6, "fs":Landroid/app/FragmentState;
    iput-object v4, v6, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@4b
    .line 1915
    const/4 v11, 0x0

    #@4c
    iput-object v11, v4, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@4e
    .line 1916
    const/4 v11, 0x0

    #@4f
    iput v11, v4, Landroid/app/Fragment;->mBackStackNesting:I

    #@51
    .line 1917
    const/4 v11, 0x0

    #@52
    iput-boolean v11, v4, Landroid/app/Fragment;->mInLayout:Z

    #@54
    .line 1918
    const/4 v11, 0x0

    #@55
    iput-boolean v11, v4, Landroid/app/Fragment;->mAdded:Z

    #@57
    .line 1919
    const/4 v11, 0x0

    #@58
    iput-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@5a
    .line 1920
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@5c
    if-eqz v11, :cond_3

    #@5e
    .line 1921
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@60
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@62
    invoke-virtual {v12}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@65
    move-result-object v12

    #@66
    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@69
    move-result-object v12

    #@6a
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@6d
    .line 1922
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@6f
    .line 1923
    const-string/jumbo v12, "android:view_state"

    #@72
    .line 1922
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@75
    move-result-object v11

    #@76
    iput-object v11, v4, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@78
    .line 1924
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@7a
    iput-object v11, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@7c
    .line 1910
    :cond_3
    add-int/lit8 v7, v7, 0x1

    #@7e
    goto :goto_1

    #@7f
    .line 1909
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v6    # "fs":Landroid/app/FragmentState;
    .end local v7    # "i":I
    :cond_4
    const/4 v3, 0x0

    #@80
    .restart local v3    # "count":I
    goto :goto_0

    #@81
    .line 1931
    .end local v2    # "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    .end local v3    # "count":I
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    #@83
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@85
    array-length v12, v12

    #@86
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@89
    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@8b
    .line 1932
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@8d
    if-eqz v11, :cond_6

    #@8f
    .line 1933
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@91
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    #@94
    .line 1935
    :cond_6
    const/4 v7, 0x0

    #@95
    .restart local v7    # "i":I
    :goto_2
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@97
    array-length v11, v11

    #@98
    if-ge v7, v11, :cond_c

    #@9a
    .line 1936
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@9c
    aget-object v6, v11, v7

    #@9e
    .line 1937
    .restart local v6    # "fs":Landroid/app/FragmentState;
    if-eqz v6, :cond_9

    #@a0
    .line 1938
    const/4 v1, 0x0

    #@a1
    .line 1939
    .local v1, "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    if-eqz v2, :cond_7

    #@a3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a6
    move-result v11

    #@a7
    if-ge v7, v11, :cond_7

    #@a9
    .line 1940
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v1

    #@ad
    .end local v1    # "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    check-cast v1, Landroid/app/FragmentManagerNonConfig;

    #@af
    .line 1942
    :cond_7
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@b1
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@b3
    invoke-virtual {v6, v11, v12, v1}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;

    #@b6
    move-result-object v4

    #@b7
    .line 1943
    .restart local v4    # "f":Landroid/app/Fragment;
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@b9
    if-eqz v11, :cond_8

    #@bb
    const-string/jumbo v11, "FragmentManager"

    #@be
    new-instance v12, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v13, "restoreAllState: active #"

    #@c6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v12

    #@ca
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v12

    #@ce
    const-string/jumbo v13, ": "

    #@d1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v12

    #@d5
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v12

    #@d9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v12

    #@dd
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e0
    .line 1944
    :cond_8
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@e2
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e5
    .line 1948
    const/4 v11, 0x0

    #@e6
    iput-object v11, v6, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    #@e8
    .line 1935
    .end local v4    # "f":Landroid/app/Fragment;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    #@ea
    goto :goto_2

    #@eb
    .line 1950
    :cond_9
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@ed
    const/4 v12, 0x0

    #@ee
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f1
    .line 1951
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@f3
    if-nez v11, :cond_a

    #@f5
    .line 1952
    new-instance v11, Ljava/util/ArrayList;

    #@f7
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@fa
    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@fc
    .line 1954
    :cond_a
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@fe
    if-eqz v11, :cond_b

    #@100
    const-string/jumbo v11, "FragmentManager"

    #@103
    new-instance v12, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v13, "restoreAllState: avail #"

    #@10b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v12

    #@10f
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@112
    move-result-object v12

    #@113
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v12

    #@117
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    .line 1955
    :cond_b
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@11c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11f
    move-result-object v12

    #@120
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@123
    goto :goto_3

    #@124
    .line 1960
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_c
    if-eqz p2, :cond_10

    #@126
    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    #@129
    move-result-object v9

    #@12a
    .line 1962
    .restart local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v9, :cond_e

    #@12c
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@12f
    move-result v3

    #@130
    .line 1963
    .restart local v3    # "count":I
    :goto_4
    const/4 v7, 0x0

    #@131
    :goto_5
    if-ge v7, v3, :cond_10

    #@133
    .line 1964
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@136
    move-result-object v4

    #@137
    check-cast v4, Landroid/app/Fragment;

    #@139
    .line 1965
    .restart local v4    # "f":Landroid/app/Fragment;
    iget v11, v4, Landroid/app/Fragment;->mTargetIndex:I

    #@13b
    if-ltz v11, :cond_d

    #@13d
    .line 1966
    iget v11, v4, Landroid/app/Fragment;->mTargetIndex:I

    #@13f
    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@141
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@144
    move-result v12

    #@145
    if-ge v11, v12, :cond_f

    #@147
    .line 1967
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@149
    iget v12, v4, Landroid/app/Fragment;->mTargetIndex:I

    #@14b
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14e
    move-result-object v11

    #@14f
    check-cast v11, Landroid/app/Fragment;

    #@151
    iput-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@153
    .line 1963
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    #@155
    goto :goto_5

    #@156
    .line 1962
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_e
    const/4 v3, 0x0

    #@157
    .restart local v3    # "count":I
    goto :goto_4

    #@158
    .line 1969
    .restart local v4    # "f":Landroid/app/Fragment;
    :cond_f
    const-string/jumbo v11, "FragmentManager"

    #@15b
    new-instance v12, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    const-string/jumbo v13, "Re-attaching retained fragment "

    #@163
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v12

    #@167
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v12

    #@16b
    .line 1970
    const-string/jumbo v13, " target no longer exists: "

    #@16e
    .line 1969
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v12

    #@172
    .line 1970
    iget v13, v4, Landroid/app/Fragment;->mTargetIndex:I

    #@174
    .line 1969
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@177
    move-result-object v12

    #@178
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v12

    #@17c
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17f
    .line 1971
    const/4 v11, 0x0

    #@180
    iput-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@182
    goto :goto_6

    #@183
    .line 1978
    .end local v3    # "count":I
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v9    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_10
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    #@185
    if-eqz v11, :cond_14

    #@187
    .line 1979
    new-instance v11, Ljava/util/ArrayList;

    #@189
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    #@18b
    array-length v12, v12

    #@18c
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@18f
    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@191
    .line 1980
    const/4 v7, 0x0

    #@192
    :goto_7
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    #@194
    array-length v11, v11

    #@195
    if-ge v7, v11, :cond_15

    #@197
    .line 1981
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@199
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    #@19b
    aget v12, v12, v7

    #@19d
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a0
    move-result-object v4

    #@1a1
    check-cast v4, Landroid/app/Fragment;

    #@1a3
    .line 1982
    .restart local v4    # "f":Landroid/app/Fragment;
    if-nez v4, :cond_11

    #@1a5
    .line 1983
    new-instance v11, Ljava/lang/IllegalStateException;

    #@1a7
    .line 1984
    new-instance v12, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    const-string/jumbo v13, "No instantiated fragment for index #"

    #@1af
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v12

    #@1b3
    iget-object v13, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    #@1b5
    aget v13, v13, v7

    #@1b7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v12

    #@1bb
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v12

    #@1bf
    .line 1983
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c2
    invoke-direct {p0, v11}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@1c5
    .line 1986
    :cond_11
    const/4 v11, 0x1

    #@1c6
    iput-boolean v11, v4, Landroid/app/Fragment;->mAdded:Z

    #@1c8
    .line 1987
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@1ca
    if-eqz v11, :cond_12

    #@1cc
    const-string/jumbo v11, "FragmentManager"

    #@1cf
    new-instance v12, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v13, "restoreAllState: added #"

    #@1d7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v12

    #@1db
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v12

    #@1df
    const-string/jumbo v13, ": "

    #@1e2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v12

    #@1e6
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v12

    #@1ea
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object v12

    #@1ee
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f1
    .line 1988
    :cond_12
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1f3
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1f6
    move-result v11

    #@1f7
    if-eqz v11, :cond_13

    #@1f9
    .line 1989
    new-instance v11, Ljava/lang/IllegalStateException;

    #@1fb
    const-string/jumbo v12, "Already added!"

    #@1fe
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@201
    throw v11

    #@202
    .line 1991
    :cond_13
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@204
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@207
    .line 1980
    add-int/lit8 v7, v7, 0x1

    #@209
    goto :goto_7

    #@20a
    .line 1994
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_14
    const/4 v11, 0x0

    #@20b
    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@20d
    .line 1998
    :cond_15
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@20f
    if-eqz v11, :cond_18

    #@211
    .line 1999
    new-instance v11, Ljava/util/ArrayList;

    #@213
    iget-object v12, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@215
    array-length v12, v12

    #@216
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@219
    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@21b
    .line 2000
    const/4 v7, 0x0

    #@21c
    :goto_8
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@21e
    array-length v11, v11

    #@21f
    if-ge v7, v11, :cond_19

    #@221
    .line 2001
    iget-object v11, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@223
    aget-object v11, v11, v7

    #@225
    invoke-virtual {v11, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    #@228
    move-result-object v0

    #@229
    .line 2002
    .local v0, "bse":Landroid/app/BackStackRecord;
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@22b
    if-eqz v11, :cond_16

    #@22d
    .line 2003
    const-string/jumbo v11, "FragmentManager"

    #@230
    new-instance v12, Ljava/lang/StringBuilder;

    #@232
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@235
    const-string/jumbo v13, "restoreAllState: back stack #"

    #@238
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v12

    #@23c
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v12

    #@240
    .line 2004
    const-string/jumbo v13, " (index "

    #@243
    .line 2003
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v12

    #@247
    .line 2004
    iget v13, v0, Landroid/app/BackStackRecord;->mIndex:I

    #@249
    .line 2003
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v12

    #@24d
    .line 2004
    const-string/jumbo v13, "): "

    #@250
    .line 2003
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v12

    #@254
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v12

    #@258
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25b
    move-result-object v12

    #@25c
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25f
    .line 2005
    new-instance v8, Landroid/util/LogWriter;

    #@261
    const-string/jumbo v11, "FragmentManager"

    #@264
    const/4 v12, 0x2

    #@265
    invoke-direct {v8, v12, v11}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    #@268
    .line 2006
    .local v8, "logw":Landroid/util/LogWriter;
    new-instance v10, Lcom/android/internal/util/FastPrintWriter;

    #@26a
    const/4 v11, 0x0

    #@26b
    const/16 v12, 0x400

    #@26d
    invoke-direct {v10, v8, v11, v12}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@270
    .line 2007
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v11, "  "

    #@273
    const/4 v12, 0x0

    #@274
    invoke-virtual {v0, v11, v10, v12}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@277
    .line 2008
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    #@27a
    .line 2010
    .end local v8    # "logw":Landroid/util/LogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_16
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@27c
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27f
    .line 2011
    iget v11, v0, Landroid/app/BackStackRecord;->mIndex:I

    #@281
    if-ltz v11, :cond_17

    #@283
    .line 2012
    iget v11, v0, Landroid/app/BackStackRecord;->mIndex:I

    #@285
    invoke-virtual {p0, v11, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    #@288
    .line 2000
    :cond_17
    add-int/lit8 v7, v7, 0x1

    #@28a
    goto :goto_8

    #@28b
    .line 2016
    .end local v0    # "bse":Landroid/app/BackStackRecord;
    :cond_18
    const/4 v11, 0x0

    #@28c
    iput-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@28e
    .line 1895
    :cond_19
    return-void
.end method

.method retainNonConfig()Landroid/app/FragmentManagerNonConfig;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1700
    const/4 v4, 0x0

    #@2
    .line 1701
    .local v4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v2, 0x0

    #@3
    .line 1702
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@5
    if-eqz v7, :cond_7

    #@7
    .line 1703
    const/4 v5, 0x0

    #@8
    .end local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    .end local v4    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v7

    #@e
    if-ge v5, v7, :cond_7

    #@10
    .line 1704
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroid/app/Fragment;

    #@18
    .line 1705
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_5

    #@1a
    .line 1706
    iget-boolean v7, v3, Landroid/app/Fragment;->mRetainInstance:Z

    #@1c
    if-eqz v7, :cond_1

    #@1e
    .line 1707
    if-nez v4, :cond_0

    #@20
    .line 1708
    new-instance v4, Ljava/util/ArrayList;

    #@22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 1710
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 1711
    const/4 v7, 0x1

    #@29
    iput-boolean v7, v3, Landroid/app/Fragment;->mRetaining:Z

    #@2b
    .line 1712
    iget-object v7, v3, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@2d
    if-eqz v7, :cond_2

    #@2f
    iget-object v7, v3, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@31
    iget v7, v7, Landroid/app/Fragment;->mIndex:I

    #@33
    :goto_1
    iput v7, v3, Landroid/app/Fragment;->mTargetIndex:I

    #@35
    .line 1713
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    #@37
    if-eqz v7, :cond_1

    #@39
    const-string/jumbo v7, "FragmentManager"

    #@3c
    new-instance v8, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v9, "retainNonConfig: keeping retained "

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v8

    #@50
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 1715
    :cond_1
    const/4 v0, 0x0

    #@54
    .line 1716
    .local v0, "addedChild":Z
    iget-object v7, v3, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@56
    if-eqz v7, :cond_4

    #@58
    .line 1717
    iget-object v7, v3, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5a
    invoke-virtual {v7}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Landroid/app/FragmentManagerNonConfig;

    #@5d
    move-result-object v1

    #@5e
    .line 1718
    .local v1, "child":Landroid/app/FragmentManagerNonConfig;
    if-eqz v1, :cond_4

    #@60
    .line 1719
    if-nez v2, :cond_3

    #@62
    .line 1720
    new-instance v2, Ljava/util/ArrayList;

    #@64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@67
    .line 1721
    .local v2, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    const/4 v6, 0x0

    #@68
    .local v6, "j":I
    :goto_2
    if-ge v6, v5, :cond_3

    #@6a
    .line 1722
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6d
    .line 1721
    add-int/lit8 v6, v6, 0x1

    #@6f
    goto :goto_2

    #@70
    .line 1712
    .end local v0    # "addedChild":Z
    .end local v1    # "child":Landroid/app/FragmentManagerNonConfig;
    .end local v2    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    .end local v6    # "j":I
    :cond_2
    const/4 v7, -0x1

    #@71
    goto :goto_1

    #@72
    .line 1725
    .restart local v0    # "addedChild":Z
    .restart local v1    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75
    .line 1726
    const/4 v0, 0x1

    #@76
    .line 1729
    .end local v1    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_4
    if-eqz v2, :cond_5

    #@78
    if-eqz v0, :cond_6

    #@7a
    .line 1703
    .end local v0    # "addedChild":Z
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@7c
    goto :goto_0

    #@7d
    .line 1730
    .restart local v0    # "addedChild":Z
    :cond_6
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@80
    goto :goto_3

    #@81
    .line 1735
    .end local v0    # "addedChild":Z
    .end local v3    # "f":Landroid/app/Fragment;
    .end local v5    # "i":I
    :cond_7
    if-nez v4, :cond_8

    #@83
    if-nez v2, :cond_8

    #@85
    .line 1736
    return-object v10

    #@86
    .line 1738
    :cond_8
    new-instance v7, Landroid/app/FragmentManagerNonConfig;

    #@88
    invoke-direct {v7, v4, v2}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@8b
    return-object v7
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1793
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@4
    .line 1795
    const/4 v9, 0x1

    #@5
    iput-boolean v9, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    #@7
    .line 1797
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
    .line 1798
    :cond_0
    return-object v12

    #@14
    .line 1802
    :cond_1
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    .line 1803
    .local v0, "N":I
    new-array v1, v0, [Landroid/app/FragmentState;

    #@1c
    .line 1804
    .local v1, "active":[Landroid/app/FragmentState;
    const/4 v7, 0x0

    #@1d
    .line 1805
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    #@1e
    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_8

    #@20
    .line 1806
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Landroid/app/Fragment;

    #@28
    .line 1807
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_6

    #@2a
    .line 1808
    iget v9, v4, Landroid/app/Fragment;->mIndex:I

    #@2c
    if-gez v9, :cond_2

    #@2e
    .line 1809
    new-instance v9, Ljava/lang/IllegalStateException;

    #@30
    .line 1810
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
    .line 1811
    const-string/jumbo v11, " has cleared index: "

    #@43
    .line 1810
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v10

    #@47
    .line 1811
    iget v11, v4, Landroid/app/Fragment;->mIndex:I

    #@49
    .line 1810
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    .line 1809
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@54
    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@57
    .line 1814
    :cond_2
    const/4 v7, 0x1

    #@58
    .line 1816
    new-instance v6, Landroid/app/FragmentState;

    #@5a
    invoke-direct {v6, v4}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    #@5d
    .line 1817
    .local v6, "fs":Landroid/app/FragmentState;
    aput-object v6, v1, v8

    #@5f
    .line 1819
    iget v9, v4, Landroid/app/Fragment;->mState:I

    #@61
    if-lez v9, :cond_7

    #@63
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@65
    if-nez v9, :cond_7

    #@67
    .line 1820
    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    #@6a
    move-result-object v9

    #@6b
    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@6d
    .line 1822
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@6f
    if-eqz v9, :cond_5

    #@71
    .line 1823
    iget-object v9, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@73
    iget v9, v9, Landroid/app/Fragment;->mIndex:I

    #@75
    if-gez v9, :cond_3

    #@77
    .line 1824
    new-instance v9, Ljava/lang/IllegalStateException;

    #@79
    .line 1825
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
    .line 1826
    const-string/jumbo v11, " has target not in fragment manager: "

    #@8c
    .line 1825
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v10

    #@90
    .line 1826
    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@92
    .line 1825
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v10

    #@96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v10

    #@9a
    .line 1824
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9d
    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@a0
    .line 1828
    :cond_3
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@a2
    if-nez v9, :cond_4

    #@a4
    .line 1829
    new-instance v9, Landroid/os/Bundle;

    #@a6
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@a9
    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@ab
    .line 1831
    :cond_4
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@ad
    .line 1832
    const-string/jumbo v10, "android:target_state"

    #@b0
    iget-object v11, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@b2
    .line 1831
    invoke-virtual {p0, v9, v10, v11}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    #@b5
    .line 1833
    iget v9, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    #@b7
    if-eqz v9, :cond_5

    #@b9
    .line 1834
    iget-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@bb
    .line 1835
    const-string/jumbo v10, "android:target_req_state"

    #@be
    .line 1836
    iget v11, v4, Landroid/app/Fragment;->mTargetRequestCode:I

    #@c0
    .line 1834
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c3
    .line 1844
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
    .line 1845
    iget-object v11, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@e3
    .line 1844
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
    .line 1805
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@f0
    goto/16 :goto_0

    #@f2
    .line 1841
    .restart local v6    # "fs":Landroid/app/FragmentState;
    :cond_7
    iget-object v9, v4, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@f4
    iput-object v9, v6, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@f6
    goto :goto_1

    #@f7
    .line 1849
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v6    # "fs":Landroid/app/FragmentState;
    :cond_8
    if-nez v7, :cond_a

    #@f9
    .line 1850
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
    .line 1851
    :cond_9
    return-object v12

    #@107
    .line 1854
    :cond_a
    const/4 v2, 0x0

    #@108
    .line 1855
    .local v2, "added":[I
    const/4 v3, 0x0

    #@109
    .line 1858
    .local v3, "backStack":[Landroid/app/BackStackState;
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10b
    if-eqz v9, :cond_d

    #@10d
    .line 1859
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@112
    move-result v0

    #@113
    .line 1860
    if-lez v0, :cond_d

    #@115
    .line 1861
    new-array v2, v0, [I

    #@117
    .line 1862
    .local v2, "added":[I
    const/4 v8, 0x0

    #@118
    :goto_2
    if-ge v8, v0, :cond_d

    #@11a
    .line 1863
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
    .line 1864
    aget v9, v2, v8

    #@128
    if-gez v9, :cond_b

    #@12a
    .line 1865
    new-instance v9, Ljava/lang/IllegalStateException;

    #@12c
    .line 1866
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
    .line 1867
    const-string/jumbo v11, " has cleared index: "

    #@145
    .line 1866
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v10

    #@149
    .line 1867
    aget v11, v2, v8

    #@14b
    .line 1866
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v10

    #@14f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v10

    #@153
    .line 1865
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@156
    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@159
    .line 1869
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
    .line 1870
    const-string/jumbo v11, ": "

    #@173
    .line 1869
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v10

    #@177
    .line 1870
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@179
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17c
    move-result-object v11

    #@17d
    .line 1869
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
    .line 1862
    :cond_c
    add-int/lit8 v8, v8, 0x1

    #@18a
    goto :goto_2

    #@18b
    .line 1876
    .end local v2    # "added":[I
    :cond_d
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@18d
    if-eqz v9, :cond_f

    #@18f
    .line 1877
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@191
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@194
    move-result v0

    #@195
    .line 1878
    if-lez v0, :cond_f

    #@197
    .line 1879
    new-array v3, v0, [Landroid/app/BackStackState;

    #@199
    .line 1880
    .local v3, "backStack":[Landroid/app/BackStackState;
    const/4 v8, 0x0

    #@19a
    :goto_3
    if-ge v8, v0, :cond_f

    #@19c
    .line 1881
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
    .line 1882
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
    .line 1883
    const-string/jumbo v11, ": "

    #@1c5
    .line 1882
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v10

    #@1c9
    .line 1883
    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1cb
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1ce
    move-result-object v11

    #@1cf
    .line 1882
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
    .line 1880
    :cond_e
    add-int/lit8 v8, v8, 0x1

    #@1dc
    goto :goto_3

    #@1dd
    .line 1888
    .end local v3    # "backStack":[Landroid/app/BackStackState;
    :cond_f
    new-instance v5, Landroid/app/FragmentManagerState;

    #@1df
    invoke-direct {v5}, Landroid/app/FragmentManagerState;-><init>()V

    #@1e2
    .line 1889
    .local v5, "fms":Landroid/app/FragmentManagerState;
    iput-object v1, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    #@1e4
    .line 1890
    iput-object v2, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    #@1e6
    .line 1891
    iput-object v3, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    #@1e8
    .line 1892
    return-object v5
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Landroid/app/Fragment;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1758
    const/4 v0, 0x0

    #@2
    .line 1760
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1761
    new-instance v1, Landroid/os/Bundle;

    #@8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@d
    .line 1763
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@f
    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    #@12
    .line 1764
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@14
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1765
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1c
    .line 1766
    .local v0, "result":Landroid/os/Bundle;
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1e
    .line 1769
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 1770
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    #@25
    .line 1772
    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 1773
    if-nez v0, :cond_3

    #@2b
    .line 1774
    new-instance v0, Landroid/os/Bundle;

    #@2d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@30
    .line 1777
    :cond_3
    const-string/jumbo v1, "android:view_state"

    #@33
    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@35
    .line 1776
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@38
    .line 1779
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@3a
    if-nez v1, :cond_6

    #@3c
    .line 1780
    if-nez v0, :cond_5

    #@3e
    .line 1781
    new-instance v0, Landroid/os/Bundle;

    #@40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@43
    .line 1784
    :cond_5
    const-string/jumbo v1, "android:user_visible_hint"

    #@46
    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@48
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@4b
    .line 1787
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
    .line 674
    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    #@3
    if-gez v2, :cond_0

    #@5
    .line 675
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
    .line 676
    const-string/jumbo v4, " is not currently in the FragmentManager"

    #@1a
    .line 675
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
    .line 678
    :cond_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    #@2a
    if-lez v2, :cond_2

    #@2c
    .line 679
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    #@2f
    move-result-object v0

    #@30
    .line 680
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
    .line 682
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
    .line 1742
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1743
    return-void

    #@6
    .line 1745
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@8
    if-nez v0, :cond_2

    #@a
    .line 1746
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@11
    .line 1750
    :goto_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@13
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@18
    .line 1751
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v0

    #@1e
    if-lez v0, :cond_1

    #@20
    .line 1752
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@22
    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@24
    .line 1753
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@26
    .line 1741
    :cond_1
    return-void

    #@27
    .line 1748
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
    .line 1490
    monitor-enter p0

    #@1
    .line 1491
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1492
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@c
    .line 1494
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    .line 1495
    .local v0, "N":I
    if-ge p1, v0, :cond_2

    #@14
    .line 1496
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
    .line 1497
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
    .line 1489
    return-void

    #@44
    .line 1499
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    #@46
    .line 1500
    :try_start_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@48
    const/4 v2, 0x0

    #@49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 1501
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@4e
    if-nez v1, :cond_3

    #@50
    .line 1502
    new-instance v1, Ljava/util/ArrayList;

    #@52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@55
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@57
    .line 1504
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
    .line 1505
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7e
    .line 1506
    add-int/lit8 v0, v0, 0x1

    #@80
    goto :goto_1

    #@81
    .line 1508
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
    .line 1509
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@af
    goto :goto_0

    #@b0
    .line 1490
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
    .line 1315
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
    .line 1316
    :cond_0
    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    #@22
    if-eqz v1, :cond_4

    #@24
    .line 1317
    iput-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    #@26
    .line 1318
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 1319
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    #@2d
    move-result-object v0

    #@2e
    .line 1321
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    #@30
    .line 1322
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@32
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    #@35
    .line 1323
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@37
    invoke-direct {p0, v1, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    #@3a
    .line 1324
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    #@3d
    .line 1326
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@3f
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    #@42
    .line 1328
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
    .line 1329
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@50
    .line 1331
    :cond_3
    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    #@53
    .line 1314
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    #@0
    .prologue
    .line 1190
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    return-void

    #@5
    .line 1192
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
    .line 1193
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/Fragment;

    #@16
    .line 1194
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    #@18
    .line 1195
    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    #@1b
    .line 1192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1189
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 693
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FragmentManager{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 694
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
    .line 695
    const-string/jumbo v1, " in "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 696
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 697
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    #@24
    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@27
    .line 701
    :goto_0
    const-string/jumbo v1, "}}"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 699
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@34
    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@37
    goto :goto_0
.end method
