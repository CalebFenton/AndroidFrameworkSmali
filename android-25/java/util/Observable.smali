.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field private changed:Z

.field private final observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    #@6
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@d
    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Ljava/util/Observer;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observer;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 82
    if-nez p1, :cond_0

    #@3
    .line 83
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 85
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 81
    return-void
.end method

.method protected declared-synchronized clearChanged()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 190
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 189
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized countObservers()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 213
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observer;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 95
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 94
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized deleteObservers()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 168
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 167
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public declared-synchronized hasChanged()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 204
    :try_start_0
    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public notifyObservers()V
    .locals 1

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    #@4
    .line 114
    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 139
    monitor-enter p0

    #@1
    .line 153
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 154
    return-void

    #@9
    .line 156
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@b
    iget-object v3, p0, Ljava/util/Observable;->observers:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v3

    #@11
    new-array v3, v3, [Ljava/util/Observer;

    #@13
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/util/Observer;

    #@19
    .line 157
    .local v0, "arrLocal":[Ljava/util/Observer;
    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 160
    array-length v2, v0

    #@1e
    add-int/lit8 v1, v2, -0x1

    #@20
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@22
    .line 161
    aget-object v2, v0, v1

    #@24
    invoke-interface {v2, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    #@27
    .line 160
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 139
    .end local v0    # "arrLocal":[Ljava/util/Observer;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit p0

    #@2c
    throw v2

    #@2d
    .line 132
    .restart local v0    # "arrLocal":[Ljava/util/Observer;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected declared-synchronized setChanged()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 176
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 175
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
