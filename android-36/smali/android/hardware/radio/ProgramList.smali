.class public final Landroid/hardware/radio/ProgramList;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramList$ListCallback;,
        Landroid/hardware/radio/ProgramList$OnCompleteListener;,
        Landroid/hardware/radio/ProgramList$OnCloseListener;,
        Landroid/hardware/radio/ProgramList$Chunk;,
        Landroid/hardware/radio/ProgramList$Filter;
    }
.end annotation


# instance fields
.field private greylist-max-o mIsClosed:Z

.field private greylist-max-o mIsComplete:Z

.field private final greylist-max-o mListCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$ListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

.field private final greylist-max-o mOnCompleteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramList$OnCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrograms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    .line 67
    return-void
.end method

.method static synthetic blacklist lambda$addOnCompleteListener$0(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .registers 3
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist putLocked(Landroid/hardware/radio/RadioManager$ProgramInfo;Ljava/util/Set;)V
    .registers 7
    .param p1, "value"    # Landroid/hardware/radio/RadioManager$ProgramInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p2, "changedIdentifierSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    new-instance v0, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 258
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/radio/UniqueProgramIdentifier;-><init>(Landroid/hardware/radio/ProgramSelector;)V

    .line 259
    .local v0, "key":Landroid/hardware/radio/UniqueProgramIdentifier;
    invoke-virtual {v0}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 260
    .local v1, "primaryKey":Landroid/hardware/radio/ProgramSelector$Identifier;
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 261
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_25
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method private blacklist removeLocked(Landroid/hardware/radio/UniqueProgramIdentifier;Ljava/util/List;)V
    .registers 7
    .param p1, "key"    # Landroid/hardware/radio/UniqueProgramIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/UniqueProgramIdentifier;",
            "Ljava/util/List<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p2, "removedIdentifierList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    invoke-virtual {p1}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 271
    .local v0, "primaryKey":Landroid/hardware/radio/ProgramSelector$Identifier;
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 272
    return-void

    .line 274
    :cond_13
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 275
    .local v1, "entries":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 276
    .local v2, "removed":Landroid/hardware/radio/RadioManager$ProgramInfo;
    if-nez v2, :cond_28

    return-void

    .line 277
    :cond_28
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_31

    .line 278
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_31
    return-void
.end method


# virtual methods
.method public whitelist addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 147
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 149
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsComplete:Z

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Landroid/hardware/radio/ProgramList$OnCompleteListener;->onComplete()V

    .line 151
    :cond_1b
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist addOnCompleteListener(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 140
    new-instance v0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    .line 141
    return-void
.end method

.method greylist-max-o apply(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 11
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 199
    .local v1, "changedSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "onCompleteListenersCopied":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramList$OnCompleteListener;>;"
    iget-object v3, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 201
    :try_start_12
    iget-boolean v4, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v4, :cond_18

    monitor-exit v3

    return-void

    .line 203
    :cond_18
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/radio/ProgramList;->mIsComplete:Z

    .line 204
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    .local v4, "listCallbacksCopied":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramList$ListCallback;>;"
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 209
    iget-object v5, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 210
    .local v5, "programsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;>;>;"
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 212
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 213
    .local v6, "removed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4d

    .line 214
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_4d
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 217
    .end local v6    # "removed":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;>;"
    goto :goto_32

    .line 220
    .end local v5    # "programsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;>;>;"
    :cond_51
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 221
    .local v5, "removedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/UniqueProgramIdentifier;>;"
    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 222
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-direct {p0, v6, v0}, Landroid/hardware/radio/ProgramList;->removeLocked(Landroid/hardware/radio/UniqueProgramIdentifier;Ljava/util/List;)V

    goto :goto_59

    .line 224
    :cond_69
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 225
    .local v6, "modifiedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :goto_71
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    .line 226
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-direct {p0, v7, v1}, Landroid/hardware/radio/ProgramList;->putLocked(Landroid/hardware/radio/RadioManager$ProgramInfo;Ljava/util/Set;)V

    goto :goto_71

    .line 229
    :cond_81
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_92

    .line 230
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/hardware/radio/ProgramList;->mIsComplete:Z

    .line 231
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v7

    .line 233
    .end local v5    # "removedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/UniqueProgramIdentifier;>;"
    .end local v6    # "modifiedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :cond_92
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_12 .. :try_end_93} :catchall_f4

    .line 235
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_b6

    .line 236
    const/4 v5, 0x0

    .local v5, "cbIndex":I
    :goto_9b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b3

    .line 237
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v6, v7}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    .line 235
    .end local v5    # "cbIndex":I
    :cond_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 240
    .end local v3    # "i":I
    :cond_b6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 241
    .local v3, "changedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    :goto_ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_da

    .line 242
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 243
    .local v5, "changedId":Landroid/hardware/radio/ProgramSelector$Identifier;
    const/4 v6, 0x0

    .local v6, "cbIndex":I
    :goto_c7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d9

    .line 244
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-virtual {v7, v5}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto :goto_c7

    .line 246
    .end local v5    # "changedId":Landroid/hardware/radio/ProgramSelector$Identifier;
    .end local v6    # "cbIndex":I
    :cond_d9
    goto :goto_ba

    .line 247
    :cond_da
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 248
    const/4 v5, 0x0

    .local v5, "cbIndex":I
    :goto_e1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f3

    .line 249
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-interface {v6}, Landroid/hardware/radio/ProgramList$OnCompleteListener;->onComplete()V

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 252
    .end local v5    # "cbIndex":I
    :cond_f3
    return-void

    .line 233
    .end local v3    # "changedIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/radio/ProgramSelector$Identifier;>;"
    .end local v4    # "listCallbacksCopied":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/ProgramList$ListCallback;>;"
    :catchall_f4
    move-exception v4

    :try_start_f5
    monitor-exit v3
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v4
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "onCompleteListenersCopied":Landroid/hardware/radio/ProgramList$OnCloseListener;
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_4
    iget-boolean v2, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v2, :cond_a

    monitor-exit v1

    return-void

    .line 180
    :cond_a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    .line 181
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 182
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 183
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 184
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    if-eqz v2, :cond_26

    .line 185
    iget-object v2, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    move-object v0, v2

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 188
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2d

    .line 190
    if-eqz v0, :cond_2c

    .line 191
    invoke-interface {v0}, Landroid/hardware/radio/ProgramList$OnCloseListener;->onClose()V

    .line 193
    :cond_2c
    return-void

    .line 188
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public whitelist get(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 5
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    const-string v2, "Primary identifier can not be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 317
    .local v1, "entries":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2b

    .line 318
    if-nez v1, :cond_16

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_16
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-object v0

    .line 317
    .end local v1    # "entries":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist getProgramInfos(Landroid/hardware/radio/ProgramSelector$Identifier;)Ljava/util/List;
    .registers 5
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 335
    const-string v0, "Primary identifier can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_8
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 339
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_23

    .line 341
    if-nez v1, :cond_19

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 344
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 339
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist registerListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 119
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 121
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist registerListCallback(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 104
    new-instance v0, Landroid/hardware/radio/ProgramList$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/radio/ProgramList$1;-><init>(Landroid/hardware/radio/ProgramList;Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ProgramList;->registerListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V

    .line 113
    return-void
.end method

.method public whitelist removeOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 158
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 160
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCompleteListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method greylist-max-o setOnCloseListener(Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 165
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    if-nez v1, :cond_b

    .line 169
    iput-object p1, p0, Landroid/hardware/radio/ProgramList;->mOnCloseListener:Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 167
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Close callback is already set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/radio/ProgramList;
    .end local p1    # "listener":Landroid/hardware/radio/ProgramList$OnCloseListener;
    throw v1

    .line 170
    .restart local p0    # "this":Landroid/hardware/radio/ProgramList;
    .restart local p1    # "listener":Landroid/hardware/radio/ProgramList$OnCloseListener;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist toList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 291
    iget-object v3, p0, Landroid/hardware/radio/ProgramList;->mPrograms:Landroid/util/ArrayMap;

    .line 292
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 293
    .local v3, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    nop

    .end local v3    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/hardware/radio/UniqueProgramIdentifier;Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 295
    .end local v2    # "index":I
    :cond_24
    monitor-exit v1

    .line 296
    return-object v0

    .line 295
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public whitelist unregisterListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 129
    iget-object v0, p0, Landroid/hardware/radio/ProgramList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/ProgramList;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 131
    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/ProgramList;->mListCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
