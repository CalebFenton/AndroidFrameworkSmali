.class public abstract Landroid/media/MediaSession2Service;
.super Landroid/app/Service;
.source "MediaSession2Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSession2Service$MediaSession2ServiceStub;,
        Landroid/media/MediaSession2Service$MediaNotification;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaSession2Service"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaSession2Service"


# instance fields
.field private final blacklist mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private blacklist mNotificationManager:Landroid/app/NotificationManager;

.field private blacklist mNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaSession2;",
            "Landroid/media/MediaSession2Service$MediaNotification;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaSession2;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartSelfIntent:Landroid/content/Intent;

.field private blacklist mStub:Landroid/media/MediaSession2Service$MediaSession2ServiceStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Landroid/media/MediaSession2Service;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 61
    const-string v0, "MediaSession2Service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaSession2Service;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Landroid/media/MediaSession2Service$1;

    invoke-direct {v0, p0}, Landroid/media/MediaSession2Service$1;-><init>(Landroid/media/MediaSession2Service;)V

    iput-object v0, p0, Landroid/media/MediaSession2Service;->mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSession2Service;->mSessions:Ljava/util/Map;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaSession2Service;->mNotifications:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist addSession(Landroid/media/MediaSession2;)V
    .registers 6

    if-eqz p1, :cond_64

    .line 194
    invoke-virtual {p1}, Landroid/media/MediaSession2;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 197
    iget-object v0, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_b
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mSessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaSession2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaSession2;

    if-eqz v1, :cond_4a

    if-eq v1, p1, :cond_48

    .line 201
    const-string p0, "MediaSession2Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session ID should be unique, ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaSession2;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :catchall_46
    move-exception p0

    goto :goto_5a

    .line 204
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    .line 206
    :cond_4a
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mSessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaSession2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object p0, p0, Landroid/media/MediaSession2Service;->mForegroundServiceEventCallback:Landroid/media/MediaSession2$ForegroundServiceEventCallback;

    invoke-virtual {p1, p0}, Landroid/media/MediaSession2;->setForegroundServiceEventCallback(Landroid/media/MediaSession2$ForegroundServiceEventCallback;)V

    .line 208
    monitor-exit v0

    return-void

    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_46

    throw p0

    .line 195
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "session is already closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "session shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object p0, p0, Landroid/media/MediaSession2Service;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 259
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final whitelist getSessions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_8
    iget-object p0, p0, Landroid/media/MediaSession2Service;->mSessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception p0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 114
    const-string v0, "android.media.MediaSession2Service"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 115
    iget-object p1, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 116
    :try_start_f
    iget-object p0, p0, Landroid/media/MediaSession2Service;->mStub:Landroid/media/MediaSession2Service$MediaSession2ServiceStub;

    monitor-exit p1

    return-object p0

    :catchall_13
    move-exception p0

    .line 117
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onCreate()V
    .registers 4

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 100
    iget-object v0, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_6
    new-instance v1, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;

    invoke-direct {v1, p0}, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;-><init>(Landroid/media/MediaSession2Service;)V

    iput-object v1, p0, Landroid/media/MediaSession2Service;->mStub:Landroid/media/MediaSession2Service$MediaSession2ServiceStub;

    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Landroid/media/MediaSession2Service;->mStartSelfIntent:Landroid/content/Intent;

    .line 103
    const-string v1, "notification"

    .line 104
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/media/MediaSession2Service;->mNotificationManager:Landroid/app/NotificationManager;

    .line 105
    const-string v1, "media_session"

    .line 106
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Landroid/media/MediaSession2Service;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 107
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public whitelist onDestroy()V
    .registers 4

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    iget-object v0, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_6
    invoke-virtual {p0}, Landroid/media/MediaSession2Service;->getSessions()Ljava/util/List;

    move-result-object v1

    .line 135
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaSession2;

    .line 136
    invoke-virtual {p0, v2}, Landroid/media/MediaSession2Service;->removeSession(Landroid/media/MediaSession2;)V

    goto :goto_e

    :catchall_1e
    move-exception p0

    goto :goto_31

    .line 138
    :cond_20
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 139
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mNotifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 140
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_1e

    .line 141
    iget-object p0, p0, Landroid/media/MediaSession2Service;->mStub:Landroid/media/MediaSession2Service$MediaSession2ServiceStub;

    invoke-virtual {p0}, Landroid/media/MediaSession2Service$MediaSession2ServiceStub;->close()V

    return-void

    .line 140
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1e

    throw p0
.end method

.method public abstract whitelist onGetSession(Landroid/media/MediaSession2$ControllerInfo;)Landroid/media/MediaSession2;
.end method

.method blacklist onPlaybackActiveChanged(Landroid/media/MediaSession2;Z)V
    .registers 6

    .line 269
    invoke-virtual {p0, p1}, Landroid/media/MediaSession2Service;->onUpdateNotification(Landroid/media/MediaSession2;)Landroid/media/MediaSession2Service$MediaNotification;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 275
    :cond_7
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_a
    iget-object v2, p0, Landroid/media/MediaSession2Service;->mNotifications:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_29

    .line 278
    invoke-virtual {v0}, Landroid/media/MediaSession2Service$MediaNotification;->getNotificationId()I

    move-result p1

    .line 279
    invoke-virtual {v0}, Landroid/media/MediaSession2Service$MediaNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez p2, :cond_20

    .line 281
    iget-object p0, p0, Landroid/media/MediaSession2Service;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 285
    :cond_20
    iget-object p2, p0, Landroid/media/MediaSession2Service;->mStartSelfIntent:Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/app/Service;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 286
    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void

    :catchall_29
    move-exception p0

    .line 277
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public abstract whitelist onUpdateNotification(Landroid/media/MediaSession2;)Landroid/media/MediaSession2Service$MediaNotification;
.end method

.method public final whitelist removeSession(Landroid/media/MediaSession2;)V
    .registers 5

    if-eqz p1, :cond_47

    .line 222
    iget-object v0, p0, Landroid/media/MediaSession2Service;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_5
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mSessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaSession2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_15

    .line 225
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_45

    .line 227
    :cond_15
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mSessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaSession2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Landroid/media/MediaSession2Service;->mNotifications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaSession2Service$MediaNotification;

    .line 229
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_13

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1, v0}, Landroid/media/MediaSession2;->setForegroundServiceEventCallback(Landroid/media/MediaSession2$ForegroundServiceEventCallback;)V

    if-eqz v1, :cond_36

    .line 232
    iget-object p1, p0, Landroid/media/MediaSession2Service;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/media/MediaSession2Service$MediaNotification;->getNotificationId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 234
    :cond_36
    invoke-virtual {p0}, Landroid/media/MediaSession2Service;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 p1, 0x0

    .line 235
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_44
    return-void

    .line 229
    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_13

    throw p0

    .line 219
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "session shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
