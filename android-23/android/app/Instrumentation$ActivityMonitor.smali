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
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 438
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@7
    .line 441
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@9
    .line 458
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@b
    .line 459
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    #@d
    .line 460
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    #@f
    .line 461
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    #@11
    .line 457
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
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 438
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@7
    .line 441
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@9
    .line 479
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@b
    .line 480
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    #@d
    .line 481
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    #@f
    .line 482
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    #@11
    .line 478
    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .locals 1

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@2
    return-object v0
.end method

.method public final getHits()I
    .locals 1

    #@0
    .prologue
    .line 512
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    #@2
    return v0
.end method

.method public final getLastActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method public final getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    #@0
    .prologue
    .line 497
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    #@2
    return-object v0
.end method

.method public final isBlocking()Z
    .locals 1

    #@0
    .prologue
    .line 505
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
    .line 573
    monitor-enter p0

    #@3
    .line 574
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 575
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    #@9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v2

    #@d
    .line 576
    const-string/jumbo v3, "Instrumentation"

    #@10
    const/4 v4, 0x1

    #@11
    .line 575
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
    .line 577
    return v5

    #@19
    .line 579
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 580
    const/4 v0, 0x0

    #@1e
    .line 581
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_4

    #@20
    .line 582
    invoke-virtual {p2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 586
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
    .line 590
    :cond_2
    if-eqz p2, :cond_3

    #@34
    .line 591
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@36
    .line 592
    invoke-virtual {p0}, Landroid/app/Instrumentation$ActivityMonitor;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    :cond_3
    monitor-exit p0

    #@3a
    .line 594
    return v6

    #@3b
    .line 583
    .restart local v0    # "cls":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3e
    move-result-object v1

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 584
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
    .line 587
    return v5

    #@4c
    .line 573
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
    .line 530
    monitor-enter p0

    #@1
    .line 531
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v2, :cond_0

    #@5
    .line 533
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Instrumentation$ActivityMonitor;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    goto :goto_0

    #@9
    .line 534
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@b
    .line 537
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@d
    .line 538
    .local v1, "res":Landroid/app/Activity;
    const/4 v2, 0x0

    #@e
    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 539
    return-object v1

    #@12
    .line 530
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
    .line 553
    monitor-enter p0

    #@2
    .line 554
    :try_start_0
    iget-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v2, :cond_0

    #@6
    .line 556
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/app/Instrumentation$ActivityMonitor;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9
    .line 560
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
    .line 561
    return-object v3

    #@f
    .line 557
    :catch_0
    move-exception v0

    #@10
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@11
    .line 563
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    #@13
    .line 564
    .local v1, "res":Landroid/app/Activity;
    const/4 v2, 0x0

    #@14
    iput-object v2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 565
    return-object v1

    #@18
    .line 553
    .end local v1    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v2

    #@19
    monitor-exit p0

    #@1a
    throw v2
.end method
