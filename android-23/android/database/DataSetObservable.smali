.class public Landroid/database/DataSetObservable;
.super Landroid/database/Observable;
.source "DataSetObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/database/DataSetObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 3

    #@0
    .prologue
    .line 31
    iget-object v2, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 36
    :try_start_0
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 37
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/database/DataSetObserver;

    #@15
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 36
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 30
    return-void

    #@1d
    .line 31
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public notifyInvalidated()V
    .locals 3

    #@0
    .prologue
    .line 48
    iget-object v2, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 49
    :try_start_0
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@d
    .line 50
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/database/DataSetObserver;

    #@15
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 49
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    :cond_0
    monitor-exit v2

    #@1c
    .line 47
    return-void

    #@1d
    .line 48
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method
