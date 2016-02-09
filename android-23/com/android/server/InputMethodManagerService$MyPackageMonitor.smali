.class Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    #@0
    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 3

    #@0
    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    #@3
    move-result v1

    #@4
    .line 606
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@6
    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@8
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@b
    move-result v2

    #@c
    if-ne v1, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    .line 612
    .local v0, "retval":Z
    :goto_0
    return v0

    #@10
    .line 606
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x0

    #@11
    .restart local v0    # "retval":Z
    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 617
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 618
    return v6

    #@9
    .line 620
    :cond_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@b
    iget-object v7, v5, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@d
    monitor-enter v7

    #@e
    .line 621
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@10
    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@12
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 622
    .local v1, "curInputMethodId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@18
    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    .line 623
    .local v0, "N":I
    if-eqz v1, :cond_4

    #@20
    .line 624
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@23
    .line 625
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@25
    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    #@2d
    .line 626
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_3

    #@37
    .line 627
    array-length v8, p2

    #@38
    move v5, v6

    #@39
    :goto_1
    if-ge v5, v8, :cond_3

    #@3b
    aget-object v4, p2, v5

    #@3d
    .line 628
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@40
    move-result-object v9

    #@41
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_2

    #@47
    .line 629
    if-nez p4, :cond_1

    #@49
    monitor-exit v7

    #@4a
    .line 630
    return v10

    #@4b
    .line 632
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@4d
    const-string/jumbo v6, ""

    #@50
    invoke-static {v5, v6}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    #@53
    .line 633
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@55
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    monitor-exit v7

    #@59
    .line 634
    return v10

    #@5a
    .line 627
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 624
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_0

    #@60
    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    monitor-exit v7

    #@61
    .line 641
    return v6

    #@62
    .line 620
    .end local v0    # "N":I
    .end local v1    # "curInputMethodId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@63
    monitor-exit v7

    #@64
    throw v5
.end method

