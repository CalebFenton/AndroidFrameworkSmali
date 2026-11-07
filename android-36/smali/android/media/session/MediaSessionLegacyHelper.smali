.class public Landroid/media/session/MediaSessionLegacyHelper;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;,
        Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaSessionHelper"

.field private static greylist-max-o sInstance:Landroid/media/session/MediaSessionLegacyHelper;

.field private static final greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCommunicationManager:Landroid/media/MediaCommunicationManager;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mSessionManager:Landroid/media/session/MediaSessionManager;

.field private greylist-max-o mSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/PendingIntent;",
            "Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessions(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smsendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    const-string v0, "MediaSessionHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    .line 65
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    .line 66
    nop

    .line 67
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 68
    const-class v0, Landroid/media/MediaCommunicationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCommunicationManager;

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    .line 69
    return-void
.end method

.method public static greylist getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    if-nez v1, :cond_12

    .line 75
    new-instance v1, Landroid/media/session/MediaSessionLegacyHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    .line 77
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 78
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    return-object v0

    .line 77
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private greylist-max-o getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    .registers 8
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "createIfMissing"    # Z

    .line 326
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .line 327
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_39

    if-eqz p2, :cond_39

    .line 329
    new-instance v1, Landroid/media/session/MediaSession;

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSessionHelper-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    .local v1, "session":Landroid/media/session/MediaSession;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 331
    new-instance v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    invoke-direct {v2, p0, v1, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;-><init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V

    move-object v0, v2

    .line 332
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v1    # "session":Landroid/media/session/MediaSession;
    :cond_39
    return-object v0
.end method

.method public static greylist-max-o getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;
    .registers 10
    .param p0, "metadata"    # Landroid/media/MediaMetadata;
    .param p1, "artworkWidth"    # I
    .param p2, "artworkHeight"    # I

    .line 83
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_9

    if-eq p2, v2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    .line 84
    .local v2, "includeArtwork":Z
    :goto_a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v3, "oldMetadata":Landroid/os/Bundle;
    const-string v4, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_22
    const/16 v0, 0x64

    if-eqz v2, :cond_3e

    const-string v4, "android.media.metadata.ART"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 90
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 91
    .local v4, "art":Landroid/graphics/Bitmap;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v4, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 91
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .end local v4    # "art":Landroid/graphics/Bitmap;
    goto :goto_58

    .line 93
    :cond_3e
    if-eqz v2, :cond_58

    const-string v4, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 95
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 96
    .restart local v4    # "art":Landroid/graphics/Bitmap;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v4, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 96
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_59

    .line 93
    .end local v4    # "art":Landroid/graphics/Bitmap;
    :cond_58
    :goto_58
    nop

    .line 99
    :goto_59
    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 100
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_6e
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 104
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_82
    const-string v0, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 108
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_96
    const-string v0, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 112
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_ab
    const-string v0, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 116
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_bf
    const-string v0, "android.media.metadata.DATE"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 120
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_d3
    const-string v0, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 124
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 124
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    :cond_e8
    const-string v0, "android.media.metadata.DURATION"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 128
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 128
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    :cond_fd
    const-string v0, "android.media.metadata.GENRE"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 132
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_111
    const-string v0, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 136
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 136
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 139
    :cond_126
    const-string v0, "android.media.metadata.RATING"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 140
    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v0

    .line 140
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    :cond_13b
    const-string v0, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 144
    const v4, 0x10000001

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v0

    .line 144
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    :cond_151
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_165

    .line 148
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_165
    const-string v0, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_179

    .line 152
    nop

    .line 153
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 152
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    :cond_179
    const-string v0, "android.media.metadata.WRITER"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 157
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_18e
    const-string v0, "android.media.metadata.YEAR"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 161
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "android.media.metadata.YEAR"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 161
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 164
    :cond_1a5
    return-object v3
.end method

.method private static greylist-max-o scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 301
    if-eqz p0, :cond_56

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 303
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 304
    .local v1, "height":I
    if-gt v0, p1, :cond_e

    if-le v1, p2, :cond_56

    .line 305
    :cond_e
    int-to-float v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 306
    .local v2, "scale":F
    int-to-float v3, v0

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 307
    .local v3, "newWidth":I
    int-to-float v4, v1

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 308
    .local v4, "newHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 309
    .local v5, "newConfig":Landroid/graphics/Bitmap$Config;
    if-nez v5, :cond_2c

    .line 310
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 312
    :cond_2c
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 313
    .local v6, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 315
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 316
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 317
    new-instance v9, Landroid/graphics/RectF;

    .line 318
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 317
    const/4 v10, 0x0

    invoke-virtual {v7, p0, v10, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 319
    move-object p0, v6

    .line 322
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "scale":F
    .end local v3    # "newWidth":I
    .end local v4    # "newHeight":I
    .end local v5    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v6    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_56
    return-object p0
.end method

.method private static greylist-max-o sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 339
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_4} :catch_6

    .line 344
    nop

    .line 345
    return-void

    .line 340
    :catch_6
    move-exception v0

    .line 341
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "MediaSessionHelper"

    const-string v2, "Error sending media key down event:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    return-void
.end method


# virtual methods
.method public greylist-max-o addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V
    .registers 9
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Landroid/content/ComponentName;
    .param p3, "context"    # Landroid/content/Context;

    .line 247
    const-string v0, "MediaSessionHelper"

    if-nez p1, :cond_a

    .line 248
    const-string v1, "Pending intent was null, can\'t addMediaButtonListener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 251
    :cond_a
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v2

    .line 252
    .local v2, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v2, :cond_12

    .line 253
    return-void

    .line 255
    :cond_12
    iget-object v3, v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v3, :cond_30

    .line 257
    sget-boolean v3, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v3, :cond_30

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMediaButtonListener already added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_30
    new-instance v3, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-direct {v3, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;-><init>(Landroid/app/PendingIntent;Landroid/content/Context;)V

    iput-object v3, v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    .line 264
    iget v3, v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    or-int/2addr v1, v3

    iput v1, v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 265
    iget-object v1, v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v3, v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 266
    iget-object v1, v2, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 267
    invoke-virtual {v2}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 268
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_65

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMediaButtonListener added "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_65
    return-void
.end method

.method public greylist-max-o addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V
    .registers 7
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/media/session/MediaSession$Callback;

    .line 203
    const-string v0, "MediaSessionHelper"

    if-nez p1, :cond_a

    .line 204
    const-string v1, "Pending intent was null, can\'t add rcc listener."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_a
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v1

    .line 208
    .local v1, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v1, :cond_12

    .line 209
    return-void

    .line 211
    :cond_12
    iget-object v2, v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v2, :cond_24

    .line 212
    iget-object v2, v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-ne v2, p2, :cond_24

    .line 213
    sget-boolean v2, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v2, :cond_23

    .line 214
    const-string v2, "addRccListener listener already added."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_23
    return-void

    .line 220
    :cond_24
    iput-object p2, v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    .line 221
    iget v2, v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 222
    iget-object v2, v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v3, v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 223
    invoke-virtual {v1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 224
    sget-boolean v2, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v2, :cond_56

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added rcc listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_56
    return-void
.end method

.method public greylist-max-o getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;
    .registers 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 168
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .line 169
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    :goto_e
    return-object v1
.end method

.method public greylist-max-o isGlobalPriorityActive()Z
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o removeMediaButtonListener(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 274
    if-nez p1, :cond_3

    .line 275
    return-void

    .line 277
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 278
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_3d

    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v1, :cond_3d

    .line 279
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 280
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 281
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    .line 283
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 284
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_3d

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMediaButtonListener removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3d
    return-void
.end method

.method public greylist-max-o removeRccListener(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 230
    if-nez p1, :cond_3

    .line 231
    return-void

    .line 233
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 234
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_43

    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v1, :cond_43

    .line 235
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    .line 236
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 237
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 238
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 239
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_43

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed rcc listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_43
    return-void
.end method

.method public greylist-max-o sendAdjustVolumeBy(III)V
    .registers 6
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .line 192
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    .line 193
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 194
    const-string v0, "MediaSessionHelper"

    const-string v1, "dispatched volume adjustment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_10
    return-void
.end method

.method public greylist-max-o sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .registers 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .line 173
    const-string v0, "MediaSessionHelper"

    if-nez p1, :cond_a

    .line 174
    const-string v1, "Tried to send a null key event. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_a
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper;->mCommunicationManager:Landroid/media/MediaCommunicationManager;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaCommunicationManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 178
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatched media key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_29
    return-void
.end method

.method public greylist-max-o sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V
    .registers 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I
    .param p3, "musicOnly"    # Z

    .line 184
    if-nez p1, :cond_a

    .line 185
    const-string v0, "MediaSessionHelper"

    const-string v1, "Tried to send a null key event. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 188
    :cond_a
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 189
    return-void
.end method
