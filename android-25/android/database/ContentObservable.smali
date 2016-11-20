.class public Landroid/database/ContentObservable;
.super Landroid/database/Observable;
.source "ContentObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/database/ContentObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public dispatchChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    #@4
    .line 49
    return-void
.end method

.method public dispatchChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 67
    iget-object v3, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 68
    :try_start_0
    iget-object v2, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "observer$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/database/ContentObserver;

    #@15
    .line 69
    .local v0, "observer":Landroid/database/ContentObserver;
    if-eqz p1, :cond_1

    #@17
    invoke-virtual {v0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 70
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 67
    .end local v0    # "observer":Landroid/database/ContentObserver;
    .end local v1    # "observer$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2

    #@24
    .restart local v1    # "observer$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v3

    #@25
    .line 66
    return-void
.end method

.method public notifyChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v3, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 86
    :try_start_0
    iget-object v2, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "observer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/database/ContentObserver;

    #@15
    .line 87
    .local v0, "observer":Landroid/database/ContentObserver;
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 85
    .end local v0    # "observer":Landroid/database/ContentObserver;
    .end local v1    # "observer$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1b
    monitor-exit v3

    #@1c
    throw v2

    #@1d
    .restart local v1    # "observer$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@1e
    .line 84
    return-void
.end method

.method public registerObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    #@0
    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    #@3
    .line 31
    return-void
.end method

.method public bridge synthetic registerObserver(Ljava/lang/Object;)V
    .locals 0
    .param p1, "observer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 31
    check-cast p1, Landroid/database/ContentObserver;

    #@2
    .end local p1    # "observer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    #@5
    return-void
.end method
