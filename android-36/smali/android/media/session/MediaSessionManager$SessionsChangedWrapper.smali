.class final Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionsChangedWrapper"
.end annotation


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final greylist-max-o mStub:Landroid/media/session/IActiveSessionsListener$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStub(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcallOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->callOnActiveSessionsChangedListener(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelease(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->release()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 1261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    new-instance v0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;-><init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    .line 1262
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    .line 1263
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 1264
    iput-object p3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1265
    return-void
.end method

.method private blacklist callOnActiveSessionsChangedListener(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;)V"
        }
    .end annotation

    .line 1278
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    .line 1279
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_28

    .line 1280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1281
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1282
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_21

    .line 1283
    new-instance v4, Landroid/media/session/MediaController;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaSession$Token;

    invoke-direct {v4, v0, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1285
    .end local v3    # "i":I
    :cond_21
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 1286
    .local v3, "listener":Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    if-eqz v3, :cond_28

    .line 1287
    invoke-interface {v3, v1}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 1290
    .end local v1    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    .end local v2    # "size":I
    .end local v3    # "listener":Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    :cond_28
    return-void
.end method

.method private greylist-max-o release()V
    .registers 2

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 1294
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    .line 1295
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1296
    return-void
.end method
