.class final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field private final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/print/UserState;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/print/UserState;

    #@0
    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1879
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    .line 1878
    iput-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@c
    .line 1877
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrintJobForAppCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/print/UserState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    #@3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1971
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-static {v8}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    #@5
    move-result-object v9

    #@6
    monitor-enter v9

    #@7
    .line 1972
    :try_start_0
    const-string/jumbo v7, "  "

    #@a
    .line 1973
    .local v7, "tab":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v2

    #@10
    .line 1974
    .local v2, "bucketCount":I
    const/4 v3, 0x0

    #@11
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@13
    .line 1975
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    #@18
    move-result v0

    #@19
    .line 1976
    .local v0, "appId":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@1c
    move-result-object v8

    #@1d
    new-instance v10, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v11, "appId="

    #@25
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v10

    #@29
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v10

    #@31
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@34
    move-result-object v8

    #@35
    const/16 v10, 0x3a

    #@37
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    #@3e
    .line 1977
    iget-object v8, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@40
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Ljava/util/List;

    #@46
    .line 1978
    .local v1, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@49
    move-result v6

    #@4a
    .line 1979
    .local v6, "printJobCount":I
    const/4 v4, 0x0

    #@4b
    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_0

    #@4d
    .line 1980
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v5

    #@51
    check-cast v5, Landroid/print/PrintJobInfo;

    #@53
    .line 1981
    .local v5, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->toString()Ljava/lang/String;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    #@62
    move-result-object v8

    #@63
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    .line 1979
    add-int/lit8 v4, v4, 0x1

    #@68
    goto :goto_1

    #@69
    .line 1974
    .end local v5    # "printJob":Landroid/print/PrintJobInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@6b
    goto :goto_0

    #@6c
    .end local v0    # "appId":I
    .end local v1    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v4    # "j":I
    .end local v6    # "printJobCount":I
    :cond_1
    monitor-exit v9

    #@6d
    .line 1970
    return-void

    #@6e
    .line 1971
    .end local v2    # "bucketCount":I
    .end local v3    # "i":I
    .end local v7    # "tab":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@6f
    monitor-exit v9

    #@70
    throw v8
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1926
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #@3
    invoke-static {v4}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    #@6
    move-result-object v5

    #@7
    monitor-enter v5

    #@8
    .line 1927
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 1928
    .local v3, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v3, :cond_0

    #@12
    monitor-exit v5

    #@13
    .line 1929
    return-object v6

    #@14
    .line 1931
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@17
    move-result v2

    #@18
    .line 1932
    .local v2, "printJobCount":I
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@1b
    .line 1933
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/print/PrintJobInfo;

    #@21
    .line 1934
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    monitor-exit v5

    #@2c
    .line 1935
    return-object v1

    #@2d
    .line 1932
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_2
    monitor-exit v5

    #@31
    .line 1939
    return-object v6

    #@32
    .line 1926
    .end local v0    # "i":I
    .end local v2    # "printJobCount":I
    .end local v3    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v4

    #@33
    monitor-exit v5

    #@34
    throw v4
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .locals 7
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1943
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-static {v5}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    .line 1944
    const/4 v3, 0x0

    #@8
    .line 1945
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    const/4 v5, -0x2

    #@9
    if-ne p1, v5, :cond_0

    #@b
    .line 1946
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    .line 1947
    .local v1, "bucketCount":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    move-object v4, v3

    #@13
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .local v4, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_0
    if-ge v2, v1, :cond_4

    #@15
    .line 1948
    :try_start_1
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/List;

    #@1d
    .line 1949
    .local v0, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v4, :cond_3

    #@1f
    .line 1950
    new-instance v3, Ljava/util/ArrayList;

    #@21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@24
    .line 1952
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_1
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@27
    .line 1947
    add-int/lit8 v2, v2, 0x1

    #@29
    move-object v4, v3

    #@2a
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_0

    #@2b
    .line 1955
    .end local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v1    # "bucketCount":I
    .end local v2    # "i":I
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Ljava/util/List;

    #@33
    .line 1956
    .restart local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v0, :cond_1

    #@35
    .line 1958
    new-instance v4, Ljava/util/ArrayList;

    #@37
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    .line 1960
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :try_start_3
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3d
    move-object v3, v4

    #@3e
    .line 1963
    .end local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    #@40
    monitor-exit v6

    #@41
    .line 1964
    return-object v3

    #@42
    .line 1966
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@45
    move-result-object v5

    #@46
    monitor-exit v6

    #@47
    return-object v5

    #@48
    .line 1943
    :catchall_0
    move-exception v5

    #@49
    :goto_3
    monitor-exit v6

    #@4a
    throw v5

    #@4b
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_1
    move-exception v5

    #@4c
    move-object v3, v4

    #@4d
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_3

    #@4e
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v1    # "bucketCount":I
    .restart local v2    # "i":I
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_3
    move-object v3, v4

    #@4f
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_1

    #@50
    .end local v0    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_4
    move-object v3, v4

    #@51
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    goto :goto_2
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .locals 5
    .param p1, "creator"    # Landroid/os/IBinder;
    .param p2, "appId"    # I
    .param p3, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1884
    :try_start_0
    new-instance v2, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    #@3
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    #@6
    .line 1892
    const/4 v3, 0x0

    #@7
    .line 1884
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1897
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #@c
    invoke-static {v2}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    monitor-enter v3

    #@11
    .line 1898
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/List;

    #@19
    .line 1899
    .local v0, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v0, :cond_0

    #@1b
    .line 1900
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    .end local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    .line 1901
    .restart local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@25
    .line 1903
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v3

    #@29
    .line 1905
    const/4 v2, 0x1

    #@2a
    return v2

    #@2b
    .line 1893
    .end local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catch_0
    move-exception v1

    #@2c
    .line 1895
    .local v1, "re":Landroid/os/RemoteException;
    return v4

    #@2d
    .line 1897
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 7
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 1909
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-static {v4}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 1910
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    #@9
    .line 1911
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    #@c
    move-result v6

    #@d
    .line 1910
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1912
    .local v3, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v3, :cond_0

    #@15
    monitor-exit v5

    #@16
    .line 1913
    return-void

    #@17
    .line 1915
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1a
    move-result v2

    #@1b
    .line 1916
    .local v2, "printJobCount":I
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@1e
    .line 1917
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/print/PrintJobInfo;

    #@24
    .line 1918
    .local v1, "oldPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v4, v6}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_1

    #@32
    .line 1919
    invoke-interface {v3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 1916
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .end local v1    # "oldPrintJob":Landroid/print/PrintJobInfo;
    :cond_2
    monitor-exit v5

    #@39
    .line 1908
    return-void

    #@3a
    .line 1909
    .end local v0    # "i":I
    .end local v2    # "printJobCount":I
    .end local v3    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v4

    #@3b
    monitor-exit v5

    #@3c
    throw v4
.end method
