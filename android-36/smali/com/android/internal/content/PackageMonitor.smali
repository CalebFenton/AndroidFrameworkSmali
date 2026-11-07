.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;
    }
.end annotation


# static fields
.field public static final greylist-max-o PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final greylist-max-o PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final greylist-max-o PACKAGE_UNCHANGED:I = 0x0

.field public static final greylist-max-o PACKAGE_UPDATING:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "PackageMonitor"


# instance fields
.field greylist-max-o mAppearingPackages:[Ljava/lang/String;

.field greylist-max-o mChangeType:I

.field greylist-max-o mChangeUserId:I

.field greylist-max-o mDisappearingPackages:[Ljava/lang/String;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mModifiedComponents:[Ljava/lang/String;

.field greylist-max-o mModifiedPackages:[Ljava/lang/String;

.field blacklist mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

.field greylist-max-o mRegisteredContext:Landroid/content/Context;

.field greylist-max-o mRegisteredHandler:Landroid/os/Handler;

.field greylist-max-o mSomePackagesChanged:Z

.field final blacklist mSupportsPackageRestartQuery:Z

.field greylist-max-o mTempArray:[Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$bSKEInwdT6Kd7GAyzMZPsXTTqeQ(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostHandlePackageEvent(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->postHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 75
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->packageRestartQueryDisabledByDefault()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "supportsPackageRestartQuery"    # Z

    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    .line 83
    iput-boolean p1, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    .line 84
    return-void
.end method

.method private blacklist getPackageFilter()Landroid/content/IntentFilter;
    .registers 4

    .line 87
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    .line 89
    .local v0, "isCore":Z
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    if-eqz v0, :cond_1e

    .line 94
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 96
    :cond_1e
    return-object v1
.end method

.method private synthetic blacklist lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist postHandlePackageEvent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_e

    .line 435
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 437
    :cond_e
    return-void
.end method


# virtual methods
.method public greylist-max-o anyPackagesAppearing()Z
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o anyPackagesDisappearing()Z
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o didSomePackagesChange()Z
    .registers 2

    .line 339
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method public final blacklist doHandlePackageEvent(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .line 445
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 447
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    if-ne v0, v1, :cond_27

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent broadcast does not contain user handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 451
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 454
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 455
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "android.intent.extra.REPLACING"

    const-string v6, "android.intent.extra.UID"

    const/4 v7, 0x1

    if-eqz v3, :cond_97

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 464
    .local v6, "uid":I
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 465
    if-eqz v3, :cond_93

    .line 466
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 467
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v8, v2

    .line 468
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 469
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 470
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 471
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 472
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 473
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_87

    .line 476
    :cond_7b
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 477
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 478
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 480
    :goto_87
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 481
    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 483
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_93
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_26f

    :cond_97
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 486
    .restart local v6    # "uid":I
    if-eqz v3, :cond_102

    .line 487
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 488
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v8, v2

    .line 489
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 490
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 491
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    .line 492
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 493
    const-string v4, "android.intent.extra.ARCHIVAL"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 497
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f6

    .line 501
    :cond_d6
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 505
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 506
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 507
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 508
    const-string v4, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 509
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    .line 510
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 513
    :cond_f6
    :goto_f6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 514
    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 516
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_102
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_26f

    :cond_106
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 518
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 519
    .local v5, "uid":I
    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 521
    if-eqz v3, :cond_145

    .line 522
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 523
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v2

    .line 524
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 525
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 526
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 528
    :cond_134
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 529
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 532
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_145
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_26f

    :cond_149
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 534
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 535
    .local v2, "uid":I
    if-eqz v3, :cond_15e

    .line 536
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 538
    .end local v2    # "uid":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_15e
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_26f

    :cond_162
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_18f

    .line 539
    const-string v3, "android.intent.extra.PACKAGES"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 540
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 541
    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 543
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 541
    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    move-result p1

    .line 544
    move-object v3, v7

    .local p1, "canRestart":Z
    if-eqz p1, :cond_18d

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    .line 545
    .end local p1    # "canRestart":Z
    :cond_18d
    goto/16 :goto_26f

    .end local v8    # "intent":Landroid/content/Intent;
    .local p1, "intent":Landroid/content/Intent;
    :cond_18f
    move-object v3, p0

    move-object v8, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string p1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b8

    .line 546
    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 547
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 548
    iget-object v4, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 549
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 548
    const/4 v6, 0x1

    move-object v2, v3

    move-object v3, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    move-object v3, v2

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto/16 :goto_26f

    .line 550
    :cond_1b8
    const-string p1, "android.intent.action.UID_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c9

    .line 551
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_26f

    .line 552
    :cond_1c9
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v9, "android.intent.extra.changed_package_list"

    if-eqz p1, :cond_1fb

    .line 553
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 554
    .local p1, "pkgList":[Ljava/lang/String;
    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 555
    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 556
    move v4, v7

    goto :goto_1e2

    :cond_1e1
    nop

    :goto_1e2
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 557
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 558
    if-eqz p1, :cond_1f9

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1ec
    array-length v4, p1

    if-ge v2, v4, :cond_1f9

    .line 561
    aget-object v4, p1, v2

    iget v5, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ec

    .line 564
    .end local v2    # "i":I
    .end local p1    # "pkgList":[Ljava/lang/String;
    :cond_1f9
    goto/16 :goto_26f

    :cond_1fb
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22a

    .line 565
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 566
    .restart local p1    # "pkgList":[Ljava/lang/String;
    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 567
    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 568
    move v4, v7

    goto :goto_212

    :cond_211
    nop

    :goto_212
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 569
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 570
    if-eqz p1, :cond_229

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 572
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_21c
    array-length v4, p1

    if-ge v2, v4, :cond_229

    .line 573
    aget-object v4, p1, v2

    iget v5, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_21c

    .line 576
    .end local v2    # "i":I
    .end local p1    # "pkgList":[Ljava/lang/String;
    :cond_229
    goto :goto_26f

    :cond_22a
    const-string p1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23c

    .line 577
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 578
    .restart local p1    # "pkgList":[Ljava/lang/String;
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    .line 580
    .end local p1    # "pkgList":[Ljava/lang/String;
    goto :goto_26f

    :cond_23c
    const-string p1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24e

    .line 581
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 582
    .restart local p1    # "pkgList":[Ljava/lang/String;
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .end local p1    # "pkgList":[Ljava/lang/String;
    goto :goto_26e

    .line 584
    :cond_24e
    const-string p1, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26e

    .line 585
    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 586
    .local p1, "pkgName":Ljava/lang/String;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 587
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 588
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 589
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 588
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_26f

    .line 584
    .end local p1    # "pkgName":Ljava/lang/String;
    :cond_26e
    :goto_26e
    nop

    .line 592
    :goto_26f
    iget-boolean p1, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz p1, :cond_276

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    .line 596
    :cond_276
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    .line 597
    iput v1, v3, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 598
    return-void
.end method

.method public greylist-max-o getChangingUserId()I
    .registers 2

    .line 418
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return v0
.end method

.method greylist-max-o getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 422
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 423
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 424
    .local v1, "pkg":Ljava/lang/String;
    :goto_c
    return-object v1
.end method

.method public greylist-max-o getRegisteredHandler()Landroid/os/Handler;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public greylist-max-o isComponentModified(Ljava/lang/String;)Z
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 390
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_1e

    .line 393
    :cond_8
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_1d

    .line 394
    iget-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 395
    return v2

    .line 393
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 398
    .end local v1    # "i":I
    :cond_1d
    return v0

    .line 391
    :cond_1e
    :goto_1e
    return v0
.end method

.method public greylist-max-o isPackageAppearing(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 344
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1b

    .line 345
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 346
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 344
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 350
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageDisappearing(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 360
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1b

    .line 361
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 362
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 360
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 366
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageModified(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 380
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_19

    .line 381
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 382
    return v1

    .line 380
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 386
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isReplacing()Z
    .registers 3

    .line 374
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public greylist-max-o onBeginPackageChanges()V
    .registers 1

    .line 162
    return-void
.end method

.method public greylist-max-o onFinishPackageChanges()V
    .registers 1

    .line 405
    return-void
.end method

.method public greylist-max-o onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 264
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onPackageAdded(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 168
    return-void
.end method

.method public blacklist onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 175
    return-void
.end method

.method public greylist-max-o onPackageAppeared(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 307
    return-void
.end method

.method public blacklist onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 314
    return-void
.end method

.method public greylist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    if-eqz p3, :cond_14

    .line 245
    array-length v1, p3

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v3, p3, v2

    .line 246
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 247
    const/4 v0, 0x1

    return v0

    .line 245
    .end local v3    # "name":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 251
    :cond_14
    return v0
.end method

.method public blacklist onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 260
    return-void
.end method

.method public greylist-max-o onPackageDataCleared(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 408
    return-void
.end method

.method public greylist-max-o onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 295
    return-void
.end method

.method public blacklist onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 301
    return-void
.end method

.method public greylist-max-o onPackageModified(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 320
    return-void
.end method

.method public blacklist onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 327
    return-void
.end method

.method public greylist onPackageRemoved(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 182
    return-void
.end method

.method public greylist-max-o onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 196
    return-void
.end method

.method public blacklist onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 203
    return-void
.end method

.method public blacklist onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 189
    return-void
.end method

.method public blacklist onPackageStateChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 415
    return-void
.end method

.method public blacklist onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 336
    return-void
.end method

.method public greylist-max-o onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 216
    return-void
.end method

.method public blacklist onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 223
    return-void
.end method

.method public greylist-max-o onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 206
    return-void
.end method

.method public blacklist onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 213
    return-void
.end method

.method public greylist-max-o onPackagesAvailable([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .line 275
    return-void
.end method

.method public greylist-max-o onPackagesSuspended([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .line 281
    return-void
.end method

.method public greylist-max-o onPackagesUnavailable([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .line 278
    return-void
.end method

.method public greylist-max-o onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .line 284
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    .line 430
    return-void
.end method

.method public greylist-max-o onSomePackagesChanged()V
    .registers 1

    .line 402
    return-void
.end method

.method public greylist-max-o onUidRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 272
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "externalStorage"    # Z

    .line 107
    nop

    .line 108
    if-nez p2, :cond_8

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    :goto_d
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 109
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 102
    return-void
.end method

.method public blacklist register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 115
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_5e

    .line 118
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 119
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    .line 120
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz v0, :cond_2c

    .line 121
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;->getPackageFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 122
    .local v4, "filter":Landroid/content/IntentFilter;
    if-eqz p2, :cond_22

    .line 123
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_2f

    .line 125
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "user":Landroid/os/UserHandle;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :cond_22
    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "user":Landroid/os/UserHandle;
    const/4 p1, 0x0

    iget-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v4, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_2f

    .line 120
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :cond_2c
    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    .line 128
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "user":Landroid/os/UserHandle;
    :goto_2f
    iget-object p1, v2, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-nez p1, :cond_5d

    .line 129
    iget-object p1, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 130
    .local p1, "pm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_5d

    .line 131
    new-instance p2, Landroid/os/HandlerExecutor;

    iget-object v0, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 132
    new-instance p2, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-direct {p2, p0}, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;-><init>(Lcom/android/internal/content/PackageMonitor;)V

    iput-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    .line 133
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    goto :goto_58

    :cond_52
    iget-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    .line 134
    .local p2, "userId":I
    :goto_58
    iget-object v0, v2, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V

    .line 137
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "userId":I
    :cond_5d
    return-void

    .line 116
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "user":Landroid/os/UserHandle;
    .local p1, "context":Landroid/content/Context;
    .local p2, "user":Landroid/os/UserHandle;
    :cond_5e
    move-object v1, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "user":Landroid/os/UserHandle;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist unregister()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 148
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz v0, :cond_d

    .line 149
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    :cond_d
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 153
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-eqz v1, :cond_1e

    .line 154
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    .line 156
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    .line 157
    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 158
    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 159
    return-void

    .line 146
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
