.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@0
    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method private hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z
    .locals 5
    .param p1, "userState"    # Lcom/android/server/print/UserState;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 711
    const/4 v3, 0x3

    #@2
    .line 710
    invoke-virtual {p1, v3}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 713
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-nez v1, :cond_0

    #@8
    .line 714
    return v4

    #@9
    .line 717
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c
    move-result v2

    #@d
    .line 718
    .local v2, "numInstalledServices":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@10
    .line 719
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroid/printservice/PrintServiceInfo;

    #@16
    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    #@19
    move-result-object v3

    #@1a
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1c
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1e
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 721
    const/4 v3, 0x1

    #@25
    return v3

    #@26
    .line 718
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 725
    :cond_2
    return v4
.end method

.method private hasPrintService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 690
    new-instance v1, Landroid/content/Intent;

    #@3
    const-string/jumbo v3, "android.printservice.PrintService"

    #@6
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 691
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@c
    .line 693
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@e
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v3

    #@16
    .line 696
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@19
    move-result v4

    #@1a
    .line 695
    const v5, 0x10000004

    #@1d
    .line 693
    invoke-virtual {v3, v1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@20
    move-result-object v0

    #@21
    .line 698
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    #@23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    :cond_0
    :goto_0
    return v2

    #@2a
    :cond_1
    const/4 v2, 0x1

    #@2b
    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stoppedPackages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    .line 760
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    #@5
    move-result-object v7

    #@6
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@9
    move-result v8

    #@a
    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@d
    move-result v7

    #@e
    if-nez v7, :cond_0

    #@10
    const/4 v7, 0x0

    #@11
    return v7

    #@12
    .line 761
    :cond_0
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@14
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@17
    move-result-object v8

    #@18
    monitor-enter v8

    #@19
    .line 765
    :try_start_0
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@1b
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@1e
    move-result v9

    #@1f
    .line 766
    const/4 v10, 0x0

    #@20
    .line 765
    invoke-static {v7, v9, v10}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    #@23
    move-result-object v6

    #@24
    .line 767
    .local v6, "userState":Lcom/android/server/print/UserState;
    const/4 v5, 0x0

    #@25
    .line 770
    .local v5, "stoppedSomePackages":Z
    const/4 v7, 0x1

    #@26
    .line 769
    invoke-virtual {v6, v7}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result-object v2

    #@2a
    .line 771
    .local v2, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-nez v2, :cond_1

    #@2c
    .line 772
    const/4 v7, 0x0

    #@2d
    monitor-exit v8

    #@2e
    return v7

    #@2f
    .line 775
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v3

    #@33
    .line 776
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/printservice/PrintServiceInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v7

    #@37
    if-eqz v7, :cond_5

    #@39
    .line 777
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v7

    #@3d
    check-cast v7, Landroid/printservice/PrintServiceInfo;

    #@3f
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    #@42
    move-result-object v0

    #@43
    .line 778
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 779
    .local v1, "componentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    #@48
    array-length v9, p2

    #@49
    :goto_1
    if-ge v7, v9, :cond_2

    #@4b
    aget-object v4, p2, v7

    #@4d
    .line 780
    .local v4, "stoppedPackage":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result v10

    #@51
    if-eqz v10, :cond_4

    #@53
    .line 781
    if-nez p4, :cond_3

    #@55
    .line 782
    const/4 v7, 0x1

    #@56
    monitor-exit v8

    #@57
    return v7

    #@58
    .line 784
    :cond_3
    const/4 v5, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 779
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 789
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "componentPackage":Ljava/lang/String;
    .end local v4    # "stoppedPackage":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    #@5f
    .line 790
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 792
    :cond_6
    const/4 v7, 0x0

    #@63
    monitor-exit v8

    #@64
    return v7

    #@65
    .line 761
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/printservice/PrintServiceInfo;>;"
    .end local v5    # "stoppedSomePackages":Z
    .end local v6    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v7

    #@66
    monitor-exit v8

    #@67
    throw v7
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    return-void

    #@11
    .line 799
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@13
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    monitor-enter v2

    #@18
    .line 800
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 801
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@20
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@23
    move-result v3

    #@24
    .line 802
    const/4 v4, 0x0

    #@25
    .line 801
    invoke-static {v1, v3, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    #@28
    move-result-object v0

    #@29
    .line 803
    .local v0, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    :cond_1
    monitor-exit v2

    #@2d
    .line 797
    return-void

    #@2e
    .line 799
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    return-void

    #@11
    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@13
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@16
    move-result v2

    #@17
    const/4 v3, 0x0

    #@18
    invoke-static {v1, v2, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    #@1b
    move-result-object v0

    #@1c
    .line 733
    .local v0, "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@1e
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    monitor-enter v2

    #@23
    .line 734
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_1

    #@29
    .line 735
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    #@2c
    move-result v1

    #@2d
    .line 734
    if-eqz v1, :cond_2

    #@2f
    .line 736
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :cond_2
    monitor-exit v2

    #@33
    .line 740
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    #@36
    .line 729
    return-void

    #@37
    .line 733
    :catchall_0
    move-exception v1

    #@38
    monitor-exit v2

    #@39
    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@9
    move-result v2

    #@a
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    return-void

    #@11
    .line 746
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@13
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@16
    move-result v2

    #@17
    const/4 v3, 0x0

    #@18
    invoke-static {v1, v2, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    #@1b
    move-result-object v0

    #@1c
    .line 748
    .local v0, "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@1e
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    monitor-enter v2

    #@23
    .line 749
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 750
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_1
    monitor-exit v2

    #@2d
    .line 754
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    #@30
    .line 744
    return-void

    #@31
    .line 748
    :catchall_0
    move-exception v1

    #@32
    monitor-exit v2

    #@33
    throw v1
.end method
