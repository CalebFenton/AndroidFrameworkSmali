.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final mBlock:Z

.field private final mClass:Ljava/lang/String;

.field mHits:I

.field mLastActivity:Landroid/app/Activity;

.field private final mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "which"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 449
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@7
    .line 452
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@9
    .line 469
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@b
    .line 470
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    #@d
    .line 471
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    #@f
    .line 472
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    #@11
    .line 468
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 449
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@7
    .line 452
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@9
    .line 490
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@b
    .line 491
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    #@d
    .line 492
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    #@f
    .line 493
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    #@11
    .line 489
    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .locals 1

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@2
    return-object v0
.end method

.method public final getHits()I
    .locals 1

    #@0
    .prologue
    .line 523
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@2
    return v0
.end method

.method public final getLastActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method public final getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    #@0
    .prologue
    .line 508
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    #@2
    return-object v0
.end method

.method public final isBlocking()Z
    .locals 1

    #@0
    .prologue
    .line 516
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    #@2
    return v0
.end method

.method final match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 584
    monitor-enter p0

    #@3
    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 586
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v2

    #@d
    .line 587
    const-string/jumbo v3, "Instrumentation"

    #@10
    const/4 v4, 0x1

    #@11
    .line 586
    invoke-virtual {v1, v2, p3, v4, v3}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    if-gez v1, :cond_0

    #@17
    monitor-exit p0

    #@18
    .line 588
    return v5

    #@19
    .line 590
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 591
    const/4 v0, 0x0

    #@1e
    .line 592
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_4

    #@20
    .line 593
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 597
    .end local v0    # "cls":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    #@2a
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_5

    #@32
    .line 601
    :cond_2
    if-eqz p2, :cond_3

    #@34
    .line 602
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@36
    .line 603
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    :cond_3
    monitor-exit p0

    #@3a
    .line 605
    return v6

    #@3b
    .line 594
    .restart local v0    # "cls":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3e
    move-result-object v1

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 595
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    move-result-object v0

    #@49
    .local v0, "cls":Ljava/lang/String;
    goto :goto_0

    #@4a
    .end local v0    # "cls":Ljava/lang/String;
    :cond_5
    monitor-exit p0

    #@4b
    .line 598
    return v5

    #@4c
    .line 584
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit p0

    #@4e
    throw v1
.end method

.method public final waitForActivity()Landroid/app/Activity;
    .locals 3

    #@0
    .prologue
    .line 541
    monitor-enter p0

    #@1
    .line 542
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    .line 544
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 545
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@b
    .line 548
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@d
    .line 549
    .local v1, "res":Landroid/app/Activity;
    const/4 v2, 0x0

    #@e
    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 550
    return-object v1

    #@12
    .line 541
    .end local v1    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v2

    #@13
    monitor-exit p0

    #@14
    throw v2
.end method

.method public final waitForActivityWithTimeout(J)Landroid/app/Activity;
    .locals 5
    .param p1, "timeOut"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 564
    monitor-enter p0

    #@2
    .line 565
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v2, :cond_0

    #@6
    .line 567
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    .line 571
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b
    if-nez v2, :cond_1

    #@d
    monitor-exit p0

    #@e
    .line 572
    return-object v3

    #@f
    .line 568
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@11
    .line 574
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@13
    .line 575
    .local v1, "res":Landroid/app/Activity;
    const/4 v2, 0x0

    #@14
    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 576
    return-object v1

    #@18
    .line 564
    .end local v1    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit p0

    #@1a
    throw v2
.end method
