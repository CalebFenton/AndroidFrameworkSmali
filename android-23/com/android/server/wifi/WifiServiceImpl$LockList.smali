.class Lcom/android/server/wifi/WifiServiceImpl$LockList;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 0
    .param p1, "lock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->dump(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    #@0
    .prologue
    .line 1522
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1523
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@c
    .line 1522
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$LockList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@3
    return-void
.end method

.method private addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 1
    .param p1, "lock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@0
    .prologue
    .line 1553
    iget-object v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 1554
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 1552
    :cond_0
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1579
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@12
    .line 1580
    .local v0, "l":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    const-string/jumbo v2, "    "

    #@15
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    .line 1581
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1b
    goto :goto_0

    #@1c
    .line 1578
    .end local v0    # "l":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :cond_0
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1570
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    .line 1571
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 1572
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@c
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@12
    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 1573
    return v0

    #@17
    .line 1571
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 1575
    :cond_1
    const/4 v2, -0x1

    #@1b
    return v2
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1559
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    #@3
    move-result v0

    #@4
    .line 1560
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 1561
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@8
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@e
    .line 1562
    .local v1, "ret":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->unlinkDeathRecipient()V

    #@11
    .line 1563
    return-object v1

    #@12
    .line 1565
    .end local v1    # "ret":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :cond_0
    const/4 v2, 0x0

    #@13
    return-object v2
.end method


# virtual methods
.method declared-synchronized getStrongestLockMode()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    monitor-exit p0

    #@b
    .line 1532
    return v2

    #@c
    .line 1535
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@e
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->-get1(Lcom/android/server/wifi/WifiServiceImpl;)I

    #@11
    move-result v0

    #@12
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@14
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get2(Lcom/android/server/wifi/WifiServiceImpl;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result v1

    #@18
    if-le v0, v1, :cond_1

    #@1a
    .line 1536
    const/4 v0, 0x3

    #@1b
    monitor-exit p0

    #@1c
    return v0

    #@1d
    .line 1539
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@1f
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)I

    #@22
    move-result v0

    #@23
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@25
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get4(Lcom/android/server/wifi/WifiServiceImpl;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    move-result v1

    #@29
    if-le v0, v1, :cond_2

    #@2b
    monitor-exit p0

    #@2c
    .line 1540
    return v2

    #@2d
    .line 1543
    :cond_2
    const/4 v0, 0x2

    #@2e
    monitor-exit p0

    #@2f
    return v0

    #@30
    :catchall_0
    move-exception v0

    #@31
    monitor-exit p0

    #@32
    throw v0
.end method

.method declared-synchronized hasLocks()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1527
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    monitor-exit p0

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method declared-synchronized updateWorkSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1547
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@4
    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@6
    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 1548
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@10
    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@12
    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    #@14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@1a
    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@1c
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1547
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    :cond_0
    monitor-exit p0

    #@23
    .line 1546
    return-void

    #@24
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1
.end method
