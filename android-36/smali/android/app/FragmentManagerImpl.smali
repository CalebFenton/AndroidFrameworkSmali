.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroid/app/FragmentManagerImpl$PopBackStackState;,
        Landroid/app/FragmentManagerImpl$OpGenerator;,
        Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    }
.end annotation


# static fields
.field static greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "FragmentManager"

.field static final greylist-max-o TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final greylist-max-o TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final greylist-max-o USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final greylist-max-o VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field greylist mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mAllowOldReentrantBehavior:Z

.field greylist-max-o mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mContainer:Landroid/app/FragmentContainer;

.field greylist-max-o mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCurState:I

.field greylist-max-o mDestroyed:Z

.field greylist-max-o mExecCommit:Ljava/lang/Runnable;

.field greylist-max-o mExecutingActions:Z

.field greylist-max-o mHavePendingDeferredStart:Z

.field greylist-max-o mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field final greylist-max-o mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field greylist-max-o mNeedMenuInvalidate:Z

.field greylist-max-o mNextFragmentIndex:I

.field greylist-max-o mNoTransactionsBecause:Ljava/lang/String;

.field greylist-max-o mParent:Landroid/app/Fragment;

.field greylist-max-o mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mPrimaryNav:Landroid/app/Fragment;

.field greylist-max-o mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

.field greylist-max-o mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mStateBundle:Landroid/os/Bundle;

.field greylist mStateSaved:Z

.field greylist-max-o mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcompleteExecute(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->completeExecute(Landroid/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleCommit(Landroid/app/FragmentManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 642
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 641
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 691
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 694
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 704
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 707
    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 727
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 739
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private greylist-max-o addAddedFragments(Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2422
    .local p1, "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 2423
    return-void

    .line 2426
    :cond_6
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2427
    .local v4, "state":I
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2428
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_42

    .line 2429
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/Fragment;

    .line 2430
    .local v3, "fragment":Landroid/app/Fragment;
    iget v2, v3, Landroid/app/Fragment;->mState:I

    if-ge v2, v4, :cond_3f

    .line 2431
    invoke-virtual {v3}, Landroid/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 2432
    iget-object v2, v3, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_3f

    iget-boolean v2, v3, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_3f

    iget-boolean v2, v3, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_3f

    .line 2433
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2428
    .end local v3    # "fragment":Landroid/app/Fragment;
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2437
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method private greylist-max-o burpActive()V
    .registers 4

    .line 2949
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_24

    .line 2950
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_24

    .line 2951
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_21

    .line 2952
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 2950
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 2956
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private greylist-max-o checkStateLoss()V
    .registers 4

    .line 1881
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_24

    .line 1885
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1889
    return-void

    .line 1886
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o cleanupExec()V
    .registers 2

    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2053
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2054
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2055
    return-void
.end method

.method private greylist-max-o completeExecute(Landroid/app/BackStackRecord;ZZZ)V
    .registers 13
    .param p1, "record"    # Landroid/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .line 2324
    if-eqz p2, :cond_6

    .line 2325
    invoke-virtual {p1, p4}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_9

    .line 2327
    :cond_6
    invoke-virtual {p1}, Landroid/app/BackStackRecord;->executeOps()V

    .line 2329
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 2330
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2331
    .local v4, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    if-eqz p3, :cond_29

    .line 2334
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    goto :goto_2a

    .line 2333
    :cond_29
    move-object v2, p0

    .line 2336
    :goto_2a
    if-eqz p4, :cond_31

    .line 2337
    iget v0, v2, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2340
    :cond_31
    iget-object v0, v2, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_5e

    .line 2341
    iget-object v0, v2, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2342
    .local v0, "numActive":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    if-ge v1, v0, :cond_5e

    .line 2345
    iget-object v5, v2, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 2346
    .local v5, "fragment":Landroid/app/Fragment;
    if-eqz v5, :cond_5b

    iget-object v6, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_5b

    iget-boolean v6, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v6, :cond_5b

    iget v6, v5, Landroid/app/Fragment;->mContainerId:I

    .line 2347
    invoke-virtual {p1, v6}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 2348
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 2342
    .end local v5    # "fragment":Landroid/app/Fragment;
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 2352
    .end local v0    # "numActive":I
    .end local v1    # "i":I
    :cond_5e
    return-void
.end method

.method private greylist-max-o dispatchMoveToState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 3047
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 3048
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    goto :goto_12

    .line 3051
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3052
    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_16

    .line 3054
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3055
    nop

    .line 3057
    :goto_12
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3058
    return-void

    .line 3054
    :catchall_16
    move-exception v0

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3055
    throw v0
.end method

.method private greylist-max-o endAnimatingAwayFragments()V
    .registers 5

    .line 2455
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2456
    .local v0, "numFragments":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_29

    .line 2457
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2458
    .local v2, "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 2460
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 2456
    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2463
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method private greylist-max-o ensureExecReady(Z)V
    .registers 4
    .param p1, "allowStateLoss"    # Z

    .line 2004
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_43

    .line 2008
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3b

    .line 2012
    if-nez p1, :cond_19

    .line 2013
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2016
    :cond_19
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_2b

    .line 2017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2020
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2022
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_30
    invoke-direct {p0, v1, v1}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 2024
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2025
    nop

    .line 2026
    return-void

    .line 2024
    :catchall_37
    move-exception v1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2025
    throw v1

    .line 2009
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2005
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 9
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2399
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2d

    .line 2400
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 2401
    .local v1, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2402
    .local v2, "isPop":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 2403
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2406
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 2407
    .local v3, "moveToState":Z
    :goto_20
    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    .line 2408
    .end local v3    # "moveToState":Z
    goto :goto_2a

    .line 2409
    :cond_24
    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2410
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->executeOps()V

    .line 2399
    .end local v1    # "record":Landroid/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2413
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method private greylist-max-o executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 17
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2180
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move/from16 v4, p4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    iget-boolean v6, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2181
    .local v6, "allowReordering":Z
    const/4 v0, 0x0

    .line 2182
    .local v0, "addToBackStack":Z
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v1, :cond_17

    .line 2183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_1c

    .line 2185
    :cond_17
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2187
    :goto_1c
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2188
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 2189
    .local v1, "oldPrimaryNav":Landroid/app/Fragment;
    move v5, p3

    move v7, v0

    move-object v8, v1

    .end local v0    # "addToBackStack":Z
    .end local v1    # "oldPrimaryNav":Landroid/app/Fragment;
    .local v5, "recordNum":I
    .local v7, "addToBackStack":Z
    .local v8, "oldPrimaryNav":Landroid/app/Fragment;
    :goto_2a
    const/4 v9, 0x1

    if-ge v5, v4, :cond_57

    .line 2190
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    .line 2191
    .local v0, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2192
    .local v1, "isPop":Z
    if-nez v1, :cond_46

    .line 2193
    iget-object v10, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v8}, Landroid/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v8

    goto :goto_4b

    .line 2195
    :cond_46
    iget-object v10, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Landroid/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;)V

    .line 2197
    :goto_4b
    if-nez v7, :cond_53

    iget-boolean v10, v0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v10, :cond_52

    goto :goto_53

    :cond_52
    const/4 v9, 0x0

    :cond_53
    :goto_53
    move v7, v9

    .line 2189
    .end local v0    # "record":Landroid/app/BackStackRecord;
    .end local v1    # "isPop":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 2199
    .end local v5    # "recordNum":I
    :cond_57
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2201
    if-nez v6, :cond_66

    .line 2202
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2205
    :cond_66
    invoke-static/range {p1 .. p4}, Landroid/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2207
    move/from16 v10, p4

    .line 2208
    .local v10, "postponeIndex":I
    if-eqz v6, :cond_85

    .line 2209
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 2210
    .local v5, "addedFragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    invoke-direct {p0, v5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    .line 2211
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I

    move-result v10

    .line 2213
    move v11, v4

    invoke-direct {p0, v5}, Landroid/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V

    move v4, v10

    goto :goto_88

    .line 2208
    .end local v5    # "addedFragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    :cond_85
    move/from16 v11, p4

    move v4, v10

    .line 2216
    .end local v10    # "postponeIndex":I
    .local v4, "postponeIndex":I
    :goto_88
    if-eq v4, p3, :cond_99

    if-eqz v6, :cond_99

    .line 2218
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2220
    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v3, v9}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2223
    :cond_99
    move v3, p3

    .local v3, "recordNum":I
    :goto_9a
    if-ge v3, v11, :cond_c0

    .line 2224
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    .line 2225
    .local v5, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2226
    .local v9, "isPop":Z
    if-eqz v9, :cond_ba

    iget v10, v5, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v10, :cond_ba

    .line 2227
    iget v10, v5, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v10}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2228
    const/4 v10, -0x1

    iput v10, v5, Landroid/app/BackStackRecord;->mIndex:I

    .line 2230
    :cond_ba
    invoke-virtual {v5}, Landroid/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2223
    .end local v5    # "record":Landroid/app/BackStackRecord;
    .end local v9    # "isPop":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 2233
    .end local v3    # "recordNum":I
    :cond_c0
    if-eqz v7, :cond_c5

    .line 2234
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2236
    :cond_c5
    return-void
.end method

