.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$Transport;
    }
.end annotation


# static fields
.field private static final blacklist ADD_CONTENT_OBSERVER_FLAGS:J = 0x8ff25fbL


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method public static synthetic blacklist $r8$lambda$0fvHTX2lHgWd2eKiNToptqGuniI(Landroid/database/ContentObserver;ZLjava/util/Collection;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/ContentObserver;->lambda$dispatchChange$0(ZLjava/util/Collection;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_30FqRqKC3pUku8T3BsVPQAFotM(Landroid/database/ContentObserver;ZLjava/util/Collection;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/ContentObserver;->lambda$dispatchChange$1(ZLjava/util/Collection;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;I)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "unused"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Landroid/database/ContentObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 79
    return-void
.end method

.method private static blacklist isChangeEnabledAddContentObserverFlags()Z
    .registers 2

    .line 244
    const-wide/32 v0, 0x8ff25fb

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    return v0
.end method

.method private static blacklist isChangeEnabledAddContentObserverFlags$ravenwood()Z
    .registers 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$dispatchChange$0(ZLjava/util/Collection;II)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uris"    # Ljava/util/Collection;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 325
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;II)V

    .line 326
    return-void
.end method

.method private synthetic blacklist lambda$dispatchChange$1(ZLjava/util/Collection;II)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uris"    # Ljava/util/Collection;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 332
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;II)V

    .line 333
    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist dispatchChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    .line 266
    return-void
.end method

.method public final whitelist dispatchChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;I)V

    .line 282
    return-void
.end method

.method public final whitelist dispatchChange(ZLandroid/net/Uri;I)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "flags"    # I

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/database/ContentObserver;->dispatchChange(ZLjava/util/Collection;I)V

    .line 300
    return-void
.end method

.method public final whitelist dispatchChange(ZLjava/util/Collection;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 317
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLjava/util/Collection;II)V

    .line 318
    return-void
.end method

.method public final blacklist dispatchChange(ZLjava/util/Collection;II)V
    .registers 13
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 323
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/database/ContentObserver;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_14

    .line 324
    iget-object v0, p0, Landroid/database/ContentObserver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/database/ContentObserver$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "selfChange":Z
    .end local p2    # "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .local v3, "selfChange":Z
    .local v4, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .local v5, "flags":I
    .local v6, "userId":I
    invoke-direct/range {v1 .. v6}, Landroid/database/ContentObserver$$ExternalSyntheticLambda0;-><init>(Landroid/database/ContentObserver;ZLjava/util/Collection;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_34

    .line 327
    .end local v3    # "selfChange":Z
    .end local v4    # "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .end local v5    # "flags":I
    .end local v6    # "userId":I
    .restart local p1    # "selfChange":Z
    .restart local p2    # "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    :cond_14
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "selfChange":Z
    .end local p2    # "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    .restart local v3    # "selfChange":Z
    .restart local v4    # "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .restart local v5    # "flags":I
    .restart local v6    # "userId":I
    iget-object p1, v2, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_31

    .line 331
    iget-object p1, v2, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/database/ContentObserver$$ExternalSyntheticLambda1;

    move v7, v6

    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, p0

    .end local v3    # "selfChange":Z
    .local v4, "selfChange":Z
    .local v5, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .local v6, "flags":I
    .local v7, "userId":I
    invoke-direct/range {v2 .. v7}, Landroid/database/ContentObserver$$ExternalSyntheticLambda1;-><init>(Landroid/database/ContentObserver;ZLjava/util/Collection;II)V

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    .end local v7    # "userId":I
    .restart local v3    # "selfChange":Z
    .local v4, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    .local v5, "flags":I
    .local v6, "userId":I
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_34

    .line 335
    :cond_31
    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;II)V

    .line 337
    :goto_34
    return-void
.end method

.method public greylist-max-o getContentObserver()Landroid/database/IContentObserver;
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-nez v1, :cond_e

    .line 89
    new-instance v1, Landroid/database/ContentObserver$Transport;

    invoke-direct {v1, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 91
    :cond_e
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 136
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 168
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 169
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;I)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "flags"    # I

    .line 184
    invoke-virtual {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 185
    return-void
.end method

.method public whitelist onChange(ZLjava/util/Collection;I)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 201
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 202
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1, v1, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 203
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_4

    .line 204
    :cond_14
    return-void
.end method

.method public blacklist onChange(ZLjava/util/Collection;II)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 233
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/database/ContentObserver;->isChangeEnabledAddContentObserverFlags()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 234
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    goto :goto_13

    .line 238
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    goto :goto_1a

    .line 236
    :cond_13
    :goto_13
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;ILandroid/os/UserHandle;)V

    .line 240
    :goto_1a
    return-void
.end method

.method public whitelist onChange(ZLjava/util/Collection;ILandroid/os/UserHandle;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 224
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    .line 225
    return-void
.end method

.method public greylist releaseContentObserver()Landroid/database/IContentObserver;
    .registers 4

    .line 103
    iget-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 105
    .local v1, "oldTransport":Landroid/database/ContentObserver$Transport;
    if-eqz v1, :cond_d

    .line 106
    invoke-virtual {v1}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    .line 107
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 109
    :cond_d
    monitor-exit v0

    return-object v1

    .line 110
    .end local v1    # "oldTransport":Landroid/database/ContentObserver$Transport;
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method
