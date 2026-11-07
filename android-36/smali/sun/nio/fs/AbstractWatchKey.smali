.class abstract Lsun/nio/fs/AbstractWatchKey;
.super Ljava/lang/Object;
.source "AbstractWatchKey.java"

# interfaces
.implements Ljava/nio/file/WatchKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractWatchKey$State;,
        Lsun/nio/fs/AbstractWatchKey$Event;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist MAX_EVENT_LIST_SIZE:I = 0x200

.field static final blacklist OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/fs/AbstractWatchKey$Event<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist dir:Ljava/nio/file/Path;

.field private blacklist events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/WatchEvent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist lastModifyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/nio/file/WatchEvent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist state:Lsun/nio/fs/AbstractWatchKey$State;

.field private final blacklist watcher:Lsun/nio/fs/AbstractWatchService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    nop

    .line 45
    new-instance v0, Lsun/nio/fs/AbstractWatchKey$Event;

    sget-object v1, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    sput-object v0, Lsun/nio/fs/AbstractWatchKey;->OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V
    .registers 4
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "watcher"    # Lsun/nio/fs/AbstractWatchService;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    .line 71
    iput-object p1, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    .line 72
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public final whitelist test-api pollEvents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/WatchEvent<",
            "*>;>;"
        }
    .end annotation

    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 166
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/WatchEvent<*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 167
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 168
    monitor-exit p0

    return-object v0

    .line 169
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/WatchEvent<*>;>;"
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final whitelist test-api reset()Z
    .registers 3

    .line 174
    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 176
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 177
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    goto :goto_1f

    .line 180
    :cond_1a
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V

    .line 183
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 184
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method final blacklist signal()V
    .registers 3

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_10

    .line 95
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 96
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V

    .line 98
    :cond_10
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method final blacklist signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    .registers 8
    .param p2, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 106
    .local p1, "kind":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v0, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 107
    .local v0, "isModify":Z
    :goto_7
    monitor-enter p0

    .line 108
    :try_start_8
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 109
    .local v1, "size":I
    if-lez v1, :cond_68

    .line 112
    iget-object v2, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/WatchEvent;

    .line 113
    .local v2, "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-interface {v2}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-eq v3, v4, :cond_60

    .line 114
    invoke-interface {v2}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    if-ne p1, v3, :cond_33

    .line 115
    invoke-interface {v2}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_60

    .line 123
    :cond_33
    iget-object v3, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    .line 124
    if-eqz v0, :cond_51

    .line 125
    iget-object v3, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/WatchEvent;

    .line 126
    .local v3, "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    if-eqz v3, :cond_50

    .line 127
    nop

    .line 128
    move-object v4, v3

    check-cast v4, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-virtual {v4}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V

    .line 129
    monitor-exit p0

    return-void

    .line 131
    .end local v3    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    :cond_50
    goto :goto_56

    .line 134
    :cond_51
    iget-object v3, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_56
    :goto_56
    const/16 v3, 0x200

    if-lt v1, v3, :cond_68

    .line 141
    sget-object v3, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    move-object p1, v3

    .line 142
    const/4 v0, 0x0

    .line 143
    const/4 p2, 0x0

    goto :goto_68

    .line 117
    :cond_60
    :goto_60
    move-object v3, v2

    check-cast v3, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-virtual {v3}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V

    .line 118
    monitor-exit p0

    return-void

    .line 148
    .end local v2    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    :cond_68
    :goto_68
    new-instance v2, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-direct {v2, p1, p2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 150
    .local v2, "ev":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<Ljava/lang/Object;>;"
    if-eqz v0, :cond_75

    .line 151
    iget-object v3, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 152
    :cond_75
    sget-object v3, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v3, :cond_83

    .line 154
    iget-object v3, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 155
    iget-object v3, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 157
    :cond_83
    :goto_83
    iget-object v3, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->signal()V

    .line 159
    .end local v1    # "size":I
    .end local v2    # "ev":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<Ljava/lang/Object;>;"
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_8d
    move-exception v1

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public blacklist watchable()Ljava/nio/file/Path;
    .registers 2

    .line 86
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api watchable()Ljava/nio/file/Watchable;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->watchable()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method final blacklist watcher()Lsun/nio/fs/AbstractWatchService;
    .registers 2

    .line 78
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    return-object v0
.end method