.method private greylist-max-o executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2086
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2087
    .local v0, "numPostponed":I
    :goto_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_83

    .line 2088
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2089
    .local v3, "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    const/4 v4, -0x1

    if-eqz p1, :cond_3b

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmIsBack(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 2090
    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2091
    .local v5, "index":I
    if-eq v5, v4, :cond_3b

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2092
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2093
    goto :goto_80

    .line 2096
    .end local v5    # "index":I
    :cond_3b
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_51

    if-eqz p1, :cond_80

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    .line 2097
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 2098
    :cond_51
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2099
    add-int/lit8 v2, v2, -0x1

    .line 2100
    add-int/lit8 v0, v0, -0x1

    .line 2102
    if-eqz p1, :cond_7d

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmIsBack(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_7d

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->-$$Nest$fgetmRecord(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    .line 2103
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v6, v5

    .local v6, "index":I
    if-eq v5, v4, :cond_7d

    .line 2104
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2106
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_80

    .line 2108
    .end local v6    # "index":I
    :cond_7d
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    .line 2087
    .end local v3    # "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_80
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2112
    .end local v2    # "i":I
    :cond_83
    return-void
.end method

.method private greylist-max-o findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;
    .registers 9
    .param p1, "f"    # Landroid/app/Fragment;

    .line 2371
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2372
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 2374
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_29

    if-nez v1, :cond_a

    goto :goto_29

    .line 2378
    :cond_a
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2379
    .local v3, "fragmentIndex":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_12
    if-ltz v4, :cond_28

    .line 2380
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 2381
    .local v5, "underFragment":Landroid/app/Fragment;
    iget-object v6, v5, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_25

    iget-object v6, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_25

    .line 2383
    return-object v5

    .line 2379
    .end local v5    # "underFragment":Landroid/app/Fragment;
    :cond_25
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    .line 2386
    .end local v4    # "i":I
    :cond_28
    return-object v2

    .line 2375
    .end local v3    # "fragmentIndex":I
    :cond_29
    :goto_29
    return-object v2
.end method

.method private greylist-max-o forcePostponedTransactions()V
    .registers 3

    .line 2443
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2444
    :goto_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2445
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_4

    .line 2448
    :cond_19
    return-void
.end method

.method private greylist-max-o generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2477
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2478
    .local v0, "didSomething":Z
    monitor-enter p0

    .line 2479
    :try_start_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3a

    .line 2483
    :cond_f
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2484
    .local v1, "numActions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_28

    .line 2485
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2484
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2487
    .end local v2    # "i":I
    :cond_28
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2488
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2489
    .end local v1    # "numActions":I
    monitor-exit p0

    .line 2490
    return v0

    .line 2480
    :cond_3a
    :goto_3a
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 2489
    :catchall_3d
    move-exception v1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private greylist-max-o makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2246
    .local p1, "fragments":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2247
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 2248
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2249
    .local v2, "fragment":Landroid/app/Fragment;
    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_19

    .line 2250
    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2251
    .local v3, "view":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 2247
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2254
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method static greylist-max-o modifiesAlpha(Landroid/animation/Animator;)Z
    .registers 8
    .param p0, "anim"    # Landroid/animation/Animator;

    .line 772
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 773
    return v0

    .line 775
    :cond_4
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 776
    move-object v1, p0

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 777
    .local v1, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 778
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    array-length v5, v3

    if-ge v4, v5, :cond_26

    .line 779
    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "alpha"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 780
    return v2

    .line 778
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .end local v1    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v4    # "i":I
    :cond_26
    goto :goto_49

    .line 783
    :cond_27
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_49

    .line 784
    move-object v1, p0

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 785
    .local v1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 786
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 787
    return v2

    .line 785
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 783
    .end local v1    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    :cond_49
    :goto_49
    nop

    .line 791
    :cond_4a
    return v0
.end method

.method private greylist-max-o popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 874
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 875
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 877
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v1, :cond_1c

    if-gez p2, :cond_1c

    if-nez p1, :cond_1c

    .line 880
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v1, v1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 881
    .local v1, "childManager":Landroid/app/FragmentManager;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 883
    return v0

    .line 887
    .end local v1    # "childManager":Landroid/app/FragmentManager;
    :cond_1c
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "id":I
    .end local p3    # "flags":I
    .local v6, "name":Ljava/lang/String;
    .local v7, "id":I
    .local v8, "flags":I
    invoke-virtual/range {v3 .. v8}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    .line 888
    .local p1, "executePop":Z
    if-eqz p1, :cond_3d

    .line 889
    iput-boolean v0, v3, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 891
    :try_start_2c
    iget-object p2, v3, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p3, v3, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    .line 893
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 894
    goto :goto_3d

    .line 893
    :catchall_37
    move-exception v0

    move-object p2, v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 894
    throw p2

    .line 897
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 898
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 899
    return p1
.end method

.method private greylist-max-o postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I
    .registers 14
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2271
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/app/Fragment;>;"
    move v0, p4

    .line 2272
    .local v0, "postponeIndex":I
    add-int/lit8 v1, p4, -0x1

    .local v1, "i":I
    :goto_3
    if-lt v1, p3, :cond_5a

    .line 2273
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    .line 2274
    .local v2, "record":Landroid/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2275
    .local v3, "isPop":Z
    invoke-virtual {v2}, Landroid/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    add-int/lit8 v4, v1, 0x1

    .line 2276
    invoke-virtual {v2, p1, v4, p4}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    move v4, v5

    .line 2277
    .local v4, "isPostponed":Z
    :goto_27
    if-eqz v4, :cond_57

    .line 2278
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_34

    .line 2279
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2281
    :cond_34
    new-instance v6, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v6, v2, v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/app/BackStackRecord;Z)V

    .line 2283
    .local v6, "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2284
    invoke-virtual {v2, v6}, Landroid/app/BackStackRecord;->setOnStartPostponedListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2287
    if-eqz v3, :cond_47

    .line 2288
    invoke-virtual {v2}, Landroid/app/BackStackRecord;->executeOps()V

    goto :goto_4a

    .line 2290
    :cond_47
    invoke-virtual {v2, v5}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    .line 2294
    :goto_4a
    add-int/lit8 v0, v0, -0x1

    .line 2295
    if-eq v1, v0, :cond_54

    .line 2296
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2297
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2301
    :cond_54
    invoke-direct {p0, p5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    .line 2272
    .end local v2    # "record":Landroid/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "isPostponed":Z
    .end local v6    # "listener":Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2304
    .end local v1    # "i":I
    :cond_5a
    return v0
.end method

.method private greylist-max-o removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2130
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6f

    .line 2134
    :cond_9
    if-eqz p2, :cond_67

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_67

    .line 2139
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2142
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 2143
    .local v1, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_1e
    if-ge v2, v0, :cond_61

    .line 2144
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    iget-boolean v3, v3, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2145
    .local v3, "canReorder":Z
    if-nez v3, :cond_5e

    .line 2147
    if-eq v1, v2, :cond_2f

    .line 2148
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2152
    :cond_2f
    add-int/lit8 v4, v2, 0x1

    .line 2153
    .local v4, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2154
    :goto_3d
    if-ge v4, v0, :cond_58

    .line 2155
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2156
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    iget-boolean v5, v5, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_58

    .line 2157
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 2160
    :cond_58
    invoke-direct {p0, p1, p2, v2, v4}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2161
    move v1, v4

    .line 2162
    add-int/lit8 v2, v4, -0x1

    .line 2143
    .end local v3    # "canReorder":Z
    .end local v4    # "reorderingEnd":I
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2165
    .end local v2    # "recordNum":I
    :cond_61
    if-eq v1, v0, :cond_66

    .line 2166
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2168
    :cond_66
    return-void

    .line 2135
    .end local v0    # "numRecords":I
    .end local v1    # "startIndex":I
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2131
    :cond_6f
    :goto_6f
    return-void
.end method

.method public static greylist-max-o reverseTransit(I)I
    .registers 2
    .param p0, "transit"    # I

    .line 3477
    const/4 v0, 0x0

    .line 3478
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_10

    goto :goto_e

    .line 3483
    :sswitch_5
    const/16 v0, 0x1001

    .line 3484
    goto :goto_e

    .line 3486
    :sswitch_8
    const/16 v0, 0x1003

    goto :goto_e

    .line 3480
    :sswitch_b
    const/16 v0, 0x2002

    .line 3481
    nop

    .line 3489
    :goto_e
    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x1001 -> :sswitch_b
        0x1003 -> :sswitch_8
        0x2002 -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist-max-o scheduleCommit()V
    .registers 5

    .line 1930
    monitor-enter p0

    .line 1931
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1932
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 1933
    .local v0, "postponeReady":Z
    :goto_12
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1f

    move v1, v2

    .line 1934
    .local v1, "pendingReady":Z
    :cond_1f
    if-nez v0, :cond_23

    if-eqz v1, :cond_39

    .line 1935
    :cond_23
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1936
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1938
    .end local v0    # "postponeReady":Z
    .end local v1    # "pendingReady":Z
    :cond_39
    monitor-exit p0

    .line 1939
    return-void

    .line 1938
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private greylist-max-o setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .line 807
    if-eqz p1, :cond_14

    if-nez p2, :cond_5

    goto :goto_14

    .line 810
    :cond_5
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 811
    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 813
    :cond_13
    return-void

    .line 808
    :cond_14
    :goto_14
    return-void
.end method

.method private static greylist-max-o setRetaining(Landroid/app/FragmentManagerNonConfig;)V
    .registers 5
    .param p0, "nonConfig"    # Landroid/app/FragmentManagerNonConfig;

    .line 2592
    if-nez p0, :cond_3

    .line 2593
    return-void

    .line 2595
    :cond_3
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2596
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v0, :cond_1d

    .line 2597
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2598
    .local v2, "fragment":Landroid/app/Fragment;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Fragment;->mRetaining:Z

    .line 2599
    .end local v2    # "fragment":Landroid/app/Fragment;
    goto :goto_d

    .line 2601
    :cond_1d
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    .line 2602
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    if-eqz v1, :cond_37

    .line 2603
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerNonConfig;

    .line 2604
    .local v3, "child":Landroid/app/FragmentManagerNonConfig;
    invoke-static {v3}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    .line 2605
    .end local v3    # "child":Landroid/app/FragmentManagerNonConfig;
    goto :goto_27

    .line 2607
    :cond_37
    return-void
.end method

.method static greylist-max-o shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 795
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    if-nez p1, :cond_6

    goto :goto_1c

    .line 798
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1a

    .line 799
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 800
    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 798
    :goto_1b
    return v0

    .line 796
    :cond_1c
    :goto_1c
    return v0
.end method

.method private greylist-max-o throwException(Ljava/lang/RuntimeException;)V
    .registers 10
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 747
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v0, Landroid/util/LogWriter;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 749
    .local v0, "logw":Landroid/util/LogWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/16 v3, 0x400

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 750
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const-string v5, "Failed dumping state"

    const/4 v6, 0x0

    const-string v7, "  "

    if-eqz v3, :cond_35

    .line 751
    const-string v3, "Activity state:"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :try_start_25
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v7, v6, v2, v4}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_34

    .line 754
    :catch_2d
    move-exception v3

    .line 755
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 756
    invoke-static {v1, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_34
    goto :goto_47

    .line 759
    :cond_35
    const-string v3, "Fragment manager state:"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :try_start_3a
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v2, v3}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_40

    .line 765
    goto :goto_47

    .line 762
    :catch_40
    move-exception v3

    .line 763
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 764
    invoke-static {v1, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 768
    throw p1
.end method

.method public static greylist-max-o transitToStyleIndex(IZ)I
    .registers 4
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .line 3494
    const/4 v0, -0x1

    .line 3495
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_1c

    goto :goto_1a

    .line 3502
    :sswitch_5
    if-eqz p1, :cond_9

    .line 3503
    const/4 v1, 0x2

    goto :goto_a

    .line 3504
    :cond_9
    const/4 v1, 0x3

    :goto_a
    move v0, v1

    .line 3505
    goto :goto_1a

    .line 3507
    :sswitch_c
    if-eqz p1, :cond_10

    .line 3508
    const/4 v1, 0x4

    goto :goto_11

    .line 3509
    :cond_10
    const/4 v1, 0x5

    :goto_11
    move v0, v1

    goto :goto_1a

    .line 3497
    :sswitch_13
    if-eqz p1, :cond_17

    .line 3498
    const/4 v1, 0x0

    goto :goto_18

    .line 3499
    :cond_17
    const/4 v1, 0x1

    :goto_18
    move v0, v1

    .line 3500
    nop

    .line 3512
    :goto_1a
    return v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1001 -> :sswitch_13
        0x1003 -> :sswitch_c
        0x2002 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method greylist-max-o addBackStackState(Landroid/app/BackStackRecord;)V
    .registers 3
    .param p1, "state"    # Landroid/app/BackStackRecord;

    .line 2518
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2521
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2522
    return-void
.end method

.method public greylist-max-o addFragment(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .line 1710
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1712
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_6c

    .line 1713
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1716
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1717
    :try_start_2e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_50

    .line 1719
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1720
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1721
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_40

    .line 1722
    iput-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1724
    :cond_40
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_4a

    .line 1725
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1727
    :cond_4a
    if-eqz p2, :cond_6c

    .line 1728
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    goto :goto_6c

    .line 1718
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1

    .line 1714
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_6c
    :goto_6c
    return-void
.end method

.method public whitelist addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .line 914
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 917
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    return-void
.end method

.method public greylist-max-o allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .registers 6
    .param p1, "bse"    # Landroid/app/BackStackRecord;

    .line 1942
    monitor-enter p0

    .line 1943
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_4f

    .line 1953
    :cond_e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1954
    .local v0, "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_48
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1956
    monitor-exit p0

    return v0

    .line 1944
    .end local v0    # "index":I
    :cond_4f
    :goto_4f
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_5a

    .line 1945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1947
    :cond_5a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1948
    .restart local v0    # "index":I
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_86

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_86
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    monitor-exit p0

    return v0

    .line 1958
    .end local v0    # "index":I
    :catchall_8d
    move-exception v0

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public greylist-max-o attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .registers 6
    .param p2, "container"    # Landroid/app/FragmentContainer;
    .param p3, "parent"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback<",
            "*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2960
    .local p1, "host":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_18

    .line 2961
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 2962
    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 2963
    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 2964
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    .line 2965
    return-void

    .line 2960
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o attachFragment(Landroid/app/Fragment;)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1807
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_1c
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_7e

    .line 1809
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1810
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_7e

    .line 1811
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1814
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_4b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1816
    :try_start_4e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_62

    .line 1818
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1819
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_7e

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_7e

    .line 1820
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_7e

    .line 1817
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1

    .line 1812
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :cond_7e
    :goto_7e
    return-void
.end method

.method public whitelist beginTransaction()Landroid/app/FragmentTransaction;
    .registers 2

    .line 817
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method greylist-max-o completeShowHideFragment(Landroid/app/Fragment;)V
    .registers 8
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1513
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    .line 1514
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1515
    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1514
    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1516
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_4a

    .line 1517
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1518
    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_3c

    .line 1519
    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1520
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    goto :goto_41

    .line 1522
    :cond_2a
    iget-object v3, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1523
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1524
    .local v4, "animatingView":Landroid/view/View;
    if-eqz v3, :cond_33

    .line 1525
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1529
    :cond_33
    new-instance v5, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v5, p0, v3, v4}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1539
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v4    # "animatingView":Landroid/view/View;
    goto :goto_41

    .line 1541
    :cond_3c
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    :goto_41
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1544
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_67

    .line 1546
    :cond_4a
    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_57

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-nez v3, :cond_57

    .line 1547
    const/16 v3, 0x8

    goto :goto_58

    .line 1548
    :cond_57
    move v3, v2

    :goto_58
    nop

    .line 1549
    .local v3, "visibility":I
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1551
    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    .line 1555
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v3    # "visibility":I
    :cond_67
    :goto_67
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_75

    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_75

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_75

    .line 1556
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1558
    :cond_75
    iput-boolean v2, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1559
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1560
    return-void
.end method

.method public greylist-max-o detachFragment(Landroid/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1789
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_1c
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_5e

    .line 1791
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1792
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_5e

    .line 1794
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_44

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_44
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1796
    :try_start_47
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1797
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_5b

    .line 1798
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_57

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_57

    .line 1799
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1801
    :cond_57
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    goto :goto_5e

    .line 1797
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 1804
    :cond_5e
    :goto_5e
    return-void
.end method

.method public greylist-max-o dispatchActivityCreated()V
    .registers 2

    .line 3003
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3004
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3005
    return-void
.end method

.method public greylist-max-o dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3108
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3109
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_16

    .line 3110
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3107
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3113
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public greylist-max-o dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3198
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3199
    return v1

    .line 3201
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 3202
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3203
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_21

    .line 3204
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3205
    return v2

    .line 3201
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3209
    .end local v0    # "i":I
    :cond_24
    return v1
.end method

.method public greylist-max-o dispatchCreate()V
    .registers 2

    .line 2998
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2999
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3000
    return-void
.end method

.method public greylist-max-o dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 3134
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 3135
    const/4 v0, 0x0

    return v0

    .line 3137
    :cond_7
    const/4 v0, 0x0

    .line 3138
    .local v0, "show":Z
    const/4 v1, 0x0

    .line 3139
    .local v1, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 3140
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3141
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_2e

    .line 3142
    invoke-virtual {v3, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3143
    const/4 v0, 0x1

    .line 3144
    if-nez v1, :cond_2b

    .line 3145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 3147
    :cond_2b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3139
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3152
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v2, :cond_54

    .line 3153
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_36
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 3154
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3155
    .restart local v3    # "f":Landroid/app/Fragment;
    if-eqz v1, :cond_4e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 3156
    :cond_4e
    invoke-virtual {v3}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    .line 3153
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 3161
    .end local v2    # "i":I
    :cond_54
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3163
    return v0
.end method

.method public greylist-max-o dispatchDestroy()V
    .registers 2

    .line 3030
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3031
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3032
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3033
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 3034
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    .line 3035
    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    .line 3036
    return-void
.end method

.method public greylist-max-o dispatchDestroyView()V
    .registers 2

    .line 3026
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3027
    return-void
.end method

.method public greylist-max-o dispatchLowMemory()V
    .registers 3

    .line 3116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3117
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3118
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_16

    .line 3119
    invoke-virtual {v1}, Landroid/app/Fragment;->performLowMemory()V

    .line 3116
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3122
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public greylist-max-o dispatchMultiWindowModeChanged(Z)V
    .registers 4
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3065
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 3066
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3067
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_17

    .line 3068
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3065
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3071
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method public greylist-max-o dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 5
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 3075
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 3076
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3077
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_17

    .line 3078
    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3075
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3081
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method greylist-max-o dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3317
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3318
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3319
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3320
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3321
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3324
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3325
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3326
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3328
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3329
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .registers 7
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .line 3270
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3271
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3272
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3273
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3274
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 3277
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3278
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3279
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    .line 3281
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3282
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3301
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3302
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3303
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3304
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3305
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3308
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3309
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3310
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3312
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3313
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3438
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3439
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3440
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3441
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3442
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    .line 3445
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3446
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3447
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3449
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3450
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3453
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3454
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3455
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3456
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3457
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    .line 3460
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3461
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3462
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3464
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3465
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3378
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3379
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3380
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3381
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3382
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    .line 3385
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3386
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3387
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3389
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3390
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .registers 7
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .line 3255
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3256
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3257
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3258
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3259
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 3262
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3263
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3264
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    .line 3266
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3267
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3286
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3287
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3288
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3289
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3290
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3293
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3294
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3295
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3297
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3298
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3363
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3364
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3365
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3366
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3367
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    .line 3370
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3371
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3372
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3374
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3375
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3408
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3409
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3410
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3411
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3412
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3415
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3416
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p3, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3417
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 3419
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3420
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3348
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3349
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3350
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3351
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3352
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    .line 3355
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3356
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3357
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3359
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3360
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3393
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3394
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3395
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3396
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3397
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    .line 3400
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3401
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3402
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3404
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3405
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    .line 3333
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3334
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3335
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3336
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3337
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3340
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3341
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p4, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3342
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3344
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3345
    :cond_3b
    return-void
.end method

.method greylist-max-o dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3423
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_15

    .line 3424
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3425
    .local v0, "parentManager":Landroid/app/FragmentManager;
    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_15

    .line 3426
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    .line 3427
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    .line 3430
    .end local v0    # "parentManager":Landroid/app/FragmentManager;
    :cond_15
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3431
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_33

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3432
    :cond_33
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 3434
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Ljava/lang/Boolean;>;"
    :cond_3a
    goto :goto_1b

    .line 3435
    :cond_3b
    return-void
.end method

.method public greylist-max-o dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3183
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3184
    return v1

    .line 3186
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 3187
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 3188
    .local v3, "f":Landroid/app/Fragment;
    if-eqz v3, :cond_21

    .line 3189
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3190
    return v2

    .line 3186
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3194
    .end local v0    # "i":I
    :cond_24
    return v1
.end method

.method public greylist-max-o dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3213
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 3214
    return-void

    .line 3216
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 3217
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3218
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_1c

    .line 3219
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3216
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3222
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public greylist-max-o dispatchPause()V
    .registers 2

    .line 3018
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3019
    return-void
.end method

.method public greylist-max-o dispatchPictureInPictureModeChanged(Z)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3088
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 3089
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3090
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_17

    .line 3091
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3088
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3094
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method public greylist-max-o dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 5
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 3098
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 3099
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3100
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_17

    .line 3101
    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 3098
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3104
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method public greylist-max-o dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3167
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 3168
    const/4 v0, 0x0

    return v0

    .line 3170
    :cond_7
    const/4 v0, 0x0

    .line 3171
    .local v0, "show":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 3172
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 3173
    .local v2, "f":Landroid/app/Fragment;
    if-eqz v2, :cond_22

    .line 3174
    invoke-virtual {v2, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3175
    const/4 v0, 0x1

    .line 3171
    .end local v2    # "f":Landroid/app/Fragment;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3179
    .end local v1    # "i":I
    :cond_25
    return v0
.end method

.method public greylist-max-o dispatchResume()V
    .registers 2

    .line 3013
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3014
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3015
    return-void
.end method

.method public greylist-max-o dispatchStart()V
    .registers 2

    .line 3008
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3009
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3010
    return-void
.end method

.method public greylist-max-o dispatchStop()V
    .registers 2

    .line 3022
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    .line 3023
    return-void
.end method

.method public greylist-max-o dispatchTrimMemory(I)V
    .registers 4
    .param p1, "level"    # I

    .line 3125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3126
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 3127
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_16

    .line 3128
    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    .line 3125
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3131
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method greylist-max-o doPendingDeferredStart()V
    .registers 5

    .line 2494
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_2e

    .line 2495
    const/4 v0, 0x0

    .line 2496
    .local v0, "loadersRunning":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 2497
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2498
    .local v2, "f":Landroid/app/Fragment;
    if-eqz v2, :cond_23

    iget-object v3, v2, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v3, :cond_23

    .line 2499
    iget-object v3, v2, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v3

    or-int/2addr v0, v3

    .line 2496
    .end local v2    # "f":Landroid/app/Fragment;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2502
    .end local v1    # "i":I
    :cond_26
    if-nez v0, :cond_2e

    .line 2503
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2504
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2507
    .end local v0    # "loadersRunning":Z
    :cond_2e
    return-void
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_5d

    .line 999
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1000
    .local v1, "N":I
    if-lez v1, :cond_5d

    .line 1001
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Active Fragments in "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1002
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_5d

    .line 1005
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 1006
    .local v3, "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1007
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1008
    if-eqz v3, :cond_5a

    .line 1009
    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1004
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1015
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_5d
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1016
    .restart local v1    # "N":I
    if-lez v1, :cond_92

    .line 1017
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6e
    if-ge v2, v1, :cond_92

    .line 1020
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 1021
    .restart local v3    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1024
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v3}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    .end local v3    # "f":Landroid/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 1029
    .end local v2    # "i":I
    :cond_92
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v2, :cond_cb

    .line 1030
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1031
    if-lez v1, :cond_cb

    .line 1032
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Fragments Created Menus:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a7
    if-ge v2, v1, :cond_cb

    .line 1034
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 1035
    .restart local v3    # "f":Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1036
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    .end local v3    # "f":Landroid/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1041
    .end local v2    # "i":I
    :cond_cb
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v2, :cond_107

    .line 1042
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1043
    if-lez v1, :cond_107

    .line 1044
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Back Stack:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_e0
    if-ge v2, v1, :cond_107

    .line 1046
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    .line 1047
    .local v3, "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1045
    .end local v3    # "bs":Landroid/app/BackStackRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    .line 1054
    .end local v2    # "i":I
    :cond_107
    monitor-enter p0

    .line 1055
    :try_start_108
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_13e

    .line 1056
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    .line 1057
    if-lez v1, :cond_13e

    .line 1058
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Back Stack Indices:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_11e
    if-ge v2, v1, :cond_13e

    .line 1060
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    .line 1061
    .restart local v3    # "bs":Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1062
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1059
    .end local v3    # "bs":Landroid/app/BackStackRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11e

    .line 1067
    .end local v2    # "i":I
    :cond_13e
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_160

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_160

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAvailBackStackIndices: "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    :cond_160
    monitor-exit p0
    :try_end_161
    .catchall {:try_start_108 .. :try_end_161} :catchall_20d

    .line 1073
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_196

    .line 1074
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1075
    if-lez v1, :cond_196

    .line 1076
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Actions:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_176
    if-ge v2, v1, :cond_196

    .line 1078
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    .line 1079
    .local v3, "r":Landroid/app/FragmentManagerImpl$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1080
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1077
    .end local v3    # "r":Landroid/app/FragmentManagerImpl$OpGenerator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_176

    .line 1085
    .end local v2    # "i":I
    :cond_196
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "FragmentManager misc state:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mHost="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mContainer="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1088
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v2, :cond_1c9

    .line 1089
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mParent="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1091
    :cond_1c9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mCurState="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1092
    const-string v2, " mStateSaved="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1093
    const-string v2, " mDestroyed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1094
    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_1fb

    .line 1095
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1098
    :cond_1fb
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v2, :cond_20c

    .line 1099
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNoTransactionsBecause="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    :cond_20c
    return-void

    .line 1071
    :catchall_20d
    move-exception v2

    :try_start_20e
    monitor-exit p0
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_20d

    throw v2
.end method

.method public greylist-max-o enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5
    .param p1, "action"    # Landroid/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 1904
    if-nez p2, :cond_5

    .line 1905
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1907
    :cond_5
    monitor-enter p0

    .line 1908
    :try_start_6
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_f

    goto :goto_24

    .line 1915
    :cond_f
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 1916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1918
    :cond_1a
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    .line 1920
    monitor-exit p0

    .line 1921
    return-void

    .line 1909
    :cond_24
    :goto_24
    if-eqz p2, :cond_28

    .line 1911
    monitor-exit p0

    return-void

    .line 1913
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/FragmentManagerImpl;
    .end local p1    # "action":Landroid/app/FragmentManagerImpl$OpGenerator;
    .end local p2    # "allowStateLoss":Z
    throw v0

    .line 1920
    .restart local p0    # "this":Landroid/app/FragmentManagerImpl;
    .restart local p1    # "action":Landroid/app/FragmentManagerImpl$OpGenerator;
    .restart local p2    # "allowStateLoss":Z
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v0
.end method

.method greylist-max-o ensureInflatedFragmentView(Landroid/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1490
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p1, Landroid/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_3a

    .line 1491
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1493
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 1494
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1495
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2c

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    :cond_2c
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1497
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1500
    :cond_3a
    return-void
.end method

.method public greylist-max-o execPendingActions()Z
    .registers 5

    .line 2061
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2063
    const/4 v1, 0x0

    .line 2064
    .local v1, "didSomething":Z
    :goto_5
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2065
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2067
    :try_start_11
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    .line 2069
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2070
    nop

    .line 2071
    const/4 v1, 0x1

    goto :goto_5

    .line 2069
    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2070
    throw v0

    .line 2074
    :cond_23
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2075
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 2077
    return v1
.end method

.method public greylist-max-o execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5
    .param p1, "action"    # Landroid/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 2029
    if-eqz p2, :cond_b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_b

    .line 2031
    :cond_a
    return-void

    .line 2033
    :cond_b
    invoke-direct {p0, p2}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2034
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2037
    :try_start_1b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 2039
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2040
    goto :goto_2b

    .line 2039
    :catchall_26
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    .line 2040
    throw v0

    .line 2043
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2044
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    .line 2045
    return-void
.end method

.method public whitelist executePendingTransactions()Z
    .registers 2

    .line 822
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 823
    .local v0, "updates":Z
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 824
    return v0
.end method

.method public whitelist findFragmentById(I)Landroid/app/Fragment;
    .registers 5
    .param p1, "id"    # I

    .line 1828
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1829
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1830
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_19

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_19

    .line 1831
    return-object v1

    .line 1828
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1834
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3c

    .line 1836
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_28
    if-ltz v0, :cond_3c

    .line 1837
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1838
    .restart local v1    # "f":Landroid/app/Fragment;
    if-eqz v1, :cond_39

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_39

    .line 1839
    return-object v1

    .line 1836
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 1843
    .end local v0    # "i":I
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 1847
    if-eqz p1, :cond_22

    .line 1849
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_22

    .line 1850
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1851
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1852
    return-object v1

    .line 1849
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1856
    .end local v0    # "i":I
    :cond_22
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_48

    if-eqz p1, :cond_48

    .line 1858
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_30
    if-ltz v0, :cond_48

    .line 1859
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1860
    .restart local v1    # "f":Landroid/app/Fragment;
    if-eqz v1, :cond_45

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1861
    return-object v1

    .line 1858
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 1865
    .end local v0    # "i":I
    :cond_48
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 5
    .param p1, "who"    # Ljava/lang/String;

    .line 1869
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    .line 1870
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_25

    .line 1871
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1872
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_22

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_22

    .line 1873
    return-object v1

    .line 1870
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1877
    .end local v0    # "i":I
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o freeBackStackIndex(I)V
    .registers 5
    .param p1, "index"    # I

    .line 1987
    monitor-enter p0

    .line 1988
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1989
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1992
    :cond_12
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_2e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    monitor-exit p0

    .line 1995
    return-void

    .line 1994
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public whitelist getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .registers 3
    .param p1, "index"    # I

    .line 909
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public whitelist getBackStackEntryCount()I
    .registers 2

    .line 904
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 938
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 939
    .local v1, "index":I
    if-ne v1, v0, :cond_9

    .line 940
    const/4 v0, 0x0

    return-object v0

    .line 942
    :cond_9
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 943
    .local v0, "f":Landroid/app/Fragment;
    if-nez v0, :cond_38

    .line 944
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 947
    :cond_38
    return-object v0
.end method

.method public whitelist getFragments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 953
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 955
    :cond_b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 956
    :try_start_e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 957
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1
.end method

.method greylist-max-o getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 1

    .line 3612
    return-object p0
.end method

.method public whitelist getPrimaryNavigationFragment()Landroid/app/Fragment;
    .registers 2

    .line 3235
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    return-object v0
.end method

.method greylist-max-o getTargetSdk()I
    .registers 4

    .line 2972
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_15

    .line 2973
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2974
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_15

    .line 2975
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2976
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_15

    .line 2977
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v2

    .line 2981
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o hideFragment(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1763
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_1d
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_29

    .line 1765
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1768
    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1770
    :cond_29
    return-void
.end method

.method public whitelist invalidateOptionsMenu()V
    .registers 3

    .line 3469
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 3470
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    goto :goto_12

    .line 3472
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 3474
    :goto_12
    return-void
.end method

.method public whitelist isDestroyed()Z
    .registers 2

    .line 975
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method greylist-max-o isStateAtLeast(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 1161
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isStateSaved()Z
    .registers 2

    .line 1893
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    return v0
.end method

.method greylist-max-r loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .registers 10
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .line 1107
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1108
    .local v0, "animObj":Landroid/animation/Animator;
    if-eqz v0, :cond_b

    .line 1109
    return-object v0

    .line 1112
    :cond_b
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v1

    if-eqz v1, :cond_22

    .line 1113
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1114
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v2

    .line 1113
    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1115
    .local v1, "anim":Landroid/animation/Animator;
    if-eqz v1, :cond_22

    .line 1116
    return-object v1

    .line 1120
    .end local v1    # "anim":Landroid/animation/Animator;
    :cond_22
    const/4 v1, 0x0

    if-nez p2, :cond_26

    .line 1121
    return-object v1

    .line 1124
    :cond_26
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 1125
    .local v2, "styleIndex":I
    if-gez v2, :cond_2d

    .line 1126
    return-object v1

    .line 1129
    :cond_2d
    if-nez p4, :cond_3d

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1130
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    .line 1132
    :cond_3d
    if-nez p4, :cond_40

    .line 1133
    return-object v1

    .line 1136
    :cond_40
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {v3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1138
    .local v3, "attrs":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1139
    .local v4, "anim":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1141
    if-nez v4, :cond_57

    .line 1142
    return-object v1

    .line 1145
    :cond_57
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o makeActive(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1684
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1685
    return-void

    .line 1688
    :cond_5
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    .line 1689
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1b

    .line 1690
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1692
    :cond_1b
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1693
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_3e
    return-void
.end method

.method greylist-max-o makeInactive(Landroid/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1697
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1698
    return-void

    .line 1701
    :cond_5
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_21
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1705
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    .line 1707
    return-void
.end method

.method greylist-max-o moveFragmentToExpectedState(Landroid/app/Fragment;)V
    .registers 12
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1569
    if-nez p1, :cond_3

    .line 1570
    return-void

    .line 1572
    :cond_3
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1573
    .local v0, "nextState":I
    iget-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    .line 1574
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1575
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    goto :goto_1e

    .line 1577
    :cond_17
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v6, v0

    goto :goto_1e

    .line 1573
    :cond_1d
    move v6, v0

    .line 1581
    .end local v0    # "nextState":I
    .local v6, "nextState":I
    :goto_1e
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .end local p1    # "f":Landroid/app/Fragment;
    .local v5, "f":Landroid/app/Fragment;
    invoke-virtual/range {v4 .. v9}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1583
    iget-object p1, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_7a

    .line 1585
    invoke-direct {p0, v5}, Landroid/app/FragmentManagerImpl;->findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object p1

    .line 1586
    .local p1, "underFragment":Landroid/app/Fragment;
    if-eqz p1, :cond_4e

    .line 1587
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1589
    .local v0, "underView":Landroid/view/View;
    iget-object v1, v5, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1590
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 1591
    .local v7, "underIndex":I
    iget-object v8, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1592
    .local v8, "viewIndex":I
    if-ge v8, v7, :cond_4e

    .line 1593
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1594
    iget-object v9, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1597
    .end local v0    # "underView":Landroid/view/View;
    .end local v1    # "container":Landroid/view/ViewGroup;
    .end local v7    # "underIndex":I
    .end local v8    # "viewIndex":I
    :cond_4e
    iget-boolean v0, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_7a

    iget-object v0, v5, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7a

    .line 1599
    iget-object v0, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 1600
    iput-boolean v3, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 1602
    invoke-virtual {v5}, Landroid/app/Fragment;->getNextTransition()I

    move-result v0

    invoke-virtual {v5}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    invoke-virtual {p0, v5, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1603
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_7a

    .line 1604
    iget-object v1, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1605
    iget-object v1, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1606
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1610
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local p1    # "underFragment":Landroid/app/Fragment;
    :cond_7a
    iget-boolean p1, v5, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_81

    .line 1611
    invoke-virtual {p0, v5}, Landroid/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/app/Fragment;)V

    .line 1613
    :cond_81
    return-void
.end method

.method greylist-max-o moveToState(IZ)V
    .registers 9
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .line 1625
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 1626
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1629
    :cond_f
    :goto_f
    if-nez p2, :cond_16

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_16

    .line 1630
    return-void

    .line 1633
    :cond_16
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1635
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_89

    .line 1636
    const/4 v0, 0x0

    .line 1639
    .local v0, "loadersRunning":Z
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1640
    .local v1, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v1, :cond_3f

    .line 1641
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 1642
    .local v3, "f":Landroid/app/Fragment;
    invoke-virtual {p0, v3}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 1643
    iget-object v4, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v4, :cond_3c

    .line 1644
    iget-object v4, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v4}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v4

    or-int/2addr v0, v4

    .line 1640
    .end local v3    # "f":Landroid/app/Fragment;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1650
    .end local v2    # "i":I
    :cond_3f
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1651
    .local v2, "numActive":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    if-ge v3, v2, :cond_6f

    .line 1652
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 1653
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_6c

    iget-boolean v5, v4, Landroid/app/Fragment;->mRemoving:Z

    if-nez v5, :cond_5a

    iget-boolean v5, v4, Landroid/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_6c

    :cond_5a
    iget-boolean v5, v4, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-nez v5, :cond_6c

    .line 1654
    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    .line 1655
    iget-object v5, v4, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v5, :cond_6c

    .line 1656
    iget-object v5, v4, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1651
    .end local v4    # "f":Landroid/app/Fragment;
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1661
    .end local v3    # "i":I
    :cond_6f
    if-nez v0, :cond_74

    .line 1662
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1665
    :cond_74
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v3, :cond_89

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_89

    .line 1666
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    .line 1667
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1670
    .end local v0    # "loadersRunning":Z
    .end local v1    # "numAdded":I
    .end local v2    # "numActive":I
    :cond_89
    return-void
.end method

.method greylist-max-o moveToState(Landroid/app/Fragment;)V
    .registers 8
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1486
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "f":Landroid/app/Fragment;
    .local v1, "f":Landroid/app/Fragment;
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1487
    return-void
.end method

.method greylist-max-o moveToState(Landroid/app/Fragment;IIIZ)V
    .registers 23
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .line 1167
    move-object/from16 v2, p1

    .line 1172
    iget-boolean v0, v2, Landroid/app/Fragment;->mAdded:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_f

    iget-boolean v0, v2, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_c

    goto :goto_f

    :cond_c
    move/from16 v0, p2

    goto :goto_14

    :cond_f
    :goto_f
    move/from16 v0, p2

    if-le v0, v7, :cond_14

    .line 1173
    const/4 v0, 0x1

    .line 1175
    .end local p2    # "newState":I
    .local v0, "newState":I
    :cond_14
    :goto_14
    iget-boolean v1, v2, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_2a

    iget v1, v2, Landroid/app/Fragment;->mState:I

    if-le v0, v1, :cond_2a

    .line 1176
    iget v1, v2, Landroid/app/Fragment;->mState:I

    if-nez v1, :cond_28

    invoke-virtual {v2}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1178
    const/4 v0, 0x1

    goto :goto_2a

    .line 1181
    :cond_28
    iget v0, v2, Landroid/app/Fragment;->mState:I

    .line 1186
    :cond_2a
    :goto_2a
    iget-boolean v1, v2, Landroid/app/Fragment;->mDeferStart:Z

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v1, :cond_39

    iget v1, v2, Landroid/app/Fragment;->mState:I

    if-ge v1, v8, :cond_39

    if-le v0, v9, :cond_39

    .line 1187
    const/4 v0, 0x3

    move v10, v0

    goto :goto_3a

    .line 1189
    :cond_39
    move v10, v0

    .end local v0    # "newState":I
    .local v10, "newState":I
    :goto_3a
    iget v0, v2, Landroid/app/Fragment;->mState:I

    const/4 v11, 0x2

    const-string v12, "FragmentManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v0, v10, :cond_2f1

    .line 1193
    iget-boolean v0, v2, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, v2, Landroid/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_4c

    .line 1194
    return-void

    .line 1196
    :cond_4c
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 1201
    invoke-virtual {v2, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1202
    invoke-virtual {v2}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    move-object v15, v2

    goto :goto_66

    .line 1196
    :cond_63
    move-object/from16 v1, p0

    move-object v15, v2

    .line 1204
    :goto_66
    iget v0, v15, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_4c0

    goto/16 :goto_2ea

    .line 1206
    :pswitch_6d
    if-lez v10, :cond_199

    .line 1207
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_8a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_8a
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_c3

    .line 1209
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v15, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1211
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1213
    iget-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_b0

    .line 1214
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v15, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 1217
    :cond_b0
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v15, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 1219
    iget-boolean v0, v15, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_c3

    .line 1220
    iput-boolean v7, v15, Landroid/app/Fragment;->mDeferStart:Z

    .line 1221
    if-le v10, v9, :cond_c3

    .line 1222
    const/4 v10, 0x3

    .line 1227
    :cond_c3
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v15, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1228
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iput-object v0, v15, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1229
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_d4

    .line 1230
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_da

    :cond_d4
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v0

    :goto_da
    iput-object v0, v15, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1234
    iget-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    const-string v2, "Fragment "

    if-eqz v0, :cond_12d

    .line 1235
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v3, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v3, v3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-ne v0, v3, :cond_103

    .line 1240
    iget-object v0, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v0, v0, Landroid/app/Fragment;->mState:I

    if-ge v0, v7, :cond_101

    .line 1241
    move-object v0, v2

    iget-object v2, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_12e

    .line 1240
    :cond_101
    move-object v0, v2

    goto :goto_12e

    .line 1236
    :cond_103
    move-object v0, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " declared target fragment "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v15, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " that does not belong to this FragmentManager!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1234
    :cond_12d
    move-object v0, v2

    .line 1245
    :goto_12e
    iget-object v2, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v15, v2, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 1246
    iput-boolean v14, v15, Landroid/app/Fragment;->mCalled:Z

    .line 1247
    iget-object v2, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1248
    iget-boolean v2, v15, Landroid/app/Fragment;->mCalled:Z

    if-eqz v2, :cond_17c

    .line 1252
    iget-object v0, v15, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v0, :cond_150

    .line 1253
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, v15}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    goto :goto_155

    .line 1255
    :cond_150
    iget-object v0, v15, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v15}, Landroid/app/Fragment;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1257
    :goto_155
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    .line 1259
    iget-boolean v0, v15, Landroid/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_172

    .line 1260
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1261
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1262
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_179

    .line 1264
    :cond_172
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0, v7}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 1265
    iput v7, v15, Landroid/app/Fragment;->mState:I

    .line 1267
    :goto_179
    iput-boolean v14, v15, Landroid/app/Fragment;->mRetaining:Z

    goto :goto_199

    .line 1249
    :cond_17c
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " did not call through to super.onAttach()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1274
    :cond_199
    :goto_199
    :pswitch_199
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroid/app/Fragment;)V

    .line 1276
    if-le v10, v7, :cond_29c

    .line 1277
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1b9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_1b9
    iget-boolean v0, v15, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_287

    .line 1279
    const/4 v0, 0x0

    .line 1280
    .local v0, "container":Landroid/view/ViewGroup;
    iget v2, v15, Landroid/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_23e

    .line 1281
    iget v2, v15, Landroid/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e8

    .line 1282
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1287
    :cond_1e8
    iget-object v2, v1, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget v3, v15, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1288
    .end local v0    # "container":Landroid/view/ViewGroup;
    .local v2, "container":Landroid/view/ViewGroup;
    if-nez v2, :cond_23d

    iget-boolean v0, v15, Landroid/app/Fragment;->mRestored:Z

    if-nez v0, :cond_23d

    .line 1291
    :try_start_1f8
    invoke-virtual {v15}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v15, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_202
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f8 .. :try_end_202} :catch_203

    .line 1294
    .local v0, "resName":Ljava/lang/String;
    goto :goto_208

    .line 1292
    .end local v0    # "resName":Ljava/lang/String;
    :catch_203
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v3, "unknown"

    move-object v0, v3

    .line 1295
    .local v0, "resName":Ljava/lang/String;
    :goto_208
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view found for id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v15, Landroid/app/Fragment;->mContainerId:I

    .line 1297
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1295
    invoke-direct {v1, v3}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1302
    .end local v0    # "resName":Ljava/lang/String;
    :cond_23d
    move-object v0, v2

    .end local v2    # "container":Landroid/view/ViewGroup;
    .local v0, "container":Landroid/view/ViewGroup;
    :cond_23e
    iput-object v0, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1303
    iget-object v2, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v2}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v2, v0, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1305
    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_287

    .line 1306
    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1307
    if-eqz v0, :cond_25e

    .line 1308
    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1310
    :cond_25e
    iget-boolean v2, v15, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_269

    .line 1311
    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    :cond_269
    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v2, v3}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1314
    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v2, v3, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1318
    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_284

    iget-object v2, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_284

    goto :goto_285

    :cond_284
    move v7, v14

    :goto_285
    iput-boolean v7, v15, Landroid/app/Fragment;->mIsNewlyAdded:Z

    .line 1323
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_287
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1324
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v15, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1325
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_29a

    .line 1326
    iget-object v0, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v15, v0}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1328
    :cond_29a
    iput-object v13, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1332
    :cond_29c
    :pswitch_29c
    if-le v10, v11, :cond_2a0

    .line 1333
    iput v9, v15, Landroid/app/Fragment;->mState:I

    .line 1337
    :cond_2a0
    :pswitch_2a0
    if-le v10, v9, :cond_2c3

    .line 1338
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2bd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto STARTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_2bd
    invoke-virtual {v15}, Landroid/app/Fragment;->performStart()V

    .line 1340
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    .line 1344
    :cond_2c3
    :pswitch_2c3
    if-le v10, v8, :cond_2ea

    .line 1345
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_2e0
    invoke-virtual {v15}, Landroid/app/Fragment;->performResume()V

    .line 1347
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    .line 1349
    iput-object v13, v15, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1350
    iput-object v13, v15, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_2ea
    :goto_2ea
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v2, v15

    goto/16 :goto_48c

    .line 1353
    :cond_2f1
    move-object/from16 v1, p0

    move-object v15, v2

    iget v0, v15, Landroid/app/Fragment;->mState:I

    if-le v0, v10, :cond_487

    .line 1354
    iget v0, v15, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_4ce

    move/from16 v6, p3

    move/from16 v8, p4

    move-object v2, v15

    goto/16 :goto_48c

    .line 1356
    :pswitch_304
    const/4 v0, 0x5

    if-ge v10, v0, :cond_328

    .line 1357
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_322

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_322
    invoke-virtual {v15}, Landroid/app/Fragment;->performPause()V

    .line 1359
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    .line 1363
    :cond_328
    :pswitch_328
    if-ge v10, v8, :cond_34b

    .line 1364
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_345

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom STARTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_345
    invoke-virtual {v15}, Landroid/app/Fragment;->performStop()V

    .line 1366
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    .line 1371
    :cond_34b
    :pswitch_34b
    if-ge v10, v11, :cond_41c

    .line 1372
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_368

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_368
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_37b

    .line 1376
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, v15}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_37b

    iget-object v0, v15, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_37b

    .line 1377
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1380
    :cond_37b
    invoke-virtual {v15}, Landroid/app/Fragment;->performDestroyView()V

    .line 1381
    invoke-virtual {v1, v15, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    .line 1382
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_410

    iget-object v0, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_410

    .line 1383
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_39d

    .line 1385
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1386
    iget-object v0, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1388
    :cond_39d
    const/4 v0, 0x0

    .line 1389
    .local v0, "anim":Landroid/animation/Animator;
    iget v2, v1, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v2, :cond_3cd

    iget-boolean v2, v1, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_3cd

    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1390
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3c8

    iget-object v2, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1391
    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c3

    .line 1392
    move/from16 v6, p3

    move/from16 v8, p4

    invoke-virtual {v1, v15, v6, v14, v8}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    move-object v9, v0

    goto :goto_3d2

    .line 1391
    :cond_3c3
    move/from16 v6, p3

    move/from16 v8, p4

    goto :goto_3d1

    .line 1390
    :cond_3c8
    move/from16 v6, p3

    move/from16 v8, p4

    goto :goto_3d1

    .line 1389
    :cond_3cd
    move/from16 v6, p3

    move/from16 v8, p4

    .line 1395
    :goto_3d1
    move-object v9, v0

    .end local v0    # "anim":Landroid/animation/Animator;
    .local v9, "anim":Landroid/animation/Animator;
    :goto_3d2
    iget-object v0, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 1396
    if-eqz v9, :cond_407

    .line 1397
    iget-object v2, v15, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1398
    .restart local v2    # "container":Landroid/view/ViewGroup;
    iget-object v3, v15, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1399
    .local v3, "view":Landroid/view/View;
    move-object/from16 v5, p1

    .line 1400
    .local v5, "fragment":Landroid/app/Fragment;
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1401
    invoke-virtual {v15, v9}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1402
    invoke-virtual {v15, v10}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    .line 1403
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;)V

    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v2

    move-object/from16 v2, v16

    .end local v2    # "container":Landroid/view/ViewGroup;
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v9, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1419
    iget-object v4, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1420
    iget-object v4, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {v1, v4, v9}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    .line 1421
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    goto :goto_408

    .line 1396
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v3    # "view":Landroid/view/View;
    .end local v5    # "fragment":Landroid/app/Fragment;
    :cond_407
    move-object v2, v15

    .line 1424
    :goto_408
    iget-object v0, v2, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_415

    .line 1382
    .end local v9    # "anim":Landroid/animation/Animator;
    :cond_410
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v2, v15

    .line 1426
    :goto_415
    iput-object v13, v2, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1427
    iput-object v13, v2, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 1428
    iput-boolean v14, v2, Landroid/app/Fragment;->mInLayout:Z

    goto :goto_427

    .line 1371
    :cond_41c
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v2, v15

    goto :goto_427

    .line 1354
    :pswitch_422
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v2, v15

    .line 1432
    :goto_427
    if-ge v10, v7, :cond_48c

    .line 1433
    iget-boolean v0, v1, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_43d

    .line 1434
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_43d

    .line 1441
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    .line 1442
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v2, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    .line 1443
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1446
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_43d
    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_448

    .line 1451
    invoke-virtual {v2, v10}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    .line 1452
    const/4 v10, 0x1

    goto :goto_48c

    .line 1454
    :cond_448
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_463

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom CREATED: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_463
    iget-boolean v0, v2, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_46e

    .line 1456
    invoke-virtual {v2}, Landroid/app/Fragment;->performDestroy()V

    .line 1457
    invoke-virtual {v1, v2, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    goto :goto_470

    .line 1459
    :cond_46e
    iput v14, v2, Landroid/app/Fragment;->mState:I

    .line 1462
    :goto_470
    invoke-virtual {v2}, Landroid/app/Fragment;->performDetach()V

    .line 1463
    invoke-virtual {v1, v2, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    .line 1464
    if-nez p5, :cond_48c

    .line 1465
    iget-boolean v0, v2, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_480

    .line 1466
    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_48c

    .line 1468
    :cond_480
    iput-object v13, v2, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1469
    iput-object v13, v2, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    .line 1470
    iput-object v13, v2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_48c

    .line 1353
    :cond_487
    move/from16 v6, p3

    move/from16 v8, p4

    move-object v2, v15

    .line 1478
    :cond_48c
    :goto_48c
    iget v0, v2, Landroid/app/Fragment;->mState:I

    if-eq v0, v10, :cond_4bf

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveToState: Fragment state for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not updated inline; expected state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroid/app/Fragment;->mState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iput v10, v2, Landroid/app/Fragment;->mState:I

    .line 1483
    :cond_4bf
    return-void

    :pswitch_data_4c0
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_199
        :pswitch_29c
        :pswitch_2a0
        :pswitch_2c3
    .end packed-switch

    :pswitch_data_4ce
    .packed-switch 0x1
        :pswitch_422
        :pswitch_34b
        :pswitch_34b
        :pswitch_328
        :pswitch_304
    .end packed-switch
.end method

.method public greylist noteStateNotSaved()V
    .registers 4

    .line 2986
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2987
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2988
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2989
    .local v0, "addedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1f

    .line 2990
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 2991
    .local v2, "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_1c

    .line 2992
    invoke-virtual {v2}, Landroid/app/Fragment;->noteStateNotSaved()V

    .line 2989
    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2995
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 19
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 3517
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    const-string v1, "fragment"

    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 3518
    return-object v2

    .line 3521
    :cond_10
    const-string v1, "class"

    invoke-interface {v7, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3522
    .local v1, "fname":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/R$styleable;->Fragment:[I

    .line 3523
    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3524
    .local v9, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    if-nez v1, :cond_25

    .line 3525
    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_26

    .line 3524
    :cond_25
    move-object v10, v1

    .line 3527
    .end local v1    # "fname":Ljava/lang/String;
    .local v10, "fname":Ljava/lang/String;
    :goto_26
    const/4 v1, 0x1

    const/4 v4, -0x1

    invoke-virtual {v9, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 3528
    .local v11, "id":I
    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3529
    .local v12, "tag":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 3531
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    :cond_3a
    move v13, v3

    .line 3532
    .local v13, "containerId":I
    if-ne v13, v4, :cond_63

    if-ne v11, v4, :cond_63

    if-eqz v12, :cond_42

    goto :goto_63

    .line 3533
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3541
    :cond_63
    :goto_63
    if-eq v11, v4, :cond_6a

    invoke-virtual {p0, v11}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    goto :goto_6b

    :cond_6a
    move-object v3, v2

    .line 3542
    .local v3, "fragment":Landroid/app/Fragment;
    :goto_6b
    if-nez v3, :cond_73

    if-eqz v12, :cond_73

    .line 3543
    invoke-virtual {p0, v12}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 3545
    :cond_73
    if-nez v3, :cond_7b

    if-eq v13, v4, :cond_7b

    .line 3546
    invoke-virtual {p0, v13}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    .line 3549
    :cond_7b
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_b0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3550
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3549
    const-string v5, "FragmentManager"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    :cond_b0
    if-nez v3, :cond_dc

    .line 3553
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v4, v6, v10, v2}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v3

    .line 3554
    iput-boolean v1, v3, Landroid/app/Fragment;->mFromLayout:Z

    .line 3555
    if-eqz v11, :cond_be

    move v2, v11

    goto :goto_bf

    :cond_be
    move v2, v13

    :goto_bf
    iput v2, v3, Landroid/app/Fragment;->mFragmentId:I

    .line 3556
    iput v13, v3, Landroid/app/Fragment;->mContainerId:I

    .line 3557
    iput-object v12, v3, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 3558
    iput-boolean v1, v3, Landroid/app/Fragment;->mInLayout:Z

    .line 3559
    iput-object p0, v3, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 3560
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v2, v3, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 3561
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v3, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v7, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3562
    invoke-virtual {p0, v3, v1}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto :goto_f5

    .line 3563
    :cond_dc
    iget-boolean v2, v3, Landroid/app/Fragment;->mInLayout:Z

    if-nez v2, :cond_145

    .line 3573
    iput-boolean v1, v3, Landroid/app/Fragment;->mInLayout:Z

    .line 3574
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v2, v3, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 3578
    iget-boolean v2, v3, Landroid/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_f5

    .line 3579
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v3, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v7, v4}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3587
    :cond_f5
    :goto_f5
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v2, v1, :cond_107

    iget-boolean v1, v3, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_107

    .line 3588
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v1, v3

    .end local v3    # "fragment":Landroid/app/Fragment;
    .local v1, "fragment":Landroid/app/Fragment;
    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_10b

    .line 3587
    .end local v1    # "fragment":Landroid/app/Fragment;
    .restart local v3    # "fragment":Landroid/app/Fragment;
    :cond_107
    move-object v1, v3

    .line 3590
    .end local v3    # "fragment":Landroid/app/Fragment;
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 3593
    :goto_10b
    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_126

    .line 3597
    if-eqz v11, :cond_116

    .line 3598
    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setId(I)V

    .line 3600
    :cond_116
    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_123

    .line 3601
    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3603
    :cond_123
    iget-object v2, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v2

    .line 3594
    :cond_126
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not create a view."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3566
    .end local v1    # "fragment":Landroid/app/Fragment;
    .restart local v3    # "fragment":Landroid/app/Fragment;
    :cond_145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Duplicate id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3567
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", or parent id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3568
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with another fragment for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 3608
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o performPendingDeferredStart(Landroid/app/Fragment;)V
    .registers 9
    .param p1, "f"    # Landroid/app/Fragment;

    .line 1149
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1a

    .line 1150
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_c

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1153
    return-void

    .line 1155
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 1156
    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "f":Landroid/app/Fragment;
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_1b

    .line 1149
    .end local v2    # "f":Landroid/app/Fragment;
    .restart local p1    # "f":Landroid/app/Fragment;
    :cond_1a
    move-object v2, p1

    .line 1158
    .end local p1    # "f":Landroid/app/Fragment;
    .restart local v2    # "f":Landroid/app/Fragment;
    :goto_1b
    return-void
.end method

.method public whitelist popBackStack()V
    .registers 5

    .line 829
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 830
    return-void
.end method

.method public whitelist popBackStack(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 851
    if-ltz p1, :cond_d

    .line 854
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 855
    return-void

    .line 852
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist popBackStack(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 840
    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 841
    return-void
.end method

.method public whitelist popBackStackImmediate()Z
    .registers 4

    .line 834
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 835
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public whitelist popBackStackImmediate(II)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 859
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 860
    if-ltz p1, :cond_b

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 861
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 845
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 846
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method greylist-max-o popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2526
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2527
    return v1

    .line 2529
    :cond_6
    const/4 v0, 0x1

    if-nez p3, :cond_2d

    if-gez p4, :cond_2d

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2d

    .line 2530
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2531
    .local v2, "last":I
    if-gez v2, :cond_19

    .line 2532
    return v1

    .line 2534
    :cond_19
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2535
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2536
    .end local v2    # "last":I
    goto/16 :goto_ac

    .line 2537
    :cond_2d
    const/4 v2, -0x1

    .line 2538
    .local v2, "index":I
    if-nez p3, :cond_32

    if-ltz p4, :cond_84

    .line 2541
    :cond_32
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    move v2, v3

    .line 2542
    :goto_3a
    if-ltz v2, :cond_5c

    .line 2543
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    .line 2544
    .local v3, "bss":Landroid/app/BackStackRecord;
    if-eqz p3, :cond_51

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2545
    goto :goto_5c

    .line 2547
    :cond_51
    if-ltz p4, :cond_58

    iget v4, v3, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_58

    .line 2548
    goto :goto_5c

    .line 2550
    :cond_58
    nop

    .end local v3    # "bss":Landroid/app/BackStackRecord;
    add-int/lit8 v2, v2, -0x1

    .line 2551
    goto :goto_3a

    .line 2552
    :cond_5c
    :goto_5c
    if-gez v2, :cond_5f

    .line 2553
    return v1

    .line 2555
    :cond_5f
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_84

    .line 2556
    add-int/lit8 v2, v2, -0x1

    .line 2558
    :goto_65
    if-ltz v2, :cond_84

    .line 2559
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    .line 2560
    .restart local v3    # "bss":Landroid/app/BackStackRecord;
    if-eqz p3, :cond_7b

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    :cond_7b
    if-ltz p4, :cond_84

    iget v4, v3, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_84

    .line 2562
    :cond_81
    add-int/lit8 v2, v2, -0x1

    .line 2563
    goto :goto_65

    .line 2569
    .end local v3    # "bss":Landroid/app/BackStackRecord;
    :cond_84
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_8e

    .line 2570
    return v1

    .line 2572
    :cond_8e
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_95
    if-le v1, v2, :cond_ac

    .line 2573
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2574
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2572
    add-int/lit8 v1, v1, -0x1

    goto :goto_95

    .line 2577
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_ac
    :goto_ac
    return v0
.end method

.method public whitelist putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .line 929
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_25

    .line 930
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 933
    :cond_25
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    return-void
.end method

.method public whitelist registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 6
    .param p1, "cb"    # Landroid/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 3240
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3241
    return-void
.end method

.method public greylist-max-o removeFragment(Landroid/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1734
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_29
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1736
    .local v0, "inactive":Z
    iget-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_35

    if-eqz v0, :cond_4d

    .line 1745
    :cond_35
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1746
    :try_start_38
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1747
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_4e

    .line 1748
    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_48

    .line 1749
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1751
    :cond_48
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1752
    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1754
    :cond_4d
    return-void

    .line 1747
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public whitelist removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/FragmentManager$OnBackStackChangedListener;

    .line 922
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 923
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 925
    :cond_9
    return-void
.end method

.method greylist-max-o reportBackStackChanged()V
    .registers 3

    .line 2510
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 2511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2512
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2511
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2515
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method greylist-max-o restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .registers 15
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/app/FragmentManagerNonConfig;

    .line 2818
    if-nez p1, :cond_3

    return-void

    .line 2819
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/app/FragmentManagerState;

    .line 2820
    .local v0, "fms":Landroid/app/FragmentManagerState;
    iget-object v1, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-nez v1, :cond_b

    return-void

    .line 2822
    :cond_b
    const/4 v1, 0x0

    .line 2826
    .local v1, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_b0

    .line 2827
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v4

    .line 2828
    .local v4, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    .line 2829
    if-eqz v4, :cond_1f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_20

    :cond_1f
    move v5, v3

    .line 2830
    .local v5, "count":I
    :goto_20
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    if-ge v6, v5, :cond_b0

    .line 2831
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    .line 2832
    .local v7, "f":Landroid/app/Fragment;
    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_46

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreAllState: re-attaching retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_46
    const/4 v8, 0x0

    .line 2834
    .local v8, "index":I
    :goto_47
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v9, v9

    if-ge v8, v9, :cond_59

    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v9, v9, v8

    iget v9, v9, Landroid/app/FragmentState;->mIndex:I

    iget v10, v7, Landroid/app/Fragment;->mIndex:I

    if-eq v9, v10, :cond_59

    .line 2835
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 2837
    :cond_59
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v9, v9

    if-ne v8, v9, :cond_7b

    .line 2838
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find active fragment with index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2841
    :cond_7b
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v9, v9, v8

    .line 2842
    .local v9, "fs":Landroid/app/FragmentState;
    iput-object v7, v9, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 2843
    iput-object v2, v7, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2844
    iput v3, v7, Landroid/app/Fragment;->mBackStackNesting:I

    .line 2845
    iput-boolean v3, v7, Landroid/app/Fragment;->mInLayout:Z

    .line 2846
    iput-boolean v3, v7, Landroid/app/Fragment;->mAdded:Z

    .line 2847
    iput-object v2, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2848
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v10, :cond_ac

    .line 2849
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2850
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v7, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2852
    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v10, v7, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2830
    .end local v7    # "f":Landroid/app/Fragment;
    .end local v8    # "index":I
    .end local v9    # "fs":Landroid/app/FragmentState;
    :cond_ac
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_21

    .line 2859
    .end local v4    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_b0
    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 2860
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bb
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_113

    .line 2861
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v5, v5, v4

    .line 2862
    .local v5, "fs":Landroid/app/FragmentState;
    if-eqz v5, :cond_110

    .line 2863
    const/4 v6, 0x0

    .line 2864
    .local v6, "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    if-eqz v1, :cond_d6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_d6

    .line 2865
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/app/FragmentManagerNonConfig;

    .line 2867
    :cond_d6
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;

    move-result-object v7

    .line 2868
    .restart local v7    # "f":Landroid/app/Fragment;
    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_107

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreAllState: active #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_107
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v9, v7, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2873
    iput-object v2, v5, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 2860
    .end local v5    # "fs":Landroid/app/FragmentState;
    .end local v6    # "childNonConfig":Landroid/app/FragmentManagerNonConfig;
    .end local v7    # "f":Landroid/app/Fragment;
    :cond_110
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 2878
    .end local v4    # "i":I
    :cond_113
    if-eqz p2, :cond_167

    .line 2879
    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v4

    .line 2880
    .local v4, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v4, :cond_120

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_121

    :cond_120
    move v5, v3

    .line 2881
    .local v5, "count":I
    :goto_121
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_122
    if-ge v6, v5, :cond_167

    .line 2882
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    .line 2883
    .restart local v7    # "f":Landroid/app/Fragment;
    iget v8, v7, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v8, :cond_164

    .line 2884
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v9, v7, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Fragment;

    iput-object v8, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2885
    iget-object v8, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-nez v8, :cond_164

    .line 2886
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Re-attaching retained fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " target no longer exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    iput-object v2, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 2881
    .end local v7    # "f":Landroid/app/Fragment;
    :cond_164
    add-int/lit8 v6, v6, 0x1

    goto :goto_122

    .line 2895
    .end local v4    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_167
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2896
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v4, :cond_1ec

    .line 2897
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_171
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1ec

    .line 2898
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v6, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 2899
    .local v5, "f":Landroid/app/Fragment;
    if-nez v5, :cond_1a3

    .line 2900
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No instantiated fragment for index #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2903
    :cond_1a3
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/app/Fragment;->mAdded:Z

    .line 2904
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1cd

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: added #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_1cd
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e4

    .line 2908
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2909
    :try_start_1d8
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2910
    monitor-exit v6

    .line 2897
    .end local v5    # "f":Landroid/app/Fragment;
    add-int/lit8 v4, v4, 0x1

    goto :goto_171

    .line 2910
    .restart local v5    # "f":Landroid/app/Fragment;
    :catchall_1e1
    move-exception v2

    monitor-exit v6
    :try_end_1e3
    .catchall {:try_start_1d8 .. :try_end_1e3} :catchall_1e1

    throw v2

    .line 2906
    :cond_1e4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already added!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2915
    .end local v4    # "i":I
    .end local v5    # "f":Landroid/app/Fragment;
    :cond_1ec
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v4, :cond_264

    .line 2916
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v4, v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2917
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1fb
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v4, v4

    if-ge v2, v4, :cond_263

    .line 2918
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v4

    .line 2919
    .local v4, "bse":Landroid/app/BackStackRecord;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_252

    .line 2920
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    new-instance v5, Landroid/util/LogWriter;

    const/4 v6, 0x2

    const-string v7, "FragmentManager"

    invoke-direct {v5, v6, v7}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 2923
    .local v5, "logw":Landroid/util/LogWriter;
    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    const/16 v7, 0x400

    invoke-direct {v6, v5, v3, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2924
    .local v6, "pw":Ljava/io/PrintWriter;
    const-string v7, "  "

    invoke-virtual {v4, v7, v6, v3}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2925
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 2927
    .end local v5    # "logw":Landroid/util/LogWriter;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_252
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2928
    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_260

    .line 2929
    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v4}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 2917
    .end local v4    # "bse":Landroid/app/BackStackRecord;
    :cond_260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1fb

    .end local v2    # "i":I
    :cond_263
    goto :goto_266

    .line 2933
    :cond_264
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2936
    :goto_266
    iget v2, v0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v2, :cond_276

    .line 2937
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v3, v0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    .line 2940
    :cond_276
    iget v2, v0, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v2, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 2941
    return-void
.end method

.method greylist-max-o retainNonConfig()Landroid/app/FragmentManagerNonConfig;
    .registers 2

    .line 2581
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    .line 2582
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method greylist-max-o saveAllState()Landroid/os/Parcelable;
    .registers 14

    .line 2707
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2708
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2709
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2711
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2712
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2714
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_1e1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1d

    goto/16 :goto_1e1

    .line 2719
    :cond_1d
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2720
    .local v1, "N":I
    new-array v2, v1, [Landroid/app/FragmentState;

    .line 2721
    .local v2, "active":[Landroid/app/FragmentState;
    const/4 v3, 0x0

    .line 2722
    .local v3, "haveFragments":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    const-string v5, " has cleared index: "

    const-string v6, "Failure saving state: active "

    const-string v7, ": "

    const-string v8, "FragmentManager"

    if-ge v4, v1, :cond_f7

    .line 2723
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    .line 2724
    .local v9, "f":Landroid/app/Fragment;
    if-eqz v9, :cond_f3

    .line 2725
    iget v10, v9, Landroid/app/Fragment;->mIndex:I

    if-gez v10, :cond_62

    .line 2726
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v9, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2731
    :cond_62
    const/4 v3, 0x1

    .line 2733
    new-instance v5, Landroid/app/FragmentState;

    invoke-direct {v5, v9}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 2734
    .local v5, "fs":Landroid/app/FragmentState;
    aput-object v5, v2, v4

    .line 2736
    iget v6, v9, Landroid/app/Fragment;->mState:I

    if-lez v6, :cond_cb

    iget-object v6, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v6, :cond_cb

    .line 2737
    invoke-virtual {p0, v9}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2739
    iget-object v6, v9, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v6, :cond_cf

    .line 2740
    iget-object v6, v9, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    if-gez v6, :cond_a9

    .line 2741
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2745
    :cond_a9
    iget-object v6, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v6, :cond_b4

    .line 2746
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2748
    :cond_b4
    iget-object v6, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_state"

    iget-object v11, v9, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p0, v6, v10, v11}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 2750
    iget v6, v9, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v6, :cond_cf

    .line 2751
    iget-object v6, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    iget v11, v9, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_cf

    .line 2758
    :cond_cb
    iget-object v6, v9, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2761
    :cond_cf
    :goto_cf
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_f3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    .end local v5    # "fs":Landroid/app/FragmentState;
    .end local v9    # "f":Landroid/app/Fragment;
    :cond_f3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_27

    .line 2766
    .end local v4    # "i":I
    :cond_f7
    if-nez v3, :cond_104

    .line 2767
    sget-boolean v4, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_103

    const-string/jumbo v4, "saveAllState: no fragments!"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    :cond_103
    return-object v0

    .line 2771
    :cond_104
    const/4 v0, 0x0

    .line 2772
    .local v0, "added":[I
    const/4 v4, 0x0

    .line 2775
    .local v4, "backStack":[Landroid/app/BackStackState;
    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2776
    if-lez v1, :cond_178

    .line 2777
    new-array v0, v1, [I

    .line 2778
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_111
    if-ge v9, v1, :cond_178

    .line 2779
    iget-object v10, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Fragment;

    iget v10, v10, Landroid/app/Fragment;->mIndex:I

    aput v10, v0, v9

    .line 2780
    aget v10, v0, v9

    if-gez v10, :cond_14c

    .line 2781
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2782
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v0, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2781
    invoke-direct {p0, v10}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2785
    :cond_14c
    sget-boolean v10, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_175

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 2786
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2785
    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_175
    add-int/lit8 v9, v9, 0x1

    goto :goto_111

    .line 2791
    .end local v9    # "i":I
    :cond_178
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v5, :cond_1c4

    .line 2792
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2793
    if-lez v1, :cond_1c4

    .line 2794
    new-array v4, v1, [Landroid/app/BackStackState;

    .line 2795
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_187
    if-ge v5, v1, :cond_1c4

    .line 2796
    new-instance v6, Landroid/app/BackStackState;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord;

    invoke-direct {v6, p0, v9}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v6, v4, v5

    .line 2797
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1c1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveAllState: adding back stack #"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2798
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2797
    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_1c1
    add-int/lit8 v5, v5, 0x1

    goto :goto_187

    .line 2803
    .end local v5    # "i":I
    :cond_1c4
    new-instance v5, Landroid/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/app/FragmentManagerState;-><init>()V

    .line 2804
    .local v5, "fms":Landroid/app/FragmentManagerState;
    iput-object v2, v5, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 2805
    iput-object v0, v5, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 2806
    iput-object v4, v5, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    .line 2807
    iget v6, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v6, v5, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 2808
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v6, :cond_1dd

    .line 2809
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    iput v6, v5, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 2811
    :cond_1dd
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2812
    return-object v5

    .line 2715
    .end local v0    # "added":[I
    .end local v1    # "N":I
    .end local v2    # "active":[Landroid/app/FragmentState;
    .end local v3    # "haveFragments":Z
    .end local v4    # "backStack":[Landroid/app/BackStackState;
    .end local v5    # "fms":Landroid/app/FragmentManagerState;
    :cond_1e1
    :goto_1e1
    return-object v0
.end method

.method greylist-max-o saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .registers 5
    .param p1, "f"    # Landroid/app/Fragment;

    .line 2671
    const/4 v0, 0x0

    .line 2673
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_c

    .line 2674
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2676
    :cond_c
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2677
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2678
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2679
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2680
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2683
    :cond_24
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 2684
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 2686
    :cond_2b
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3e

    .line 2687
    if-nez v0, :cond_37

    .line 2688
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2690
    :cond_37
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2693
    :cond_3e
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_51

    .line 2694
    if-nez v0, :cond_4a

    .line 2695
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2698
    :cond_4a
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2701
    :cond_51
    return-object v0
.end method

.method public whitelist saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 962
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_25

    .line 963
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 966
    :cond_25
    iget v0, p1, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_36

    .line 967
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 968
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_35

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_35
    return-object v1

    .line 970
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_36
    return-object v1
.end method

.method greylist-max-o saveFragmentViewState(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroid/app/Fragment;

    .line 2655
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 2656
    return-void

    .line 2658
    :cond_5
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    .line 2659
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_16

    .line 2661
    :cond_11
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2663
    :goto_16
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2664
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 2665
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2666
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2668
    :cond_2c
    return-void
.end method

.method greylist-max-o saveNonConfig()V
    .registers 9

    .line 2610
    const/4 v0, 0x0

    .line 2611
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v1, 0x0

    .line 2612
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_83

    .line 2613
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_83

    .line 2614
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 2615
    .local v4, "f":Landroid/app/Fragment;
    if-eqz v4, :cond_80

    .line 2616
    iget-boolean v5, v4, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v5, :cond_52

    .line 2617
    if-nez v0, :cond_26

    .line 2618
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 2620
    :cond_26
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    iget-object v5, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v5, :cond_32

    iget-object v5, v4, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mIndex:I

    goto :goto_33

    :cond_32
    const/4 v5, -0x1

    :goto_33
    iput v5, v4, Landroid/app/Fragment;->mTargetIndex:I

    .line 2622
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_52

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retainNonConfig: keeping retained "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_52
    iget-object v5, v4, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v5, :cond_60

    .line 2626
    iget-object v5, v4, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v5}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2627
    iget-object v5, v4, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v5, v5, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .local v5, "child":Landroid/app/FragmentManagerNonConfig;
    goto :goto_62

    .line 2631
    .end local v5    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_60
    iget-object v5, v4, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2634
    .restart local v5    # "child":Landroid/app/FragmentManagerNonConfig;
    :goto_62
    if-nez v1, :cond_7b

    if-eqz v5, :cond_7b

    .line 2635
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2636
    .end local v1    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    .local v6, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_72
    if-ge v1, v2, :cond_7a

    .line 2637
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2636
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_7a
    move-object v1, v6

    .line 2641
    .end local v6    # "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/FragmentManagerNonConfig;>;"
    :cond_7b
    if-eqz v1, :cond_80

    .line 2642
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    .end local v4    # "f":Landroid/app/Fragment;
    .end local v5    # "child":Landroid/app/FragmentManagerNonConfig;
    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2647
    .end local v2    # "i":I
    :cond_83
    if-nez v0, :cond_8a

    if-nez v1, :cond_8a

    .line 2648
    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_91

    .line 2650
    :cond_8a
    new-instance v2, Landroid/app/FragmentManagerNonConfig;

    invoke-direct {v2, v0, v1}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 2652
    :goto_91
    return-void
.end method

.method public greylist-max-o setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "bse"    # Landroid/app/BackStackRecord;

    .line 1962
    monitor-enter p0

    .line 1963
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1964
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1966
    :cond_c
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1967
    .local v0, "N":I
    if-ge p1, v0, :cond_40

    .line 1968
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3a

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_3a
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 1971
    :cond_40
    :goto_40
    if-ge v0, p1, :cond_7b

    .line 1972
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_53

    .line 1974
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1976
    :cond_53
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_6f
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 1980
    :cond_7b
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_a1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    .end local v0    # "N":I
    :goto_a6
    monitor-exit p0

    .line 1984
    return-void

    .line 1983
    :catchall_a8
    move-exception v0

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    throw v0
.end method

.method public greylist-max-o setPrimaryNavigationFragment(Landroid/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroid/app/Fragment;

    .line 3226
    if-eqz p1, :cond_3a

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_3a

    .line 3227
    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_17

    goto :goto_3a

    .line 3228
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3231
    :cond_3a
    :goto_3a
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    .line 3232
    return-void
.end method

.method public greylist-max-o showFragment(Landroid/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 1779
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_1d
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2a

    .line 1781
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1784
    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    .line 1786
    :cond_2a
    return-void
.end method

.method greylist-max-o startPendingDeferredFragments()V
    .registers 3

    .line 1673
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    .line 1675
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1676
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1677
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_1b

    .line 1678
    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1675
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1681
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 981
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_26

    .line 985
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_2b

    .line 987
    :cond_26
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 989
    :goto_2b
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 6
    .param p1, "cb"    # Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3244
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 3245
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_4
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .local v2, "N":I
    :goto_a
    if-ge v1, v2, :cond_21

    .line 3246
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p1, :cond_1e

    .line 3247
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3248
    goto :goto_21

    .line 3245
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3251
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_21
    :goto_21
    monitor-exit v0

    .line 3252
    return-void

    .line 3251
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v1
.end method
