.class public Landroid/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Fragment$SavedState;,
        Landroid/app/Fragment$InstantiationException;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final INVALID_STATE:I = -0x1

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final sClassMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/animation/Animator;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/app/FragmentManagerImpl;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field private mEnterTransition:Landroid/transition/Transition;

.field mEnterTransitionCallback:Landroid/app/SharedElementCallback;

.field private mExitTransition:Landroid/transition/Transition;

.field mExitTransitionCallback:Landroid/app/SharedElementCallback;

.field mFragmentId:I

.field mFragmentManager:Landroid/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHost:Landroid/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mLoaderManager:Landroid/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Landroid/app/Fragment;

.field private mReenterTransition:Landroid/transition/Transition;

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field private mReturnTransition:Landroid/transition/Transition;

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 356
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 355
    sput-object v0, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    #@7
    .line 366
    new-instance v0, Landroid/transition/TransitionSet;

    #@9
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@c
    sput-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@e
    .line 354
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 368
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@9
    .line 384
    iput v2, p0, Landroid/app/Fragment;->mIndex:I

    #@b
    .line 396
    iput v2, p0, Landroid/app/Fragment;->mTargetIndex:I

    #@d
    .line 467
    iput-boolean v3, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@f
    .line 486
    iput-boolean v3, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@11
    .line 492
    iput-object v1, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@13
    .line 493
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@15
    iput-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@17
    .line 494
    iput-object v1, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@19
    .line 495
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@1b
    iput-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@1d
    .line 496
    iput-object v1, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@1f
    .line 497
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@21
    iput-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@23
    .line 501
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@25
    iput-object v0, p0, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@27
    .line 502
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@29
    iput-object v0, p0, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@2b
    .line 576
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 584
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 603
    :try_start_0
    sget-object v5, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Class;

    #@8
    .line 604
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    #@a
    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 607
    const-class v5, Landroid/app/Fragment;

    #@14
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_0

    #@1a
    .line 608
    new-instance v5, Landroid/app/Fragment$InstantiationException;

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v7, "Trying to instantiate a class "

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    .line 609
    const-string/jumbo v7, " that is not a Fragment"

    #@2f
    .line 608
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 609
    new-instance v7, Ljava/lang/ClassCastException;

    #@39
    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    #@3c
    .line 608
    invoke-direct {v5, v6, v7}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3f
    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@40
    .line 619
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@41
    .line 620
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Landroid/app/Fragment$InstantiationException;

    #@43
    new-instance v6, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v7, "Unable to instantiate fragment "

    #@4b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    .line 621
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@56
    .line 620
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    .line 622
    const-string/jumbo v7, " empty constructor that is public"

    #@5d
    .line 620
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-direct {v5, v6, v1}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@68
    throw v5

    #@69
    .line 611
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v5, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    #@6b
    invoke-virtual {v5, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 613
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@71
    move-result-object v4

    #@72
    check-cast v4, Landroid/app/Fragment;

    #@74
    .line 614
    .local v4, "f":Landroid/app/Fragment;
    if-eqz p2, :cond_2

    #@76
    .line 615
    invoke-virtual {v4}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@81
    .line 616
    iput-object p2, v4, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@83
    .line 618
    :cond_2
    return-object v4

    #@84
    .line 627
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "f":Landroid/app/Fragment;
    :catch_1
    move-exception v2

    #@85
    .line 628
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Landroid/app/Fragment$InstantiationException;

    #@87
    new-instance v6, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v7, "Unable to instantiate fragment "

    #@8f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v6

    #@97
    .line 629
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@9a
    .line 628
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    .line 630
    const-string/jumbo v7, " empty constructor that is public"

    #@a1
    .line 628
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v6

    #@a5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-direct {v5, v6, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@ac
    throw v5

    #@ad
    .line 623
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    #@ae
    .line 624
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v5, Landroid/app/Fragment$InstantiationException;

    #@b0
    new-instance v6, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v7, "Unable to instantiate fragment "

    #@b8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    .line 625
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@c3
    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v6

    #@c7
    .line 626
    const-string/jumbo v7, " empty constructor that is public"

    #@ca
    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v6

    #@ce
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v6

    #@d2
    invoke-direct {v5, v6, v3}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@d5
    throw v5
.end method

.method private static loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "currentValue"    # Landroid/transition/Transition;
    .param p3, "defaultValue"    # Landroid/transition/Transition;
    .param p4, "id"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2442
    if-eq p2, p3, :cond_0

    #@3
    .line 2443
    return-object p2

    #@4
    .line 2445
    :cond_0
    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7
    move-result v2

    #@8
    .line 2446
    .local v2, "transitionId":I
    move-object v1, p3

    #@9
    .line 2447
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    #@b
    const/high16 v3, 0x10f0000

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 2448
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@12
    move-result-object v0

    #@13
    .line 2449
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    #@16
    move-result-object v1

    #@17
    .line 2450
    instance-of v3, v1, Landroid/transition/TransitionSet;

    #@19
    if-eqz v3, :cond_1

    #@1b
    move-object v3, v1

    #@1c
    .line 2451
    check-cast v3, Landroid/transition/TransitionSet;

    #@1e
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_1

    #@24
    .line 2452
    const/4 v1, 0x0

    #@25
    .line 2455
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2091
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mFragmentId=#"

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 2092
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 2093
    const-string/jumbo v0, " mContainerId=#"

    #@15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 2094
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    #@1a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 2095
    const-string/jumbo v0, " mTag="

    #@24
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@29
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 2096
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    const-string/jumbo v0, "mState="

    #@32
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@37
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3a
    .line 2097
    const-string/jumbo v0, " mIndex="

    #@3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    #@42
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@45
    .line 2098
    const-string/jumbo v0, " mWho="

    #@48
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@4d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 2099
    const-string/jumbo v0, " mBackStackNesting="

    #@53
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    #@58
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@5b
    .line 2100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    const-string/jumbo v0, "mAdded="

    #@61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    #@66
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@69
    .line 2101
    const-string/jumbo v0, " mRemoving="

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    #@71
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@74
    .line 2102
    const-string/jumbo v0, " mResumed="

    #@77
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    iget-boolean v0, p0, Landroid/app/Fragment;->mResumed:Z

    #@7c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@7f
    .line 2103
    const-string/jumbo v0, " mFromLayout="

    #@82
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    iget-boolean v0, p0, Landroid/app/Fragment;->mFromLayout:Z

    #@87
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@8a
    .line 2104
    const-string/jumbo v0, " mInLayout="

    #@8d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@90
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    #@92
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@95
    .line 2105
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    const-string/jumbo v0, "mHidden="

    #@9b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@a0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@a3
    .line 2106
    const-string/jumbo v0, " mDetached="

    #@a6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    #@ab
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@ae
    .line 2107
    const-string/jumbo v0, " mMenuVisible="

    #@b1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@b6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@b9
    .line 2108
    const-string/jumbo v0, " mHasMenu="

    #@bc
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@c1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@c4
    .line 2109
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    const-string/jumbo v0, "mRetainInstance="

    #@ca
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    #@cf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@d2
    .line 2110
    const-string/jumbo v0, " mRetaining="

    #@d5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    #@da
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@dd
    .line 2111
    const-string/jumbo v0, " mUserVisibleHint="

    #@e0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@e5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@e8
    .line 2112
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@ea
    if-eqz v0, :cond_0

    #@ec
    .line 2113
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    const-string/jumbo v0, "mFragmentManager="

    #@f2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5
    .line 2114
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@f7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fa
    .line 2116
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@fc
    if-eqz v0, :cond_1

    #@fe
    .line 2117
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@101
    const-string/jumbo v0, "mHost="

    #@104
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    .line 2118
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@109
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10c
    .line 2120
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@10e
    if-eqz v0, :cond_2

    #@110
    .line 2121
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@113
    const-string/jumbo v0, "mParentFragment="

    #@116
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@119
    .line 2122
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@11b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11e
    .line 2124
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@120
    if-eqz v0, :cond_3

    #@122
    .line 2125
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@125
    const-string/jumbo v0, "mArguments="

    #@128
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@12d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@130
    .line 2127
    :cond_3
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@132
    if-eqz v0, :cond_4

    #@134
    .line 2128
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@137
    const-string/jumbo v0, "mSavedFragmentState="

    #@13a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 2129
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@13f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@142
    .line 2131
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@144
    if-eqz v0, :cond_5

    #@146
    .line 2132
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@149
    const-string/jumbo v0, "mSavedViewState="

    #@14c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14f
    .line 2133
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@151
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@154
    .line 2135
    :cond_5
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@156
    if-eqz v0, :cond_6

    #@158
    .line 2136
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    const-string/jumbo v0, "mTarget="

    #@15e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@163
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@166
    .line 2137
    const-string/jumbo v0, " mTargetRequestCode="

    #@169
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 2138
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    #@16e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@171
    .line 2140
    :cond_6
    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    #@173
    if-eqz v0, :cond_7

    #@175
    .line 2141
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@178
    const-string/jumbo v0, "mNextAnim="

    #@17b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    #@180
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@183
    .line 2143
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@185
    if-eqz v0, :cond_8

    #@187
    .line 2144
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    const-string/jumbo v0, "mContainer="

    #@18d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@192
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@195
    .line 2146
    :cond_8
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@197
    if-eqz v0, :cond_9

    #@199
    .line 2147
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19c
    const-string/jumbo v0, "mView="

    #@19f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a2
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1a4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1a7
    .line 2149
    :cond_9
    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@1a9
    if-eqz v0, :cond_a

    #@1ab
    .line 2150
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    const-string/jumbo v0, "mAnimatingAway="

    #@1b1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b4
    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@1b6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1b9
    .line 2151
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bc
    const-string/jumbo v0, "mStateAfterAnimating="

    #@1bf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c2
    .line 2152
    iget v0, p0, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@1c4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1c7
    .line 2154
    :cond_a
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1c9
    if-eqz v0, :cond_b

    #@1cb
    .line 2155
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ce
    const-string/jumbo v0, "Loader Manager:"

    #@1d1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d4
    .line 2156
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1d6
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v1

    #@1df
    const-string/jumbo v2, "  "

    #@1e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v1

    #@1e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e9
    move-result-object v1

    #@1ea
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1ed
    .line 2158
    :cond_b
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1ef
    if-eqz v0, :cond_c

    #@1f1
    .line 2159
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f4
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f9
    const-string/jumbo v1, "Child "

    #@1fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v0

    #@200
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v0

    #@206
    const-string/jumbo v1, ":"

    #@209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v0

    #@20d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@210
    move-result-object v0

    #@211
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@214
    .line 2160
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@216
    new-instance v1, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v1

    #@21f
    const-string/jumbo v2, "  "

    #@222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v1

    #@226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@229
    move-result-object v1

    #@22a
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@22d
    .line 2090
    :cond_c
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 664
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2165
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2166
    return-object p0

    #@a
    .line 2168
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2169
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@10
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 2171
    :cond_1
    return-object v1
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 788
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 2052
    iget-object v0, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 2078
    iget-object v0, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 728
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 863
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    #@7
    .line 864
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@9
    const/4 v1, 0x5

    #@a
    if-lt v0, v1, :cond_1

    #@c
    .line 865
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    #@11
    .line 874
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    return-object v0

    #@14
    .line 866
    :cond_1
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@16
    const/4 v1, 0x4

    #@17
    if-lt v0, v1, :cond_2

    #@19
    .line 867
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1b
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    #@1e
    goto :goto_0

    #@1f
    .line 868
    :cond_2
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@21
    const/4 v1, 0x2

    #@22
    if-lt v0, v1, :cond_3

    #@24
    .line 869
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@26
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@29
    goto :goto_0

    #@2a
    .line 870
    :cond_3
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@2c
    const/4 v1, 0x1

    #@2d
    if-lt v0, v1, :cond_0

    #@2f
    .line 871
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@31
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    #@34
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 781
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1858
    iget-object v0, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1928
    iget-object v0, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public final getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    #@0
    .prologue
    .line 854
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 797
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    #@0
    .prologue
    .line 700
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    #@2
    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1269
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    .line 1270
    .local v0, "result":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onUseFragmentManagerInflaterFactory()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1271
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    #@11
    .line 1272
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    #@1a
    .line 1274
    :cond_0
    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1053
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1054
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@7
    return-object v0

    #@8
    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1057
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Fragment "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " not attached to Activity"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1059
    :cond_1
    iput-boolean v3, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@2f
    .line 1060
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@31
    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@33
    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@35
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3b
    .line 1061
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3d
    return-object v0
.end method

.method public final getParentFragment()Landroid/app/Fragment;
    .locals 1

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@2
    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 1962
    iget-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 1963
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    #@0
    .prologue
    .line 804
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 805
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
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " not attached to Activity"

    #@19
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
    throw v0

    #@25
    .line 807
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    #@0
    .prologue
    .line 983
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    #@2
    return v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 1893
    iget-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 1894
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 1991
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 2025
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 2026
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    .line 2025
    :goto_0
    return-object v0

    #@b
    .line 2026
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTargetFragment()Landroid/app/Fragment;
    .locals 1

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@2
    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    #@0
    .prologue
    .line 774
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    #@2
    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 817
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    #@0
    .prologue
    .line 1046
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@2
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1463
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 671
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method initState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1617
    const/4 v0, -0x1

    #@3
    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    #@5
    .line 1618
    iput-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@7
    .line 1619
    iput-boolean v1, p0, Landroid/app/Fragment;->mAdded:Z

    #@9
    .line 1620
    iput-boolean v1, p0, Landroid/app/Fragment;->mRemoving:Z

    #@b
    .line 1621
    iput-boolean v1, p0, Landroid/app/Fragment;->mResumed:Z

    #@d
    .line 1622
    iput-boolean v1, p0, Landroid/app/Fragment;->mFromLayout:Z

    #@f
    .line 1623
    iput-boolean v1, p0, Landroid/app/Fragment;->mInLayout:Z

    #@11
    .line 1624
    iput-boolean v1, p0, Landroid/app/Fragment;->mRestored:Z

    #@13
    .line 1625
    iput v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    #@15
    .line 1626
    iput-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@17
    .line 1627
    iput-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@19
    .line 1628
    iput-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@1b
    .line 1629
    iput v1, p0, Landroid/app/Fragment;->mFragmentId:I

    #@1d
    .line 1630
    iput v1, p0, Landroid/app/Fragment;->mContainerId:I

    #@1f
    .line 1631
    iput-object v2, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@21
    .line 1632
    iput-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    #@23
    .line 1633
    iput-boolean v1, p0, Landroid/app/Fragment;->mDetached:Z

    #@25
    .line 1634
    iput-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    #@27
    .line 1635
    iput-object v2, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@29
    .line 1636
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@2b
    .line 1637
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@2d
    .line 1616
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    #@0
    .prologue
    .line 2175
    new-instance v0, Landroid/app/FragmentManagerImpl;

    #@2
    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    #@5
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@7
    .line 2176
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@b
    new-instance v2, Landroid/app/Fragment$1;

    #@d
    invoke-direct {v2, p0}, Landroid/app/Fragment$1;-><init>(Landroid/app/Fragment;)V

    #@10
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    #@13
    .line 2174
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    #@0
    .prologue
    .line 898
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    #@2
    return v0
.end method

.method public final isHidden()Z
    .locals 1

    #@0
    .prologue
    .line 947
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@2
    return v0
.end method

.method final isInBackStack()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 657
    iget v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    #@0
    .prologue
    .line 918
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    #@2
    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    #@0
    .prologue
    .line 907
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    #@2
    return v0
.end method

.method public final isResumed()Z
    .locals 1

    #@0
    .prologue
    .line 926
    iget-boolean v0, p0, Landroid/app/Fragment;->mResumed:Z

    #@2
    return v0
.end method

.method public final isVisible()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 935
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 936
    iget-object v1, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@14
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    iget-object v1, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@1c
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1480
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1479
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1129
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1389
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1388
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1376
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1377
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@5
    if-nez v1, :cond_1

    #@7
    const/4 v0, 0x0

    #@8
    .line 1378
    :goto_0
    if-eqz v0, :cond_0

    #@a
    .line 1379
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@d
    .line 1380
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@10
    .line 1375
    :cond_0
    return-void

    #@11
    .line 1377
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@13
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@16
    move-result-object v0

    #@17
    .local v0, "hostActivity":Landroid/app/Activity;
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1551
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1550
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1787
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1414
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1413
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    #@0
    .prologue
    .line 1396
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    #@0
    .prologue
    .line 1741
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    #@7
    .line 1740
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 1661
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1439
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1598
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1601
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1602
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@9
    .line 1603
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@b
    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@d
    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@16
    .line 1605
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1606
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1c
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    #@1f
    .line 1597
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    #@0
    .prologue
    .line 1688
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    #@0
    .prologue
    .line 1590
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1589
    return-void
.end method

.method public onDetach()V
    .locals 1

    #@0
    .prologue
    .line 1645
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1644
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    #@0
    .prologue
    .line 957
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1368
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1367
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1328
    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@5
    .line 1329
    iput-boolean v6, p0, Landroid/app/Fragment;->mCalled:Z

    #@7
    .line 1332
    sget-object v2, Lcom/android/internal/R$styleable;->Fragment:[I

    #@9
    .line 1331
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 1333
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@f
    .line 1334
    const/4 v3, 0x4

    #@10
    .line 1333
    invoke-static {p1, v0, v2, v5, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@13
    move-result-object v2

    #@14
    iput-object v2, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@16
    .line 1335
    iget-object v2, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@18
    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@1a
    .line 1336
    const/4 v4, 0x6

    #@1b
    .line 1335
    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@21
    .line 1337
    iget-object v2, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@23
    .line 1338
    const/4 v3, 0x3

    #@24
    .line 1337
    invoke-static {p1, v0, v2, v5, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@2a
    .line 1339
    iget-object v2, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@2c
    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@2e
    .line 1340
    const/16 v4, 0x8

    #@30
    .line 1339
    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@33
    move-result-object v2

    #@34
    iput-object v2, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@36
    .line 1341
    iget-object v2, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@38
    .line 1342
    const/4 v3, 0x5

    #@39
    .line 1341
    invoke-static {p1, v0, v2, v5, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@3c
    move-result-object v2

    #@3d
    iput-object v2, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@3f
    .line 1343
    iget-object v2, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@41
    .line 1344
    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@43
    .line 1345
    const/4 v4, 0x7

    #@44
    .line 1343
    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@4a
    .line 1346
    iget-object v2, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@4c
    if-nez v2, :cond_0

    #@4e
    .line 1348
    const/16 v2, 0x9

    #@50
    .line 1347
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@53
    move-result v2

    #@54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@57
    move-result-object v2

    #@58
    iput-object v2, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@5a
    .line 1350
    :cond_0
    iget-object v2, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@5c
    if-nez v2, :cond_1

    #@5e
    .line 1352
    const/16 v2, 0xa

    #@60
    .line 1351
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@63
    move-result v2

    #@64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@67
    move-result-object v2

    #@68
    iput-object v2, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6a
    .line 1354
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@6d
    .line 1356
    iget-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@6f
    if-nez v2, :cond_3

    #@71
    const/4 v1, 0x0

    #@72
    .line 1357
    :goto_0
    if-eqz v1, :cond_2

    #@74
    .line 1358
    const/4 v2, 0x0

    #@75
    iput-boolean v2, p0, Landroid/app/Fragment;->mCalled:Z

    #@77
    .line 1359
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@7a
    .line 1327
    :cond_2
    return-void

    #@7b
    .line 1356
    :cond_3
    iget-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@7d
    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@80
    move-result-object v1

    #@81
    .local v1, "hostActivity":Landroid/app/Activity;
    goto :goto_0
.end method

.method public onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1282
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1281
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 1573
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1572
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1710
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 1720
    return-void
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 1560
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1559
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 1678
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    #@0
    .prologue
    .line 1231
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 1525
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1524
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1547
    return-void
.end method

.method public onStart()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1504
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1506
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1507
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@9
    .line 1508
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1509
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@f
    .line 1510
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@11
    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@13
    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1c
    .line 1512
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 1513
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@22
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    #@25
    .line 1503
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 1569
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1568
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1577
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1576
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1452
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1495
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1494
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2224
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2225
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2227
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@c
    .line 2228
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@f
    .line 2229
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2230
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Fragment "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 2231
    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    #@28
    .line 2230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2233
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 2234
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3a
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@3d
    .line 2223
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2275
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 2276
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2277
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@c
    .line 2274
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2340
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 2341
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2342
    return v1

    #@c
    .line 2344
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2345
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@12
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2346
    return v1

    #@19
    .line 2350
    :cond_1
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2194
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 2195
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@7
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@a
    .line 2197
    :cond_0
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@d
    .line 2198
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@10
    .line 2199
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@12
    if-nez v1, :cond_1

    #@14
    .line 2200
    new-instance v1, Landroid/util/SuperNotCalledException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Fragment "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 2201
    const-string/jumbo v3, " did not call through to super.onCreate()"

    #@29
    .line 2200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 2203
    :cond_1
    if-eqz p1, :cond_3

    #@37
    .line 2204
    const-string/jumbo v1, "android:fragments"

    #@3a
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3d
    move-result-object v0

    #@3e
    .line 2205
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    #@40
    .line 2206
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@42
    if-nez v1, :cond_2

    #@44
    .line 2207
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    #@47
    .line 2209
    :cond_2
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@49
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    #@4c
    .line 2210
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4e
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    #@51
    .line 2193
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 2296
    const/4 v0, 0x0

    #@1
    .line 2297
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 2298
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2299
    const/4 v0, 0x1

    #@e
    .line 2300
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    #@11
    .line 2302
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2303
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    .line 2306
    .end local v0    # "show":Z
    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2217
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2218
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2220
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method performDestroy()V
    .locals 3

    #@0
    .prologue
    .line 2429
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2430
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    #@9
    .line 2432
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@c
    .line 2433
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroy()V

    #@f
    .line 2434
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2435
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Fragment "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 2436
    const-string/jumbo v2, " did not call through to super.onDestroy()"

    #@28
    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2428
    :cond_1
    return-void
.end method

.method performDestroyView()V
    .locals 3

    #@0
    .prologue
    .line 2414
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2415
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    #@9
    .line 2417
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@c
    .line 2418
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@f
    .line 2419
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2420
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Fragment "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 2421
    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    #@28
    .line 2420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2423
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 2424
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3a
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportNextStart()V

    #@3d
    .line 2413
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 2282
    invoke-virtual {p0}, Landroid/app/Fragment;->onLowMemory()V

    #@3
    .line 2283
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2284
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    #@c
    .line 2281
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2324
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 2325
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2326
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2327
    return v1

    #@14
    .line 2330
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2331
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1a
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 2332
    return v1

    #@21
    .line 2336
    :cond_1
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2354
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2355
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2356
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@f
    .line 2358
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 2359
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@15
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@18
    .line 2353
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    #@0
    .prologue
    .line 2375
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2376
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    #@9
    .line 2378
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@c
    .line 2379
    invoke-virtual {p0}, Landroid/app/Fragment;->onPause()V

    #@f
    .line 2380
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2381
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Fragment "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 2382
    const-string/jumbo v2, " did not call through to super.onPause()"

    #@28
    .line 2381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2374
    :cond_1
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2310
    const/4 v0, 0x0

    #@1
    .line 2311
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 2312
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2313
    const/4 v0, 0x1

    #@e
    .line 2314
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    #@11
    .line 2316
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2317
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    .line 2320
    .end local v0    # "show":Z
    :cond_1
    return v0
.end method

.method performResume()V
    .locals 3

    #@0
    .prologue
    .line 2258
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2259
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2260
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    .line 2262
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    .line 2263
    invoke-virtual {p0}, Landroid/app/Fragment;->onResume()V

    #@14
    .line 2264
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 2265
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Fragment "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 2266
    const-string/jumbo v2, " did not call through to super.onResume()"

    #@2d
    .line 2265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 2268
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 2269
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3f
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    #@42
    .line 2270
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@44
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@47
    .line 2257
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2365
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 2366
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2367
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    .line 2368
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@f
    .line 2369
    const-string/jumbo v1, "android:fragments"

    #@12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@15
    .line 2364
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    #@0
    .prologue
    .line 2239
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2240
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2241
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    .line 2243
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    .line 2244
    invoke-virtual {p0}, Landroid/app/Fragment;->onStart()V

    #@14
    .line 2245
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 2246
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Fragment "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 2247
    const-string/jumbo v2, " did not call through to super.onStart()"

    #@2d
    .line 2246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 2249
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 2250
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3f
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    #@42
    .line 2252
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 2253
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@48
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    #@4b
    .line 2238
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2387
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2388
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    #@a
    .line 2390
    :cond_0
    iput-boolean v3, p0, Landroid/app/Fragment;->mCalled:Z

    #@c
    .line 2391
    invoke-virtual {p0}, Landroid/app/Fragment;->onStop()V

    #@f
    .line 2392
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2393
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Fragment "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 2394
    const-string/jumbo v2, " did not call through to super.onStop()"

    #@28
    .line 2393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2397
    :cond_1
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 2398
    iput-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@3a
    .line 2399
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@3c
    if-nez v0, :cond_2

    #@3e
    .line 2400
    const/4 v0, 0x1

    #@3f
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@41
    .line 2401
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@43
    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@45
    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@47
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@4d
    .line 2403
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@4f
    if-eqz v0, :cond_3

    #@51
    .line 2404
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 2405
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@57
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    #@5a
    .line 2386
    :cond_3
    :goto_0
    return-void

    #@5b
    .line 2407
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@5d
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    #@60
    goto :goto_0
.end method

.method performTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 2289
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    #@3
    .line 2290
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2291
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    #@c
    .line 2288
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1755
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    .line 1754
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 1207
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1208
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
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " not attached to Activity"

    #@19
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
    throw v0

    #@25
    .line 1210
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V

    #@2a
    .line 1206
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 635
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 636
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@7
    iget-object v1, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@c
    .line 637
    iput-object v2, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@e
    .line 639
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    .line 640
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    #@14
    .line 641
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 642
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Fragment "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 643
    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    #@2d
    .line 642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 634
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 2039
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 2038
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 2065
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 2064
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 718
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Fragment already active"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 721
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@f
    .line 717
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1798
    if-nez p1, :cond_0

    #@2
    .line 1799
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 1801
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@6
    .line 1797
    return-void
.end method

.method public setEnterSharedElementTransitionCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1808
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    #@3
    .line 1807
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1844
    iput-object p1, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@2
    .line 1843
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1819
    if-nez p1, :cond_0

    #@2
    .line 1820
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 1822
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@6
    .line 1818
    return-void
.end method

.method public setExitSharedElementTransitionCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1829
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    #@3
    .line 1828
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1911
    iput-object p1, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@2
    .line 1910
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    #@0
    .prologue
    .line 994
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 995
    iput-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@6
    .line 996
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 993
    :cond_0
    :goto_0
    return-void

    #@13
    .line 997
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@15
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    #@18
    goto :goto_0
.end method

.method final setIndex(ILandroid/app/Fragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parent"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 648
    iput p1, p0, Landroid/app/Fragment;->mIndex:I

    #@2
    .line 649
    if-eqz p2, :cond_0

    #@4
    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p2, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ":"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@22
    .line 647
    :goto_0
    return-void

    #@23
    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "android:fragment:"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@3b
    goto :goto_0
.end method

.method public setInitialSavedState(Landroid/app/Fragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Landroid/app/Fragment$SavedState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 740
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@3
    if-ltz v1, :cond_0

    #@5
    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Fragment already active"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 743
    :cond_0
    if-eqz p1, :cond_1

    #@10
    iget-object v1, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 744
    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@16
    .line 743
    :cond_1
    iput-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@18
    .line 739
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    #@0
    .prologue
    .line 1012
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1013
    iput-boolean p1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@6
    .line 1014
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 1011
    :cond_0
    :goto_0
    return-void

    #@17
    .line 1015
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@19
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    #@1c
    goto :goto_0
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1945
    iput-object p1, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@2
    .line 1944
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 2
    .param p1, "retain"    # Z

    #@0
    .prologue
    .line 975
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 977
    const-string/jumbo v1, "Can\'t retain fragements that are nested in other fragments"

    #@b
    .line 976
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 979
    :cond_0
    iput-boolean p1, p0, Landroid/app/Fragment;->mRetainInstance:Z

    #@11
    .line 974
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1876
    iput-object p1, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@2
    .line 1875
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1977
    iput-object p1, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    .line 1976
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2008
    iput-object p1, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    .line 2007
    return-void
.end method

.method public setTargetFragment(Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 759
    iput-object p1, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@2
    .line 760
    iput p2, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    #@4
    .line 758
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    #@0
    .prologue
    .line 1034
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@8
    const/4 v1, 0x4

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 1035
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@d
    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    #@10
    .line 1037
    :cond_0
    iput-boolean p1, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@12
    .line 1038
    if-eqz p1, :cond_1

    #@14
    const/4 v0, 0x0

    #@15
    :goto_0
    iput-boolean v0, p0, Landroid/app/Fragment;->mDeferStart:Z

    #@17
    .line 1033
    return-void

    #@18
    .line 1038
    :cond_1
    const/4 v0, 0x1

    #@19
    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1256
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1257
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 1260
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1071
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@4
    .line 1070
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1084
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1085
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Fragment "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " not attached to Activity"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1087
    :cond_0
    if-eqz p2, :cond_1

    #@29
    .line 1088
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2b
    invoke-virtual {v0, p0, p1, v2, p2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@2e
    .line 1083
    :goto_0
    return-void

    #@2f
    .line 1092
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@31
    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@34
    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 1101
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 1100
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1109
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1110
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
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " not attached to Activity"

    #@19
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
    throw v0

    #@25
    .line 1112
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@2a
    .line 1108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 677
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 678
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@c
    if-ltz v1, :cond_0

    #@e
    .line 679
    const-string/jumbo v1, " #"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 680
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    .line 682
    :cond_0
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 683
    const-string/jumbo v1, " id=0x"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 684
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    #@25
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 686
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 687
    const-string/jumbo v1, " "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 688
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 690
    :cond_2
    const/16 v1, 0x7d

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1766
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    .line 1765
    return-void
.end method
