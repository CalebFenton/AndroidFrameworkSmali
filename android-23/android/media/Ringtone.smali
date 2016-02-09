.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Ringtone$MyOnCompletionListener;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field private static final TAG:Ljava/lang/String; = "Ringtone"

.field private static final sActiveRingtones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllowRemote:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private mIsLooping:Z

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mPlaybackSettingsLock:Ljava/lang/Object;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVolume:F


# direct methods
.method static synthetic -get0()Ljava/util/ArrayList;
    .locals 1

    #@0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 49
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 50
    const-string/jumbo v1, "_id"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 51
    const-string/jumbo v1, "_data"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 52
    const-string/jumbo v1, "title"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 49
    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    #@17
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    sput-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    #@1e
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    new-instance v0, Landroid/media/Ringtone$MyOnCompletionListener;

    #@6
    invoke-direct {v0, p0}, Landroid/media/Ringtone$MyOnCompletionListener;-><init>(Landroid/media/Ringtone;)V

    #@9
    iput-object v0, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    #@b
    .line 79
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@d
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@10
    .line 80
    const/4 v2, 0x6

    #@11
    .line 79
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@14
    move-result-object v0

    #@15
    .line 81
    const/4 v2, 0x4

    #@16
    .line 79
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@20
    .line 84
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsLooping:Z

    #@23
    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    #@25
    iput v0, p0, Landroid/media/Ringtone;->mVolume:F

    #@27
    .line 86
    new-instance v0, Ljava/lang/Object;

    #@29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    #@2e
    .line 90
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    #@30
    .line 91
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    #@32
    const-string/jumbo v2, "audio"

    #@35
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/media/AudioManager;

    #@3b
    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    #@3d
    .line 92
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    #@3f
    .line 93
    if-eqz p2, :cond_1

    #@41
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    #@43
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    #@46
    move-result-object v0

    #@47
    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@49
    .line 94
    if-eqz p2, :cond_0

    #@4b
    new-instance v1, Landroid/os/Binder;

    #@4d
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    #@50
    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    #@52
    .line 89
    return-void

    #@53
    :cond_1
    move-object v0, v1

    #@54
    .line 93
    goto :goto_0
.end method

