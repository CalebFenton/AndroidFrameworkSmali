.class public final Landroid/net/connectivity/org/chromium/base/CallbackController;
.super Ljava/lang/Object;
.source "CallbackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;,
        Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;,
        Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;
    }
.end annotation


# instance fields
.field private blacklist mCancelables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController;->mCancelables:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist addInternal(Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;)V
    .registers 4
    .param p1, "cancelable"    # Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;

    .line 180
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController;->mCancelables:Ljava/util/ArrayList;

    .line 181
    .local v0, "cancelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_15

    .line 186
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/CollectionUtil;->strengthen(Ljava/util/Collection;)Ljava/util/List;

    .line 188
    :cond_15
    return-void
.end method

.method private blacklist checkNotCanceled()V
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController;->mCancelables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist destroy()V
    .registers 3

    monitor-enter p0

    .line 196
    :try_start_1
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/CallbackController;->checkNotCanceled()V

    .line 197
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController;->mCancelables:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/CollectionUtil;->strengthen(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;

    .line 198
    .local v1, "cancelable":Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;
    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;->cancel()V

    .line 199
    .end local v1    # "cancelable":Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;
    goto :goto_e

    .line 200
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/CallbackController;
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/CallbackController;->mCancelables:Ljava/util/ArrayList;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 201
    monitor-exit p0

    return-void

    .line 195
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public declared-synchronized blacklist makeCancelable(Landroid/net/connectivity/org/chromium/base/Callback;)Landroid/net/connectivity/org/chromium/base/Callback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;"
        }
    .end annotation

    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    monitor-enter p0

    .line 156
    :try_start_1
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/CallbackController;->checkNotCanceled()V

    .line 157
    new-instance v0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;-><init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Landroid/net/connectivity/org/chromium/base/Callback;Landroid/net/connectivity/org/chromium/base/CallbackController-IA;)V

    .line 158
    .local v0, "cancelable":Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;, "Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback<TT;>;"
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/CallbackController;->addInternal(Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 159
    monitor-exit p0

    return-object v0

    .line 155
    .end local v0    # "cancelable":Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback;, "Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableCallback<TT;>;"
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/CallbackController;
    .end local p1    # "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist makeCancelable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 172
    :try_start_1
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/CallbackController;->checkNotCanceled()V

    .line 173
    new-instance v0, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/CallbackController;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/base/CallbackController-IA;)V

    .line 174
    .local v0, "cancelable":Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/CallbackController;->addInternal(Landroid/net/connectivity/org/chromium/base/CallbackController$Cancelable;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 175
    monitor-exit p0

    return-object v0

    .line 171
    .end local v0    # "cancelable":Landroid/net/connectivity/org/chromium/base/CallbackController$CancelableRunnable;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/CallbackController;
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method
