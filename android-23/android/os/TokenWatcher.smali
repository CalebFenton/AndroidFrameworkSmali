.class public abstract Landroid/os/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TokenWatcher$Death;,
        Landroid/os/TokenWatcher$1;
    }
.end annotation


# instance fields
.field private volatile mAcquired:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationQueue:I

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private mTokens:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/TokenWatcher$Death;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/os/TokenWatcher;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/os/TokenWatcher;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/os/TokenWatcher;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    #@2
    return p1
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 147
    new-instance v0, Landroid/os/TokenWatcher$1;

    #@5
    invoke-direct {v0, p0}, Landroid/os/TokenWatcher$1;-><init>(Landroid/os/TokenWatcher;)V

    #@8
    iput-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    #@a
    .line 210
    new-instance v0, Ljava/util/WeakHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@11
    .line 213
    const/4 v0, -0x1

    #@12
    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    #@14
    .line 214
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    #@17
    .line 44
    iput-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    #@19
    .line 45
    if-eqz p2, :cond_0

    #@1b
    .end local p2    # "tag":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    #@1d
    .line 42
    return-void

    #@1e
    .line 45
    .restart local p2    # "tag":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "TokenWatcher"

    #@21
    goto :goto_0
.end method

.method private dumpInternal()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 135
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@7
    monitor-enter v6

    #@8
    .line 136
    :try_start_0
    iget-object v5, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@a
    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v4

    #@e
    .line 137
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v7, "Token count: "

    #@16
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    iget-object v7, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@1c
    invoke-virtual {v7}, Ljava/util/WeakHashMap;->size()I

    #@1f
    move-result v7

    #@20
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 138
    const/4 v3, 0x0

    #@2c
    .line 139
    .local v3, "i":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v2

    #@30
    .local v2, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_0

    #@36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/os/IBinder;

    #@3c
    .line 140
    .local v1, "b":Landroid/os/IBinder;
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v7, "["

    #@44
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    const-string/jumbo v7, "] "

    #@4f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    iget-object v5, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@55
    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    check-cast v5, Landroid/os/TokenWatcher$Death;

    #@5b
    iget-object v5, v5, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    #@5d
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    const-string/jumbo v7, " - "

    #@64
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    .line 141
    add-int/lit8 v3, v3, 0x1

    #@75
    goto :goto_0

    #@76
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_0
    monitor-exit v6

    #@77
    .line 144
    return-object v0

    #@78
    .line 135
    .end local v2    # "b$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v5

    #@79
    monitor-exit v6

    #@7a
    throw v5
.end method

.method private sendNotificationLocked(Z)V
    .locals 3
    .param p1, "on"    # Z

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 166
    if-eqz p1, :cond_1

    #@3
    const/4 v0, 0x1

    #@4
    .line 167
    .local v0, "value":I
    :goto_0
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    #@6
    if-ne v1, v2, :cond_2

    #@8
    .line 169
    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    #@a
    .line 170
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    #@c
    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    #@e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@11
    .line 164
    :cond_0
    :goto_1
    return-void

    #@12
    .line 166
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    #@13
    .restart local v0    # "value":I
    goto :goto_0

    #@14
    .line 172
    :cond_2
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    #@16
    if-eq v1, v0, :cond_0

    #@18
    .line 174
    iput v2, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    #@1a
    .line 175
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    #@1c
    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    #@1e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@21
    goto :goto_1
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@2
    monitor-enter v4

    #@3
    .line 73
    :try_start_0
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    #@8
    move-result v2

    #@9
    .line 75
    .local v2, "oldSize":I
    new-instance v0, Landroid/os/TokenWatcher$Death;

    #@b
    invoke-direct {v0, p0, p1, p2}, Landroid/os/TokenWatcher$Death;-><init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 77
    .local v0, "d":Landroid/os/TokenWatcher$Death;
    const/4 v3, 0x0

    #@f
    :try_start_1
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 81
    :try_start_2
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@14
    invoke-virtual {v3, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 83
    if-nez v2, :cond_0

    #@19
    iget-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    if-eqz v3, :cond_1

    #@1d
    :cond_0
    :goto_0
    monitor-exit v4

    #@1e
    .line 68
    return-void

    #@1f
    .line 78
    :catch_0
    move-exception v1

    #@20
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v4

    #@21
    .line 79
    return-void

    #@22
    .line 84
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x1

    #@23
    :try_start_3
    invoke-direct {p0, v3}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    #@26
    .line 85
    const/4 v3, 0x1

    #@27
    iput-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 70
    .end local v0    # "d":Landroid/os/TokenWatcher$Death;
    .end local v2    # "oldSize":I
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3
.end method

.method public abstract acquired()V
.end method

.method public cleanup(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "unlink"    # Z

    #@0
    .prologue
    .line 92
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@2
    monitor-enter v2

    #@3
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/TokenWatcher$Death;

    #@b
    .line 94
    .local v0, "d":Landroid/os/TokenWatcher$Death;
    if-eqz p2, :cond_0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 95
    iget-object v1, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@15
    .line 96
    const/4 v1, 0x0

    #@16
    iput-object v1, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    #@18
    .line 99
    :cond_0
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@1a
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_1

    #@20
    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 100
    const/4 v1, 0x0

    #@25
    invoke-direct {p0, v1}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    #@28
    .line 101
    const/4 v1, 0x0

    #@29
    iput-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    :cond_1
    monitor-exit v2

    #@2c
    .line 90
    return-void

    #@2d
    .line 92
    .end local v0    # "d":Landroid/os/TokenWatcher$Death;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method public dump()V
    .locals 4

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    .line 121
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 122
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    #@16
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    goto :goto_0

    #@1a
    .line 118
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    .line 128
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 129
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    goto :goto_0

    #@18
    .line 126
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public isAcquired()Z
    .locals 2

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    #@2
    monitor-enter v0

    #@3
    .line 114
    :try_start_0
    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 113
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public release(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 108
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    #@4
    .line 106
    return-void
.end method

.method public abstract released()V
.end method
