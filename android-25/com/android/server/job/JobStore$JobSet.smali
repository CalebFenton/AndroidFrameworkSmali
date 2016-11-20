.class Lcom/android/server/job/JobStore$JobSet;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobSet"
.end annotation


# instance fields
.field private mJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 778
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@a
    .line 777
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 805
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@3
    move-result v1

    #@4
    .line 806
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/util/ArraySet;

    #@c
    .line 807
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v0, :cond_0

    #@e
    .line 808
    new-instance v0, Landroid/util/ArraySet;

    #@10
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@13
    .line 809
    .restart local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    .line 811
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    return v2
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 861
    return-void
.end method

.method public contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@3
    move-result v1

    #@4
    .line 827
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@6
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/util/ArraySet;

    #@c
    .line 828
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    :goto_0
    return v2

    #@13
    :cond_0
    const/4 v2, 0x0

    #@14
    goto :goto_0
.end method

.method public countJobsForUid(I)I
    .locals 6
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 876
    const/4 v3, 0x0

    #@1
    .line 877
    .local v3, "total":I
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/util/ArraySet;

    #@9
    .line 878
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_1

    #@b
    .line 879
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v0, v4, -0x1

    #@11
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@13
    .line 880
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@19
    .line 881
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@1c
    move-result v4

    #@1d
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@20
    move-result v5

    #@21
    if-ne v4, v5, :cond_0

    #@23
    .line 882
    add-int/lit8 v3, v3, 0x1

    #@25
    .line 879
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    .line 886
    .end local v0    # "i":I
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return v3
.end method

.method public forEachJob(ILcom/android/server/job/JobStore$JobStatusFunctor;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "functor"    # Lcom/android/server/job/JobStore$JobStatusFunctor;

    #@0
    .prologue
    .line 899
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/ArraySet;

    #@8
    .line 900
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_0

    #@a
    .line 901
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@d
    move-result v2

    #@e
    add-int/lit8 v0, v2, -0x1

    #@10
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@12
    .line 902
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@18
    invoke-interface {p2, v2}, Lcom/android/server/job/JobStore$JobStatusFunctor;->process(Lcom/android/server/job/controllers/JobStatus;)V

    #@1b
    .line 901
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 898
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V
    .locals 4
    .param p1, "functor"    # Lcom/android/server/job/JobStore$JobStatusFunctor;

    #@0
    .prologue
    .line 890
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "uidIndex":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 891
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/util/ArraySet;

    #@12
    .line 892
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@15
    move-result v3

    #@16
    add-int/lit8 v0, v3, -0x1

    #@18
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    #@1a
    .line 893
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    #@20
    invoke-interface {p1, v3}, Lcom/android/server/job/JobStore$JobStatusFunctor;->process(Lcom/android/server/job/controllers/JobStatus;)V

    #@23
    .line 892
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_1

    #@26
    .line 890
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@28
    goto :goto_0

    #@29
    .line 889
    .end local v0    # "i":I
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    return-void
.end method

.method public get(II)Lcom/android/server/job/controllers/JobStatus;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 832
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/util/ArraySet;

    #@9
    .line 833
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_1

    #@b
    .line 834
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@e
    move-result v3

    #@f
    add-int/lit8 v0, v3, -0x1

    #@11
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@13
    .line 835
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@19
    .line 836
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@1c
    move-result v3

    #@1d
    if-ne v3, p2, :cond_0

    #@1f
    .line 837
    return-object v1

    #@20
    .line 834
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 841
    .end local v0    # "i":I
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-object v4
.end method

.method public getAllJobs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 846
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    #@5
    move-result v4

    #@6
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 847
    .local v0, "allJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v1, v4, -0x1

    #@11
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@13
    .line 848
    iget-object v4, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/util/ArraySet;

    #@1b
    .line 849
    .local v3, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v3, :cond_0

    #@1d
    .line 853
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@20
    move-result v4

    #@21
    add-int/lit8 v2, v4, -0x1

    #@23
    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    #@25
    .line 854
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    #@2b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 853
    add-int/lit8 v2, v2, -0x1

    #@30
    goto :goto_1

    #@31
    .line 847
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_0

    #@34
    .line 858
    .end local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .locals 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 782
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 783
    .local v1, "matchingJobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/util/ArraySet;

    #@d
    .line 784
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_0

    #@f
    .line 785
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@12
    .line 787
    :cond_0
    return-object v1
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 792
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 793
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v3

    #@b
    add-int/lit8 v0, v3, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@f
    .line 794
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@18
    move-result v3

    #@19
    if-ne v3, p1, :cond_0

    #@1b
    .line 795
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/util/ArraySet;

    #@23
    .line 796
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_0

    #@25
    .line 797
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@28
    .line 793
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 801
    :cond_1
    return-object v2
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 815
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@4
    move-result v2

    #@5
    .line 816
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/util/ArraySet;

    #@d
    .line 817
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v1, :cond_0

    #@f
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    .line 818
    .local v0, "didRemove":Z
    :cond_0
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1

    #@1b
    .line 820
    iget-object v3, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    #@20
    .line 822
    :cond_1
    return v0
.end method

.method public size()I
    .locals 3

    #@0
    .prologue
    .line 866
    const/4 v1, 0x0

    #@1
    .line 867
    .local v1, "total":I
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 868
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/util/ArraySet;

    #@13
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@16
    move-result v2

    #@17
    add-int/2addr v1, v2

    #@18
    .line 867
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 870
    :cond_0
    return v1
.end method
