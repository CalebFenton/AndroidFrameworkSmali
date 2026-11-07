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
        Landroid/app/Fragment$SavedState;,
        Landroid/app/Fragment$AnimationInfo;,
        Landroid/app/Fragment$OnStartEnterTransitionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o ACTIVITY_CREATED:I = 0x2

.field static final greylist-max-o CREATED:I = 0x1

.field static final greylist-max-o INITIALIZING:I = 0x0

.field static final greylist-max-o INVALID_STATE:I = -0x1

.field static final greylist-max-o RESUMED:I = 0x5

.field static final greylist-max-o STARTED:I = 0x4

.field static final greylist-max-o STOPPED:I = 0x3

.field private static final greylist-max-o USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final greylist-max-p sClassMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-r mAdded:Z

.field greylist-max-o mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

.field greylist-max-o mArguments:Landroid/os/Bundle;

.field greylist-max-o mBackStackNesting:I

.field greylist-max-o mCalled:Z

.field greylist-max-o mCheckedForLoaderManager:Z

.field greylist mChildFragmentManager:Landroid/app/FragmentManagerImpl;

.field greylist-max-o mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

.field greylist-max-o mContainer:Landroid/view/ViewGroup;

.field greylist-max-o mContainerId:I

.field greylist-max-o mDeferStart:Z

.field greylist-max-o mDetached:Z

.field greylist mFragmentId:I

.field greylist mFragmentManager:Landroid/app/FragmentManagerImpl;

.field greylist-max-o mFromLayout:Z

.field greylist-max-o mHasMenu:Z

.field greylist-max-o mHidden:Z

.field greylist-max-o mHiddenChanged:Z

.field greylist mHost:Landroid/app/FragmentHostCallback;

.field greylist-max-o mInLayout:Z

.field greylist mIndex:I

.field greylist-max-o mIsCreated:Z

.field greylist-max-o mIsNewlyAdded:Z

.field greylist-max-o mLayoutInflater:Landroid/view/LayoutInflater;

.field greylist-max-o mLoaderManager:Landroid/app/LoaderManagerImpl;

.field greylist mLoadersStarted:Z

.field greylist-max-o mMenuVisible:Z

.field greylist-max-o mParentFragment:Landroid/app/Fragment;

.field greylist-max-o mPerformedCreateView:Z

.field greylist-max-o mRemoving:Z

.field greylist-max-o mRestored:Z

.field greylist-max-o mRetainInstance:Z

.field greylist-max-o mRetaining:Z

.field greylist mSavedFragmentState:Landroid/os/Bundle;

.field greylist-max-o mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mState:I

.field greylist-max-o mTag:Ljava/lang/String;

.field greylist-max-o mTarget:Landroid/app/Fragment;

.field greylist-max-o mTargetIndex:I

.field greylist-max-o mTargetRequestCode:I

.field greylist-max-o mUserVisibleHint:Z

.field greylist-max-p mView:Landroid/view/View;

.field greylist mWho:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$Hb3izn43bqyhw1AkH9OPHYAYnFs(Landroid/app/Fragment;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUSE_DEFAULT_TRANSITION()Landroid/transition/Transition;
    .registers 1

    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 273
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    .line 284
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 308
    iput v0, p0, Landroid/app/Fragment;->mTargetIndex:I

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 406
    iput-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 512
    return-void
.end method

.method private greylist-max-o callStartTransitionListener()V
    .registers 4

    .line 2350
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2351
    const/4 v0, 0x0

    .local v0, "listener":Landroid/app/Fragment$OnStartEnterTransitionListener;
    goto :goto_14

    .line 2353
    .end local v0    # "listener":Landroid/app/Fragment$OnStartEnterTransitionListener;
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2354
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2355
    .restart local v0    # "listener":Landroid/app/Fragment$OnStartEnterTransitionListener;
    iget-object v1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2357
    :goto_14
    if-eqz v0, :cond_19

    .line 2358
    invoke-interface {v0}, Landroid/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    .line 2360
    :cond_19
    return-void
.end method

.method private greylist-max-o ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;
    .registers 2

    .line 2836
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_b

    .line 2837
    new-instance v0, Landroid/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroid/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    .line 2839
    :cond_b
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method public static whitelist instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .line 519
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 538
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_4
    sget-object v2, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 539
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_49

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 542
    const-class v3, Landroid/app/Fragment;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 546
    sget-object v3, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 543
    :cond_25
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to instantiate a class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is not a Fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    invoke-direct {v3, v4, v5}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "fname":Ljava/lang/String;
    .end local p2    # "args":Landroid/os/Bundle;
    throw v3

    .line 548
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "fname":Ljava/lang/String;
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_49
    :goto_49
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 549
    .local v3, "f":Landroid/app/Fragment;
    if-eqz p2, :cond_68

    .line 550
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 551
    invoke-virtual {v3, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_68} :catch_dd
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_68} :catch_c1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_68} :catch_a5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_68} :catch_87
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_68} :catch_69

    .line 553
    :cond_68
    return-object v3

    .line 569
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Landroid/app/Fragment;
    :catch_69
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Landroid/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 566
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_87
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Landroid/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": could not find Fragment constructor"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 562
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_a5
    move-exception v2

    .line 563
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 558
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_c1
    move-exception v2

    .line 559
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 554
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_dd
    move-exception v2

    .line 555
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static greylist-max-o loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "currentValue"    # Landroid/transition/Transition;
    .param p3, "defaultValue"    # Landroid/transition/Transition;
    .param p4, "id"    # I

    .line 2819
    if-eq p2, p3, :cond_3

    .line 2820
    return-object p2

    .line 2822
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2823
    .local v0, "transitionId":I
    move-object v1, p3

    .line 2824
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v0, :cond_25

    const/high16 v2, 0x10f0000

    if-eq v0, v2, :cond_25

    .line 2825
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v2

    .line 2826
    .local v2, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v2, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 2827
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_25

    move-object v3, v1

    check-cast v3, Landroid/transition/TransitionSet;

    .line 2828
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_25

    .line 2829
    const/4 v1, 0x0

    .line 2832
    .end local v2    # "inflater":Landroid/transition/TransitionInflater;
    :cond_25
    return-object v1
