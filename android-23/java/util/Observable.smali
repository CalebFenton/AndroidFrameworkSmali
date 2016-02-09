.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field changed:Z

.field observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@a
    .line 35
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    #@d
    .line 40
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 2
    .param p1, "observer"    # Ljava/util/Observer;

    #@0
    .prologue
    .line 51
    if-nez p1, :cond_0

    #@2
    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "observer == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 54
    :cond_0
    monitor-enter p0

    #@c
    .line 55
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 56
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit p0

    #@1a
    .line 50
    return-void

    #@1b
    .line 54
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit p0

    #@1d
    throw v0
.end method

.method protected clearChanged()V
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    #@3
    .line 64
    return-void
.end method

.method public countObservers()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Ljava/util/Observer;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 85
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 84
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
    .line 92
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 91
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public hasChanged()Z
    .locals 1

    #@0
    .prologue
    .line 102
    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z

    #@2
    return v0
.end method

.method public notifyObservers()V
    .locals 1

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    #@4
    .line 112
    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 126
    const/4 v2, 0x0

    #@1
    .line 127
    .local v2, "size":I
    const/4 v0, 0x0

    #@2
    .line 128
    .local v0, "arrays":[Ljava/util/Observer;
    monitor-enter p0

    #@3
    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 130
    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V

    #@c
    .line 131
    iget-object v3, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    .line 132
    new-array v0, v2, [Ljava/util/Observer;

    #@14
    .line 133
    .local v0, "arrays":[Ljava/util/Observer;
    iget-object v3, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    #@16
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .end local v0    # "arrays":[Ljava/util/Observer;
    :cond_0
    monitor-exit p0

    #@1a
    .line 136
    if-eqz v0, :cond_1

    #@1c
    .line 137
    const/4 v3, 0x0

    #@1d
    array-length v4, v0

    #@1e
    :goto_0
    if-ge v3, v4, :cond_1

    #@20
    aget-object v1, v0, v3

    #@22
    .line 138
    .local v1, "observer":Ljava/util/Observer;
    invoke-interface {v1, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    #@25
    .line 137
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 128
    .end local v1    # "observer":Ljava/util/Observer;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit p0

    #@2a
    throw v3

    #@2b
    .line 125
    :cond_1
    return-void
.end method

.method protected setChanged()V
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    #@3
    .line 147
    return-void
.end method
