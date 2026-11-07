.class Landroid/app/ConfigurationChangedListenerController;
.super Ljava/lang/Object;
.source "ConfigurationChangedListenerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ConfigurationChangedListenerController$ListenerContainer;
    }
.end annotation


# instance fields
.field private final blacklist mListenerContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ConfigurationChangedListenerController$ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    return-void
.end method

.method private blacklist indexOf(Ljava/util/function/Consumer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    .line 86
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 87
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-virtual {v1, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->isMatch(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 88
    return v0

    .line 86
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-direct {p0, p2}, Landroid/app/ConfigurationChangedListenerController;->indexOf(Ljava/util/function/Consumer;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_c

    .line 51
    monitor-exit v0

    return-void

    .line 53
    :cond_c
    iget-object v1, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    new-instance v2, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-direct {v2, p1, p2}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method blacklist dispatchOnConfigurationChanged(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 76
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v1, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ConfigurationChangedListenerController$ListenerContainer;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 80
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;

    invoke-virtual {v2, p1}, Landroid/app/ConfigurationChangedListenerController$ListenerContainer;->accept(Landroid/os/IBinder;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 82
    .end local v0    # "i":I
    :cond_1e
    return-void

    .line 78
    .end local v1    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/app/ConfigurationChangedListenerController$ListenerContainer;>;"
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method blacklist removeListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/app/ConfigurationChangedListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    invoke-direct {p0, p1}, Landroid/app/ConfigurationChangedListenerController;->indexOf(Ljava/util/function/Consumer;)I

    move-result v1

    .line 64
    .local v1, "index":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_f

    .line 65
    iget-object v2, p0, Landroid/app/ConfigurationChangedListenerController;->mListenerContainers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    .end local v1    # "index":I
    :cond_f
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
