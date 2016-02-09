.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$SavedState;,
        Landroid/support/v4/app/Fragment$InstantiationException;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

.field mExitTransition:Ljava/lang/Object;

.field mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Landroid/support/v4/app/Fragment;

.field mReenterTransition:Ljava/lang/Object;

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mReturnTransition:Ljava/lang/Object;

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

.field mSharedElementEnterTransition:Ljava/lang/Object;

.field mSharedElementReturnTransition:Ljava/lang/Object;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

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
    .line 170
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    #@2
    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    #@5
    .line 169
    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@7
    .line 172
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@e
    .line 168
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
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 181
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@9
    .line 197
    iput v2, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@b
    .line 209
    iput v2, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@d
    .line 280
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@f
    .line 302
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@11
    .line 308
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    #@13
    .line 309
    sget-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@15
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    #@17
    .line 310
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    #@19
    .line 311
    sget-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@1b
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    #@1d
    .line 312
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    #@1f
    .line 313
    sget-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@21
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    #@23
    .line 317
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@25
    .line 318
    iput-object v1, p0, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@27
    .line 390
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 417
    :try_start_0
    sget-object v5, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    invoke-virtual {v5, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Class;

    #@8
    .line 418
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    #@a
    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 421
    sget-object v5, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@14
    invoke-virtual {v5, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 423
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/support/v4/app/Fragment;

    #@1d
    .line 424
    .local v4, "f":Landroid/support/v4/app/Fragment;
    if-eqz p2, :cond_1

    #@1f
    .line 425
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@2a
    .line 426
    iput-object p2, v4, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 428
    :cond_1
    return-object v4

    #@2d
    .line 437
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "f":Landroid/support/v4/app/Fragment;
    :catch_0
    move-exception v2

    #@2e
    .line 438
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    #@30
    new-instance v6, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v7, "Unable to instantiate fragment "

    #@38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    .line 439
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@43
    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    .line 440
    const-string/jumbo v7, " empty constructor that is public"

    #@4a
    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-direct {v5, v6, v2}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@55
    throw v5

    #@56
    .line 433
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    #@57
    .line 434
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    #@59
    new-instance v6, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v7, "Unable to instantiate fragment "

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    .line 435
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@6c
    .line 434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    .line 436
    const-string/jumbo v7, " empty constructor that is public"

    #@73
    .line 434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-direct {v5, v6, v3}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@7e
    throw v5

    #@7f
    .line 429
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    #@80
    .line 430
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    #@82
    new-instance v6, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v7, "Unable to instantiate fragment "

    #@8a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    .line 431
    const-string/jumbo v7, ": make sure class name exists, is public, and has an"

    #@95
    .line 430
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v6

    #@99
    .line 432
    const-string/jumbo v7, " empty constructor that is public"

    #@9c
    .line 430
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v6

    #@a0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v6

    #@a4
    invoke-direct {v5, v6, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@a7
    throw v5
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 454
    :try_start_0
    sget-object v2, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Class;

    #@8
    .line 455
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    #@a
    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 458
    sget-object v2, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@14
    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 460
    :cond_0
    const-class v2, Landroid/support/v4/app/Fragment;

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v2

    #@1d
    return v2

    #@1e
    .line 461
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@1f
    .line 462
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    #@20
    return v2
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
    .line 1829
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mFragmentId=#"

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 1830
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 1831
    const-string/jumbo v0, " mContainerId=#"

    #@15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 1832
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@1a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 1833
    const-string/jumbo v0, " mTag="

    #@24
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@29
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c
    .line 1834
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    const-string/jumbo v0, "mState="

    #@32
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@37
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@3a
    .line 1835
    const-string/jumbo v0, " mIndex="

    #@3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@42
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@45
    .line 1836
    const-string/jumbo v0, " mWho="

    #@48
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@4d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@50
    .line 1837
    const-string/jumbo v0, " mBackStackNesting="

    #@53
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@58
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@5b
    .line 1838
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5e
    const-string/jumbo v0, "mAdded="

    #@61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@66
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@69
    .line 1839
    const-string/jumbo v0, " mRemoving="

    #@6c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@71
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@74
    .line 1840
    const-string/jumbo v0, " mResumed="

    #@77
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@7c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@7f
    .line 1841
    const-string/jumbo v0, " mFromLayout="

    #@82
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@87
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@8a
    .line 1842
    const-string/jumbo v0, " mInLayout="

    #@8d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@90
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@92
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@95
    .line 1843
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@98
    const-string/jumbo v0, "mHidden="

    #@9b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9e
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@a0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@a3
    .line 1844
    const-string/jumbo v0, " mDetached="

    #@a6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@ab
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@ae
    .line 1845
    const-string/jumbo v0, " mMenuVisible="

    #@b1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b4
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@b6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@b9
    .line 1846
    const-string/jumbo v0, " mHasMenu="

    #@bc
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bf
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@c1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@c4
    .line 1847
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    const-string/jumbo v0, "mRetainInstance="

    #@ca
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@cf
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@d2
    .line 1848
    const-string/jumbo v0, " mRetaining="

    #@d5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d8
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@da
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@dd
    .line 1849
    const-string/jumbo v0, " mUserVisibleHint="

    #@e0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e3
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@e5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@e8
    .line 1850
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@ea
    if-eqz v0, :cond_0

    #@ec
    .line 1851
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ef
    const-string/jumbo v0, "mFragmentManager="

    #@f2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5
    .line 1852
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@f7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@fa
    .line 1854
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@fc
    if-eqz v0, :cond_1

    #@fe
    .line 1855
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@101
    const-string/jumbo v0, "mHost="

    #@104
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@107
    .line 1856
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@109
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@10c
    .line 1858
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@10e
    if-eqz v0, :cond_2

    #@110
    .line 1859
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@113
    const-string/jumbo v0, "mParentFragment="

    #@116
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@119
    .line 1860
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@11b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11e
    .line 1862
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@120
    if-eqz v0, :cond_3

    #@122
    .line 1863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@125
    const-string/jumbo v0, "mArguments="

    #@128
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@12d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@130
    .line 1865
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@132
    if-eqz v0, :cond_4

    #@134
    .line 1866
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@137
    const-string/jumbo v0, "mSavedFragmentState="

    #@13a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13d
    .line 1867
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@13f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@142
    .line 1869
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@144
    if-eqz v0, :cond_5

    #@146
    .line 1870
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@149
    const-string/jumbo v0, "mSavedViewState="

    #@14c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14f
    .line 1871
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@151
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@154
    .line 1873
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@156
    if-eqz v0, :cond_6

    #@158
    .line 1874
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    const-string/jumbo v0, "mTarget="

    #@15e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@161
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@163
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@166
    .line 1875
    const-string/jumbo v0, " mTargetRequestCode="

    #@169
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16c
    .line 1876
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@16e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@171
    .line 1878
    :cond_6
    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@173
    if-eqz v0, :cond_7

    #@175
    .line 1879
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@178
    const-string/jumbo v0, "mNextAnim="

    #@17b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@180
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@183
    .line 1881
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@185
    if-eqz v0, :cond_8

    #@187
    .line 1882
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    const-string/jumbo v0, "mContainer="

    #@18d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@192
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@195
    .line 1884
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@197
    if-eqz v0, :cond_9

    #@199
    .line 1885
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19c
    const-string/jumbo v0, "mView="

    #@19f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1a4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1a7
    .line 1887
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@1a9
    if-eqz v0, :cond_a

    #@1ab
    .line 1888
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    const-string/jumbo v0, "mInnerView="

    #@1b1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1b6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1b9
    .line 1890
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@1bb
    if-eqz v0, :cond_b

    #@1bd
    .line 1891
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c0
    const-string/jumbo v0, "mAnimatingAway="

    #@1c3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@1c8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1cb
    .line 1892
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ce
    const-string/jumbo v0, "mStateAfterAnimating="

    #@1d1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d4
    .line 1893
    iget v0, p0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@1d6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1d9
    .line 1895
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1db
    if-eqz v0, :cond_c

    #@1dd
    .line 1896
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e0
    const-string/jumbo v0, "Loader Manager:"

    #@1e3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e6
    .line 1897
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1e8
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v1

    #@1f1
    const-string/jumbo v2, "  "

    #@1f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v1

    #@1f8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v1

    #@1fc
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1ff
    .line 1899
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@201
    if-eqz v0, :cond_d

    #@203
    .line 1900
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@206
    new-instance v0, Ljava/lang/StringBuilder;

    #@208
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20b
    const-string/jumbo v1, "Child "

    #@20e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v0

    #@212
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v0

    #@218
    const-string/jumbo v1, ":"

    #@21b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v0

    #@21f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object v0

    #@223
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@226
    .line 1901
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@228
    new-instance v1, Ljava/lang/StringBuilder;

    #@22a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v1

    #@231
    const-string/jumbo v2, "  "

    #@234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v1

    #@238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23b
    move-result-object v1

    #@23c
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@23f
    .line 1828
    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 496
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1906
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1907
    return-object p0

    #@a
    .line 1909
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1910
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@10
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 1912
    :cond_1
    return-object v1
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 623
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    #@e
    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    #@0
    .prologue
    .line 1792
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

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
    .line 1816
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

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
    .line 561
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 697
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    #@7
    .line 698
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@9
    const/4 v1, 0x5

    #@a
    if-lt v0, v1, :cond_1

    #@c
    .line 699
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    #@11
    .line 708
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13
    return-object v0

    #@14
    .line 700
    :cond_1
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@16
    const/4 v1, 0x4

    #@17
    if-lt v0, v1, :cond_2

    #@19
    .line 701
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@1b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    #@1e
    goto :goto_0

    #@1f
    .line 702
    :cond_2
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@21
    const/4 v1, 0x2

    #@22
    if-lt v0, v1, :cond_3

    #@24
    .line 703
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@26
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@29
    goto :goto_0

    #@2a
    .line 704
    :cond_3
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@2c
    const/4 v1, 0x1

    #@2d
    if-lt v0, v1, :cond_0

    #@2f
    .line 705
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@31
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    #@34
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 614
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1607
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1675
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    #@0
    .prologue
    .line 688
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 631
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@8
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    #@0
    .prologue
    .line 532
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@2
    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1076
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    .line 1077
    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@9
    .line 1078
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    #@12
    .line 1079
    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 897
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 898
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@7
    return-object v0

    #@8
    .line 900
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 901
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
    .line 903
    :cond_1
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@2f
    .line 904
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@31
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@33
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@35
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3b
    .line 905
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3d
    return-object v0
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@2
    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 1708
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    #@2
    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 1709
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    #@d
    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 639
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
    .line 641
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

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
    .line 827
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@2
    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 1641
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    #@2
    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 1642
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    #@d
    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1735
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 1767
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    #@2
    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 1768
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 1767
    :goto_0
    return-object v0

    #@b
    .line 1768
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    #@d
    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

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
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

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
    .line 539
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@2
    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    #@0
    .prologue
    .line 607
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@2
    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

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
    .line 890
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@2
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1

    #@0
    .prologue
    .line 786
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 503
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
    .line 1387
    const/4 v0, -0x1

    #@3
    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@5
    .line 1388
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@7
    .line 1389
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@9
    .line 1390
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@b
    .line 1391
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@d
    .line 1392
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@f
    .line 1393
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@11
    .line 1394
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRestored:Z

    #@13
    .line 1395
    iput v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@15
    .line 1396
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17
    .line 1397
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@19
    .line 1398
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@1b
    .line 1399
    iput v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@1d
    .line 1400
    iput v1, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@1f
    .line 1401
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@21
    .line 1402
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@23
    .line 1403
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@25
    .line 1404
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@27
    .line 1405
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@29
    .line 1406
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@2b
    .line 1407
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@2d
    .line 1386
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    #@0
    .prologue
    .line 1916
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    #@5
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@7
    .line 1917
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@b
    new-instance v2, Landroid/support/v4/app/Fragment$1;

    #@d
    invoke-direct {v2, p0}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V

    #@10
    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    #@13
    .line 1915
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    #@0
    .prologue
    .line 723
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

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
    .line 732
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@2
    return v0
.end method

.method public final isHidden()Z
    .locals 1

    #@0
    .prologue
    .line 781
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@2
    return v0
.end method

.method final isInBackStack()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 489
    iget v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

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
    .line 752
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@2
    return v0
.end method

.method public final isMenuVisible()Z
    .locals 1

    #@0
    .prologue
    .line 791
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@2
    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    #@0
    .prologue
    .line 741
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@2
    return v0
.end method

.method public final isResumed()Z
    .locals 1

    #@0
    .prologue
    .line 760
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@2
    return v0
.end method

.method public final isVisible()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 769
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

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
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 770
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@14
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

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
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1254
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1253
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 944
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1163
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1162
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1148
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1149
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@5
    if-nez v1, :cond_1

    #@7
    const/4 v0, 0x0

    #@8
    .line 1150
    :goto_0
    if-eqz v0, :cond_0

    #@a
    .line 1151
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@d
    .line 1152
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@10
    .line 1147
    :cond_0
    return-void

    #@11
    .line 1149
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@13
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

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
    .line 1325
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1324
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1558
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1188
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1187
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    #@0
    .prologue
    .line 1170
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
    .line 1512
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    #@7
    .line 1511
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    #@0
    .prologue
    .line 1431
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    .prologue
    .line 1213
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
    .line 1368
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1371
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1372
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@9
    .line 1373
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@b
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@d
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@16
    .line 1375
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1376
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1c
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@1f
    .line 1367
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    #@0
    .prologue
    .line 1458
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    #@0
    .prologue
    .line 1360
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1359
    return-void
.end method

.method public onDetach()V
    .locals 1

    #@0
    .prologue
    .line 1415
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1414
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    #@0
    .prologue
    .line 801
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
    .line 1140
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1139
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1125
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1126
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@5
    if-nez v1, :cond_1

    #@7
    const/4 v0, 0x0

    #@8
    .line 1127
    :goto_0
    if-eqz v0, :cond_0

    #@a
    .line 1128
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@d
    .line 1129
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@10
    .line 1124
    :cond_0
    return-void

    #@11
    .line 1126
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@13
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    #@16
    move-result-object v0

    #@17
    .local v0, "hostActivity":Landroid/app/Activity;
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 1347
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1346
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 1480
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 1490
    return-void
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 1334
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1333
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 1448
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1039
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 1299
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1298
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1321
    return-void
.end method

.method public onStart()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1278
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1280
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1281
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@9
    .line 1282
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1283
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@f
    .line 1284
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@11
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@13
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1c
    .line 1286
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 1287
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@22
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    #@25
    .line 1277
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 1343
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1342
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1226
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1269
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    .line 1268
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1966
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1967
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 1969
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    .line 1970
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@f
    .line 1971
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1972
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 1973
    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    #@28
    .line 1972
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1975
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 1976
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3a
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@3d
    .line 1965
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2017
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 2018
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2019
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@c
    .line 2016
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
    .line 2084
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 2085
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2086
    return v1

    #@c
    .line 2088
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2089
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@12
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2090
    return v1

    #@19
    .line 2094
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
    .line 1935
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1936
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@7
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@a
    .line 1938
    :cond_0
    const/4 v1, 0x0

    #@b
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@d
    .line 1939
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@10
    .line 1940
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@12
    if-nez v1, :cond_1

    #@14
    .line 1941
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 1942
    const-string/jumbo v3, " did not call through to super.onCreate()"

    #@29
    .line 1941
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 1944
    :cond_1
    if-eqz p1, :cond_3

    #@37
    .line 1946
    const-string/jumbo v1, "android:support:fragments"

    #@3a
    .line 1945
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3d
    move-result-object v0

    #@3e
    .line 1947
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    #@40
    .line 1948
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@42
    if-nez v1, :cond_2

    #@44
    .line 1949
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    #@47
    .line 1951
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@49
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    #@4c
    .line 1952
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@4e
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    #@51
    .line 1934
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
    .line 2040
    const/4 v0, 0x0

    #@1
    .line 2041
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 2042
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2043
    const/4 v0, 0x1

    #@e
    .line 2044
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    #@11
    .line 2046
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2047
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    .line 2050
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
    .line 1959
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1960
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 1962
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method performDestroy()V
    .locals 3

    #@0
    .prologue
    .line 2178
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2179
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    #@9
    .line 2181
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    .line 2182
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    #@f
    .line 2183
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2184
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 2185
    const-string/jumbo v2, " did not call through to super.onDestroy()"

    #@28
    .line 2184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2177
    :cond_1
    return-void
.end method

.method performDestroyView()V
    .locals 3

    #@0
    .prologue
    .line 2163
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2164
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    #@9
    .line 2166
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    .line 2167
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    #@f
    .line 2168
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2169
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 2170
    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    #@28
    .line 2169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2172
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 2173
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3a
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    #@3d
    .line 2162
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 2024
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    #@3
    .line 2025
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2026
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    #@c
    .line 2023
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
    .line 2068
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 2069
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 2070
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2071
    return v1

    #@14
    .line 2074
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 2075
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@1a
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 2076
    return v1

    #@21
    .line 2080
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
    .line 2098
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 2099
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2100
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@f
    .line 2102
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 2103
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@15
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@18
    .line 2097
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    #@0
    .prologue
    .line 2119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2120
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    #@9
    .line 2122
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    .line 2123
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    #@f
    .line 2124
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2125
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 2126
    const-string/jumbo v2, " did not call through to super.onPause()"

    #@28
    .line 2125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2118
    :cond_1
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 2054
    const/4 v0, 0x0

    #@1
    .line 2055
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 2056
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 2057
    const/4 v0, 0x1

    #@e
    .line 2058
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    #@11
    .line 2060
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 2061
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    .line 2064
    .end local v0    # "show":Z
    :cond_1
    return v0
.end method

.method performReallyStop()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2143
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2144
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    #@a
    .line 2146
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 2147
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@10
    .line 2148
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@12
    if-nez v0, :cond_1

    #@14
    .line 2149
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@17
    .line 2150
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@19
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@1b
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@1d
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@23
    .line 2152
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 2153
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 2154
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2d
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    #@30
    .line 2142
    :cond_2
    :goto_0
    return-void

    #@31
    .line 2156
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@33
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    #@36
    goto :goto_0
.end method

.method performResume()V
    .locals 3

    #@0
    .prologue
    .line 2000
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2001
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 2002
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    .line 2004
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    .line 2005
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    #@14
    .line 2006
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 2007
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 2008
    const-string/jumbo v2, " did not call through to super.onResume()"

    #@2d
    .line 2007
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 2010
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 2011
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3f
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    #@42
    .line 2012
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@44
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@47
    .line 1999
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2109
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 2110
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 2111
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    .line 2112
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@f
    .line 2113
    const-string/jumbo v1, "android:support:fragments"

    #@12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@15
    .line 2108
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    #@0
    .prologue
    .line 1981
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1982
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    .line 1983
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    .line 1985
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    .line 1986
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    #@14
    .line 1987
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 1988
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 1989
    const-string/jumbo v2, " did not call through to super.onStart()"

    #@2d
    .line 1988
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 1991
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 1992
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3f
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    #@42
    .line 1994
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 1995
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@48
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    #@4b
    .line 1980
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 3

    #@0
    .prologue
    .line 2131
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2132
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    #@9
    .line 2134
    :cond_0
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    .line 2135
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    #@f
    .line 2136
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 2137
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 2138
    const-string/jumbo v2, " did not call through to super.onStop()"

    #@28
    .line 2137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 2130
    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1526
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    .line 1525
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 1015
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1016
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
    .line 1018
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    #@2a
    .line 1014
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 467
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 468
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@7
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@c
    .line 469
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@e
    .line 471
    :cond_0
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    .line 472
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    #@14
    .line 473
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_1

    #@18
    .line 474
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

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
    .line 475
    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    #@2d
    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 466
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 1780
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 1779
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 1804
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    #@6
    .line 1803
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 550
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Fragment already active"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 553
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@f
    .line 549
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    #@0
    .prologue
    .line 1569
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@2
    .line 1568
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1594
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    #@2
    .line 1593
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/app/SharedElementCallback;

    #@0
    .prologue
    .line 1580
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    #@2
    .line 1579
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1659
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    #@2
    .line 1658
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    #@0
    .prologue
    .line 838
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 839
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@6
    .line 840
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 837
    :cond_0
    :goto_0
    return-void

    #@13
    .line 841
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@15
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    #@18
    goto :goto_0
.end method

.method final setIndex(ILandroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parent"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 480
    iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    .line 481
    if-eqz p2, :cond_0

    #@4
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

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
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@22
    .line 479
    :goto_0
    return-void

    #@23
    .line 484
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
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@3b
    goto :goto_0
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Landroid/support/v4/app/Fragment$SavedState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 573
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3
    if-ltz v1, :cond_0

    #@5
    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Fragment already active"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 576
    :cond_0
    if-eqz p1, :cond_1

    #@10
    iget-object v1, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 577
    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@16
    .line 576
    :cond_1
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@18
    .line 572
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    #@0
    .prologue
    .line 856
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 857
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@6
    .line 858
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 855
    :cond_0
    :goto_0
    return-void

    #@17
    .line 859
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@19
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    #@1c
    goto :goto_0
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1692
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    #@2
    .line 1691
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 2
    .param p1, "retain"    # Z

    #@0
    .prologue
    .line 819
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 820
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    .line 821
    const-string/jumbo v1, "Can\'t retain fragements that are nested in other fragments"

    #@b
    .line 820
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 823
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@11
    .line 818
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1625
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    #@2
    .line 1624
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1722
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    #@2
    .line 1721
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1751
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    #@2
    .line 1750
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 592
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@2
    .line 593
    iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@4
    .line 591
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    #@0
    .prologue
    .line 878
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@8
    const/4 v1, 0x4

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 879
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@d
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    #@10
    .line 881
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@12
    .line 882
    if-eqz p1, :cond_1

    #@14
    const/4 v0, 0x0

    #@15
    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@17
    .line 877
    return-void

    #@18
    .line 882
    :cond_1
    const/4 v0, 0x1

    #@19
    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 1064
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1065
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@6
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1067
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 914
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
    .line 916
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@27
    const/4 v1, -0x1

    #@28
    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    #@2b
    .line 912
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 925
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
    .line 927
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    #@27
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    #@2a
    .line 923
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 509
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 510
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@c
    if-ltz v1, :cond_0

    #@e
    .line 511
    const-string/jumbo v1, " #"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 512
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    .line 514
    :cond_0
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 515
    const-string/jumbo v1, " id=0x"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 516
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@25
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 518
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 519
    const-string/jumbo v1, " "

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 520
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 522
    :cond_2
    const/16 v1, 0x7d

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 523
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
    .line 1537
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    .line 1536
    return-void
.end method
