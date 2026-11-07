.class public abstract Landroid/icu/impl/ICUNotifier;
.super Ljava/lang/Object;
.source "ICUNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUNotifier$NotifyThread;
    }
.end annotation


# instance fields
.field private blacklist listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist notifyLock:Ljava/lang/Object;

.field private blacklist notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract blacklist acceptsListener(Ljava/util/EventListener;)Z
.end method

.method public blacklist addListener(Ljava/util/EventListener;)V
    .registers 5
    .param p1, "l"    # Ljava/util/EventListener;

    .line 47
    if-eqz p1, :cond_40

    .line 51
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUNotifier;->acceptsListener(Ljava/util/EventListener;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 52
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_b
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-nez v1, :cond_17

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    goto :goto_2e

    .line 57
    :cond_17
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    .line 58
    .local v2, "ll":Ljava/util/EventListener;
    if-ne v2, p1, :cond_2d

    .line 59
    monitor-exit v0

    return-void

    .line 61
    .end local v2    # "ll":Ljava/util/EventListener;
    :cond_2d
    goto :goto_1d

    .line 64
    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    .line 69
    return-void

    .line 65
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw v1

    .line 67
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener invalid for this notifier."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist notifyChanged()V
    .registers 5

    .line 103
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_32

    .line 105
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    if-nez v1, :cond_1d

    .line 106
    new-instance v1, Landroid/icu/impl/ICUNotifier$NotifyThread;

    invoke-direct {v1, p0}, Landroid/icu/impl/ICUNotifier$NotifyThread;-><init>(Landroid/icu/impl/ICUNotifier;)V

    iput-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    .line 107
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUNotifier$NotifyThread;->setDaemon(Z)V

    .line 108
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    invoke-virtual {v1}, Landroid/icu/impl/ICUNotifier$NotifyThread;->start()V

    .line 110
    :cond_1d
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    iget-object v3, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/EventListener;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/EventListener;

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue([Ljava/util/EventListener;)V

    .line 112
    :cond_32
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method protected abstract blacklist notifyListener(Ljava/util/EventListener;)V
.end method

.method public blacklist removeListener(Ljava/util/EventListener;)V
    .registers 5
    .param p1, "l"    # Ljava/util/EventListener;

    .line 77
    if-eqz p1, :cond_30

    .line 80
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_5
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    if-eqz v1, :cond_2b

    .line 83
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_f

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 87
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_29

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    .line 90
    :cond_29
    monitor-exit v0

    return-void

    .line 94
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :cond_2b
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v1

    .line 78
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
