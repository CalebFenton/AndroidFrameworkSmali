.class public Landroid/media/Utils$ListenerList;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Utils$ListenerList$Listener;,
        Landroid/media/Utils$ListenerList$ListenerWithCancellation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mClearCallingIdentity:Z

.field private final blacklist mForceRemoveConsistency:Z

.field private blacklist mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/media/Utils$ListenerList$ListenerWithCancellation<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictSingleCallerOnEvent:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmForceRemoveConsistency(Landroid/media/Utils$ListenerList;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRestrictSingleCallerOnEvent(Landroid/media/Utils$ListenerList;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 508
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/media/Utils$ListenerList;-><init>(ZZZ)V

    .line 511
    return-void
.end method

.method public constructor blacklist <init>(ZZZ)V
    .registers 5
    .param p1, "restrictSingleCallerOnEvent"    # Z
    .param p2, "clearCallingIdentity"    # Z
    .param p3, "forceRemoveConsistency"    # Z

    .line 534
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    .line 535
    iput-boolean p1, p0, Landroid/media/Utils$ListenerList;->mRestrictSingleCallerOnEvent:Z

    .line 536
    iput-boolean p2, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    .line 537
    iput-boolean p3, p0, Landroid/media/Utils$ListenerList;->mForceRemoveConsistency:Z

    .line 538
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/Utils$ListenerList$Listener<",
            "TV;>;)V"
        }
    .end annotation

    .line 574
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    .local p3, "listener":Landroid/media/Utils$ListenerList$Listener;, "Landroid/media/Utils$ListenerList$Listener<TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    new-instance v0, Landroid/media/Utils$ListenerList$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/media/Utils$ListenerList$1;-><init>(Landroid/media/Utils$ListenerList;Ljava/util/concurrent/Executor;Landroid/media/Utils$ListenerList$Listener;)V

    .line 613
    .local v0, "listenerWithCancellation":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 616
    :try_start_11
    iget-object v2, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    monitor-exit v1

    .line 618
    return-void

    .line 617
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public blacklist notify(ILjava/lang/Object;)V
    .registers 9
    .param p1, "eventCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 650
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    .local p2, "info":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 651
    :try_start_3
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 652
    monitor-exit v0

    return-void

    .line 654
    :cond_d
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 655
    .local v1, "listeners":[Ljava/lang/Object;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_4a

    .line 658
    iget-boolean v0, p0, Landroid/media/Utils$ListenerList;->mClearCallingIdentity:Z

    if-eqz v0, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 660
    .local v0, "identity":Ljava/lang/Long;
    :goto_26
    :try_start_26
    array-length v2, v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_35

    aget-object v4, v1, v3

    .line 661
    .local v4, "object":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    .line 663
    .local v5, "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    invoke-interface {v5, p1, p2}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->onEvent(ILjava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_3f

    .line 660
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 666
    :cond_35
    if-eqz v0, :cond_3e

    .line 667
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    :cond_3e
    return-void

    .line 666
    :catchall_3f
    move-exception v2

    if-eqz v0, :cond_49

    .line 667
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    :cond_49
    throw v2

    .line 655
    .end local v0    # "identity":Ljava/lang/Long;
    .end local v1    # "listeners":[Ljava/lang/Object;
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public blacklist remove(Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 626
    .local p0, "this":Landroid/media/Utils$ListenerList;, "Landroid/media/Utils$ListenerList<TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 630
    :try_start_6
    iget-object v1, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Utils$ListenerList$ListenerWithCancellation;

    .line 631
    .local v1, "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    if-nez v1, :cond_12

    .line 632
    monitor-exit v0

    return-void

    .line 634
    :cond_12
    iget-object v2, p0, Landroid/media/Utils$ListenerList;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 638
    invoke-interface {v1}, Landroid/media/Utils$ListenerList$ListenerWithCancellation;->cancel()V

    .line 639
    return-void

    .line 635
    .end local v1    # "listener":Landroid/media/Utils$ListenerList$ListenerWithCancellation;, "Landroid/media/Utils$ListenerList$ListenerWithCancellation<TV;>;"
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method
