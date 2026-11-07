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
.field private final greylist-max-o mBlock:Z

.field private final greylist-max-o mClass:Ljava/lang/String;

.field greylist-max-o mHits:I

.field private final greylist-max-o mIgnoreMatchingSpecificIntents:Z

.field greylist-max-o mLastActivity:Landroid/app/Activity;

.field private final greylist-max-o mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final greylist-max-o mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 668
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 724
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 725
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 726
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 727
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 729
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .registers 6
    .param p1, "which"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 668
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 685
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 686
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 687
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 688
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 689
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 690
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .registers 6
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 668
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 707
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 708
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 709
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 710
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 711
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 712
    return-void
.end method


# virtual methods
.method public final whitelist getFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 745
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final whitelist getHits()I
    .registers 2

    .line 768
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final whitelist getLastActivity()Landroid/app/Activity;
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final whitelist getResult()Landroid/app/Instrumentation$ActivityResult;
    .registers 2

    .line 753
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method final greylist-max-o ignoreMatchingSpecificIntents()Z
    .registers 2

    .line 738
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    return v0
.end method

.method public final whitelist isBlocking()Z
    .registers 2

    .line 761
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final greylist-max-o match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 870
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 871
    return v1

    .line 873
    :cond_6
    monitor-enter p0

    .line 874
    :try_start_7
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 875
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Instrumentation"

    invoke-virtual {v0, v3, p3, v2, v4}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1c

    .line 877
    monitor-exit p0

    return v1

    .line 879
    :cond_1c
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_48

    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_2d

    .line 882
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_3c

    .line 883
    :cond_2d
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 884
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 886
    :cond_3c
    :goto_3c
    if-eqz v0, :cond_46

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 887
    :cond_46
    monitor-exit p0

    return v1

    .line 890
    .end local v0    # "cls":Ljava/lang/String;
    :cond_48
    if-eqz p2, :cond_4f

    .line 891
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 892
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 894
    :cond_4f
    monitor-exit p0

    return v2

    .line 895
    :catchall_51
    move-exception v0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public blacklist onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 5
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 835
    invoke-virtual {p0, p2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 853
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onStartActivityResult(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "bOptions"    # Landroid/os/Bundle;

    .line 865
    return-void
.end method

.method public final whitelist waitForActivity()Landroid/app/Activity;
    .registers 3

    .line 786
    monitor-enter p0

    .line 787
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_b

    .line 789
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    .line 791
    :goto_8
    goto :goto_1

    .line 790
    :catch_9
    move-exception v0

    goto :goto_8

    .line 793
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 794
    .local v0, "res":Landroid/app/Activity;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 795
    monitor-exit p0

    return-object v0

    .line 796
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final whitelist waitForActivityWithTimeout(J)Landroid/app/Activity;
    .registers 5
    .param p1, "timeOut"    # J

    .line 809
    monitor-enter p0

    .line 810
    :try_start_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_a

    .line 812
    :try_start_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_17

    .line 814
    goto :goto_a

    .line 813
    :catch_9
    move-exception v0

    .line 816
    :cond_a
    :goto_a
    :try_start_a
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 817
    monitor-exit p0

    return-object v1

    .line 819
    :cond_11
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 820
    .local v0, "res":Landroid/app/Activity;
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 821
    monitor-exit p0

    return-object v0

    .line 823
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw v0
.end method
