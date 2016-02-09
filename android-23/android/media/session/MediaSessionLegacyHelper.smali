.class public Landroid/media/session/MediaSessionLegacyHelper;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;,
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionHelper"

.field private static sInstance:Landroid/media/session/MediaSessionLegacyHelper;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "MediaSessionHelper"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@a
    .line 51
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    sput-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    #@11
    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@c
    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mHandler:Landroid/os/Handler;

    #@e
    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    #@10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@13
    .line 59
    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    #@15
    .line 63
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    #@17
    .line 65
    const-string/jumbo v0, "media_session"

    #@1a
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/media/session/MediaSessionManager;

    #@20
    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@22
    .line 62
    return-void
.end method

.method public static getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 69
    sget-object v1, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 70
    :try_start_0
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 71
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v2}, Landroid/media/session/MediaSessionLegacyHelper;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 74
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    #@15
    return-object v0

    #@16
    .line 69
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "createIfMissing"    # Z

    #@0
    .prologue
    .line 364
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    .line 365
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_0

    #@a
    if-eqz p2, :cond_0

    #@c
    .line 367
    new-instance v1, Landroid/media/session/MediaSession;

    #@e
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "MediaSessionHelper-"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@2b
    .line 368
    .local v1, "session":Landroid/media/session/MediaSession;
    const/4 v2, 0x1

    #@2c
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    #@2f
    .line 369
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@31
    .end local v0    # "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    invoke-direct {v0, p0, v1, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;-><init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V

    #@34
    .line 370
    .restart local v0    # "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 372
    .end local v1    # "session":Landroid/media/session/MediaSession;
    :cond_0
    return-object v0
.end method

