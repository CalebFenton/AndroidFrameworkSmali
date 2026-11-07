.class public abstract Landroid/database/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final whitelist mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 30
    .local p0, "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public whitelist registerObserver(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    .local p1, "observer":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_36

    .line 48
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 49
    :try_start_5
    iget-object v1, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 52
    iget-object v1, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 50
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    .end local p1    # "observer":Ljava/lang/Object;, "TT;"
    throw v1

    .line 53
    .restart local p0    # "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    .restart local p1    # "observer":Ljava/lang/Object;, "TT;"
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v1

    .line 46
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The observer is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAll()V
    .registers 3

    .line 80
    .local p0, "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist unregisterObserver(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    .local p1, "observer":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_38

    .line 67
    iget-object v0, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 68
    :try_start_5
    iget-object v1, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 69
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 72
    iget-object v2, p0, Landroid/database/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    nop

    .end local v1    # "index":I
    monitor-exit v0

    .line 74
    return-void

    .line 70
    .restart local v1    # "index":I
    :cond_16
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    .end local p1    # "observer":Ljava/lang/Object;, "TT;"
    throw v2

    .line 73
    .end local v1    # "index":I
    .restart local p0    # "this":Landroid/database/Observable;, "Landroid/database/Observable<TT;>;"
    .restart local p1    # "observer":Ljava/lang/Object;, "TT;"
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw v1

    .line 65
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The observer is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