.end method

.method private greylist-max-o shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;

    .line 2367
    const/4 v0, 0x1

    if-ne p1, p2, :cond_a

    .line 2368
    iget-object v1, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 2370
    :cond_a
    return v0
.end method


# virtual methods
.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2383
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2384
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2385
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2386
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2387
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2389
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2390
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2391
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2392
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2393
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2394
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2395
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2396
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2397
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2398
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2399
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2400
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2401
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2402
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2403
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_e2

    .line 2404
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2407
    :cond_e2
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_f4

    .line 2408
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2409
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2411
    :cond_f4
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_106

    .line 2412
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2413
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2415
    :cond_106
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_118

    .line 2416
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2418
    :cond_118
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_12a

    .line 2419
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2420
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2422
    :cond_12a
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_13c

    .line 2423
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2426
    :cond_13c
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_158

    .line 2427
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2428
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2431
    :cond_158
    invoke-virtual {p0}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_16e

    .line 2432
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2434
    :cond_16e
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_180

    .line 2435
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2437
    :cond_180
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_192

    .line 2438
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2440
    :cond_192
    invoke-virtual {p0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 2441
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2442
    invoke-virtual {p0}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2443
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2444
    invoke-virtual {p0}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2446
    :cond_1b8
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    const-string v1, "  "

    if-eqz v0, :cond_1dc

    .line 2447
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2450
    :cond_1dc
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_217

    .line 2451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2452
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2454
    :cond_217
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 605
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .line 2457
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2458
    return-object p0

    .line 2460
    :cond_9
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_14

    .line 2461
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0

    .line 2463
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getActivity()Landroid/app/Activity;
    .registers 2

    .line 768
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 2260
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 2261
    :cond_d
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 2260
    :goto_19
    return v0
.end method

.method public whitelist getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 2287
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 2288
    :cond_d
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 2287
    :goto_19
    return v0
.end method

.method greylist-max-o getAnimatingAway()Landroid/animation/Animator;
    .registers 2

    .line 2894
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2895
    const/4 v0, 0x0

    return-object v0

    .line 2897
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/animation/Animator;

    return-object v0
.end method

.method public final whitelist getArguments()Landroid/os/Bundle;
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getChildFragmentManager()Landroid/app/FragmentManager;
    .registers 3

    .line 842
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v0, :cond_32

    .line 843
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 844
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_12

    .line 845
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    goto :goto_32

    .line 846
    :cond_12
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1d

    .line 847
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_32

    .line 848
    :cond_1d
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_28

    .line 849
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_32

    .line 850
    :cond_28
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_32

    .line 851
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 854
    :cond_32
    :goto_32
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 761
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2037
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2038
    const/4 v0, 0x0

    return-object v0

    .line 2040
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getEnterTransitionCallback()Landroid/app/SharedElementCallback;
    .registers 2

    .line 2880
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    .line 2881
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    return-object v0

    .line 2883
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0
.end method

.method public whitelist getExitTransition()Landroid/transition/Transition;
    .registers 2

    .line 2117
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2118
    const/4 v0, 0x0

    return-object v0

    .line 2120
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmExitTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getExitTransitionCallback()Landroid/app/SharedElementCallback;
    .registers 2

    .line 2887
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    .line 2888
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    return-object v0

    .line 2890
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0
.end method

.method public final whitelist getFragmentManager()Landroid/app/FragmentManager;
    .registers 2

    .line 834
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final whitelist getHost()Ljava/lang/Object;
    .registers 2

    .line 777
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final whitelist getId()I
    .registers 2

    .line 641
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final whitelist getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1312
    iget-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_a

    .line 1313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 1315
    :cond_a
    iget-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public whitelist getLoaderManager()Landroid/app/LoaderManager;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1067
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_7

    .line 1068
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    .line 1070
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1d

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1074
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1075
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    .line 1071
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getNextAnim()I
    .registers 2

    .line 2843
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2844
    const/4 v0, 0x0

    return v0

    .line 2846
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextAnim:I

    return v0
.end method

.method greylist-max-o getNextTransition()I
    .registers 2

    .line 2857
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2858
    const/4 v0, 0x0

    return v0

    .line 2860
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransition:I

    return v0
.end method

.method greylist-max-o getNextTransitionStyle()I
    .registers 2

    .line 2873
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2874
    const/4 v0, 0x0

    return v0

    .line 2876
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return v0
.end method

.method public final whitelist getParentFragment()Landroid/app/Fragment;
    .registers 2

    .line 862
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public whitelist getReenterTransition()Landroid/transition/Transition;
    .registers 3

    .line 2156
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2157
    const/4 v0, 0x0

    return-object v0

    .line 2159
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReenterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1b

    .line 2160
    :cond_15
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReenterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    .line 2159
    :goto_1b
    return-object v0
.end method

.method public final whitelist getResources()Landroid/content/res/Resources;
    .registers 4

    .line 784
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_f

    .line 787
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 785
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getRetainInstance()Z
    .registers 2

    .line 958
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public whitelist getReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 2077
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2078
    const/4 v0, 0x0

    return-object v0

    .line 2080
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1b

    .line 2081
    :cond_15
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    .line 2080
    :goto_1b
    return-object v0
.end method

.method public whitelist getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 2

    .line 2190
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2191
    const/4 v0, 0x0

    return-object v0

    .line 2193
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 3

    .line 2229
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2230
    const/4 v0, 0x0

    return-object v0

    .line 2232
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_15

    .line 2233
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1b

    .line 2234
    :cond_15
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v0}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    .line 2232
    :goto_1b
    return-object v0
