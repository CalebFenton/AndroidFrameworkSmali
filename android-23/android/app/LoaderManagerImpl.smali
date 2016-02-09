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
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mCreatingLoader:Z

.field private mHost:Landroid/app/FragmentHostCallback;

.field final mInactiveLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 202
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3
    .line 200
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "host"    # Landroid/app/FragmentHostCallback;
    .param p3, "started"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 533
    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    #@4
    .line 207
    new-instance v0, Landroid/util/SparseArray;

    #@6
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@b
    .line 213
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@10
    iput-object v0, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@12
    .line 534
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    #@14
    .line 535
    iput-object p2, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@16
    .line 536
    iput-boolean p3, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@18
    .line 533
    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    #@1
    .line 554
    const/4 v1, 0x1

    #@2
    :try_start_0
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    #@4
    .line 555
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@7
    move-result-object v0

    #@8
    .line 556
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p0, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 559
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    #@d
    .line 557
    return-object v0

    #@e
    .line 558
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :catchall_0
    move-exception v1

    #@f
    .line 559
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    #@11
    .line 558
    throw v1
.end method

.method private createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 545
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    new-instance v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    #@5
    .line 546
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-interface {p3, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    #@8
    move-result-object v1

    #@9
    .line 547
    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iput-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@b
    .line 548
    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 5
    .param p1, "id"    # I

    #@0
    .prologue
    .line 716
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 717
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "Called while creating a loader"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 720
    :cond_0
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@f
    if-eqz v2, :cond_1

    #@11
    const-string/jumbo v2, "LoaderManager"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "destroyLoader in "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v4, " of "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 721
    :cond_1
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@38
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@3b
    move-result v0

    #@3c
    .line 722
    .local v0, "idx":I
    if-ltz v0, :cond_2

    #@3e
    .line 723
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@40
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@46
    .line 724
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@48
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@4b
    .line 725
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@4e
    .line 727
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_2
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@50
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@53
    move-result v0

    #@54
    .line 728
    if-ltz v0, :cond_3

    #@56
    .line 729
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@58
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@5e
    .line 730
    .restart local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@60
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@63
    .line 731
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@66
    .line 733
    .end local v1    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@68
    if-eqz v2, :cond_4

    #@6a
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_5

    #@70
    .line 715
    :cond_4
    :goto_0
    return-void

    #@71
    .line 734
    :cond_5
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@73
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@75
    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@78
    goto :goto_0
.end method

.method doDestroy()V
    .locals 4

    #@0
    .prologue
    .line 831
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    #@2
    if-nez v1, :cond_2

    #@4
    .line 832
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v1, "LoaderManager"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Destroying Active in "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 833
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@24
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@27
    move-result v1

    #@28
    add-int/lit8 v0, v1, -0x1

    #@2a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@2c
    .line 834
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@34
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@37
    .line 833
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 836
    :cond_1
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@3c
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@3f
    .line 839
    .end local v0    # "i":I
    :cond_2
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@41
    if-eqz v1, :cond_3

    #@43
    const-string/jumbo v1, "LoaderManager"

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "Destroying Inactive in "

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 840
    :cond_3
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@5f
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@62
    move-result v1

    #@63
    add-int/lit8 v0, v1, -0x1

    #@65
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    #@67
    .line 841
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@69
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6c
    move-result-object v1

    #@6d
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@6f
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@72
    .line 840
    add-int/lit8 v0, v0, -0x1

    #@74
    goto :goto_1

    #@75
    .line 843
    :cond_4
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@77
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@7a
    .line 830
    return-void
.end method

.method doReportNextStart()V
    .locals 3

    #@0
    .prologue
    .line 819
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 820
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@12
    const/4 v2, 0x1

    #@13
    iput-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    #@15
    .line 819
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 818
    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 2

    #@0
    .prologue
    .line 825
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 826
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@12
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    #@15
    .line 825
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 824
    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 792
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "LoaderManager"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Retaining in "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 793
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@21
    if-nez v2, :cond_1

    #@23
    .line 794
    new-instance v0, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v2, "here"

    #@28
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    .line 795
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@2e
    .line 796
    const-string/jumbo v2, "LoaderManager"

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Called doRetain when not started: "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 797
    return-void

    #@49
    .line 800
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v2, 0x1

    #@4a
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    #@4c
    .line 801
    iput-boolean v5, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@4e
    .line 802
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@50
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@53
    move-result v2

    #@54
    add-int/lit8 v1, v2, -0x1

    #@56
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@58
    .line 803
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@5a
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@60
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->retain()V

    #@63
    .line 802
    add-int/lit8 v1, v1, -0x1

    #@65
    goto :goto_0

    #@66
    .line 791
    :cond_2
    return-void
.end method

.method doStart()V
    .locals 5

    #@0
    .prologue
    .line 759
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "LoaderManager"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "Starting in "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 760
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 761
    new-instance v0, Ljava/lang/RuntimeException;

    #@24
    const-string/jumbo v2, "here"

    #@27
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 762
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@2d
    .line 763
    const-string/jumbo v2, "LoaderManager"

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "Called doStart when already started: "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 764
    return-void

    #@48
    .line 767
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v2, 0x1

    #@49
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@4b
    .line 771
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@4d
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@50
    move-result v2

    #@51
    add-int/lit8 v1, v2, -0x1

    #@53
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@55
    .line 772
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@57
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5a
    move-result-object v2

    #@5b
    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@5d
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    #@60
    .line 771
    add-int/lit8 v1, v1, -0x1

    #@62
    goto :goto_0

    #@63
    .line 758
    :cond_2
    return-void
.end method

.method doStop()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 777
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "LoaderManager"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Stopping in "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 778
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@21
    if-nez v2, :cond_1

    #@23
    .line 779
    new-instance v0, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v2, "here"

    #@28
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    .line 780
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@2e
    .line 781
    const-string/jumbo v2, "LoaderManager"

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Called doStop when not started: "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 782
    return-void

    #@49
    .line 785
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@4b
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@4e
    move-result v2

    #@4f
    add-int/lit8 v1, v2, -0x1

    #@51
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@53
    .line 786
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@55
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@58
    move-result-object v2

    #@59
    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@5b
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    #@5e
    .line 785
    add-int/lit8 v1, v1, -0x1

    #@60
    goto :goto_0

    #@61
    .line 788
    :cond_2
    iput-boolean v5, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@63
    .line 776
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 859
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    if-lez v3, :cond_0

    #@8
    .line 860
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    const-string/jumbo v3, "Active Loaders:"

    #@e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, "    "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 862
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@2b
    move-result v3

    #@2c
    if-ge v0, v3, :cond_0

    #@2e
    .line 863
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@36
    .line 864
    .local v2, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string/jumbo v3, "  #"

    #@3c
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@44
    move-result v3

    #@45
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@48
    .line 865
    const-string/jumbo v3, ": "

    #@4b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55
    .line 866
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@58
    .line 862
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 869
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@5d
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@60
    move-result v3

    #@61
    if-lez v3, :cond_1

    #@63
    .line 870
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    const-string/jumbo v3, "Inactive Loaders:"

    #@69
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    const-string/jumbo v4, "    "

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    .line 872
    .restart local v1    # "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    #@81
    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@83
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@86
    move-result v3

    #@87
    if-ge v0, v3, :cond_1

    #@89
    .line 873
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@8b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@8e
    move-result-object v2

    #@8f
    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@91
    .line 874
    .restart local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    const-string/jumbo v3, "  #"

    #@97
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    iget-object v3, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@9c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@9f
    move-result v3

    #@a0
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    #@a3
    .line 875
    const-string/jumbo v3, ": "

    #@a6
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    #@ac
    move-result-object v3

    #@ad
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b0
    .line 876
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@b3
    .line 872
    add-int/lit8 v0, v0, 0x1

    #@b5
    goto :goto_1

    #@b6
    .line 858
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 808
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 809
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    const-string/jumbo v1, "LoaderManager"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Finished Retaining in "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 811
    :cond_0
    iput-boolean v4, p0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    #@25
    .line 812
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@2a
    move-result v1

    #@2b
    add-int/lit8 v0, v1, -0x1

    #@2d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@2f
    .line 813
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@31
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@37
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    #@3a
    .line 812
    add-int/lit8 v0, v0, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 807
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 744
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 745
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v2, "Called while creating a loader"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 748
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@16
    .line 749
    .local v0, "loaderInfo":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_2

    #@18
    .line 750
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 751
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@1e
    iget-object v1, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@20
    return-object v1

    #@21
    .line 753
    :cond_1
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@23
    return-object v1

    #@24
    .line 755
    :cond_2
    return-object v2
.end method

.method public hasRunningLoaders()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 882
    const/4 v3, 0x0

    #@2
    .line 883
    .local v3, "loadersRunning":Z
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v0

    #@8
    .line 884
    .local v0, "count":I
    const/4 v1, 0x0

    #@9
    .end local v3    # "loadersRunning":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@b
    .line 885
    iget-object v4, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@13
    .line 886
    .local v2, "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    iget-boolean v4, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@15
    if-eqz v4, :cond_0

    #@17
    iget-boolean v4, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@19
    if-eqz v4, :cond_1

    #@1b
    :cond_0
    move v4, v5

    #@1c
    :goto_1
    or-int/2addr v3, v4

    #@1d
    .line 884
    .local v3, "loadersRunning":Z
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 886
    .end local v3    # "loadersRunning":Z
    :cond_1
    const/4 v4, 0x1

    #@21
    goto :goto_1

    #@22
    .line 888
    .end local v2    # "li":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_2
    return v3
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 599
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 600
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Called while creating a loader"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 603
    :cond_0
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@15
    .line 605
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@17
    if-eqz v1, :cond_1

    #@19
    const-string/jumbo v1, "LoaderManager"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "initLoader in "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, ": args="

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 607
    :cond_1
    if-nez v0, :cond_4

    #@40
    .line 609
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@43
    move-result-object v0

    #@44
    .line 610
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@46
    if-eqz v1, :cond_2

    #@48
    const-string/jumbo v1, "LoaderManager"

    #@4b
    new-instance v2, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v3, "  Created new loader "

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 616
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@64
    if-eqz v1, :cond_3

    #@66
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@68
    if-eqz v1, :cond_3

    #@6a
    .line 618
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@6c
    iget-object v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    #@6e
    invoke-virtual {v0, v1, v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    #@71
    .line 621
    :cond_3
    iget-object v1, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@73
    return-object v1

    #@74
    .line 612
    :cond_4
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@76
    if-eqz v1, :cond_5

    #@78
    const-string/jumbo v1, "LoaderManager"

    #@7b
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "  Re-using existing loader "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 613
    :cond_5
    iput-object p3, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@94
    goto :goto_0
.end method

.method installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@2
    iget v1, p1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7
    .line 565
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 569
    invoke-virtual {p1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->start()V

    #@e
    .line 563
    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    const/4 v5, 0x0

    #@1
    .line 649
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl;->mCreatingLoader:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 650
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "Called while creating a loader"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 653
    :cond_0
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@16
    .line 654
    .local v1, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    const-string/jumbo v2, "LoaderManager"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "restartLoader in "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, ": args="

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 655
    :cond_1
    if-eqz v1, :cond_3

    #@41
    .line 656
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@43
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@49
    .line 657
    .local v0, "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_b

    #@4b
    .line 658
    iget-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@4d
    if-eqz v2, :cond_4

    #@4f
    .line 663
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@51
    if-eqz v2, :cond_2

    #@53
    const-string/jumbo v2, "LoaderManager"

    #@56
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v4, "  Removing last inactive loader: "

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 664
    :cond_2
    const/4 v2, 0x0

    #@6e
    iput-boolean v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@70
    .line 665
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@73
    .line 666
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@75
    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    #@78
    .line 667
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@7a
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@7d
    .line 704
    .end local v0    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@80
    move-result-object v1

    #@81
    .line 705
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@83
    return-object v2

    #@84
    .line 671
    .restart local v0    # "inactive":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_4
    iget-boolean v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@86
    if-nez v2, :cond_6

    #@88
    .line 675
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@8a
    if-eqz v2, :cond_5

    #@8c
    const-string/jumbo v2, "LoaderManager"

    #@8f
    const-string/jumbo v3, "  Current loader is stopped; replacing"

    #@92
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 676
    :cond_5
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@97
    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@9a
    .line 677
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@9d
    goto :goto_0

    #@9e
    .line 682
    :cond_6
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@a0
    if-eqz v2, :cond_7

    #@a2
    const-string/jumbo v2, "LoaderManager"

    #@a5
    const-string/jumbo v3, "  Current loader is running; attempting to cancel"

    #@a8
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 683
    :cond_7
    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->cancel()V

    #@ae
    .line 684
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@b0
    if-eqz v2, :cond_9

    #@b2
    .line 685
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@b4
    if-eqz v2, :cond_8

    #@b6
    const-string/jumbo v2, "LoaderManager"

    #@b9
    new-instance v3, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v4, "  Removing pending loader: "

    #@c1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v3

    #@c5
    iget-object v4, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@c7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v3

    #@cb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 686
    :cond_8
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@d4
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@d7
    .line 687
    iput-object v5, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@d9
    .line 689
    :cond_9
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@db
    if-eqz v2, :cond_a

    #@dd
    const-string/jumbo v2, "LoaderManager"

    #@e0
    const-string/jumbo v3, "  Enqueuing as new pending loader"

    #@e3
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    .line 690
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Landroid/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@e9
    move-result-object v2

    #@ea
    iput-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@ec
    .line 692
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@ee
    iget-object v2, v2, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@f0
    return-object v2

    #@f1
    .line 698
    :cond_b
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@f3
    if-eqz v2, :cond_c

    #@f5
    const-string/jumbo v2, "LoaderManager"

    #@f8
    new-instance v3, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v4, "  Making last loader inactive: "

    #@100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v3

    #@104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v3

    #@108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v3

    #@10c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 699
    :cond_c
    iget-object v2, v1, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@111
    invoke-virtual {v2}, Landroid/content/Loader;->abandon()V

    #@114
    .line 700
    iget-object v2, p0, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@116
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@119
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 849
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "LoaderManager{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 850
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
    .line 851
    const-string/jumbo v1, " in "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 852
    iget-object v1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@20
    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@23
    .line 853
    const-string/jumbo v1, "}}"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1
.end method

.method updateHostController(Landroid/app/FragmentHostCallback;)V
    .locals 0
    .param p1, "host"    # Landroid/app/FragmentHostCallback;

    #@0
    .prologue
    .line 540
    iput-object p1, p0, Landroid/app/LoaderManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    #@2
    .line 539
    return-void
.end method
