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
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyLock:Ljava/lang/Object;

.field private notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    #@a
    .line 30
    return-void
.end method


# virtual methods
.method protected abstract acceptsListener(Ljava/util/EventListener;)Z
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 4
    .param p1, "l"    # Ljava/util/EventListener;

    #@0
    .prologue
    .line 43
    if-nez p1, :cond_0

    #@2
    .line 44
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUNotifier;->acceptsListener(Ljava/util/EventListener;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_4

    #@e
    .line 48
    iget-object v3, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    #@10
    monitor-enter v3

    #@11
    .line 49
    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@13
    if-nez v2, :cond_2

    #@15
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    #@17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@1c
    .line 60
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@1e
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v3

    #@22
    .line 42
    return-void

    #@23
    .line 53
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "ll$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_1

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/util/EventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 54
    .local v0, "ll":Ljava/util/EventListener;
    if-ne v0, p1, :cond_3

    #@37
    monitor-exit v3

    #@38
    .line 55
    return-void

    #@39
    .line 48
    .end local v0    # "ll":Ljava/util/EventListener;
    .end local v1    # "ll$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@3a
    monitor-exit v3

    #@3b
    throw v2

    #@3c
    .line 63
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3e
    const-string/jumbo v3, "Listener invalid for this notifier."

    #@41
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2
.end method

.method public notifyChanged()V
    .locals 4

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 100
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 102
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 103
    new-instance v0, Landroid/icu/impl/ICUNotifier$NotifyThread;

    #@11
    invoke-direct {v0, p0}, Landroid/icu/impl/ICUNotifier$NotifyThread;-><init>(Landroid/icu/impl/ICUNotifier;)V

    #@14
    iput-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    #@16
    .line 104
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    #@18
    const/4 v2, 0x1

    #@19
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUNotifier$NotifyThread;->setDaemon(Z)V

    #@1c
    .line 105
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    #@1e
    invoke-virtual {v0}, Landroid/icu/impl/ICUNotifier$NotifyThread;->start()V

    #@21
    .line 107
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->notifyThread:Landroid/icu/impl/ICUNotifier$NotifyThread;

    #@23
    iget-object v0, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@25
    iget-object v3, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@27
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@2a
    move-result v3

    #@2b
    new-array v3, v3, [Ljava/util/EventListener;

    #@2d
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, [Ljava/util/EventListener;

    #@33
    invoke-virtual {v2, v0}, Landroid/icu/impl/ICUNotifier$NotifyThread;->queue([Ljava/util/EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :cond_1
    monitor-exit v1

    #@37
    .line 98
    :cond_2
    return-void

    #@38
    .line 100
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0
.end method

.method protected abstract notifyListener(Ljava/util/EventListener;)V
.end method

.method public removeListener(Ljava/util/EventListener;)V
    .locals 3
    .param p1, "l"    # Ljava/util/EventListener;

    #@0
    .prologue
    .line 73
    if-nez p1, :cond_0

    #@2
    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 76
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/ICUNotifier;->notifyLock:Ljava/lang/Object;

    #@a
    monitor-enter v2

    #@b
    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@d
    if-eqz v1, :cond_3

    #@f
    .line 79
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v0

    #@15
    .line 80
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    if-ne v1, p1, :cond_1

    #@21
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@24
    .line 83
    iget-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;

    #@26
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_2

    #@2c
    .line 84
    const/4 v1, 0x0

    #@2d
    iput-object v1, p0, Landroid/icu/impl/ICUNotifier;->listeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_2
    monitor-exit v2

    #@30
    .line 86
    return-void

    #@31
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/EventListener;>;"
    :cond_3
    monitor-exit v2

    #@32
    .line 72
    return-void

    #@33
    .line 76
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method