.end method

.method greylist-max-o getStateAfterAnimating()I
    .registers 2

    .line 2905
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2906
    const/4 v0, 0x0

    return v0

    .line 2908
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget v0, v0, Landroid/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return v0
.end method

.method public final whitelist getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "resId"    # I

    .line 807
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs whitelist getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 820
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getTargetFragment()Landroid/app/Fragment;
    .registers 2

    .line 747
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    return-object v0
.end method

.method public final whitelist getTargetRequestCode()I
    .registers 2

    .line 754
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final whitelist getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "resId"    # I

    .line 797
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserVisibleHint()Z
    .registers 2

    .line 1057
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public whitelist getView()Landroid/view/View;
    .registers 2

    .line 1581
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 612
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method greylist-max-o initState()V
    .registers 3

    .line 1800
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 1801
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 1802
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mAdded:Z

    .line 1803
    iput-boolean v1, p0, Landroid/app/Fragment;->mRemoving:Z

    .line 1804
    iput-boolean v1, p0, Landroid/app/Fragment;->mFromLayout:Z

    .line 1805
    iput-boolean v1, p0, Landroid/app/Fragment;->mInLayout:Z

    .line 1806
    iput-boolean v1, p0, Landroid/app/Fragment;->mRestored:Z

    .line 1807
    iput v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1808
    iput-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1809
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1810
    iput-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1811
    iput v1, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 1812
    iput v1, p0, Landroid/app/Fragment;->mContainerId:I

    .line 1813
    iput-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 1814
    iput-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    .line 1815
    iput-boolean v1, p0, Landroid/app/Fragment;->mDetached:Z

    .line 1816
    iput-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    .line 1817
    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1818
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1819
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1820
    return-void
.end method

.method greylist-max-o instantiateChildFragmentManager()V
    .registers 4

    .line 2467
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2468
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    new-instance v2, Landroid/app/Fragment$1;

    invoke-direct {v2, p0}, Landroid/app/Fragment$1;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    .line 2483
    return-void
.end method

.method public final whitelist isAdded()Z
    .registers 2

    .line 869
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist isDetached()Z
    .registers 2

    .line 878
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final whitelist isHidden()Z
    .registers 2

    .line 927
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    return v0
.end method

