.class public abstract Landroid/os/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TokenWatcher$Death;
    }
.end annotation


# instance fields
.field private volatile greylist-max-o mAcquired:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mNotificationQueue:I

.field private greylist-max-o mNotificationTask:Ljava/lang/Runnable;

.field private greylist-max-o mTag:Ljava/lang/String;

.field private greylist-max-o mTokens:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/TokenWatcher$Death;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNotificationQueue(Landroid/os/TokenWatcher;)I
    .registers 1

    iget p0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/os/TokenWatcher;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTokens(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;
    .registers 1

    iget-object p0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotificationQueue(Landroid/os/TokenWatcher;I)V
    .registers 2

    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "tag"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Landroid/os/TokenWatcher$1;

    invoke-direct {v0, p0}, Landroid/os/TokenWatcher$1;-><init>(Landroid/os/TokenWatcher;)V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 50
    iput-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    .line 51
    if-eqz p2, :cond_1d

    move-object v0, p2

    goto :goto_1f

    :cond_1d
    const-string v0, "TokenWatcher"

    :goto_1f
    iput-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private greylist-max-o dumpInternal()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 150
    :try_start_8
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 151
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Token count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 154
    .local v5, "b":Landroid/os/IBinder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/TokenWatcher$Death;

    iget-object v7, v7, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    nop

    .end local v5    # "b":Landroid/os/IBinder;
    add-int/lit8 v3, v3, 0x1

    .line 156
    goto :goto_2f

    .line 157
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v3    # "i":I
    :cond_73
    monitor-exit v1

    .line 158
    return-object v0

    .line 157
    :catchall_75
    move-exception v2

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_8 .. :try_end_77} :catchall_75

    throw v2
.end method

.method private greylist-max-o sendNotificationLocked(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 180
    move v0, p1

    .line 181
    .local v0, "value":I
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 183
    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 184
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    .line 186
    :cond_10
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-eq v1, v0, :cond_1d

    .line 188
    iput v2, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 189
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public whitelist acquire(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 82
    monitor-exit v0

    return-void

    .line 87
    :cond_d
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    .line 89
    .local v1, "oldSize":I
    new-instance v2, Landroid/os/TokenWatcher$Death;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/TokenWatcher$Death;-><init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_33

    .line 91
    .local v2, "d":Landroid/os/TokenWatcher$Death;
    const/4 v3, 0x0

    :try_start_19
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_30
    .catchall {:try_start_19 .. :try_end_1c} :catchall_33

    .line 94
    nop

    .line 95
    :try_start_1d
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    if-nez v1, :cond_2e

    iget-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-nez v3, :cond_2e

    .line 98
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 99
    iput-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 101
    .end local v1    # "oldSize":I
    .end local v2    # "d":Landroid/os/TokenWatcher$Death;
    :cond_2e
    monitor-exit v0

    .line 102
    return-void

    .line 92
    .restart local v1    # "oldSize":I
    .restart local v2    # "d":Landroid/os/TokenWatcher$Death;
    :catch_30
    move-exception v3

    .line 93
    .local v3, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 101
    .end local v1    # "oldSize":I
    .end local v2    # "d":Landroid/os/TokenWatcher$Death;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_33

    throw v1
.end method

.method public abstract whitelist acquired()V
.end method

.method public whitelist cleanup(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "unlink"    # Z

    .line 106
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher$Death;

    .line 108
    .local v1, "d":Landroid/os/TokenWatcher$Death;
    const/4 v2, 0x0

    if-eqz p2, :cond_18

    if-eqz v1, :cond_18

    .line 109
    iget-object v3, v1, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 110
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 113
    :cond_18
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-nez v3, :cond_29

    iget-boolean v3, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-eqz v3, :cond_29

    .line 114
    invoke-direct {p0, v2}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 115
    iput-boolean v2, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 117
    .end local v1    # "d":Landroid/os/TokenWatcher$Death;
    :cond_29
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist dump()V
    .registers 5

    .line 134
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_8

    .line 138
    :cond_1a
    return-void
.end method

.method public whitelist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 141
    invoke-direct {p0}, Landroid/os/TokenWatcher;->dumpInternal()Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_8

    .line 145
    :cond_18
    return-void
.end method

.method public whitelist isAcquired()Z
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    monitor-exit v0

    return v1

    .line 129
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist release(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    .line 123
    return-void
.end method

.method public abstract whitelist released()V
.end method