.method public static getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;
    .locals 6
    .param p0, "metadata"    # Landroid/media/MediaMetadata;
    .param p1, "artworkWidth"    # I
    .param p2, "artworkHeight"    # I

    #@0
    .prologue
    const/16 v5, 0x64

    #@2
    const/4 v3, -0x1

    #@3
    .line 79
    if-eq p1, v3, :cond_12

    #@5
    if-eq p2, v3, :cond_12

    #@7
    const/4 v1, 0x1

    #@8
    .line 80
    .local v1, "includeArtwork":Z
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    #@a
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@d
    .line 81
    .local v2, "oldMetadata":Landroid/os/Bundle;
    const-string/jumbo v3, "android.media.metadata.ALBUM"

    #@10
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 82
    const/4 v3, 0x1

    #@17
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 83
    const-string/jumbo v4, "android.media.metadata.ALBUM"

    #@1e
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 82
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 85
    :cond_0
    if-eqz v1, :cond_13

    #@27
    const-string/jumbo v3, "android.media.metadata.ART"

    #@2a
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_13

    #@30
    .line 86
    const-string/jumbo v3, "android.media.metadata.ART"

    #@33
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@36
    move-result-object v0

    #@37
    .line 87
    .local v0, "art":Landroid/graphics/Bitmap;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 88
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    #@3e
    move-result-object v4

    #@3f
    .line 87
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@42
    .line 95
    .end local v0    # "art":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    const-string/jumbo v3, "android.media.metadata.ALBUM_ARTIST"

    #@45
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@48
    move-result v3

    #@49
    if-eqz v3, :cond_2

    #@4b
    .line 96
    const/16 v3, 0xd

    #@4d
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .line 97
    const-string/jumbo v4, "android.media.metadata.ALBUM_ARTIST"

    #@54
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@5b
    .line 99
    :cond_2
    const-string/jumbo v3, "android.media.metadata.ARTIST"

    #@5e
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_3

    #@64
    .line 100
    const/4 v3, 0x2

    #@65
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    .line 101
    const-string/jumbo v4, "android.media.metadata.ARTIST"

    #@6c
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@73
    .line 103
    :cond_3
    const-string/jumbo v3, "android.media.metadata.AUTHOR"

    #@76
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_4

    #@7c
    .line 104
    const/4 v3, 0x3

    #@7d
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    .line 105
    const-string/jumbo v4, "android.media.metadata.AUTHOR"

    #@84
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 107
    :cond_4
    const-string/jumbo v3, "android.media.metadata.COMPILATION"

    #@8e
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_5

    #@94
    .line 108
    const/16 v3, 0xf

    #@96
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    .line 109
    const-string/jumbo v4, "android.media.metadata.COMPILATION"

    #@9d
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a0
    move-result-object v4

    #@a1
    .line 108
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a4
    .line 111
    :cond_5
    const-string/jumbo v3, "android.media.metadata.COMPOSER"

    #@a7
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@aa
    move-result v3

    #@ab
    if-eqz v3, :cond_6

    #@ad
    .line 112
    const/4 v3, 0x4

    #@ae
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    .line 113
    const-string/jumbo v4, "android.media.metadata.COMPOSER"

    #@b5
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b8
    move-result-object v4

    #@b9
    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@bc
    .line 115
    :cond_6
    const-string/jumbo v3, "android.media.metadata.DATE"

    #@bf
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@c2
    move-result v3

    #@c3
    if-eqz v3, :cond_7

    #@c5
    .line 116
    const/4 v3, 0x5

    #@c6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    .line 117
    const-string/jumbo v4, "android.media.metadata.DATE"

    #@cd
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d0
    move-result-object v4

    #@d1
    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d4
    .line 119
    :cond_7
    const-string/jumbo v3, "android.media.metadata.DISC_NUMBER"

    #@d7
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@da
    move-result v3

    #@db
    if-eqz v3, :cond_8

    #@dd
    .line 120
    const/16 v3, 0xe

    #@df
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e2
    move-result-object v3

    #@e3
    .line 121
    const-string/jumbo v4, "android.media.metadata.DISC_NUMBER"

    #@e6
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    #@e9
    move-result-wide v4

    #@ea
    .line 120
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@ed
    .line 123
    :cond_8
    const-string/jumbo v3, "android.media.metadata.DURATION"

    #@f0
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@f3
    move-result v3

    #@f4
    if-eqz v3, :cond_9

    #@f6
    .line 124
    const/16 v3, 0x9

    #@f8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@fb
    move-result-object v3

    #@fc
    .line 125
    const-string/jumbo v4, "android.media.metadata.DURATION"

    #@ff
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    #@102
    move-result-wide v4

    #@103
    .line 124
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@106
    .line 127
    :cond_9
    const-string/jumbo v3, "android.media.metadata.GENRE"

    #@109
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@10c
    move-result v3

    #@10d
    if-eqz v3, :cond_a

    #@10f
    .line 128
    const/4 v3, 0x6

    #@110
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@113
    move-result-object v3

    #@114
    .line 129
    const-string/jumbo v4, "android.media.metadata.GENRE"

    #@117
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11a
    move-result-object v4

    #@11b
    .line 128
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@11e
    .line 131
    :cond_a
    const-string/jumbo v3, "android.media.metadata.NUM_TRACKS"

    #@121
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@124
    move-result v3

    #@125
    if-eqz v3, :cond_b

    #@127
    .line 132
    const/16 v3, 0xa

    #@129
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12c
    move-result-object v3

    #@12d
    .line 133
    const-string/jumbo v4, "android.media.metadata.NUM_TRACKS"

    #@130
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    #@133
    move-result-wide v4

    #@134
    .line 132
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@137
    .line 135
    :cond_b
    const-string/jumbo v3, "android.media.metadata.RATING"

    #@13a
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@13d
    move-result v3

    #@13e
    if-eqz v3, :cond_c

    #@140
    .line 136
    const/16 v3, 0x65

    #@142
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@145
    move-result-object v3

    #@146
    .line 137
    const-string/jumbo v4, "android.media.metadata.RATING"

    #@149
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    #@14c
    move-result-object v4

    #@14d
    .line 136
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@150
    .line 139
    :cond_c
    const-string/jumbo v3, "android.media.metadata.USER_RATING"

    #@153
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@156
    move-result v3

    #@157
    if-eqz v3, :cond_d

    #@159
    .line 140
    const v3, 0x10000001

    #@15c
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@15f
    move-result-object v3

    #@160
    .line 141
    const-string/jumbo v4, "android.media.metadata.USER_RATING"

    #@163
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    #@166
    move-result-object v4

    #@167
    .line 140
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@16a
    .line 143
    :cond_d
    const-string/jumbo v3, "android.media.metadata.TITLE"

    #@16d
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@170
    move-result v3

    #@171
    if-eqz v3, :cond_e

    #@173
    .line 144
    const/4 v3, 0x7

    #@174
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@177
    move-result-object v3

    #@178
    .line 145
    const-string/jumbo v4, "android.media.metadata.TITLE"

    #@17b
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@17e
    move-result-object v4

    #@17f
    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@182
    .line 147
    :cond_e
    const-string/jumbo v3, "android.media.metadata.TRACK_NUMBER"

    #@185
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@188
    move-result v3

    #@189
    if-eqz v3, :cond_f

    #@18b
    .line 149
    const/4 v3, 0x0

    #@18c
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@18f
    move-result-object v3

    #@190
    .line 150
    const-string/jumbo v4, "android.media.metadata.TRACK_NUMBER"

    #@193
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    #@196
    move-result-wide v4

    #@197
    .line 148
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@19a
    .line 152
    :cond_f
    const-string/jumbo v3, "android.media.metadata.WRITER"

    #@19d
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@1a0
    move-result v3

    #@1a1
    if-eqz v3, :cond_10

    #@1a3
    .line 153
    const/16 v3, 0xb

    #@1a5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1a8
    move-result-object v3

    #@1a9
    .line 154
    const-string/jumbo v4, "android.media.metadata.WRITER"

    #@1ac
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1af
    move-result-object v4

    #@1b0
    .line 153
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1b3
    .line 156
    :cond_10
    const-string/jumbo v3, "android.media.metadata.YEAR"

    #@1b6
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@1b9
    move-result v3

    #@1ba
    if-eqz v3, :cond_11

    #@1bc
    .line 157
    const/16 v3, 0x8

    #@1be
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1c1
    move-result-object v3

    #@1c2
    .line 158
    const-string/jumbo v4, "android.media.metadata.YEAR"

    #@1c5
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1c8
    move-result-object v4

    #@1c9
    .line 157
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1cc
    .line 160
    :cond_11
    return-object v2

    #@1cd
    .line 79
    .end local v1    # "includeArtwork":Z
    .end local v2    # "oldMetadata":Landroid/os/Bundle;
    :cond_12
    const/4 v1, 0x0

    #@1ce
    .restart local v1    # "includeArtwork":Z
    goto/16 :goto_0

    #@1d0
    .line 89
    .restart local v2    # "oldMetadata":Landroid/os/Bundle;
    :cond_13
    if-eqz v1, :cond_1

    #@1d2
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    #@1d5
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    #@1d8
    move-result v3

    #@1d9
    if-eqz v3, :cond_1

    #@1db
    .line 91
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    #@1de
    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@1e1
    move-result-object v0

    #@1e2
    .line 92
    .restart local v0    # "art":Landroid/graphics/Bitmap;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1e5
    move-result-object v3

    #@1e6
    .line 93
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    #@1e9
    move-result-object v4

    #@1ea
    .line 92
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1ed
    goto/16 :goto_1