.method public onSomePackagesChanged()V
    .locals 15

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    #@3
    move-result v10

    #@4
    if-nez v10, :cond_0

    #@6
    .line 647
    return-void

    #@7
    .line 649
    :cond_0
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@9
    iget-object v11, v10, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@b
    monitor-enter v11

    #@c
    .line 650
    const/4 v3, 0x0

    #@d
    .line 651
    .local v3, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@f
    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@11
    invoke-virtual {v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 652
    .local v4, "curInputMethodId":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@17
    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v0

    #@1d
    .line 653
    .local v0, "N":I
    if-eqz v4, :cond_5

    #@1f
    .line 654
    const/4 v6, 0x0

    #@20
    .end local v3    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_5

    #@22
    .line 655
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@24
    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v7

    #@2a
    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    #@2c
    .line 656
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    .line 657
    .local v8, "imiId":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v10

    #@34
    if-eqz v10, :cond_1

    #@36
    .line 658
    move-object v3, v7

    #@37
    .line 661
    :cond_1
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@3a
    move-result-object v10

    #@3b
    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    #@3e
    move-result v1

    #@3f
    .line 662
    .local v1, "change":I
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@42
    move-result-object v10

    #@43
    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_2

    #@49
    .line 663
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@4b
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get0(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    #@4e
    move-result-object v10

    #@4f
    invoke-static {v10, v8}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->-wrap0(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    #@52
    .line 665
    :cond_2
    const/4 v10, 0x2

    #@53
    if-eq v1, v10, :cond_3

    #@55
    .line 666
    const/4 v10, 0x3

    #@56
    if-ne v1, v10, :cond_4

    #@58
    .line 667
    :cond_3
    const-string/jumbo v10, "InputMethodManagerService"

    #@5b
    new-instance v12, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v13, "Input method uninstalled, disabling: "

    #@63
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v12

    #@67
    .line 668
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    #@6a
    move-result-object v13

    #@6b
    .line 667
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v12

    #@6f
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v12

    #@73
    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 669
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@78
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@7b
    move-result-object v12

    #@7c
    const/4 v13, 0x0

    #@7d
    invoke-virtual {v10, v12, v13}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    #@80
    .line 654
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@82
    goto :goto_0

    #@83
    .line 674
    .end local v1    # "change":I
    .end local v6    # "i":I
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "imiId":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@85
    .line 675
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@87
    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    #@89
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@8b
    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    #@8d
    const/4 v14, 0x0

    #@8e
    .line 674
    invoke-virtual {v10, v12, v13, v14}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;Z)V

    #@91
    .line 677
    const/4 v2, 0x0

    #@92
    .line 679
    .local v2, "changed":Z
    if-eqz v3, :cond_7

    #@94
    .line 680
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9b
    move-result v1

    #@9c
    .line 681
    .restart local v1    # "change":I
    const/4 v10, 0x2

    #@9d
    if-eq v1, v10, :cond_6

    #@9f
    .line 682
    const/4 v10, 0x3

    #@a0
    if-ne v1, v10, :cond_7

    #@a2
    .line 683
    :cond_6
    const/4 v9, 0x0

    #@a3
    .line 685
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    :try_start_1
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@a5
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    #@a8
    move-result-object v10

    #@a9
    .line 686
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    #@ac
    move-result-object v12

    #@ad
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@af
    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    #@b1
    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    #@b4
    move-result v13

    #@b5
    const/4 v14, 0x0

    #@b6
    .line 685
    invoke-interface {v10, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b9
    move-result-object v9

    #@ba
    .line 689
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v9, :cond_7

    #@bc
    .line 692
    :try_start_2
    const-string/jumbo v10, "InputMethodManagerService"

    #@bf
    new-instance v12, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v13, "Current input method removed: "

    #@c7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v12

    #@cb
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v12

    #@cf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v12

    #@d3
    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 693
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@d8
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@da
    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    #@dc
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@de
    iget v13, v13, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    #@e0
    const/4 v14, 0x0

    #@e1
    invoke-static {v10, v12, v14, v13}, Lcom/android/server/InputMethodManagerService;->-wrap5(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V

    #@e4
    .line 694
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@e6
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    #@e9
    move-result v10

    #@ea
    if-nez v10, :cond_7

    #@ec
    .line 695
    const/4 v2, 0x1

    #@ed
    .line 696
    const/4 v3, 0x0

    #@ee
    .line 697
    .restart local v3    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    const-string/jumbo v10, "InputMethodManagerService"

    #@f1
    const-string/jumbo v12, "Unsetting current input method"

    #@f4
    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    .line 698
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@f9
    const-string/jumbo v12, ""

    #@fc
    invoke-static {v10, v12}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    #@ff
    .line 704
    .end local v1    # "change":I
    .end local v3    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_7
    if-nez v3, :cond_a

    #@101
    .line 707
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@103
    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    #@106
    move-result v2

    #@107
    .line 714
    .end local v2    # "changed":Z
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    #@109
    .line 715
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    #@10b
    const/4 v12, 0x0

    #@10c
    invoke-virtual {v10, v12}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10f
    :cond_9
    monitor-exit v11

    #@110
    .line 645
    return-void

    #@111
    .line 708
    .restart local v2    # "changed":Z
    :cond_a
    if-nez v2, :cond_8

    #@113
    :try_start_3
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@116
    move-result-object v10

    #@117
    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@11a
    move-result v10

    #@11b
    if-eqz v10, :cond_8

    #@11d
    .line 711
    const/4 v2, 0x1

    #@11e
    goto :goto_2

    #@11f
    .line 649
    .end local v0    # "N":I
    .end local v2    # "changed":Z
    .end local v4    # "curInputMethodId":Ljava/lang/String;
    :catchall_0
    move-exception v10

    #@120
    monitor-exit v11

    #@121
    throw v10

    #@122
    .line 687
    .restart local v0    # "N":I
    .restart local v1    # "change":I
    .restart local v2    # "changed":Z
    .restart local v4    # "curInputMethodId":Ljava/lang/String;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v5

    #@123
    .local v5, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method