.method greylist-max-o isHideReplaced()Z
    .registers 2

    .line 2923
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2924
    const/4 v0, 0x0

    return v0

    .line 2926
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return v0
.end method

.method final greylist-max-o isInBackStack()Z
    .registers 2

    .line 598
    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist isInLayout()Z
    .registers 2

    .line 898
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    return v0
.end method

.method greylist-max-o isPostponed()Z
    .registers 2

    .line 2916
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    .line 2917
    const/4 v0, 0x0

    return v0

    .line 2919
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0
.end method

.method public final whitelist isRemoving()Z
    .registers 2

    .line 887
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final whitelist isResumed()Z
    .registers 3

    .line 906
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final whitelist isStateSaved()Z
    .registers 2

    .line 687
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v0, :cond_6

    .line 688
    const/4 v0, 0x0

    return v0

    .line 690
    :cond_6
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    return v0
.end method

.method public final whitelist isVisible()Z
    .registers 2

    .line 915
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 916
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 915
    :goto_23
    return v0
.end method

.method greylist-max-o noteStateNotSaved()V
    .registers 2

    .line 2568
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2569
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2571
    :cond_9
    return-void
.end method

.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1599
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1600
    return-void
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1171
    return-void
.end method

.method public whitelist onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1477
    return-void
.end method

