.class public Landroid/telephony/BinderCacheManager;
.super Ljava/lang/Object;
.source "BinderCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;,
        Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager$BinderInterfaceFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/BinderCacheManager<",
            "TT;>.BinderDeathTracker;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ZM_OVFx7nJDWGK_Q33UT2nrOPlU(Landroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/BinderCacheManager;->lambda$getTracker$0(Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/BinderCacheManager$BinderInterfaceFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<TT;>;"
    .local p1, "factory":Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;, "Landroid/telephony/BinderCacheManager$BinderInterfaceFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/telephony/BinderCacheManager;->mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/telephony/BinderCacheManager;->mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    return-void
.end method

.method private blacklist getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/telephony/BinderCacheManager<",
            "TT;>.BinderDeathTracker;"
        }
    .end annotation

    .line 184
    .local p0, "this":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<TT;>;"
    iget-object v0, p0, Landroid/telephony/BinderCacheManager;->mCachedConnection:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/BinderCacheManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    return-object v0
.end method

.method private synthetic blacklist lambda$getTracker$0(Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;
    .registers 6
    .param p1, "oldVal"    # Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    .line 185
    .local p0, "this":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<TT;>;"
    move-object v0, p1

    .line 188
    .local v0, "tracker":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 189
    :cond_a
    iget-object v2, p0, Landroid/telephony/BinderCacheManager;->mBinderInterfaceFactory:Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;

    invoke-interface {v2}, Landroid/telephony/BinderCacheManager$BinderInterfaceFactory;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 190
    .local v2, "binder":Landroid/os/IInterface;, "TT;"
    if-eqz v2, :cond_1a

    new-instance v3, Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    invoke-direct {v3, p0, v2}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;-><init>(Landroid/telephony/BinderCacheManager;Landroid/os/IInterface;)V

    goto :goto_1b

    :cond_1a
    move-object v3, v1

    :goto_1b
    move-object v0, v3

    .line 193
    .end local v2    # "binder":Landroid/os/IInterface;, "TT;"
    :cond_1c
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object v1, v0

    :cond_25
    return-object v1
.end method


# virtual methods
.method public blacklist getBinder()Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 160
    .local p0, "this":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<TT;>;"
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v0

    .line 161
    .local v0, "tracker":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public blacklist listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;
    .registers 6
    .param p1, "runnableKey"    # Ljava/lang/Object;
    .param p2, "deadRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 147
    .local p0, "this":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    if-nez p2, :cond_6

    goto :goto_18

    .line 148
    :cond_6
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v1

    .line 149
    .local v1, "tracker":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    if-nez v1, :cond_d

    return-object v0

    .line 151
    :cond_d
    invoke-virtual {v1, p1, p2}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->addListener(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    move-result v2

    .line 152
    .local v2, "addSucceeded":Z
    if-eqz v2, :cond_17

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v0

    :cond_17
    return-object v0

    .line 147
    .end local v1    # "tracker":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    .end local v2    # "addSucceeded":Z
    :cond_18
    :goto_18
    return-object v0
.end method

.method public blacklist removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;
    .registers 4
    .param p1, "runnableKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 172
    .local p0, "this":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 173
    :cond_4
    invoke-direct {p0}, Landroid/telephony/BinderCacheManager;->getTracker()Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object v1

    .line 174
    .local v1, "tracker":Landroid/telephony/BinderCacheManager$BinderDeathTracker;, "Landroid/telephony/BinderCacheManager<TT;>.BinderDeathTracker;"
    if-nez v1, :cond_b

    return-object v0

    .line 175
    :cond_b
    invoke-virtual {v1, p1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->removeListener(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->getConnection()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method