.method private applyPlaybackProperties_sync()V
    .locals 5

    #@0
    .prologue
    .line 177
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 178
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@6
    iget v2, p0, Landroid/media/Ringtone;->mVolume:F

    #@8
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    #@b
    .line 179
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@d
    iget-boolean v2, p0, Landroid/media/Ringtone;->mIsLooping:Z

    #@f
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    #@12
    .line 176
    :goto_0
    return-void

    #@13
    .line 180
    :cond_0
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@1d
    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    #@1f
    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    #@21
    iget-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    #@23
    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->setPlaybackProperties(Landroid/os/IBinder;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 183
    :catch_0
    move-exception v0

    #@28
    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Ringtone"

    #@2b
    const-string/jumbo v2, "Problem setting playback properties: "

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0

    #@32
    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "Ringtone"

    #@35
    .line 188
    const-string/jumbo v2, "Neither local nor remote player available when applying playback properties"

    #@38
    .line 187
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
.end method

.method private destroyLocalPlayer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 370
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 371
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    #@a
    .line 372
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@c
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@f
    .line 373
    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@11
    .line 374
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    #@13
    monitor-enter v1

    #@14
    .line 375
    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 369
    :cond_0
    return-void

    #@1b
    .line 374
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public static getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z

    #@0
    .prologue
    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v2

    #@4
    .line 210
    .local v2, "res":Landroid/content/ContentResolver;
    const/16 v16, 0x0

    #@6
    .line 212
    .local v16, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@8
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@b
    move-result-object v11

    #@c
    .line 215
    .local v11, "authority":Ljava/lang/String;
    const-string/jumbo v3, "settings"

    #@f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 216
    if-eqz p2, :cond_0

    #@17
    .line 218
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    #@1a
    move-result v3

    #@1b
    .line 217
    move-object/from16 v0, p0

    #@1d
    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    #@20
    move-result-object v9

    #@21
    .line 220
    .local v9, "actualUri":Landroid/net/Uri;
    const/4 v3, 0x0

    #@22
    .line 219
    move-object/from16 v0, p0

    #@24
    move/from16 v1, p3

    #@26
    invoke-static {v0, v9, v3, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    .line 221
    .local v8, "actualTitle":Ljava/lang/String;
    const/4 v3, 0x1

    #@2b
    new-array v3, v3, [Ljava/lang/Object;

    #@2d
    .line 223
    const/4 v4, 0x0

    #@2e
    aput-object v8, v3, v4

    #@30
    .line 222
    const v4, 0x104038e

    #@33
    .line 221
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v16

    #@39
    .line 262
    .end local v8    # "actualTitle":Ljava/lang/String;
    .end local v9    # "actualUri":Landroid/net/Uri;
    .end local v11    # "authority":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v16, :cond_1

    #@3b
    .line 263
    const v3, 0x1040391

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@43
    move-result-object v16

    #@44
    .line 265
    .local v16, "title":Ljava/lang/String;
    if-nez v16, :cond_1

    #@46
    .line 266
    const-string/jumbo v16, ""

    #@49
    .line 270
    .end local v16    # "title":Ljava/lang/String;
    :cond_1
    return-object v16

    #@4a
    .line 226
    .restart local v11    # "authority":Ljava/lang/String;
    .local v16, "title":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    #@4b
    .line 228
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "media"

    #@4e
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_5

    #@54
    .line 229
    if-eqz p3, :cond_4

    #@56
    const/4 v5, 0x0

    #@57
    .line 230
    :goto_1
    sget-object v4, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    #@59
    const/4 v6, 0x0

    #@5a
    const/4 v7, 0x0

    #@5b
    move-object/from16 v3, p1

    #@5d
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@60
    move-result-object v12

    #@61
    .line 231
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_5

    #@63
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    #@66
    move-result v3

    #@67
    const/4 v4, 0x1

    #@68
    if-ne v3, v4, :cond_5

    #@6a
    .line 232
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    #@6d
    .line 233
    const/4 v3, 0x2

    #@6e
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    move-result-object v3

    #@72
    .line 251
    if-eqz v12, :cond_3

    #@74
    .line 252
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@77
    .line 254
    :cond_3
    const/4 v12, 0x0

    #@78
    .line 233
    .local v12, "cursor":Landroid/database/Cursor;
    return-object v3

    #@79
    .line 229
    :cond_4
    :try_start_1
    const-string/jumbo v5, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    .local v5, "mediaSelection":Ljava/lang/String;
    goto :goto_1

    #@7d
    .line 251
    .end local v5    # "mediaSelection":Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v12, :cond_6

    #@7f
    .line 252
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@82
    .line 254
    .end local v16    # "title":Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v12, 0x0

    #@83
    .line 256
    .restart local v12    # "cursor":Landroid/database/Cursor;
    if-nez v16, :cond_0

    #@85
    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    #@88
    move-result-object v16

    #@89
    .local v16, "title":Ljava/lang/String;
    goto :goto_0

    #@8a
    .line 237
    .end local v12    # "cursor":Landroid/database/Cursor;
    .local v16, "title":Ljava/lang/String;
    :catch_0
    move-exception v13

    #@8b
    .line 238
    .local v13, "e":Ljava/lang/SecurityException;
    const/4 v14, 0x0

    #@8c
    .line 239
    .local v14, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    if-eqz p3, :cond_7

    #@8e
    .line 241
    :try_start_2
    const-string/jumbo v3, "audio"

    #@91
    move-object/from16 v0, p0

    #@93
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@96
    move-result-object v10

    #@97
    check-cast v10, Landroid/media/AudioManager;

    #@99
    .line 242
    .local v10, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9c
    move-result-object v14

    #@9d
    .line 244
    .end local v10    # "audioManager":Landroid/media/AudioManager;
    .end local v14    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :cond_7
    if-eqz v14, :cond_8

    #@9f
    .line 246
    :try_start_3
    move-object/from16 v0, p1

    #@a1
    invoke-interface {v14, v0}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a4
    move-result-object v16

    #@a5
    .line 251
    .end local v16    # "title":Ljava/lang/String;
    :cond_8
    :goto_3
    if-eqz v12, :cond_6

    #@a7
    .line 252
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@aa
    goto :goto_2

    #@ab
    .line 247
    .restart local v16    # "title":Ljava/lang/String;
    :catch_1
    move-exception v15

    #@ac
    .local v15, "re":Landroid/os/RemoteException;
    goto :goto_3

    #@ad
    .line 250
    .end local v13    # "e":Ljava/lang/SecurityException;
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@ae
    .line 251
    if-eqz v12, :cond_9

    #@b0
    .line 252
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    #@b3
    .line 254
    :cond_9
    const/4 v12, 0x0

    #@b4
    .line 250
    .restart local v12    # "cursor":Landroid/database/Cursor;
    throw v3
.end method

.method private playFallbackRingtone()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 413
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    #@3
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@5
    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 415
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@11
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    #@14
    move-result v9

    #@15
    .line 416
    .local v9, "ringtoneType":I
    const/4 v0, -0x1

    #@16
    if-eq v9, v0, :cond_0

    #@18
    .line 417
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    #@1a
    invoke-static {v0, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_4

    #@20
    .line 420
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object v0

    #@26
    .line 421
    const v1, 0x1100005

    #@29
    .line 420
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    #@2c
    move-result-object v6

    #@2d
    .line 422
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_3

    #@2f
    .line 423
    new-instance v0, Landroid/media/MediaPlayer;

    #@31
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    #@34
    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@36
    .line 424
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@39
    move-result-wide v0

    #@3a
    const-wide/16 v2, 0x0

    #@3c
    cmp-long v0, v0, v2

    #@3e
    if-gez v0, :cond_1

    #@40
    .line 425
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@42
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    #@49
    .line 431
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@4b
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@4d
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@50
    .line 432
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    #@52
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@53
    .line 433
    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    :try_start_2
    monitor-exit v0

    #@57
    .line 435
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@59
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    #@5c
    .line 436
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    #@5f
    .line 437
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@62
    .line 438
    const/4 v0, 0x1

    #@63
    return v0

    #@64
    .line 427
    :cond_1
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@66
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@69
    move-result-object v1

    #@6a
    .line 428
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@6d
    move-result-wide v2

    #@6e
    .line 429
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@71
    move-result-wide v4

    #@72
    .line 427
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    #@75
    goto :goto_0

    #@76
    .line 442
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    #@77
    .line 443
    .local v7, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    #@7a
    .line 444
    const-string/jumbo v0, "Ringtone"

    #@7d
    const-string/jumbo v1, "Failed to open fallback ringtone"

    #@80
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 452
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "ringtoneType":I
    :cond_2
    :goto_1
    return v10

    #@84
    .line 432
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "ringtoneType":I
    :catchall_0
    move-exception v1

    #@85
    :try_start_3
    monitor-exit v0

    #@86
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    #@87
    .line 445
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    #@88
    .line 446
    .local v8, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v0, "Ringtone"

    #@8b
    const-string/jumbo v1, "Fallback ringtone does not exist"

    #@8e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    goto :goto_1

    #@92
    .line 440
    .end local v8    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_3
    :try_start_4
    const-string/jumbo v0, "Ringtone"

    #@95
    const-string/jumbo v1, "Could not load fallback ringtone"

    #@98
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    #@9b
    goto :goto_1

    #@9c
    .line 449
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_4
    const-string/jumbo v0, "Ringtone"

    #@9f
    new-instance v1, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v2, "not playing fallback for "

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    goto :goto_1
.end method

.method private startLocalPlayer()V
    .locals 2

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 382
    return-void

    #@5
    .line 384
    :cond_0
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    #@7
    monitor-enter v1

    #@8
    .line 385
    :try_start_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 387
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@10
    iget-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    #@12
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@15
    .line 388
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    #@1a
    .line 380
    return-void

    #@1b
    .line 384
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 462
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    #@9
    .line 460
    :cond_0
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@2
    return-object v0
.end method

.method public getStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@2
    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 200
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@9
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    #@b
    const/4 v2, 0x1

    #@c
    invoke-static {p1, v0, v2, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    #@12
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isPlaying()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 397
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 398
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@7
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 399
    :cond_0
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 401
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@16
    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    #@18
    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v1

    #@1c
    return v1

    #@1d
    .line 402
    :catch_0
    move-exception v0

    #@1e
    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Ringtone"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Problem checking ringtone: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 404
    return v4

    #@39
    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v1, "Ringtone"

    #@3c
    const-string/jumbo v2, "Neither local nor remote playback available"

    #@3f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 408
    return v4
.end method

.method public play()V
    .locals 7

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 328
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    #@6
    .line 329
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@8
    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@b
    move-result v1

    #@c
    .line 328
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 330
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    #@15
    .line 324
    :cond_0
    :goto_0
    return-void

    #@16
    .line 332
    :cond_1
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    #@18
    if-eqz v0, :cond_2

    #@1a
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 333
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@20
    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    #@23
    move-result-object v2

    #@24
    .line 336
    .local v2, "canonicalUri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    #@26
    monitor-enter v1

    #@27
    .line 337
    :try_start_0
    iget-boolean v5, p0, Landroid/media/Ringtone;->mIsLooping:Z

    #@29
    .line 338
    .local v5, "looping":Z
    iget v4, p0, Landroid/media/Ringtone;->mVolume:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .local v4, "volume":F
    monitor-exit v1

    #@2c
    .line 341
    :try_start_1
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@2e
    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    #@30
    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@32
    invoke-interface/range {v0 .. v5}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 342
    :catch_0
    move-exception v6

    #@37
    .line 343
    .local v6, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_0

    #@3d
    .line 344
    const-string/jumbo v0, "Ringtone"

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "Problem playing ringtone: "

    #@48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_0

    #@58
    .line 336
    .end local v4    # "volume":F
    .end local v5    # "looping":Z
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@59
    monitor-exit v1

    #@5a
    throw v0

    #@5b
    .line 348
    .end local v2    # "canonicalUri":Landroid/net/Uri;
    :cond_2
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    #@5e
    move-result v0

    #@5f
    if-nez v0, :cond_0

    #@61
    .line 349
    const-string/jumbo v0, "Ringtone"

    #@64
    const-string/jumbo v1, "Neither local nor remote playback available"

    #@67
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    goto :goto_0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    if-nez p1, :cond_0

    #@2
    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid null AudioAttributes for Ringtone"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 131
    :cond_0
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@d
    .line 134
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@f
    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    #@12
    .line 127
    return-void
.end method

.method public setLooping(Z)V
    .locals 2
    .param p1, "looping"    # Z

    #@0
    .prologue
    .line 152
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 153
    :try_start_0
    iput-boolean p1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    #@5
    .line 154
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 151
    return-void

    #@a
    .line 152
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public setStreamType(I)V
    .locals 1
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 105
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@10
    .line 104
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    #@2
    .line 455
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 281
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    #@3
    .line 283
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@5
    .line 284
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 285
    return-void

    #@a
    .line 291
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    #@c
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #@f
    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@11
    .line 293
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@13
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    #@15
    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    #@17
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    #@1a
    .line 294
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@1c
    iget-object v2, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@1e
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@21
    .line 295
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    #@23
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 296
    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :try_start_2
    monitor-exit v1

    #@28
    .line 298
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@2a
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2d
    .line 308
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 309
    const-string/jumbo v1, "Ringtone"

    #@34
    const-string/jumbo v2, "Successfully created local player"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 280
    :goto_1
    return-void

    #@3b
    .line 295
    :catchall_0
    move-exception v2

    #@3c
    :try_start_3
    monitor-exit v1

    #@3d
    throw v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@3e
    .line 300
    :catch_0
    move-exception v0

    #@3f
    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    #@42
    .line 302
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    #@44
    if-nez v1, :cond_1

    #@46
    .line 303
    const-string/jumbo v1, "Ringtone"

    #@49
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "Remote playback not allowed: "

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    goto :goto_0

    #@61
    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v1, "Ringtone"

    #@64
    const-string/jumbo v2, "Problem opening; delegating to remote player"

    #@67
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    #@0
    .prologue
    .line 165
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 166
    const/4 v0, 0x0

    #@4
    cmpg-float v0, p1, v0

    #@6
    if-gez v0, :cond_0

    #@8
    const/4 p1, 0x0

    #@9
    .line 167
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    #@b
    cmpl-float v0, p1, v0

    #@d
    if-lez v0, :cond_1

    #@f
    const/high16 p1, 0x3f800000    # 1.0f

    #@11
    .line 168
    :cond_1
    :try_start_0
    iput p1, p0, Landroid/media/Ringtone;->mVolume:F

    #@13
    .line 169
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    .line 164
    return-void

    #@18
    .line 165
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public stop()V
    .locals 4

    #@0
    .prologue
    .line 358
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 359
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    #@7
    .line 357
    :cond_0
    :goto_0
    return-void

    #@8
    .line 360
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 362
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    #@12
    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    #@14
    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    goto :goto_0

    #@18
    .line 363
    :catch_0
    move-exception v0

    #@19
    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Ringtone"

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Problem stopping ringtone: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    goto :goto_0
.end method