.end method

.method private static scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    #@0
    .prologue
    .line 339
    if-eqz p0, :cond_2

    #@2
    .line 340
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v9

    #@6
    .line 341
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@9
    move-result v2

    #@a
    .line 342
    .local v2, "height":I
    move/from16 v0, p1

    #@c
    if-gt v9, v0, :cond_0

    #@e
    move/from16 v0, p2

    #@10
    if-le v2, v0, :cond_2

    #@12
    .line 343
    :cond_0
    move/from16 v0, p1

    #@14
    int-to-float v10, v0

    #@15
    int-to-float v11, v9

    #@16
    div-float/2addr v10, v11

    #@17
    move/from16 v0, p2

    #@19
    int-to-float v11, v0

    #@1a
    int-to-float v12, v2

    #@1b
    div-float/2addr v11, v12

    #@1c
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    #@1f
    move-result v8

    #@20
    .line 344
    .local v8, "scale":F
    int-to-float v10, v9

    #@21
    mul-float/2addr v10, v8

    #@22
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@25
    move-result v5

    #@26
    .line 345
    .local v5, "newWidth":I
    int-to-float v10, v2

    #@27
    mul-float/2addr v10, v8

    #@28
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@2b
    move-result v4

    #@2c
    .line 346
    .local v4, "newHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@2f
    move-result-object v3

    #@30
    .line 347
    .local v3, "newConfig":Landroid/graphics/Bitmap$Config;
    if-nez v3, :cond_1

    #@32
    .line 348
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@34
    .line 350
    :cond_1
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@37
    move-result-object v6

    #@38
    .line 351
    .local v6, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    #@3a
    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3d
    .line 352
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    #@3f
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    #@42
    .line 353
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    #@43
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@46
    .line 354
    const/4 v10, 0x1

    #@47
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@4a
    .line 356
    new-instance v10, Landroid/graphics/RectF;

    #@4c
    const/4 v11, 0x0

    #@4d
    const/4 v12, 0x0

    #@4e
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    #@51
    move-result v13

    #@52
    int-to-float v13, v13

    #@53
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    #@56
    move-result v14

    #@57
    int-to-float v14, v14

    #@58
    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@5b
    .line 355
    const/4 v11, 0x0

    #@5c
    invoke-virtual {v1, p0, v11, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@5f
    .line 357
    move-object p0, v6

    #@60
    .line 360
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "scale":F
    .end local v9    # "width":I
    :cond_2
    return-object p0
.end method

.method private static sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 377
    const/4 v1, 0x0

    #@1
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 375
    return-void

    #@5
    .line 378
    :catch_0
    move-exception v0

    #@6
    .line 379
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "MediaSessionHelper"

    #@9
    const-string/jumbo v2, "Error sending media key down event:"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 381
    return-void
.end method


# virtual methods
.method public addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Landroid/content/ComponentName;
    .param p3, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 285
    if-nez p1, :cond_0

    #@2
    .line 286
    const-string/jumbo v1, "MediaSessionHelper"

    #@5
    const-string/jumbo v2, "Pending intent was null, can\'t addMediaButtonListener."

    #@8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 287
    return-void

    #@c
    .line 289
    :cond_0
    const/4 v1, 0x1

    #@d
    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@10
    move-result-object v0

    #@11
    .line 290
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_1

    #@13
    .line 291
    return-void

    #@14
    .line 293
    :cond_1
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 295
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 296
    const-string/jumbo v1, "MediaSessionHelper"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "addMediaButtonListener already added "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 299
    :cond_2
    new-instance v1, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@38
    invoke-direct {v1, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;-><init>(Landroid/app/PendingIntent;Landroid/content/Context;)V

    #@3b
    iput-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@3d
    .line 302
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@3f
    or-int/lit8 v1, v1, 0x1

    #@41
    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@43
    .line 303
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@45
    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@47
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    #@4a
    .line 304
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@4c
    invoke-virtual {v1, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    #@4f
    .line 305
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    #@52
    .line 306
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@54
    if-eqz v1, :cond_3

    #@56
    .line 307
    const-string/jumbo v1, "MediaSessionHelper"

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "addMediaButtonListener added "

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 284
    :cond_3
    return-void
.end method

.method public addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/media/session/MediaSession$Callback;

    #@0
    .prologue
    .line 241
    if-nez p1, :cond_0

    #@2
    .line 242
    const-string/jumbo v1, "MediaSessionHelper"

    #@5
    const-string/jumbo v2, "Pending intent was null, can\'t add rcc listener."

    #@8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 243
    return-void

    #@c
    .line 245
    :cond_0
    const/4 v1, 0x1

    #@d
    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@10
    move-result-object v0

    #@11
    .line 246
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_1

    #@13
    .line 247
    return-void

    #@14
    .line 249
    :cond_1
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@16
    if-eqz v1, :cond_3

    #@18
    .line 250
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@1a
    if-ne v1, p2, :cond_3

    #@1c
    .line 251
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 252
    const-string/jumbo v1, "MediaSessionHelper"

    #@23
    const-string/jumbo v2, "addRccListener listener already added."

    #@26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 255
    :cond_2
    return-void

    #@2a
    .line 258
    :cond_3
    iput-object p2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@2c
    .line 259
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@2e
    or-int/lit8 v1, v1, 0x2

    #@30
    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@32
    .line 260
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@34
    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@36
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    #@39
    .line 261
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    #@3c
    .line 262
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 263
    const-string/jumbo v1, "MediaSessionHelper"

    #@43
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "Added rcc listener for "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    const-string/jumbo v3, "."

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 240
    :cond_4
    return-void
.end method

.method public getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@9
    .line 165
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@e
    goto :goto_0
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@2
    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager;->isGlobalPriorityActive()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeMediaButtonListener(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 312
    if-nez p1, :cond_0

    #@3
    .line 313
    return-void

    #@4
    .line 315
    :cond_0
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    move-result-object v0

    #@9
    .line 316
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_1

    #@b
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 317
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@11
    and-int/lit8 v1, v1, -0x2

    #@13
    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@15
    .line 318
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@17
    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@19
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    #@1c
    .line 319
    iput-object v3, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@1e
    .line 321
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    #@21
    .line 322
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 323
    const-string/jumbo v1, "MediaSessionHelper"

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "removeMediaButtonListener removed "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 311
    :cond_1
    return-void
.end method

.method public removeRccListener(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 268
    if-nez p1, :cond_0

    #@3
    .line 269
    return-void

    #@4
    .line 271
    :cond_0
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    move-result-object v0

    #@9
    .line 272
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_1

    #@b
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 273
    iput-object v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@11
    .line 274
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@13
    and-int/lit8 v1, v1, -0x3

    #@15
    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@17
    .line 275
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@19
    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    #@1b
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    #@1e
    .line 276
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    #@21
    .line 277
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 278
    const-string/jumbo v1, "MediaSessionHelper"

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Removed rcc listener for "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    const-string/jumbo v3, "."

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 267
    :cond_1
    return-void
.end method

.method public sendAdjustVolumeBy(III)V
    .locals 2
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    #@5
    .line 231
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 232
    const-string/jumbo v0, "MediaSessionHelper"

    #@c
    const-string/jumbo v1, "dispatched volume adjustment"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 229
    :cond_0
    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    #@0
    .prologue
    .line 169
    if-nez p1, :cond_0

    #@2
    .line 170
    const-string/jumbo v0, "MediaSessionHelper"

    #@5
    const-string/jumbo v1, "Tried to send a null key event. Ignoring."

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 171
    return-void

    #@c
    .line 173
    :cond_0
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    #@11
    .line 174
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 175
    const-string/jumbo v0, "MediaSessionHelper"

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "dispatched media key "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 168
    :cond_1
    return-void
.end method

.method public sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 8
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "musicOnly"    # Z

    #@0
    .prologue
    const/high16 v7, -0x80000000

    #@2
    .line 180
    if-nez p1, :cond_0

    #@4
    .line 181
    const-string/jumbo v5, "MediaSessionHelper"

    #@7
    const-string/jumbo v6, "Tried to send a null key event. Ignoring."

    #@a
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 182
    return-void

    #@e
    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_4

    #@14
    const/4 v1, 0x1

    #@15
    .line 185
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@18
    move-result v5

    #@19
    const/4 v6, 0x1

    #@1a
    if-ne v5, v6, :cond_5

    #@1c
    const/4 v4, 0x1

    #@1d
    .line 186
    .local v4, "up":Z
    :goto_1
    const/4 v0, 0x0

    #@1e
    .line 187
    .local v0, "direction":I
    const/4 v3, 0x0

    #@1f
    .line 188
    .local v3, "isMute":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@22
    move-result v5

    #@23
    sparse-switch v5, :sswitch_data_0

    #@26
    .line 199
    :goto_2
    if-nez v1, :cond_1

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 201
    :cond_1
    if-eqz p2, :cond_6

    #@2c
    .line 204
    const/16 v2, 0x1200

    #@2e
    .line 213
    .local v2, "flags":I
    :goto_3
    if-eqz v0, :cond_8

    #@30
    .line 215
    if-eqz v4, :cond_2

    #@32
    .line 216
    const/4 v0, 0x0

    #@33
    .line 218
    :cond_2
    iget-object v5, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@35
    invoke-virtual {v5, v7, v0, v2}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    #@38
    .line 179
    .end local v2    # "flags":I
    :cond_3
    :goto_4
    return-void

    #@39
    .line 184
    .end local v0    # "direction":I
    .end local v1    # "down":Z
    .end local v3    # "isMute":Z
    .end local v4    # "up":Z
    :cond_4
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "down":Z
    goto :goto_0

    #@3b
    .line 185
    :cond_5
    const/4 v4, 0x0

    #@3c
    .restart local v4    # "up":Z
    goto :goto_1

    #@3d
    .line 190
    .restart local v0    # "direction":I
    .restart local v3    # "isMute":Z
    :sswitch_0
    const/4 v0, 0x1

    #@3e
    .line 191
    goto :goto_2

    #@3f
    .line 193
    :sswitch_1
    const/4 v0, -0x1

    #@40
    .line 194
    goto :goto_2

    #@41
    .line 196
    :sswitch_2
    const/4 v3, 0x1

    #@42
    .line 197
    goto :goto_2

    #@43
    .line 207
    :cond_6
    if-eqz v4, :cond_7

    #@45
    .line 208
    const/16 v2, 0x1014

    #@47
    .restart local v2    # "flags":I
    goto :goto_3

    #@48
    .line 210
    .end local v2    # "flags":I
    :cond_7
    const/16 v2, 0x1011

    #@4a
    .restart local v2    # "flags":I
    goto :goto_3

    #@4b
    .line 220
    :cond_8
    if-eqz v3, :cond_3

    #@4d
    .line 221
    if-eqz v1, :cond_3

    #@4f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@52
    move-result v5

    #@53
    if-nez v5, :cond_3

    #@55
    .line 222
    iget-object v5, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    #@57
    .line 223
    const/16 v6, 0x65

    #@59
    .line 222
    invoke-virtual {v5, v7, v6, v2}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    #@5c
    goto :goto_4

    #@5d
    .line 188
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method
