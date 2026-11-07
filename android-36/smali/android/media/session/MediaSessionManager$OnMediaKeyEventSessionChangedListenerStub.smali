.class final Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;
.super Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnMediaKeyEventSessionChangedListenerStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaSessionManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/session/MediaSessionManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-direct {p0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSessionManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;-><init>(Landroid/media/session/MediaSessionManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$onMediaKeyEventSessionChanged$0(Ljava/util/Map$Entry;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 4
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1405
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    return-void
.end method


# virtual methods
.method public blacklist onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1400
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->-$$Nest$fgetmLock(Landroid/media/session/MediaSessionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1401
    :try_start_7
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v1, p1}, Landroid/media/session/MediaSessionManager;->-$$Nest$fputmCurMediaKeyEventSessionPackage(Landroid/media/session/MediaSessionManager;Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v1, p2}, Landroid/media/session/MediaSessionManager;->-$$Nest$fputmCurMediaKeyEventSession(Landroid/media/session/MediaSessionManager;Landroid/media/session/MediaSession$Token;)V

    .line 1404
    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub;->this$0:Landroid/media/session/MediaSessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager;->-$$Nest$fgetmMediaKeyEventSessionChangedCallbacks(Landroid/media/session/MediaSessionManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1405
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;Ljava/util/concurrent/Executor;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListenerStub$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map$Entry;Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1407
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/media/session/MediaSessionManager$OnMediaKeyEventSessionChangedListener;Ljava/util/concurrent/Executor;>;"
    goto :goto_1f

    .line 1408
    :cond_3a
    monitor-exit v0

    .line 1409
    return-void

    .line 1408
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method
