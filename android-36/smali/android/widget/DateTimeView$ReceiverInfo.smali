.class Landroid/widget/DateTimeView$ReceiverInfo;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation


# instance fields
.field private final greylist-max-o mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/DateTimeView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mObserver:Landroid/database/ContentObserver;

.field private final greylist-max-o mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    .line 606
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo$1;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 623
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo$2;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mObserver:Landroid/database/ContentObserver;

    .line 630
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/DateTimeView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>()V

    return-void
.end method

.method static final greylist-max-o getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 679
    .local v0, "ac":Landroid/content/Context;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_10

    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method static synthetic blacklist lambda$updateAll$0(Landroid/widget/DateTimeView;)V
    .registers 1
    .param p0, "view"    # Landroid/widget/DateTimeView;

    .line 658
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->clearFormatAndUpdate()V

    return-void
.end method


# virtual methods
.method public greylist-max-o addView(Landroid/widget/DateTimeView;)V
    .registers 5
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .line 633
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 635
    .local v1, "register":Z
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    if-eqz v1, :cond_1b

    .line 637
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    .line 639
    .end local v1    # "register":Z
    :cond_1b
    monitor-exit v0

    .line 640
    return-void

    .line 639
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method greylist-max-o getSoonestUpdateTime()J
    .registers 9

    .line 664
    const-wide v0, 0x7fffffffffffffffL

    .line 665
    .local v0, "result":J
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v2

    .line 666
    :try_start_8
    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 667
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_25

    .line 668
    iget-object v5, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/DateTimeView;

    invoke-static {v5}, Landroid/widget/DateTimeView;->-$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J

    move-result-wide v5

    .line 669
    .local v5, "time":J
    cmp-long v7, v5, v0

    if-gez v7, :cond_22

    .line 670
    move-wide v0, v5

    .line 667
    .end local v5    # "time":J
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 673
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_25
    monitor-exit v2

    .line 674
    return-wide v0

    .line 673
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v3
.end method

.method greylist-max-o register(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 683
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 684
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 689
    return-void
.end method

.method public greylist-max-o removeView(Landroid/widget/DateTimeView;)V
    .registers 5
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .line 643
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 647
    .local v1, "removed":Z
    if-eqz v1, :cond_1e

    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 648
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 650
    .end local v1    # "removed":Z
    :cond_1e
    monitor-exit v0

    .line 651
    return-void

    .line 650
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public greylist-max-o setHandler(Landroid/os/Handler;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 696
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    .line 697
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 698
    :try_start_5
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 699
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    invoke-virtual {v1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 700
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    invoke-virtual {v1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    .line 702
    :cond_2c
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method greylist-max-o unregister(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 692
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 693
    return-void
.end method

.method greylist-max-o updateAll()V
    .registers 6

    .line 654
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 656
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_20

    .line 657
    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DateTimeView;

    .line 658
    .local v3, "view":Landroid/widget/DateTimeView;
    new-instance v4, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;-><init>(Landroid/widget/DateTimeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/DateTimeView;->post(Ljava/lang/Runnable;)Z

    .line 656
    nop

    .end local v3    # "view":Landroid/widget/DateTimeView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 660
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_20
    monitor-exit v0

    .line 661
    return-void

    .line 660
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
