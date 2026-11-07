.class Landroid/app/LoaderManagerImpl;
.super Landroid/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field greylist-max-o mCreatingLoader:Z

.field private greylist-max-o mHost:Landroid/app/FragmentHostCallback;

.field final greylist-max-o mInactiveLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mRetaining:Z

.field greylist-max-o mRetainingStarted:Z

.field greylist-max-o mStarted:Z

.field final greylist-max-o mWho:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHost(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;
    .registers 1

    iget-object p0, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V
    .registers 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "host"    # Landroid/app/FragmentHostCallback;
    .param p3, "started"    # Z

    .line 547
    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    .line 548
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    .line 549
    iput-object p2, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 550
    iput-boolean p3, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 551
    return-void
.end method

.method private greylist-max-o createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .line 572
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 573
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 574
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_f

    .line 575
    nop

    .line 577
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 575
    return-object v0

    .line 577
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :catchall_f
    move-exception v0

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 578
    throw v0
.end method

.method private greylist-max-o createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .line 563
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 564
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v1

    .line 565
    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iput-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    .line 566
    return-object v0
.end method


# virtual methods
.method public whitelist destroyLoader(I)V
    .registers 5
    .param p1, "id"    # I

    .line 735
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_6c

    .line 739
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyLoader in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_2a
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 741
    .local v0, "idx":I
    if-ltz v0, :cond_42

    .line 742
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 743
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 744
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 746
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_42
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 747
    if-ltz v0, :cond_5a

    .line 748
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 749
    .restart local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 750
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 752
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_5a
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 753
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 755
    :cond_6b
    return-void

    .line 736
    .end local v0    # "idx":I
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o doDestroy()V
    .registers 4

    .line 847
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    const-string v1, "LoaderManager"

    if-nez v0, :cond_3d

    .line 848
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_20
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_28
    if-ltz v0, :cond_38

    .line 850
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 849
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 852
    .end local v0    # "i":I
    :cond_38
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 855
    :cond_3d
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_57
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_5f
    if-ltz v0, :cond_6f

    .line 857
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 856
    add-int/lit8 v0, v0, -0x1

    goto :goto_5f

    .line 859
    .end local v0    # "i":I
    :cond_6f
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 861
    return-void
.end method

.method greylist-max-o doReportNextStart()V
    .registers 4

    .line 835
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_17

    .line 836
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    iput-boolean v1, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 835
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 838
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method greylist-max-o doReportStart()V
    .registers 3

    .line 841
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 842
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 841
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 844
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method greylist-max-o doRetain()V
    .registers 5

    .line 809
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_1c
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_3f

    .line 811
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 812
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    return-void

    .line 816
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 817
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 818
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_4c
    if-ltz v1, :cond_5c

    .line 819
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 818
    add-int/lit8 v1, v1, -0x1

    goto :goto_4c

    .line 821
    .end local v1    # "i":I
    :cond_5c
    return-void
.end method

.method greylist-max-o doStart()V
    .registers 5

    .line 778
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_1c
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_3f

    .line 780
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    return-void

    .line 785
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 789
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_49
    if-ltz v1, :cond_59

    .line 790
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 789
    add-int/lit8 v1, v1, -0x1

    goto :goto_49

    .line 792
    .end local v1    # "i":I
    :cond_59
    return-void
.end method

.method greylist-max-o doStop()V
    .registers 5

    .line 795
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1c
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_3f

    .line 797
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    return-void

    .line 802
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3f
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_47
    if-ltz v0, :cond_57

    .line 803
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 802
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 805
    .end local v0    # "i":I
    :cond_57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    .line 806
    return-void
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 876
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, ": "

    const-string v2, "  #"

    const-string v3, "    "

    if-lez v0, :cond_57

    .line 877
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    iget-object v5, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_57

    .line 880
    iget-object v5, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 881
    .local v5, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 882
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v5, v0, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 879
    .end local v5    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 886
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_57
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_a8

    .line 887
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    .restart local v0    # "innerPrefix":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_79
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_a8

    .line 890
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 891
    .local v4, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 892
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 889
    .end local v4    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 896
    .end local v0    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_a8
    return-void
.end method

.method greylist-max-o finishRetain()V
    .registers 3

    .line 824
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v0, :cond_3b

    .line 825
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    .line 828
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2b
    if-ltz v0, :cond_3b

    .line 829
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 828
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 832
    .end local v0    # "i":I
    :cond_3b
    return-void
.end method

.method public greylist-max-o getFragmentHostCallback()Landroid/app/FragmentHostCallback;
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    return-object v0
.end method

.method public whitelist getLoader(I)Landroid/content/Loader;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 763
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_1c

    .line 767
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 768
    .local v0, "loaderInfo":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_1a

    .line 769
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_17

    .line 770
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 772
    :cond_17
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 774
    :cond_1a
    const/4 v1, 0x0

    return-object v1

    .line 764
    .end local v0    # "loaderInfo":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o hasRunningLoaders()Z
    .registers 6

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, "loadersRunning":Z
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 901
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_21

    .line 902
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 903
    .local v3, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-boolean v4, v3, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v4, :cond_1c

    iget-boolean v4, v3, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    or-int/2addr v0, v4

    .line 901
    .end local v3    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 905
    .end local v2    # "i":I
    :cond_21
    return v0
.end method

.method public whitelist initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .registers 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 617
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_82

    .line 621
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 623
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v2, "LoaderManager"

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initLoader in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": args="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_33
    if-nez v0, :cond_54

    .line 627
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 628
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 630
    :cond_54
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_6e
    iput-object p3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 634
    :cond_70
    :goto_70
    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v1, :cond_7f

    .line 636
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 639
    :cond_7f
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 618
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 582
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 583
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_e

    .line 587
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 589
    :cond_e
    return-void
.end method

.method public whitelist restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .registers 10
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 667
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_f7

    .line 671
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 672
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    const-string v2, "LoaderManager"

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restartLoader in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": args="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_33
    if-eqz v0, :cond_f0

    .line 674
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 675
    .local v1, "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v1, :cond_cc

    .line 676
    iget-boolean v3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v3, :cond_6f

    .line 681
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Removing last inactive loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_5d
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 683
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 684
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    .line 685
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_f0

    .line 690
    :cond_6f
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->cancel()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_88

    .line 694
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_7f

    const-string v3, "  Current loader is stopped; replacing"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_7f
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 696
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_f0

    .line 701
    :cond_88
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_91

    const-string v3, "  Current loader is running; configuring pending loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_91
    iget-object v3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v3, :cond_b8

    .line 704
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_b1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Removing pending loader: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_b1
    iget-object v3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 706
    iput-object v4, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 708
    :cond_b8
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_c1

    const-string v3, "  Enqueuing as new pending loader"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_c1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    .line 711
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    iget-object v2, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v2

    .line 717
    :cond_cc
    sget-boolean v3, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_e6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Making last loader inactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_e6
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    .line 719
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    .end local v1    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_f0
    :goto_f0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 724
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    return-object v1

    .line 668
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_f7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 866
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 870
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o updateHostController(Landroid/app/FragmentHostCallback;)V
    .registers 2
    .param p1, "host"    # Landroid/app/FragmentHostCallback;

    .line 554
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    .line 555
    return-void
.end method
