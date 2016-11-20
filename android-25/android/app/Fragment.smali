.class public Landroid/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Fragment$InstantiationException;,
        Landroid/app/Fragment$SavedState;
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

.field mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

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
    .line 364
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 363
    sput-object v0, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    #@7
    .line 374
    new-instance v0, Landroid/transition/TransitionSet;

    #@9
    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    #@c
    sput-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@e
    .line 362
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
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 376
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@9
    .line 392
    iput v2, p0, Landroid/app/Fragment;->mIndex:I

    #@b
    .line 404
    iput v2, p0, Landroid/app/Fragment;->mTargetIndex:I

    #@d
    .line 476
    iput-boolean v3, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@f
    .line 495
    iput-boolean v3, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@11
    .line 501
    iput-object v1, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@13
    .line 502
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@15
    iput-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@17
    .line 503
    iput-object v1, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@19
    .line 504
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@1b
    iput-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@1d
    .line 505
    iput-object v1, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@1f
    .line 506
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@21
    iput-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@23
    .line 510
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@25
    iput-object v0, p0, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@27
    .line 511
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@29
    iput-object v0, p0, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@2b
    .line 585
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 593
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
    .line 612
    :try_start_0
    sget-object v5, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Class;

    #@8
    .line 613
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    #@a
    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 616
    const-class v5, Landroid/app/Fragment;

    #@14
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_0

    #@1a
    .line 617
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
    .line 618
    const-string/jumbo v7, " that is not a Fragment"

    #@2f
    .line 617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 618
    new-instance v7, Ljava/lang/ClassCastException;

    #@39
    invoke-direct {v7}, Ljava/lang/ClassCastException;-><init>()V

    #@3c
    .line 617
    invoke-direct {v5, v6, v7}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3f
    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    #@40
    .line 628
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@41
    .line 629
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
    .line 630
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@56
    .line 629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    .line 631
    const-string/jumbo v7, " empty constructor that is public"

    #@5d
    .line 629
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
    .line 620
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v5, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    #@6b
    invoke-virtual {v5, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 622
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@71
    move-result-object v4

    #@72
    check-cast v4, Landroid/app/Fragment;

    #@74
    .line 623
    .local v4, "f":Landroid/app/Fragment;
    if-eqz p2, :cond_2

    #@76
    .line 624
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
    .line 625
    iput-object p2, v4, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@83
    .line 627
    :cond_2
    return-object v4

    #@84
    .line 636
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "f":Landroid/app/Fragment;
    :catch_1
    move-exception v2

    #@85
    .line 637
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
    .line 638
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@9a
    .line 637
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    .line 639
    const-string/jumbo v7, " empty constructor that is public"

    #@a1
    .line 637
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
    .line 632
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    #@ae
    .line 633
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
    .line 634
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@c3
    .line 633
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v6

    #@c7
    .line 635
    const-string/jumbo v7, " empty constructor that is public"

    #@ca
    .line 633
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
    .line 2618
    if-eq p2, p3, :cond_0

    #@3
    .line 2619
    return-object p2

    #@4
    .line 2621
    :cond_0
    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@7
    move-result v2

    #@8
    .line 2622
    .local v2, "transitionId":I
    move-object v1, p3

    #@9
    .line 2623
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    #@b
    const/high16 v3, 0x10f0000

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 2624
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    #@12
    move-result-object v0

    #@13
    .line 2625
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    #@16
    move-result-object v1

    #@17
    .line 2626
    instance-of v3, v1, Landroid/transition/TransitionSet;

    #@19
    if-eqz v3, :cond_1

    #@1b
    move-object v3, v1

    #@1c
    .line 2627
    check-cast v3, Landroid/transition/TransitionSet;

    #@1e
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_1

    #@24
    .line 2628
    const/4 v1, 0x0

    #@25
    .line 2631
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
    .line 2229
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mFragmentId=#"

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 2230
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 2231
    const-string/jumbo v0, " mContainerId=#"

    #@15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 2232
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    #@1a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 2233
    const-string/jumbo v0, " mTag="

    #@24
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@29
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 2234
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
    .line 2235
    const-string/jumbo v0, " mIndex="

    #@3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    #@42
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@45
    .line 2236
    const-string/jumbo v0, " mWho="

    #@48
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@4d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 2237
    const-string/jumbo v0, " mBackStackNesting="

    #@53
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    #@58
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@5b
    .line 2238
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
    .line 2239
    const-string/jumbo v0, " mRemoving="

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    #@71
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@74
    .line 2240
    const-string/jumbo v0, " mFromLayout="

    #@77
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    iget-boolean v0, p0, Landroid/app/Fragment;->mFromLayout:Z

    #@7c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@7f
    .line 2241
    const-string/jumbo v0, " mInLayout="

    #@82
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    #@87
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@8a
    .line 2242
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v0, "mHidden="

    #@90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@95
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@98
    .line 2243
    const-string/jumbo v0, " mDetached="

    #@9b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    #@a0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@a3
    .line 2244
    const-string/jumbo v0, " mMenuVisible="

    #@a6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@ab
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@ae
    .line 2245
    const-string/jumbo v0, " mHasMenu="

    #@b1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@b6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@b9
    .line 2246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    const-string/jumbo v0, "mRetainInstance="

    #@bf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    #@c4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@c7
    .line 2247
    const-string/jumbo v0, " mRetaining="

    #@ca
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    #@cf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@d2
    .line 2248
    const-string/jumbo v0, " mUserVisibleHint="

    #@d5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@da
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@dd
    .line 2249
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@df
    if-eqz v0, :cond_0

    #@e1
    .line 2250
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e4
    const-string/jumbo v0, "mFragmentManager="

    #@e7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea
    .line 2251
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@ec
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@ef
    .line 2253
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@f1
    if-eqz v0, :cond_1

    #@f3
    .line 2254
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f6
    const-string/jumbo v0, "mHost="

    #@f9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fc
    .line 2255
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@fe
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@101
    .line 2257
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@103
    if-eqz v0, :cond_2

    #@105
    .line 2258
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@108
    const-string/jumbo v0, "mParentFragment="

    #@10b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10e
    .line 2259
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@110
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@113
    .line 2261
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@115
    if-eqz v0, :cond_3

    #@117
    .line 2262
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11a
    const-string/jumbo v0, "mArguments="

    #@11d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@122
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@125
    .line 2264
    :cond_3
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@127
    if-eqz v0, :cond_4

    #@129
    .line 2265
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12c
    const-string/jumbo v0, "mSavedFragmentState="

    #@12f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132
    .line 2266
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@134
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@137
    .line 2268
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@139
    if-eqz v0, :cond_5

    #@13b
    .line 2269
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13e
    const-string/jumbo v0, "mSavedViewState="

    #@141
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@144
    .line 2270
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@146
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@149
    .line 2272
    :cond_5
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@14b
    if-eqz v0, :cond_6

    #@14d
    .line 2273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@150
    const-string/jumbo v0, "mTarget="

    #@153
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@156
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@158
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@15b
    .line 2274
    const-string/jumbo v0, " mTargetRequestCode="

    #@15e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    .line 2275
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    #@163
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@166
    .line 2277
    :cond_6
    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    #@168
    if-eqz v0, :cond_7

    #@16a
    .line 2278
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16d
    const-string/jumbo v0, "mNextAnim="

    #@170
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@173
    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    #@175
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@178
    .line 2280
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@17a
    if-eqz v0, :cond_8

    #@17c
    .line 2281
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17f
    const-string/jumbo v0, "mContainer="

    #@182
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@185
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@187
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@18a
    .line 2283
    :cond_8
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@18c
    if-eqz v0, :cond_9

    #@18e
    .line 2284
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@191
    const-string/jumbo v0, "mView="

    #@194
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@197
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@199
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19c
    .line 2286
    :cond_9
    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@19e
    if-eqz v0, :cond_a

    #@1a0
    .line 2287
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a3
    const-string/jumbo v0, "mAnimatingAway="

    #@1a6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a9
    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    #@1ab
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1ae
    .line 2288
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b1
    const-string/jumbo v0, "mStateAfterAnimating="

    #@1b4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b7
    .line 2289
    iget v0, p0, Landroid/app/Fragment;->mStateAfterAnimating:I

    #@1b9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1bc
    .line 2291
    :cond_a
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1be
    if-eqz v0, :cond_b

    #@1c0
    .line 2292
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c3
    const-string/jumbo v0, "Loader Manager:"

    #@1c6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c9
    .line 2293
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1cb
    new-instance v1, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v1

    #@1d4
    const-string/jumbo v2, "  "

    #@1d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v1

    #@1db
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1de
    move-result-object v1

    #@1df
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1e2
    .line 2295
    :cond_b
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1e4
    if-eqz v0, :cond_c

    #@1e6
    .line 2296
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e9
    new-instance v0, Ljava/lang/StringBuilder;

    #@1eb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ee
    const-string/jumbo v1, "Child "

    #@1f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v0

    #@1f5
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v0

    #@1fb
    const-string/jumbo v1, ":"

    #@1fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v0

    #@202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@205
    move-result-object v0

    #@206
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@209
    .line 2297
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@20b
    new-instance v1, Ljava/lang/StringBuilder;

    #@20d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@210
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v1

    #@214
    const-string/jumbo v2, "  "

    #@217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    move-result-object v1

    #@21b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21e
    move-result-object v1

    #@21f
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@222
    .line 2228
    :cond_c
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 673
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
    .line 2302
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 2303
    return-object p0

    #@a
    .line 2305
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2306
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@10
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 2308
    :cond_1
    return-object v1
.end method

.method public final getActivity()Landroid/app/Activity;
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
    .line 2190
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
    .line 2216
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
    .line 737
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 872
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    #@7
    .line 873
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@9
    const/4 v1, 0x5

    #@a
    if-lt v0, v1, :cond_1

    #@c
    .line 874
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    #@11
    .line 883
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    return-object v0

    #@14
    .line 875
    :cond_1
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@16
    const/4 v1, 0x4

    #@17
    if-lt v0, v1, :cond_2

    #@19
    .line 876
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1b
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    #@1e
    goto :goto_0

    #@1f
    .line 877
    :cond_2
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@21
    const/4 v1, 0x2

    #@22
    if-lt v0, v1, :cond_3

    #@24
    .line 878
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@26
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@29
    goto :goto_0

    #@2a
    .line 879
    :cond_3
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@2c
    const/4 v1, 0x1

    #@2d
    if-lt v0, v1, :cond_0

    #@2f
    .line 880
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
    .line 790
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
    .line 1996
    iget-object v0, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 2066
    iget-object v0, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public final getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    #@0
    .prologue
    .line 863
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
    .line 806
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
    .line 709
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    #@2
    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1327
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    .line 1328
    .local v0, "result":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@8
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onUseFragmentManagerInflaterFactory()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 1329
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    #@11
    .line 1330
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    #@1a
    .line 1332
    :cond_0
    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1091
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1092
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@7
    return-object v0

    #@8
    .line 1094
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1095
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
    .line 1097
    :cond_1
    iput-boolean v3, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@2f
    .line 1098
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
    .line 1099
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3d
    return-object v0
.end method

.method public final getParentFragment()Landroid/app/Fragment;
    .locals 1

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    #@2
    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 2100
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
    .line 2101
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    #@0
    .prologue
    .line 813
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 814
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
    .line 816
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
    .line 988
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    #@2
    return v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 2031
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
    .line 2032
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@d
    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    #@0
    .prologue
    .line 2129
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    #@0
    .prologue
    .line 2163
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 2164
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    #@9
    move-result-object v0

    #@a
    .line 2163
    :goto_0
    return-object v0

    #@b
    .line 2164
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
    .line 836
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
    .line 849
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
    .line 716
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTargetFragment()Landroid/app/Fragment;
    .locals 1

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@2
    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    #@0
    .prologue
    .line 783
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    #@2
    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 826
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
    .line 1084
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@2
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1569
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 680
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
    .line 1753
    const/4 v0, -0x1

    #@3
    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    #@5
    .line 1754
    iput-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@7
    .line 1755
    iput-boolean v1, p0, Landroid/app/Fragment;->mAdded:Z

    #@9
    .line 1756
    iput-boolean v1, p0, Landroid/app/Fragment;->mRemoving:Z

    #@b
    .line 1757
    iput-boolean v1, p0, Landroid/app/Fragment;->mFromLayout:Z

    #@d
    .line 1758
    iput-boolean v1, p0, Landroid/app/Fragment;->mInLayout:Z

    #@f
    .line 1759
    iput-boolean v1, p0, Landroid/app/Fragment;->mRestored:Z

    #@11
    .line 1760
    iput v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    #@13
    .line 1761
    iput-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@15
    .line 1762
    iput-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@17
    .line 1763
    iput-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@19
    .line 1764
    iput v1, p0, Landroid/app/Fragment;->mFragmentId:I

    #@1b
    .line 1765
    iput v1, p0, Landroid/app/Fragment;->mContainerId:I

    #@1d
    .line 1766
    iput-object v2, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@1f
    .line 1767
    iput-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    #@21
    .line 1768
    iput-boolean v1, p0, Landroid/app/Fragment;->mDetached:Z

    #@23
    .line 1769
    iput-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    #@25
    .line 1770
    iput-object v2, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@27
    .line 1771
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@29
    .line 1772
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@2b
    .line 1752
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    #@0
    .prologue
    .line 2312
    new-instance v0, Landroid/app/FragmentManagerImpl;

    #@2
    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    #@5
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@7
    .line 2313
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
    .line 2311
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    #@0
    .prologue
    .line 898
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
    .line 907
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    #@2
    return v0
.end method

.method public final isHidden()Z
    .locals 1

    #@0
    .prologue
    .line 956
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
    .line 666
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
    .line 927
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    #@2
    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    #@0
    .prologue
    .line 916
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    #@2
    return v0
.end method

.method public final isResumed()Z
    .locals 2

    #@0
    .prologue
    .line 935
    iget v0, p0, Landroid/app/Fragment;->mState:I

    #@2
    const/4 v1, 0x5

    #@3
    if-lt v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 944
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
    .line 945
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
    .line 1587
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1586
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1181
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1464
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1463
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1450
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@4
    .line 1451
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 1452
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    #@a
    .line 1453
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@d
    .line 1454
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@10
    .line 1449
    :cond_0
    return-void

    #@11
    .line 1451
    .end local v0    # "hostActivity":Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@13
    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "childFragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 1441
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1681
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1680
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1925
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1497
    iput-boolean v3, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1498
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    .line 1499
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v2

    #@d
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@f
    .line 1500
    .local v1, "version":I
    :goto_0
    const/16 v2, 0x18

    #@11
    if-lt v1, v2, :cond_0

    #@13
    .line 1501
    invoke-virtual {p0, p1, v3}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    #@16
    .line 1502
    iget-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1503
    iget-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1c
    invoke-virtual {v2, v3}, Landroid/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_2

    #@22
    .line 1496
    :cond_0
    :goto_1
    return-void

    #@23
    .line 1499
    .end local v1    # "version":I
    :cond_1
    const/4 v1, 0x0

    #@24
    goto :goto_0

    #@25
    .line 1504
    .restart local v1    # "version":I
    :cond_2
    iget-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@27
    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    #@2a
    goto :goto_1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    #@0
    .prologue
    .line 1471
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
    .line 1879
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    #@7
    .line 1878
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 1799
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1545
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
    .line 1734
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1737
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1738
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@9
    .line 1739
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
    .line 1741
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1742
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1c
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    #@1f
    .line 1733
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    #@0
    .prologue
    .line 1826
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    #@0
    .prologue
    .line 1725
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1724
    return-void
.end method

.method public onDetach()V
    .locals 1

    #@0
    .prologue
    .line 1783
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1782
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    #@0
    .prologue
    .line 966
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
    .line 1429
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1428
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1388
    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@5
    .line 1389
    iput-boolean v5, p0, Landroid/app/Fragment;->mCalled:Z

    #@7
    .line 1392
    sget-object v2, Lcom/android/internal/R$styleable;->Fragment:[I

    #@9
    .line 1391
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 1393
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@f
    .line 1394
    const/4 v3, 0x4

    #@10
    .line 1393
    invoke-static {p1, v0, v2, v1, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@13
    move-result-object v2

    #@14
    iput-object v2, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@16
    .line 1395
    iget-object v2, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@18
    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@1a
    .line 1396
    const/4 v4, 0x6

    #@1b
    .line 1395
    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@21
    .line 1397
    iget-object v2, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@23
    .line 1398
    const/4 v3, 0x3

    #@24
    .line 1397
    invoke-static {p1, v0, v2, v1, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@2a
    .line 1399
    iget-object v2, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@2c
    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@2e
    .line 1400
    const/16 v4, 0x8

    #@30
    .line 1399
    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@33
    move-result-object v2

    #@34
    iput-object v2, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@36
    .line 1401
    iget-object v2, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@38
    .line 1402
    const/4 v3, 0x5

    #@39
    .line 1401
    invoke-static {p1, v0, v2, v1, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@3c
    move-result-object v2

    #@3d
    iput-object v2, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@3f
    .line 1403
    iget-object v2, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@41
    .line 1404
    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    #@43
    .line 1405
    const/4 v4, 0x7

    #@44
    .line 1403
    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@4a
    .line 1406
    iget-object v2, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@4c
    if-nez v2, :cond_0

    #@4e
    .line 1408
    const/16 v2, 0x9

    #@50
    .line 1407
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@53
    move-result v2

    #@54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@57
    move-result-object v2

    #@58
    iput-object v2, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@5a
    .line 1410
    :cond_0
    iget-object v2, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@5c
    if-nez v2, :cond_1

    #@5e
    .line 1412
    const/16 v2, 0xa

    #@60
    .line 1411
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@63
    move-result v2

    #@64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@67
    move-result-object v2

    #@68
    iput-object v2, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6a
    .line 1414
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@6d
    .line 1416
    iget-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@6f
    if-nez v2, :cond_3

    #@71
    .line 1417
    .local v1, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v1, :cond_2

    #@73
    .line 1418
    const/4 v2, 0x0

    #@74
    iput-boolean v2, p0, Landroid/app/Fragment;->mCalled:Z

    #@76
    .line 1419
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@79
    .line 1387
    :cond_2
    return-void

    #@7a
    .line 1416
    .end local v1    # "hostActivity":Landroid/app/Activity;
    :cond_3
    iget-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@7c
    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@7f
    move-result-object v1

    #@80
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
    .line 1341
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1340
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 1706
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1705
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    #@0
    .prologue
    .line 1667
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1848
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 1858
    return-void
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 1691
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1690
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    #@0
    .prologue
    .line 1676
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 1816
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    #@0
    .prologue
    .line 1289
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 1635
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1634
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1657
    return-void
.end method

.method public onStart()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1613
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1615
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1616
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@9
    .line 1617
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1618
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@f
    .line 1619
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
    .line 1621
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 1622
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@22
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    #@25
    .line 1612
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 1701
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1700
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 1711
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1710
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1558
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1603
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@3
    .line 1602
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2357
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2358
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2360
    :cond_0
    const/4 v0, 0x2

    #@a
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@c
    .line 2361
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@f
    .line 2362
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@12
    .line 2363
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    if-nez v0, :cond_1

    #@16
    .line 2364
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Fragment "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2365
    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    #@2b
    .line 2364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 2367
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@39
    if-eqz v0, :cond_2

    #@3b
    .line 2368
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3d
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@40
    .line 2356
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2425
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 2426
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2427
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@c
    .line 2424
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
    .line 2490
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 2491
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2492
    return v1

    #@c
    .line 2494
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2495
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@12
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2496
    return v1

    #@19
    .line 2500
    :cond_1
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2331
    iget-object v3, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 2332
    iget-object v3, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@7
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@a
    .line 2334
    :cond_0
    const/4 v3, 0x1

    #@b
    iput v3, p0, Landroid/app/Fragment;->mState:I

    #@d
    .line 2335
    iput-boolean v2, p0, Landroid/app/Fragment;->mCalled:Z

    #@f
    .line 2336
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@12
    .line 2337
    iget-boolean v3, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    if-nez v3, :cond_1

    #@16
    .line 2338
    new-instance v2, Landroid/util/SuperNotCalledException;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Fragment "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 2339
    const-string/jumbo v4, " did not call through to super.onCreate()"

    #@2b
    .line 2338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 2341
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    #@3a
    move-result-object v0

    #@3b
    .line 2342
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    #@3d
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@40
    move-result-object v3

    #@41
    iget v1, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@43
    .line 2343
    .local v1, "version":I
    :goto_0
    const/16 v3, 0x18

    #@45
    if-ge v1, v3, :cond_2

    #@47
    .line 2344
    invoke-virtual {p0, p1, v2}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    #@4a
    .line 2330
    :cond_2
    return-void

    #@4b
    .end local v1    # "version":I
    :cond_3
    move v1, v2

    #@4c
    .line 2342
    goto :goto_0
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 2446
    const/4 v0, 0x0

    #@1
    .line 2447
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 2448
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2449
    const/4 v0, 0x1

    #@e
    .line 2450
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    #@11
    .line 2452
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2453
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    .line 2456
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
    .line 2350
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2351
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2353
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
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 2582
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2583
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@8
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    #@b
    .line 2585
    :cond_0
    iput v1, p0, Landroid/app/Fragment;->mState:I

    #@d
    .line 2586
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    #@f
    .line 2587
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroy()V

    #@12
    .line 2588
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    if-nez v0, :cond_1

    #@16
    .line 2589
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Fragment "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2590
    const-string/jumbo v2, " did not call through to super.onDestroy()"

    #@2b
    .line 2589
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 2592
    :cond_1
    iput-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@39
    .line 2581
    return-void
.end method

.method performDestroyView()V
    .locals 3

    #@0
    .prologue
    .line 2566
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2567
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    #@9
    .line 2569
    :cond_0
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@c
    .line 2570
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@f
    .line 2571
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@12
    .line 2572
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    if-nez v0, :cond_1

    #@16
    .line 2573
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Fragment "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2574
    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    #@2b
    .line 2573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 2576
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@39
    if-eqz v0, :cond_2

    #@3b
    .line 2577
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@3d
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportNextStart()V

    #@40
    .line 2565
    :cond_2
    return-void
.end method

.method performDetach()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2596
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@4
    .line 2597
    invoke-virtual {p0}, Landroid/app/Fragment;->onDetach()V

    #@7
    .line 2598
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2599
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Fragment "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 2600
    const-string/jumbo v2, " did not call through to super.onDetach()"

    #@20
    .line 2599
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 2606
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 2607
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    #@32
    if-nez v0, :cond_1

    #@34
    .line 2608
    new-instance v0, Ljava/lang/IllegalStateException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Child FragmentManager of "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string/jumbo v2, " was not "

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 2609
    const-string/jumbo v2, " destroyed and this fragment is not retaining instance"

    #@50
    .line 2608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 2611
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5e
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    #@61
    .line 2612
    iput-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@63
    .line 2595
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 2432
    invoke-virtual {p0}, Landroid/app/Fragment;->onLowMemory()V

    #@3
    .line 2433
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2434
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    #@c
    .line 2431
    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    #@0
    .prologue
    .line 2411
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    #@3
    .line 2412
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2413
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    #@c
    .line 2410
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
    .line 2474
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 2475
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2476
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2477
    return v1

    #@14
    .line 2480
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2481
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1a
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 2482
    return v1

    #@21
    .line 2486
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
    .line 2504
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2505
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2506
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@f
    .line 2508
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 2509
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@15
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@18
    .line 2503
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    #@0
    .prologue
    .line 2525
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2526
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    #@9
    .line 2528
    :cond_0
    const/4 v0, 0x4

    #@a
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@c
    .line 2529
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@f
    .line 2530
    invoke-virtual {p0}, Landroid/app/Fragment;->onPause()V

    #@12
    .line 2531
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    if-nez v0, :cond_1

    #@16
    .line 2532
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Fragment "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2533
    const-string/jumbo v2, " did not call through to super.onPause()"

    #@2b
    .line 2532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 2524
    :cond_1
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    #@0
    .prologue
    .line 2418
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPictureInPictureModeChanged(Z)V

    #@3
    .line 2419
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2420
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    #@c
    .line 2417
    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2460
    const/4 v0, 0x0

    #@1
    .line 2461
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 2462
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2463
    const/4 v0, 0x1

    #@e
    .line 2464
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    #@11
    .line 2466
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2467
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    .line 2470
    .end local v0    # "show":Z
    :cond_1
    return v0
.end method

.method performResume()V
    .locals 3

    #@0
    .prologue
    .line 2393
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2394
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2395
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    .line 2397
    :cond_0
    const/4 v0, 0x5

    #@f
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@11
    .line 2398
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    .line 2399
    invoke-virtual {p0}, Landroid/app/Fragment;->onResume()V

    #@17
    .line 2400
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 2401
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Fragment "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 2402
    const-string/jumbo v2, " did not call through to super.onResume()"

    #@30
    .line 2401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 2404
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 2405
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@42
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    #@45
    .line 2406
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@47
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@4a
    .line 2392
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2515
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 2516
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2517
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    .line 2518
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@f
    .line 2519
    const-string/jumbo v1, "android:fragments"

    #@12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@15
    .line 2514
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    #@0
    .prologue
    .line 2373
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2374
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2375
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    .line 2377
    :cond_0
    const/4 v0, 0x4

    #@f
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@11
    .line 2378
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    .line 2379
    invoke-virtual {p0}, Landroid/app/Fragment;->onStart()V

    #@17
    .line 2380
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 2381
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Fragment "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 2382
    const-string/jumbo v2, " did not call through to super.onStart()"

    #@30
    .line 2381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 2384
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 2385
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@42
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    #@45
    .line 2387
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@47
    if-eqz v0, :cond_3

    #@49
    .line 2388
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@4b
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    #@4e
    .line 2372
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2538
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2539
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    #@a
    .line 2541
    :cond_0
    const/4 v0, 0x3

    #@b
    iput v0, p0, Landroid/app/Fragment;->mState:I

    #@d
    .line 2542
    iput-boolean v3, p0, Landroid/app/Fragment;->mCalled:Z

    #@f
    .line 2543
    invoke-virtual {p0}, Landroid/app/Fragment;->onStop()V

    #@12
    .line 2544
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@14
    if-nez v0, :cond_1

    #@16
    .line 2545
    new-instance v0, Landroid/util/SuperNotCalledException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Fragment "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 2546
    const-string/jumbo v2, " did not call through to super.onStop()"

    #@2b
    .line 2545
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 2549
    :cond_1
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 2550
    iput-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@3d
    .line 2551
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@3f
    if-nez v0, :cond_2

    #@41
    .line 2552
    const/4 v0, 0x1

    #@42
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    #@44
    .line 2553
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@46
    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@48
    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    #@4a
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@50
    .line 2555
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@52
    if-eqz v0, :cond_3

    #@54
    .line 2556
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@56
    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_4

    #@5c
    .line 2557
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@5e
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    #@61
    .line 2537
    :cond_3
    :goto_0
    return-void

    #@62
    .line 2559
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    #@64
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    #@67
    goto :goto_0
.end method

.method performTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 2439
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    #@3
    .line 2440
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2441
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    #@c
    .line 2438
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1893
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    .line 1892
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 1265
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1266
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
    .line 1268
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0, p0, p1, p2}, Landroid/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V

    #@2a
    .line 1264
    return-void
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "provideNonConfig"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1510
    if-eqz p1, :cond_1

    #@3
    .line 1511
    const-string/jumbo v1, "android:fragments"

    #@6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@9
    move-result-object v0

    #@a
    .line 1512
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    #@c
    .line 1513
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@e
    if-nez v1, :cond_0

    #@10
    .line 1514
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    #@13
    .line 1516
    :cond_0
    iget-object v3, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@15
    if-eqz p2, :cond_2

    #@17
    iget-object v1, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    #@19
    :goto_0
    invoke-virtual {v3, v0, v1}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    #@1c
    .line 1517
    iput-object v2, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    #@1e
    .line 1518
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    #@20
    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    #@23
    .line 1509
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_1
    return-void

    #@24
    .restart local v0    # "p":Landroid/os/Parcelable;
    :cond_2
    move-object v1, v2

    #@25
    .line 1516
    goto :goto_0
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 644
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 645
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@7
    iget-object v1, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@c
    .line 646
    iput-object v2, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@e
    .line 648
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@11
    .line 649
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    #@14
    .line 650
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 651
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
    .line 652
    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    #@2d
    .line 651
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
    .line 643
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 2177
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 2176
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 2203
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 2202
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 727
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 728
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Fragment already active"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 730
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@f
    .line 726
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1936
    if-nez p1, :cond_0

    #@2
    .line 1937
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 1939
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    #@6
    .line 1935
    return-void
.end method

.method public setEnterSharedElementTransitionCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1946
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    #@3
    .line 1945
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 1982
    iput-object p1, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    #@2
    .line 1981
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1957
    if-nez p1, :cond_0

    #@2
    .line 1958
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    #@4
    .line 1960
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    #@6
    .line 1956
    return-void
.end method

.method public setExitSharedElementTransitionCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    #@0
    .prologue
    .line 1967
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    #@3
    .line 1966
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2049
    iput-object p1, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    #@2
    .line 2048
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    #@0
    .prologue
    .line 999
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1000
    iput-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    #@6
    .line 1001
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
    .line 998
    :cond_0
    :goto_0
    return-void

    #@13
    .line 1002
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
    .line 657
    iput p1, p0, Landroid/app/Fragment;->mIndex:I

    #@2
    .line 658
    if-eqz p2, :cond_0

    #@4
    .line 659
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
    .line 656
    :goto_0
    return-void

    #@23
    .line 661
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
    .line 749
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@3
    if-ltz v1, :cond_0

    #@5
    .line 750
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Fragment already active"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 752
    :cond_0
    if-eqz p1, :cond_1

    #@10
    iget-object v1, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 753
    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@16
    .line 752
    :cond_1
    iput-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@18
    .line 748
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    #@0
    .prologue
    .line 1017
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1018
    iput-boolean p1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    #@6
    .line 1019
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
    .line 1016
    :cond_0
    :goto_0
    return-void

    #@17
    .line 1020
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
    .line 2083
    iput-object p1, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    #@2
    .line 2082
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0
    .param p1, "retain"    # Z

    #@0
    .prologue
    .line 984
    iput-boolean p1, p0, Landroid/app/Fragment;->mRetainInstance:Z

    #@2
    .line 983
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2014
    iput-object p1, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    #@2
    .line 2013
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2115
    iput-object p1, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    #@2
    .line 2114
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    #@0
    .prologue
    .line 2146
    iput-object p1, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    #@2
    .line 2145
    return-void
.end method

.method public setTargetFragment(Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 768
    iput-object p1, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    #@2
    .line 769
    iput p2, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    #@4
    .line 767
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 7
    .param p1, "isVisibleToUser"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x4

    #@2
    .line 1053
    const/4 v2, 0x0

    #@3
    .line 1054
    .local v2, "useBrokenAddedCheck":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    .line 1055
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@9
    if-eqz v4, :cond_0

    #@b
    iget-object v4, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@d
    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 1056
    iget-object v4, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@13
    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@15
    invoke-virtual {v4}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    .line 1058
    :cond_0
    if-eqz v0, :cond_1

    #@1b
    .line 1059
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@1e
    move-result-object v4

    #@1f
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@21
    const/16 v5, 0x17

    #@23
    if-gt v4, v5, :cond_4

    #@25
    const/4 v2, 0x1

    #@26
    .line 1063
    :cond_1
    :goto_0
    if-eqz v2, :cond_7

    #@28
    .line 1064
    iget-boolean v4, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@2a
    if-nez v4, :cond_6

    #@2c
    if-eqz p1, :cond_6

    #@2e
    iget v4, p0, Landroid/app/Fragment;->mState:I

    #@30
    if-ge v4, v6, :cond_6

    #@32
    .line 1065
    iget-object v4, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@34
    if-eqz v4, :cond_5

    #@36
    const/4 v1, 0x1

    #@37
    .line 1071
    :goto_1
    if-eqz v1, :cond_2

    #@39
    .line 1072
    iget-object v4, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@3b
    invoke-virtual {v4, p0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    #@3e
    .line 1075
    :cond_2
    iput-boolean p1, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@40
    .line 1076
    iget v4, p0, Landroid/app/Fragment;->mState:I

    #@42
    if-ge v4, v6, :cond_3

    #@44
    if-eqz p1, :cond_9

    #@46
    :cond_3
    :goto_2
    iput-boolean v3, p0, Landroid/app/Fragment;->mDeferStart:Z

    #@48
    .line 1043
    return-void

    #@49
    .line 1059
    :cond_4
    const/4 v2, 0x0

    #@4a
    goto :goto_0

    #@4b
    .line 1065
    :cond_5
    const/4 v1, 0x0

    #@4c
    .local v1, "performDeferredStart":Z
    goto :goto_1

    #@4d
    .line 1064
    .end local v1    # "performDeferredStart":Z
    :cond_6
    const/4 v1, 0x0

    #@4e
    .restart local v1    # "performDeferredStart":Z
    goto :goto_1

    #@4f
    .line 1067
    .end local v1    # "performDeferredStart":Z
    :cond_7
    iget-boolean v4, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    #@51
    if-nez v4, :cond_8

    #@53
    if-eqz p1, :cond_8

    #@55
    iget v4, p0, Landroid/app/Fragment;->mState:I

    #@57
    if-ge v4, v6, :cond_8

    #@59
    .line 1068
    iget-object v4, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@5b
    if-eqz v4, :cond_8

    #@5d
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    #@60
    move-result v1

    #@61
    .local v1, "performDeferredStart":Z
    goto :goto_1

    #@62
    .line 1067
    .end local v1    # "performDeferredStart":Z
    :cond_8
    const/4 v1, 0x0

    #@63
    .local v1, "performDeferredStart":Z
    goto :goto_1

    #@64
    .line 1076
    .end local v1    # "performDeferredStart":Z
    :cond_9
    const/4 v3, 0x1

    #@65
    goto :goto_2
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1314
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1315
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
    .line 1318
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
    .line 1109
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    #@4
    .line 1108
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
    .line 1122
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1123
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
    .line 1125
    :cond_0
    if-eqz p2, :cond_1

    #@29
    .line 1126
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2b
    invoke-virtual {v0, p0, p1, v2, p2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@2e
    .line 1121
    :goto_0
    return-void

    #@2f
    .line 1130
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
    .line 1139
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@4
    .line 1138
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1147
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1148
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
    .line 1150
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@2a
    .line 1146
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1161
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
    .line 1163
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    #@27
    move-object v1, p0

    #@28
    move-object v2, p1

    #@29
    move v3, p2

    #@2a
    move-object v4, p3

    #@2b
    move v5, p4

    #@2c
    move v6, p5

    #@2d
    move v7, p6

    #@2e
    move-object/from16 v8, p7

    #@30
    invoke-virtual/range {v0 .. v8}, Landroid/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    #@33
    .line 1159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 686
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 687
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@c
    if-ltz v1, :cond_0

    #@e
    .line 688
    const-string/jumbo v1, " #"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 689
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    .line 691
    :cond_0
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 692
    const-string/jumbo v1, " id=0x"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 693
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    #@25
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 695
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 696
    const-string/jumbo v1, " "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 697
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 699
    :cond_2
    const/16 v1, 0x7d

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 700
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
    .line 1904
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    .line 1903
    return-void
.end method
