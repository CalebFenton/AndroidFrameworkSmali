.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$ActivityLifecycleCallbacks;,
        Landroid/app/Application$OnProvideAssistDataListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Application"


# instance fields
.field private greylist mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mAssistCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$OnProvideAssistDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallbacksController:Landroid/content/ComponentCallbacksController;

.field public greylist mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 60
    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    .line 235
    return-void
.end method

.method private greylist collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 586
    :try_start_4
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 587
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 589
    :cond_13
    monitor-exit v1

    .line 590
    return-object v0

    .line 589
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v2
.end method

.method private blacklist getLoadedApkInfo()Ljava/lang/String;
    .registers 3

    .line 238
    iget-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    if-nez v0, :cond_8

    .line 239
    const-string/jumbo v0, "null"

    return-object v0

    .line 241
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    iget-object v1, v1, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getProcessName()Ljava/lang/String;
    .registers 1

    .line 336
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final greylist attach(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 347
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 348
    return-void
.end method

.method blacklist dispatchActivityConfigurationChanged(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 573
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 576
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityConfigurationChanged(Landroid/app/Activity;)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 580
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 365
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 367
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 368
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 372
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist dispatchActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 554
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 557
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 560
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist dispatchActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 458
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 459
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 461
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 464
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 377
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 380
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 384
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPostDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 564
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 565
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 567
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostDestroyed(Landroid/app/Activity;)V

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 570
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPostPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 468
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 469
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 471
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostPaused(Landroid/app/Activity;)V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 474
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPostResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 438
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 439
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 441
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostResumed(Landroid/app/Activity;)V

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 444
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 533
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 534
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 536
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 540
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPostStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 408
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 411
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 414
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPostStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 498
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 499
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 501
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPostStopped(Landroid/app/Activity;)V

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 504
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 353
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 354
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 356
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 360
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPreDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 544
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 545
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 546
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 547
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreDestroyed(Landroid/app/Activity;)V

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 550
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPrePaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 448
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 450
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 451
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPrePaused(Landroid/app/Activity;)V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 454
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPreResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 418
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 421
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreResumed(Landroid/app/Activity;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 424
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 509
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 511
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 512
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 516
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPreStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 388
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 389
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 391
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 394
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-r dispatchActivityPreStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 478
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 479
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 481
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPreStopped(Landroid/app/Activity;)V

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 484
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist dispatchActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 428
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 429
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 431
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 434
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 521
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 523
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 524
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 528
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist dispatchActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 398
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 399
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 401
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 404
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist dispatchActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 488
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 489
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 490
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 491
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 494
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method greylist-max-o dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 595
    monitor-enter p0

    .line 596
    :try_start_1
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 597
    monitor-exit p0

    return-void

    .line 599
    :cond_7
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 600
    .local v0, "callbacks":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    .line 601
    if-eqz v0, :cond_1e

    .line 602
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 603
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$OnProvideAssistDataListener;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 606
    .end local v1    # "i":I
    :cond_1e
    return-void

    .line 600
    .end local v0    # "callbacks":[Ljava/lang/Object;
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 11

    .line 611
    invoke-super {p0}, Landroid/content/ContextWrapper;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 612
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v0, :cond_7

    .line 613
    return-object v0

    .line 615
    :cond_7
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    const-string v2, "Application"

    if-eqz v1, :cond_12

    .line 616
    const-string v1, "getAutofillClient(): null on super, trying to find activity thread"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_12
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 622
    .local v1, "activityThread":Landroid/app/ActivityThread;
    const/4 v3, 0x0

    if-nez v1, :cond_1a

    .line 623
    return-object v3

    .line 625
    :cond_1a
    iget-object v4, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 626
    .local v4, "activityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v4, :cond_98

    .line 627
    iget-object v6, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 628
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 629
    .local v6, "record":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v6, :cond_2e

    .line 630
    goto :goto_95

    .line 632
    :cond_2e
    iget-object v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 633
    .local v7, "activity":Landroid/app/Activity;
    if-nez v7, :cond_33

    .line 634
    goto :goto_95

    .line 636
    :cond_33
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    const-string v9, ": "

    if-eqz v8, :cond_60

    .line 637
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_5b

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAutofillClient(): found top resumed activity for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_5b
    invoke-virtual {v7}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    return-object v2

    .line 646
    :cond_60
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_95

    .line 647
    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_90

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAutofillClient(): found focused activity for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_90
    invoke-virtual {v7}, Landroid/app/Activity;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    return-object v2

    .line 626
    .end local v6    # "record":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_95
    :goto_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 654
    .end local v5    # "i":I
    :cond_98
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_c2

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAutofillClient(): none of the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " activities on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are top resumed nor have focus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_c2
    return-object v3
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 279
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    return-void
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 265
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->dispatchLowMemory()V

    .line 285
    return-void
.end method

.method public whitelist onTerminate()V
    .registers 1

    .line 275
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 3
    .param p1, "level"    # I

    .line 289
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchTrimMemory(I)V

    .line 290
    return-void
.end method

.method public whitelist registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 301
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 293
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 294
    return-void
.end method

.method public whitelist registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    .line 317
    :cond_c
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    monitor-exit p0

    .line 319
    return-void

    .line 318
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .param p1, "callback"    # Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 307
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 308
    :try_start_3
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 297
    iget-object v0, p0, Landroid/app/Application;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 298
    return-void
.end method

.method public whitelist unregisterOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/Application$OnProvideAssistDataListener;

    .line 322
    monitor-enter p0

    .line 323
    :try_start_1
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 324
    iget-object v0, p0, Landroid/app/Application;->mAssistCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    :cond_a
    monitor-exit p0

    .line 327
    return-void

    .line 326
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method
