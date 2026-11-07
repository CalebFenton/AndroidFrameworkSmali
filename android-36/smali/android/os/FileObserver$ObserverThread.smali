.class Landroid/os/FileObserver$ObserverThread;
.super Ljava/lang/Thread;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverThread"
.end annotation


# instance fields
.field private blacklist mRealObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o m_fd:I

.field private greylist-max-o m_observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 111
    const-string v0, "FileObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    .line 112
    invoke-direct {p0}, Landroid/os/FileObserver$ObserverThread;->init()I

    move-result v0

    iput v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    .line 113
    return-void
.end method

.method private native greylist-max-o init()I
.end method

.method private native greylist-max-o observe(I)V
.end method

.method private native blacklist startWatching(I[Ljava/lang/String;I[I)V
.end method

.method private native blacklist stopWatching(I[I)V
.end method


# virtual methods
.method public greylist-max-r onEvent(IILjava/lang/String;)V
    .registers 9
    .param p1, "wfd"    # I
    .param p2, "mask"    # I
    .param p3, "path"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "observer":Landroid/os/FileObserver;
    iget-object v1, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 154
    :try_start_4
    iget-object v2, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 155
    .local v2, "weak":Ljava/lang/ref/WeakReference;
    if-eqz v2, :cond_1c

    .line 156
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/FileObserver;

    move-object v0, v3

    .line 157
    if-nez v0, :cond_1c

    .line 158
    iget-object v3, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 161
    .end local v2    # "weak":Ljava/lang/ref/WeakReference;
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_3d

    .line 164
    if-eqz v0, :cond_3c

    .line 166
    :try_start_1f
    invoke-virtual {v0, p2, p3}, Landroid/os/FileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    .line 169
    goto :goto_3c

    .line 167
    :catchall_23
    move-exception v1

    .line 168
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "FileObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception in FileObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_3c
    :goto_3c
    return-void

    .line 161
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 116
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0}, Landroid/os/FileObserver$ObserverThread;->observe(I)V

    .line 117
    return-void
.end method

.method public blacklist startWatching(Ljava/util/List;ILandroid/os/FileObserver;)[I
    .registers 13
    .param p2, "mask"    # I
    .param p3, "observer"    # Landroid/os/FileObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I",
            "Landroid/os/FileObserver;",
            ")[I"
        }
    .end annotation

    .line 121
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/String;

    .line 123
    .local v1, "paths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 124
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 126
    .end local v2    # "i":I
    :cond_18
    new-array v2, v0, [I

    .line 127
    .local v2, "wfds":[I
    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 129
    iget v3, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v3, v1, p2, v2}, Landroid/os/FileObserver$ObserverThread;->startWatching(I[Ljava/lang/String;I[I)V

    .line 131
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 133
    .local v3, "fileObserverWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/FileObserver;>;"
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    monitor-enter v4

    .line 134
    :try_start_2b
    array-length v5, v2

    const/4 v6, 0x0

    :goto_2d
    if-ge v6, v5, :cond_3b

    aget v7, v2, v6

    .line 135
    .local v7, "wfd":I
    if-ltz v7, :cond_38

    .line 136
    iget-object v8, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    .end local v7    # "wfd":I
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 139
    :cond_3b
    monitor-exit v4

    .line 141
    return-object v2

    .line 139
    :catchall_3d
    move-exception v5

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_3d

    throw v5
.end method

.method public blacklist stopWatching([I)V
    .registers 3
    .param p1, "descriptors"    # [I

    .line 145
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0, p1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(I[I)V

    .line 146
    return-void
.end method
