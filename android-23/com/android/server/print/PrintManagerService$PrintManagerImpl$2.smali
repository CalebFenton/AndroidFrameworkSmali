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
    .line 496
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method private persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 5
    .param p1, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 604
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 605
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "componentName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/content/ComponentName;

    #@15
    .line 606
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v3

    #@19
    if-lez v3, :cond_0

    #@1b
    .line 607
    const/16 v3, 0x3a

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 609
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 611
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2a
    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@31
    move-result-object v3

    #@32
    .line 612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 611
    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@39
    .line 603
    return-void
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
    const/4 v7, 0x0

    #@1
    .line 546
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@3
    invoke-static {v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@6
    move-result-object v8

    #@7
    monitor-enter v8

    #@8
    .line 550
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@a
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@d
    move-result v9

    #@e
    invoke-static {v6, v9}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    #@11
    move-result-object v5

    #@12
    .line 551
    .local v5, "userState":Lcom/android/server/print/UserState;
    const/4 v4, 0x0

    #@13
    .line 552
    .local v4, "stoppedSomePackages":Z
    invoke-virtual {v5}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    #@16
    move-result-object v6

    #@17
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .line 554
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_3

    #@21
    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/ComponentName;

    #@27
    .line 556
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 557
    .local v1, "componentPackage":Ljava/lang/String;
    array-length v9, p2

    #@2c
    move v6, v7

    #@2d
    :goto_1
    if-ge v6, v9, :cond_0

    #@2f
    aget-object v3, p2, v6

    #@31
    .line 558
    .local v3, "stoppedPackage":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    move-result v10

    #@35
    if-eqz v10, :cond_2

    #@37
    .line 559
    if-nez p4, :cond_1

    #@39
    .line 560
    const/4 v6, 0x1

    #@3a
    monitor-exit v8

    #@3b
    return v6

    #@3c
    .line 562
    :cond_1
    const/4 v4, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 557
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@40
    goto :goto_1

    #@41
    .line 567
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "componentPackage":Ljava/lang/String;
    .end local v3    # "stoppedPackage":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    #@43
    .line 568
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    :cond_4
    monitor-exit v8

    #@47
    .line 570
    return v7

    #@48
    .line 546
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v4    # "stoppedSomePackages":Z
    .end local v5    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v6

    #@49
    monitor-exit v8

    #@4a
    throw v6
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 579
    new-instance v4, Landroid/content/Intent;

    #@2
    const-string/jumbo v7, "android.printservice.PrintService"

    #@5
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 580
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@b
    .line 582
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@d
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    #@10
    move-result-object v7

    #@11
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14
    move-result-object v7

    #@15
    .line 584
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@18
    move-result v8

    #@19
    .line 583
    const/4 v9, 0x4

    #@1a
    .line 582
    invoke-virtual {v7, v4, v9, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@1d
    move-result-object v3

    #@1e
    .line 586
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_0

    #@20
    .line 587
    return-void

    #@21
    .line 590
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@24
    move-result v2

    #@25
    .line 591
    .local v2, "installedServiceCount":I
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@28
    .line 592
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Landroid/content/pm/ResolveInfo;

    #@2e
    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@30
    .line 593
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    #@32
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@34
    .line 594
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@36
    .line 593
    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 595
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@3b
    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v6, v7}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@46
    move-result-object v7

    #@47
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 597
    .local v5, "label":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@4d
    .line 598
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@50
    move-result v8

    #@51
    .line 597
    invoke-static {v7, v0, v5, v8}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/content/ComponentName;Ljava/lang/String;I)V

    #@54
    .line 591
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_0

    #@57
    .line 575
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 499
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 503
    const/4 v2, 0x0

    #@8
    .line 504
    .local v2, "servicesChanged":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@a
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@d
    move-result v6

    #@e
    invoke-static {v4, v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    #@11
    move-result-object v3

    #@12
    .line 505
    .local v3, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .line 506
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/ComponentName;

    #@26
    .line 508
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 509
    const/4 v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 512
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    if-eqz v2, :cond_2

    #@34
    .line 513
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    :cond_2
    monitor-exit v5

    #@38
    .line 498
    return-void

    #@39
    .line 499
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@3a
    monitor-exit v5

    #@3b
    throw v4
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 520
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    monitor-enter v5

    #@7
    .line 524
    const/4 v2, 0x0

    #@8
    .line 525
    .local v2, "servicesRemoved":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@a
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@d
    move-result v6

    #@e
    invoke-static {v4, v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;

    #@11
    move-result-object v3

    #@12
    .line 526
    .local v3, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .line 527
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/content/ComponentName;

    #@26
    .line 529
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_0

    #@30
    .line 530
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@33
    .line 531
    const/4 v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 534
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    if-eqz v2, :cond_2

    #@37
    .line 536
    const-string/jumbo v4, "enabled_print_services"

    #@3a
    .line 537
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledServices()Ljava/util/Set;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    #@41
    move-result v7

    #@42
    .line 535
    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    #@45
    .line 538
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    :cond_2
    monitor-exit v5

    #@49
    .line 519
    return-void

    #@4a
    .line 520
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4
.end method