.method public whitelist onAttach(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1463
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1464
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_f
    if-eqz v0, :cond_17

    .line 1465
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1466
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1468
    :cond_17
    return-void
.end method

.method public whitelist onAttachFragment(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "childFragment"    # Landroid/app/Fragment;

    .line 1454
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1728
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1729
    return-void
.end method

.method public whitelist onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1972
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1510
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1511
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 1512
    .local v2, "version":I
    :goto_11
    const/16 v3, 0x18

    if-lt v2, v3, :cond_29

    .line 1513
    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 1514
    iget-object v3, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v3, :cond_29

    iget-object v3, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1515
    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1516
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1519
    :cond_29
    return-void
.end method

.method public whitelist onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 5
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1483
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1926
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1927
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 1847
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1557
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 5

    .line 1781
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1784
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_16

    .line 1785
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1786
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1788
    :cond_16
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1f

    .line 1789
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 1791
    :cond_1f
    return-void
.end method

.method public whitelist onDestroyOptionsMenu()V
    .registers 1

    .line 1874
    return-void
.end method

.method public whitelist onDestroyView()V
    .registers 2

    .line 1772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1773
    return-void
.end method

.method public whitelist onDetach()V
    .registers 2

    .line 1830
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1831
    return-void
.end method

.method public whitelist onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1288
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1f

    .line 1292
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1293
    .local v0, "result":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onUseFragmentManagerInflaterFactory()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1294
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    .line 1295
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 1297
    :cond_1e
    return-object v0

    .line 1289
    .end local v0    # "result":Landroid/view/LayoutInflater;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onHiddenChanged(Z)V
    .registers 2
    .param p1, "hidden"    # Z

    .line 937
    return-void
.end method

.method public whitelist onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1441
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1442
    return-void
.end method

.method public whitelist onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1385
    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1388
    sget-object v1, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1390
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 1392
    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/4 v5, 0x6

    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 1395
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p1, v1, v2, v4, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 1398
    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v2

    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v5, 0x8

    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setReenterTransition(Landroid/transition/Transition;)V

    .line 1401
    nop

    .line 1402
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v2

    .line 1401
    const/4 v3, 0x5

    invoke-static {p1, v1, v2, v4, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 1404
    nop

    .line 1405
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v2

    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 1404
    const/4 v5, 0x7

    invoke-static {p1, v1, v2, v3, v5}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    .line 1409
    iget-object v2, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_66

    .line 1410
    const/4 v2, 0x0

    .line 1411
    .local v2, "isEnterSet":Z
    const/4 v5, 0x0

    .local v5, "isReturnSet":Z
    goto :goto_7c

    .line 1413
    .end local v2    # "isEnterSet":Z
    .end local v5    # "isReturnSet":Z
    :cond_66
    iget-object v2, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v2}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_70

    move v2, v0

    goto :goto_71

    :cond_70
    move v2, v3

    .line 1414
    .restart local v2    # "isEnterSet":Z
    :goto_71
    iget-object v5, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    invoke-static {v5}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fgetmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_7b

    move v5, v0

    goto :goto_7c

    :cond_7b
    move v5, v3

    .line 1416
    .restart local v5    # "isReturnSet":Z
    :goto_7c
    if-nez v2, :cond_87

    .line 1417
    const/16 v6, 0x9

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setAllowEnterTransitionOverlap(Z)V

    .line 1421
    :cond_87
    if-nez v5, :cond_92

    .line 1422
    const/16 v6, 0xa

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setAllowReturnTransitionOverlap(Z)V

    .line 1426
    :cond_92
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1428
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_9a

    goto :goto_a0

    :cond_9a
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1429
    .local v4, "hostActivity":Landroid/app/Activity;
    :goto_a0
    if-eqz v4, :cond_a7

    .line 1430
    iput-boolean v3, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1431
    invoke-virtual {p0, v4, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1433
    :cond_a7
    return-void
.end method

.method public whitelist onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1339
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 1753
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1754
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(Z)V
    .registers 2
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1697
    return-void
.end method

.method public whitelist onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 1683
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 1684
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1895
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1906
    return-void
.end method

.method public whitelist onPause()V
    .registers 2

    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1739
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(Z)V
    .registers 2
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1724
    return-void
.end method

.method public whitelist onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 1711
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 1712
    return-void
.end method

.method public whitelist onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1864
    return-void
.end method

.method public whitelist onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1261
    return-void
.end method

.method public whitelist onResume()V
    .registers 2

    .line 1646
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1647
    return-void
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1669
    return-void
.end method

.method public whitelist onStart()V
    .registers 5

    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1627
    iget-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-nez v1, :cond_26

    .line 1628
    iput-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1629
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_1d

    .line 1630
    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1631
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    goto :goto_26

    .line 1632
    :cond_1d
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_26

    .line 1633
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 1636
    :cond_26
    :goto_26
    return-void
.end method

.method public whitelist onStop()V
    .registers 2

    .line 1748
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1749
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 1758
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1759
    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1571
    return-void
.end method

.method public whitelist onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1616
    return-void
.end method

.method greylist-max-o performActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2514
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2515
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2517
    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2518
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2519
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2520
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_20

    .line 2524
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1f

    .line 2525
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2527
    :cond_1f
    return-void

    .line 2521
    :cond_20
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2606
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2607
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2608
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2610
    :cond_c
    return-void
.end method

.method greylist-max-o performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2671
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_19

    .line 2672
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 2673
    return v1

    .line 2675
    :cond_c
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_19

    .line 2676
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2677
    return v1

    .line 2681
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o performCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2486
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2487
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2489
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2490
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2491
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2492
    iput-boolean v0, p0, Landroid/app/Fragment;->mIsCreated:Z

    .line 2493
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2e

    .line 2497
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2498
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_26

    :cond_25
    move v2, v1

    .line 2499
    .local v2, "version":I
    :goto_26
    const/16 v3, 0x18

    if-ge v2, v3, :cond_2d

    .line 2500
    invoke-virtual {p0, p1, v1}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    .line 2502
    :cond_2d
    return-void

    .line 2494
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "version":I
    :cond_2e
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 2627
    const/4 v0, 0x0

    .line 2628
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1c

    .line 2629
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_11

    .line 2630
    const/4 v0, 0x1

    .line 2631
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2633
    :cond_11
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1c

    .line 2634
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2637
    :cond_1c
    return v0
.end method

.method greylist-max-o performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2506
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2507
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2509
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mPerformedCreateView:Z

    .line 2510
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o performDestroy()V
    .registers 4

    .line 2764
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2765
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2767
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2768
    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2769
    iput-boolean v0, p0, Landroid/app/Fragment;->mIsCreated:Z

    .line 2770
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2771
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1b

    .line 2775
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2776
    return-void

    .line 2772
    :cond_1b
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performDestroyView()V
    .registers 4

    .line 2747
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2748
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2750
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2751
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2752
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 2753
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_22

    .line 2757
    iget-object v1, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v1, :cond_1f

    .line 2758
    iget-object v1, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doReportNextStart()V

    .line 2760
    :cond_1f
    iput-boolean v0, p0, Landroid/app/Fragment;->mPerformedCreateView:Z

    .line 2761
    return-void

    .line 2754
    :cond_22
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performDetach()V
    .registers 4

    .line 2779
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2780
    invoke-virtual {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2781
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2782
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_3d

    .line 2790
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_3c

    .line 2791
    iget-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    if-eqz v1, :cond_1d

    .line 2795
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2796
    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_3c

    .line 2792
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2798
    :cond_3c
    :goto_3c
    return-void

    .line 2783
    :cond_3d
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1327
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1328
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iput-object v0, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1329
    iget-object v1, p0, Landroid/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method greylist-max-o performLowMemory()V
    .registers 2

    .line 2613
    invoke-virtual {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 2614
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2615
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2617
    :cond_c
    return-void
.end method

.method greylist-max-o performMultiWindowModeChanged(Z)V
    .registers 3
    .param p1, "isInMultiWindowMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2575
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2576
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2577
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2579
    :cond_c
    return-void
.end method

.method greylist-max-o performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2582
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2583
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2584
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2586
    :cond_c
    return-void
.end method

.method greylist-max-o performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2655
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_21

    .line 2656
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_14

    .line 2657
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2658
    return v1

    .line 2661
    :cond_14
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_21

    .line 2662
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2663
    return v1

    .line 2667
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2685
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_18

    .line 2686
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_f

    .line 2687
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2689
    :cond_f
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_18

    .line 2690
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2693
    :cond_18
    return-void
.end method

.method greylist-max-o performPause()V
    .registers 4

    .line 2706
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2707
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    .line 2709
    :cond_9
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2710
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2711
    invoke-virtual {p0}, Landroid/app/Fragment;->onPause()V

    .line 2712
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_17

    .line 2716
    return-void

    .line 2713
    :cond_17
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performPictureInPictureModeChanged(Z)V
    .registers 3
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2590
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2591
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2592
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2594
    :cond_c
    return-void
.end method

.method greylist-max-o performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 2598
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2599
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2600
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2603
    :cond_c
    return-void
.end method

.method greylist-max-o performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2641
    const/4 v0, 0x0

    .line 2642
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1c

    .line 2643
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_11

    .line 2644
    const/4 v0, 0x1

    .line 2645
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2647
    :cond_11
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1c

    .line 2648
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2651
    :cond_1c
    return v0
.end method

.method greylist-max-o performResume()V
    .registers 4

    .line 2550
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2551
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2552
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2554
    :cond_e
    const/4 v0, 0x5

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2555
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2556
    invoke-virtual {p0}, Landroid/app/Fragment;->onResume()V

    .line 2557
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2a

    .line 2561
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_29

    .line 2562
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 2563
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2565
    :cond_29
    return-void

    .line 2558
    :cond_2a
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 2696
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2697
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_14

    .line 2698
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2699
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_14

    .line 2700
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2703
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_14
    return-void
.end method

.method greylist-max-o performStart()V
    .registers 4

    .line 2530
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2531
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2532
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2534
    :cond_e
    const/4 v0, 0x4

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2535
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2536
    invoke-virtual {p0}, Landroid/app/Fragment;->onStart()V

    .line 2537
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2e

    .line 2541
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_24

    .line 2542
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    .line 2544
    :cond_24
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_2d

    .line 2545
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 2547
    :cond_2d
    return-void

    .line 2538
    :cond_2e
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performStop()V
    .registers 5

    .line 2719
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_9

    .line 2720
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    .line 2722
    :cond_9
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 2723
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2724
    invoke-virtual {p0}, Landroid/app/Fragment;->onStop()V

    .line 2725
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_47

    .line 2730
    iget-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-eqz v1, :cond_46

    .line 2731
    iput-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 2732
    iget-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_2f

    .line 2733
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 2734
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 2736
    :cond_2f
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_46

    .line 2737
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2738
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_46

    .line 2740
    :cond_41
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 2744
    :cond_46
    :goto_46
    return-void

    .line 2726
    :cond_47
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o performTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 2620
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 2621
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2622
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    .line 2624
    :cond_c
    return-void
.end method

.method public whitelist postponeEnterTransition()V
    .registers 3

    .line 2321
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2322
    return-void
.end method

.method public whitelist registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1940
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1941
    return-void
.end method

.method public final whitelist requestPermissions([Ljava/lang/String;I)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 1235
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    .line 1238
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 1239
    return-void

    .line 1236
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o restoreChildFragmentState(Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "provideNonConfig"    # Z

    .line 1522
    if-eqz p1, :cond_24

    .line 1523
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1524
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_24

    .line 1525
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v1, :cond_11

    .line 1526
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 1528
    :cond_11
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x0

    if-eqz p2, :cond_19

    iget-object v3, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_1a

    :cond_19
    move-object v3, v2

    :goto_1a
    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 1529
    iput-object v2, p0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    .line 1530
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1533
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_24
    return-void
.end method

.method final greylist-max-o restoreViewState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 576
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 577
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 580
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 581
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 582
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_19

    .line 586
    return-void

    .line 583
    :cond_19
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAllowEnterTransitionOverlap(Z)V
    .registers 4
    .param p1, "allow"    # Z

    .line 2247
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmAllowEnterTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V

    .line 2248
    return-void
.end method

.method public whitelist setAllowReturnTransitionOverlap(Z)V
    .registers 4
    .param p1, "allow"    # Z

    .line 2274
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmAllowReturnTransitionOverlap(Landroid/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)V

    .line 2275
    return-void
.end method

.method greylist-max-o setAnimatingAway(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 2901
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/animation/Animator;

    .line 2902
    return-void
.end method

.method public whitelist setArguments(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "args"    # Landroid/os/Bundle;

    .line 665
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 666
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 669
    return-void
.end method

.method public whitelist setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 1983
    if-nez p1, :cond_9

    .line 1984
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    .line 1985
    return-void

    .line 1987
    :cond_7
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 1989
    :cond_9
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1990
    return-void
.end method

.method public whitelist setEnterTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2021
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2022
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2024
    :cond_e
    return-void
.end method

.method public whitelist setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 2000
    if-nez p1, :cond_9

    .line 2001
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    .line 2002
    return-void

    .line 2004
    :cond_7
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 2006
    :cond_9
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 2007
    return-void
.end method

.method public whitelist setExitTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2098
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2099
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmExitTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2101
    :cond_e
    return-void
.end method

.method public whitelist setHasOptionsMenu(Z)V
    .registers 3
    .param p1, "hasMenu"    # Z

    .line 969
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_17

    .line 970
    iput-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 971
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_17

    .line 972
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 975
    :cond_17
    return-void
.end method

.method greylist-max-o setHideReplaced(Z)V
    .registers 3
    .param p1, "replaced"    # Z

    .line 2930
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Landroid/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    .line 2931
    return-void
.end method

.method final greylist-max-o setIndex(ILandroid/app/Fragment;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "parent"    # Landroid/app/Fragment;

    .line 589
    iput p1, p0, Landroid/app/Fragment;->mIndex:I

    .line 590
    if-eqz p2, :cond_22

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_39

    .line 593
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 595
    :goto_39
    return-void
.end method

.method public whitelist setInitialSavedState(Landroid/app/Fragment$SavedState;)V
    .registers 4
    .param p1, "state"    # Landroid/app/Fragment$SavedState;

    .line 702
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_11

    .line 705
    if-eqz p1, :cond_d

    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 706
    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 707
    return-void

    .line 703
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMenuVisibility(Z)V
    .registers 3
    .param p1, "menuVisible"    # Z

    .line 987
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_1b

    .line 988
    iput-boolean p1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 989
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 990
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 993
    :cond_1b
    return-void
.end method

.method greylist-max-o setNextAnim(I)V
    .registers 3
    .param p1, "animResourceId"    # I

    .line 2850
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 2851
    return-void

    .line 2853
    :cond_7
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mNextAnim:I

    .line 2854
    return-void
.end method

.method greylist-max-o setNextTransition(II)V
    .registers 4
    .param p1, "nextTransition"    # I
    .param p2, "nextTransitionStyle"    # I

    .line 2864
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 2865
    return-void

    .line 2867
    :cond_9
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 2868
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2869
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iput p2, v0, Landroid/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    .line 2870
    return-void
.end method

.method greylist-max-o setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2801
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    .line 2802
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_a

    .line 2803
    return-void

    .line 2805
    :cond_a
    if-eqz p1, :cond_2c

    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    if-nez v0, :cond_13

    goto :goto_2c

    .line 2806
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2809
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_36

    .line 2810
    iget-object v0, p0, Landroid/app/Fragment;->mAnimationInfo:Landroid/app/Fragment$AnimationInfo;

    iput-object p1, v0, Landroid/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/app/Fragment$OnStartEnterTransitionListener;

    .line 2812
    :cond_36
    if-eqz p1, :cond_3b

    .line 2813
    invoke-interface {p1}, Landroid/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    .line 2815
    :cond_3b
    return-void
.end method

.method public whitelist setReenterTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2137
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2138
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmReenterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2140
    :cond_f
    return-void
.end method

.method public whitelist setRetainInstance(Z)V
    .registers 2
    .param p1, "retain"    # Z

    .line 954
    iput-boolean p1, p0, Landroid/app/Fragment;->mRetainInstance:Z

    .line 955
    return-void
.end method

.method public whitelist setReturnTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2058
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2059
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2061
    :cond_f
    return-void
.end method

.method public whitelist setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2175
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmSharedElementEnterTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2177
    :cond_e
    return-void
.end method

.method public whitelist setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 2210
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment;->shouldChangeTransition(Landroid/transition/Transition;Landroid/transition/Transition;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2211
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Fragment$AnimationInfo;->-$$Nest$fputmSharedElementReturnTransition(Landroid/app/Fragment$AnimationInfo;Landroid/transition/Transition;)V

    .line 2213
    :cond_f
    return-void
.end method

.method greylist-max-o setStateAfterAnimating(I)V
    .registers 3
    .param p1, "state"    # I

    .line 2912
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Landroid/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    .line 2913
    return-void
.end method

.method public whitelist setTargetFragment(Landroid/app/Fragment;I)V
    .registers 9
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .line 725
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 726
    .local v0, "mine":Landroid/app/FragmentManager;
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 727
    .local v1, "theirs":Landroid/app/FragmentManager;
    :goto_c
    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    if-ne v0, v1, :cond_13

    goto :goto_32

    .line 728
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    :cond_32
    :goto_32
    move-object v2, p1

    .local v2, "check":Landroid/app/Fragment;
    :goto_33
    if-eqz v2, :cond_65

    .line 734
    if-eq v2, p0, :cond_3c

    .line 733
    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    goto :goto_33

    .line 735
    :cond_3c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as the target of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " would create a target cycle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 739
    .end local v2    # "check":Landroid/app/Fragment;
    :cond_65
    iput-object p1, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 740
    iput p2, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 741
    return-void
.end method

.method public whitelist setUserVisibleHint(Z)V
    .registers 9
    .param p1, "isVisibleToUser"    # Z

    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, "useBrokenAddedCheck":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1028
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v2, :cond_17

    .line 1029
    iget-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1031
    :cond_17
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    .line 1032
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_27

    move v4, v2

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    move v0, v4

    .line 1036
    :cond_29
    const/4 v4, 0x4

    if-eqz v0, :cond_3e

    .line 1037
    iget-boolean v5, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v5, :cond_3c

    if-eqz p1, :cond_3c

    iget v5, p0, Landroid/app/Fragment;->mState:I

    if-ge v5, v4, :cond_3c

    iget-object v5, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v5, :cond_3c

    move v5, v2

    goto :goto_3d

    :cond_3c
    move v5, v3

    .local v5, "performDeferredStart":Z
    :goto_3d
    goto :goto_55

    .line 1040
    .end local v5    # "performDeferredStart":Z
    :cond_3e
    iget-boolean v5, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v5, :cond_54

    if-eqz p1, :cond_54

    iget v5, p0, Landroid/app/Fragment;->mState:I

    if-ge v5, v4, :cond_54

    iget-object v5, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v5, :cond_54

    .line 1041
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_54

    move v5, v2

    goto :goto_55

    :cond_54
    move v5, v3

    .line 1044
    .restart local v5    # "performDeferredStart":Z
    :goto_55
    if-eqz v5, :cond_5c

    .line 1045
    iget-object v6, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6, p0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1048
    :cond_5c
    iput-boolean p1, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 1049
    iget v6, p0, Landroid/app/Fragment;->mState:I

    if-ge v6, v4, :cond_65

    if-nez p1, :cond_65

    goto :goto_66

    :cond_65
    move v2, v3

    :goto_66
    iput-boolean v2, p0, Landroid/app/Fragment;->mDeferStart:Z

    .line 1050
    return-void
.end method

.method public whitelist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1274
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_13

    .line 1275
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1276
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 1275
    return v0

    .line 1278
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1085
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1086
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1098
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_14

    .line 1101
    const/4 v0, -0x1

    if-eqz p2, :cond_d

    .line 1102
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1, p0, p1, v0, p2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_13

    .line 1106
    :cond_d
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v0, v2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1108
    :goto_13
    return-void

    .line 1099
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 1115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1116
    return-void
.end method

.method public whitelist startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1123
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    .line 1126
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1127
    return-void

    .line 1124
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 1136
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_f

    .line 1139
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "requestCode":I
    .end local p3    # "options":Landroid/os/Bundle;
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "requestCode":I
    .local v5, "options":Landroid/os/Bundle;
    .local v6, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentHostCallback;->onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1140
    return-void

    .line 1137
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "requestCode":I
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "user":Landroid/os/UserHandle;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "requestCode":I
    .restart local p3    # "options":Landroid/os/Bundle;
    .restart local p4    # "user":Landroid/os/UserHandle;
    :cond_f
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "requestCode":I
    .end local p3    # "options":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "requestCode":I
    .restart local v5    # "options":Landroid/os/Bundle;
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
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

    .line 1149
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_13

    .line 1152
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1154
    return-void

    .line 1150
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not attached to Activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startPostponedEnterTransition()V
    .registers 3

    .line 2335
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_b

    goto :goto_32

    .line 2337
    :cond_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 2338
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/Fragment$$ExternalSyntheticLambda0;-><init>(Landroid/app/Fragment;)V

    .line 2339
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 2341
    :cond_2e
    invoke-direct {p0}, Landroid/app/Fragment;->callStartTransitionListener()V

    goto :goto_39

    .line 2336
    :cond_32
    :goto_32
    invoke-direct {p0}, Landroid/app/Fragment;->ensureAnimationInfo()Landroid/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2343
    :goto_39
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 618
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 619
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v1, :cond_18

    .line 620
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    :cond_18
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_2a

    .line 624
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_2a
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 628
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :cond_38
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1951
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1952
    return-void
.end method
