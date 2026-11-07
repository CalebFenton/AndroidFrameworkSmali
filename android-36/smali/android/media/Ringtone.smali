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
.field private static final greylist-max-o LOGD:Z = true

.field private static final greylist-max-o MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final greylist-max-o MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Ringtone"

.field private static final blacklist VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final blacklist VIBRATION_LOOP_DELAY_MS:I = 0xc8

.field private static final greylist-max-o sActiveRingtones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAllowRemote:Z

.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private final greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field private final greylist-max-o mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

.field private blacklist mHapticGeneratorEnabled:Z

.field private greylist-max-o mIsLooping:Z

.field private blacklist mIsVibrating:Z

.field private greylist-max-r mLocalPlayer:Landroid/media/MediaPlayer;

.field private final greylist-max-o mPlaybackSettingsLock:Ljava/lang/Object;

.field private blacklist mPreferBuiltinDevice:Z

.field private final greylist-max-o mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final greylist-max-o mRemoteToken:Landroid/os/Binder;

.field private final blacklist mRingtoneVibrationSupported:Z

.field private greylist-max-o mTitle:Ljava/lang/String;

.field private greylist mUri:Landroid/net/Uri;

.field private blacklist mVibrationEffect:Landroid/os/VibrationEffect;

.field private final blacklist mVibrator:Landroid/os/Vibrator;

.field private greylist-max-o mVolume:F

.field private blacklist mVolumeShaper:Landroid/media/VolumeShaper;

.field private blacklist mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsActiveRingtones()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    const-string v0, "_id"

    const-string v1, "title"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 74
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 73
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$MyOnCompletionListener;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    .line 101
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 102
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 103
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 109
    iput-boolean v0, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    .line 119
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 121
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 122
    const/4 v0, 0x0

    if-eqz p2, :cond_49

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    goto :goto_4a

    :cond_49
    move-object v1, v0

    :goto_4a
    iput-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 123
    if-eqz p2, :cond_53

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    :cond_53
    iput-object v0, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 124
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    .line 125
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/Utils;->isRingtoneVibrationSettingsSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    .line 126
    return-void
.end method

.method private greylist-max-o applyPlaybackProperties_sync()V
    .registers 7

    .line 374
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_32

    .line 375
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 376
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 377
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    if-eqz v0, :cond_26

    .line 378
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/HapticGenerator;->create(I)Landroid/media/audiofx/HapticGenerator;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    .line 380
    :cond_26
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    if-eqz v0, :cond_56

    .line 381
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    iget-boolean v1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    invoke-virtual {v0, v1}, Landroid/media/audiofx/HapticGenerator;->setEnabled(Z)I

    goto :goto_56

    .line 383
    :cond_32
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    const-string v1, "Ringtone"

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_51

    .line 385
    :try_start_3c
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    iget-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    iget-boolean v5, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/media/IRingtonePlayer;->setPlaybackProperties(Landroid/os/IBinder;FZZ)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_49} :catch_4a

    goto :goto_50

    .line 387
    :catch_4a
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Problem setting playback properties: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_50
    goto :goto_56

    .line 391
    :cond_51
    const-string v0, "Neither local nor remote player available when applying playback properties"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_56
    :goto_56
    return-void
.end method

.method private greylist-max-o destroyLocalPlayer()V
    .registers 3

    .line 603
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    .line 604
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 605
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    invoke-virtual {v0}, Landroid/media/audiofx/HapticGenerator;->release()V

    .line 606
    iput-object v1, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    .line 608
    :cond_10
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 609
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 610
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 611
    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 612
    iput-object v1, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 613
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v0

    .line 614
    :try_start_26
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 615
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v1

    .line 617
    :cond_30
    :goto_30
    return-void
.end method

.method private blacklist getBuiltinDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;
    .registers 8
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 189
    .local v1, "deviceList":[Landroid/media/AudioDeviceInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    .line 190
    .local v4, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, v0, :cond_12

    .line 191
    return-object v4

    .line 189
    .end local v4    # "device":Landroid/media/AudioDeviceInfo;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 194
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 414
    .local v1, "res":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 416
    .local v7, "title":Ljava/lang/String;
    if-eqz p1, :cond_ab

    .line 417
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 419
    .local v8, "authority":Ljava/lang/String;
    const-string v0, "settings"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 420
    if-eqz p2, :cond_35

    .line 421
    nop

    .line 422
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 421
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 423
    .local v0, "actualUri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "actualTitle":Ljava/lang/String;
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    .line 426
    const v4, 0x1040938

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 428
    .end local v0    # "actualUri":Landroid/net/Uri;
    .end local v2    # "actualTitle":Ljava/lang/String;
    move-object v2, p1

    goto/16 :goto_aa

    .line 420
    :cond_35
    move-object v2, p1

    goto/16 :goto_aa

    .line 430
    :cond_38
    const/4 v9, 0x0

    .line 432
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_39
    const-string v0, "media"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 433
    if-eqz p3, :cond_45

    const/4 v0, 0x0

    goto :goto_47

    :cond_45
    const-string v0, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

    :goto_47
    move-object v4, v0

    .line 434
    .local v4, "mediaSelection":Ljava/lang/String;
    sget-object v3, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_4a} :catch_78
    .catchall {:try_start_39 .. :try_end_4a} :catchall_74

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v2, "uri":Landroid/net/Uri;
    :try_start_4d
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    move-object v9, p1

    .line 435
    if-eqz v9, :cond_6d

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6d

    .line 436
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_62} :catch_69
    .catchall {:try_start_4d .. :try_end_62} :catchall_8d

    .line 455
    if-eqz v9, :cond_67

    .line 456
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_67
    const/4 v0, 0x0

    .line 437
    .end local v9    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    return-object p1

    .line 441
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "mediaSelection":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_69
    move-exception v0

    move-object p1, v0

    goto :goto_7b

    .line 432
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_6c
    move-object v2, p1

    .line 455
    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_6d
    if-eqz v9, :cond_72

    .line 456
    :goto_6f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_72
    const/4 p1, 0x0

    .line 459
    .end local v9    # "cursor":Landroid/database/Cursor;
    .local p1, "cursor":Landroid/database/Cursor;
    goto :goto_a4

    .line 455
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .local p1, "uri":Landroid/net/Uri;
    :catchall_74
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_99

    .line 441
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_78
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .line 442
    .restart local v2    # "uri":Landroid/net/Uri;
    .local p1, "e":Ljava/lang/SecurityException;
    :goto_7b
    const/4 v0, 0x0

    .line 443
    .local v0, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    if-eqz p3, :cond_90

    .line 444
    :try_start_7e
    const-string v3, "audio"

    .line 445
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 446
    .local v3, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_8d

    move-object v0, v4

    move-object v3, v0

    goto :goto_91

    .line 455
    .end local v0    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    .end local p1    # "e":Ljava/lang/SecurityException;
    :catchall_8d
    move-exception v0

    move-object p1, v0

    goto :goto_99

    .line 443
    .restart local v0    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .restart local p1    # "e":Ljava/lang/SecurityException;
    :cond_90
    move-object v3, v0

    .line 448
    .end local v0    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .local v3, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :goto_91
    if-eqz v3, :cond_a1

    .line 450
    :try_start_93
    invoke-interface {v3, v2}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_97} :catch_a0
    .catchall {:try_start_93 .. :try_end_97} :catchall_8d

    move-object v7, v0

    .line 452
    goto :goto_a1

    .line 455
    .end local v3    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .end local p1    # "e":Ljava/lang/SecurityException;
    :goto_99
    if-eqz v9, :cond_9e

    .line 456
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_9e
    const/4 v0, 0x0

    .line 459
    .end local v9    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    throw p1

    .line 451
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "e":Ljava/lang/SecurityException;
    :catch_a0
    move-exception v0

    .line 455
    .end local v3    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .end local p1    # "e":Ljava/lang/SecurityException;
    :cond_a1
    :goto_a1
    if-eqz v9, :cond_72

    .line 456
    goto :goto_6f

    .line 460
    .end local v9    # "cursor":Landroid/database/Cursor;
    .local p1, "cursor":Landroid/database/Cursor;
    :goto_a4
    if-nez v7, :cond_aa

    .line 461
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 464
    .end local v8    # "authority":Ljava/lang/String;
    .end local p1    # "cursor":Landroid/database/Cursor;
    :cond_aa
    :goto_aa
    goto :goto_b3

    .line 465
    .end local v2    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :cond_ab
    move-object v2, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v2    # "uri":Landroid/net/Uri;
    const p1, 0x104093c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 468
    :goto_b3
    if-nez v7, :cond_c0

    .line 469
    const p1, 0x104093d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 470
    if-nez v7, :cond_c0

    .line 471
    const-string v7, ""

    .line 475
    :cond_c0
    return-object v7
.end method

.method private greylist-max-o playFallbackRingtone()Z
    .registers 12

    .line 655
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 656
    .local v1, "streamType":I
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 657
    return v2

    .line 659
    :cond_10
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    .line 660
    .local v3, "ringtoneType":I
    const/4 v0, -0x1

    if-eq v3, v0, :cond_3c

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 661
    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 662
    const-string v0, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not playing fallback for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return v2

    .line 667
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1100006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v4, v0

    .line 669
    .local v4, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v4, :cond_54

    .line 670
    const-string v0, "Ringtone"

    const-string v5, "Could not load fallback ringtone"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return v2

    .line 673
    :cond_54
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 674
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_6f

    .line 675
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_80

    .line 677
    :cond_6f
    iget-object v5, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 678
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    .line 679
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v9

    .line 677
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 681
    :goto_80
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 682
    iget-object v5, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_8a} :catch_b6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_8a} :catch_ad

    .line 683
    :try_start_8a
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 684
    monitor-exit v5
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_aa

    .line 685
    :try_start_8e
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v0, :cond_9c

    .line 686
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 688
    :cond_9c
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 689
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    .line 690
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_a7} :catch_b6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8e .. :try_end_a7} :catch_ad

    .line 698
    .end local v4    # "afd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 699
    const/4 v0, 0x1

    return v0

    .line 684
    .restart local v4    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_aa
    move-exception v0

    :try_start_ab
    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    .end local v1    # "streamType":I
    .end local v3    # "ringtoneType":I
    .end local p0    # "this":Landroid/media/Ringtone;
    :try_start_ac
    throw v0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ad} :catch_b6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ac .. :try_end_ad} :catch_ad

    .line 695
    .end local v4    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v1    # "streamType":I
    .restart local v3    # "ringtoneType":I
    .restart local p0    # "this":Landroid/media/Ringtone;
    :catch_ad
    move-exception v0

    .line 696
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "Ringtone"

    const-string v5, "Fallback ringtone does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return v2

    .line 691
    .end local v0    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_b6
    move-exception v0

    .line 692
    .local v0, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 693
    const-string v4, "Ringtone"

    const-string v5, "Failed to open fallback ringtone"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return v2
.end method

.method private blacklist playVibration()V
    .registers 4

    .line 575
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v0, :cond_5

    .line 576
    return-void

    .line 578
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsVibrating:Z

    .line 579
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Landroid/media/Ringtone;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 580
    return-void
.end method

.method private greylist-max-o startLocalPlayer()V
    .registers 3

    .line 620
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 621
    return-void

    .line 623
    :cond_5
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v0

    .line 624
    :try_start_8
    sget-object v1, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_26

    .line 626
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 627
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 628
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    if-eqz v0, :cond_25

    .line 629
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper;->apply(Landroid/media/VolumeShaper$Operation;)V

    .line 631
    :cond_25
    return-void

    .line 625
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public blacklist createLocalMediaPlayer()Z
    .registers 7

    .line 217
    const-string v0, "createLocalMediaPlayer"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    .line 219
    const-string v0, "Ringtone"

    const-string v3, "Could not create media player as no URI was provided."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 222
    :cond_1d
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 224
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 226
    :try_start_27
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 227
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 228
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 229
    iget-boolean v3, p0, Landroid/media/Ringtone;->mPreferBuiltinDevice:Z

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v3}, Landroid/media/Ringtone;->getBuiltinDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    .line 228
    :goto_45
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 230
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_4b} :catch_66
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4b} :catch_66

    .line 231
    :try_start_4b
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 232
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_63

    .line 233
    :try_start_4f
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v0, :cond_5d

    .line 234
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 236
    :cond_5d
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_62} :catch_66
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_62} :catch_66

    .line 243
    goto :goto_86

    .line 232
    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    .end local p0    # "this":Landroid/media/Ringtone;
    :try_start_65
    throw v3
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_65 .. :try_end_66} :catch_66
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_66} :catch_66

    .line 238
    .restart local p0    # "this":Landroid/media/Ringtone;
    :catch_66
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 240
    iget-boolean v3, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v3, :cond_86

    .line 241
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote playback not allowed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_86
    :goto_86
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_92

    .line 247
    const-string v0, "Ringtone"

    const-string v3, "Successfully created local player"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 249
    :cond_92
    const-string v0, "Ringtone"

    const-string v3, "Problem opening; delegating to remote player"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_99
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 253
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_aa

    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_a9

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_a9

    goto :goto_aa

    :cond_a9
    move v1, v2

    :cond_aa
    :goto_aa
    return v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 708
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 709
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 711
    :cond_9
    return-void
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 294
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getStreamType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist getTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 403
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-object v0

    .line 404
    :cond_7
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getUri()Landroid/net/Uri;
    .registers 2

    .line 531
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getVibrationEffect()Landroid/os/VibrationEffect;
    .registers 2

    .line 525
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public whitelist getVolume()F
    .registers 3

    .line 337
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    iget v1, p0, Landroid/media/Ringtone;->mVolume:F

    monitor-exit v0

    return v1

    .line 339
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist hasHapticChannels()Z
    .registers 7

    .line 265
    :try_start_0
    const-string v0, "Ringtone.hasHapticChannels"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 267
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 268
    .local v4, "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->hasHapticChannels()Z

    move-result v5
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_2a

    if-eqz v5, :cond_22

    .line 269
    nop

    .line 274
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 269
    const/4 v0, 0x1

    return v0

    .line 267
    .end local v4    # "trackInfo":Landroid/media/MediaPlayer$TrackInfo;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 274
    :cond_25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 275
    nop

    .line 276
    return v1

    .line 274
    :catchall_2a
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 275
    throw v0
.end method

.method public blacklist hasLocalPlayer()Z
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isHapticGeneratorEnabled()Z
    .registers 3

    .line 365
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    iget-boolean v1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    monitor-exit v0

    return v1

    .line 367
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isLooping()Z
    .registers 3

    .line 313
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    monitor-exit v0

    return v1

    .line 315
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isPlaying()Z
    .registers 6

    .line 639
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 640
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 641
    :cond_b
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    const/4 v1, 0x0

    const-string v2, "Ringtone"

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_37

    .line 643
    :try_start_16
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v0, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1f

    return v0

    .line 644
    :catch_1f
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return v1

    .line 649
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    const-string v0, "Neither local nor remote playback available"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return v1
.end method

.method public whitelist play()V
    .registers 9

    .line 538
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_28

    .line 541
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_16

    .line 543
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    goto :goto_7e

    .line 544
    :cond_16
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p0}, Landroid/media/Ringtone;->hasHapticChannels()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 546
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    goto :goto_7e

    .line 548
    :cond_28
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_71

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_71

    .line 549
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v3

    .line 552
    .local v3, "canonicalUri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_3d
    iget-boolean v6, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 554
    .local v6, "looping":Z
    iget v5, p0, Landroid/media/Ringtone;->mVolume:F

    .line 555
    .local v5, "volume":F
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_6e

    .line 557
    :try_start_42
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v7, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-interface/range {v1 .. v7}, Landroid/media/IRingtonePlayer;->playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4d} :catch_4e

    .line 563
    goto :goto_6d

    .line 559
    :catch_4e
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 561
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "canonicalUri":Landroid/net/Uri;
    .end local v5    # "volume":F
    .end local v6    # "looping":Z
    :cond_6d
    :goto_6d
    goto :goto_7e

    .line 555
    .restart local v3    # "canonicalUri":Landroid/net/Uri;
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0

    .line 565
    .end local v3    # "canonicalUri":Landroid/net/Uri;
    :cond_71
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 566
    const-string v0, "Ringtone"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_7e
    :goto_7e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-boolean v0, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    if-eqz v0, :cond_8b

    .line 570
    invoke-direct {p0}, Landroid/media/Ringtone;->playVibration()V

    .line 572
    :cond_8b
    return-void
.end method

.method public blacklist preferBuiltinDevice(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 203
    iput-boolean p1, p0, Landroid/media/Ringtone;->mPreferBuiltinDevice:Z

    .line 204
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_8

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_8
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->getBuiltinDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->setAudioAttributesField(Landroid/media/AudioAttributes;)V

    .line 163
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {p0, v0, v1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 164
    invoke-virtual {p0}, Landroid/media/Ringtone;->createLocalMediaPlayer()Z

    .line 165
    return-void
.end method

.method public blacklist setAudioAttributesField(Landroid/media/AudioAttributes;)V
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 173
    if-eqz p1, :cond_5

    .line 176
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 177
    return-void

    .line 174
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHapticGeneratorEnabled(Z)Z
    .registers 4
    .param p1, "enabled"    # Z

    .line 350
    invoke-static {}, Landroid/media/audiofx/HapticGenerator;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 351
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_8
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_b
    iput-boolean p1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    .line 355
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 356
    monitor-exit v0

    .line 357
    const/4 v0, 0x1

    return v0

    .line 356
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist setLooping(Z)V
    .registers 4
    .param p1, "looping"    # Z

    .line 302
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iput-boolean p1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 304
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist setStreamType(I)V
    .registers 4
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    const-string v0, "Ringtone"

    const-string v1, "setStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 138
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 140
    return-void
.end method

.method greylist-max-o setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 703
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public greylist setUri(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 487
    return-void
.end method

.method public blacklist setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 504
    iput-object p2, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 505
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 506
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_b

    .line 507
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 509
    :cond_b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_36

    .line 511
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/Utils;->getVibrationUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/Utils;->parseVibrationEffect(Landroid/os/Vibrator;Landroid/net/Uri;)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 512
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_36

    .line 513
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 514
    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibrationEffect;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 517
    :cond_36
    return-void
.end method

.method public whitelist setVolume(F)V
    .registers 4
    .param p1, "volume"    # F

    .line 324
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    const/4 p1, 0x0

    .line 326
    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_11

    const/high16 p1, 0x3f800000    # 1.0f

    .line 327
    :cond_11
    :try_start_11
    iput p1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 328
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist setVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)V
    .registers 2
    .param p1, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 493
    iput-object p1, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 494
    return-void
.end method

.method public whitelist stop()V
    .registers 4

    .line 586
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 587
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    goto :goto_31

    .line 588
    :cond_8
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_31

    .line 590
    :try_start_10
    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_18

    .line 593
    goto :goto_31

    .line 591
    :catch_18
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem stopping ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ringtone"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableRingtoneHapticsCustomization()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Landroid/media/Ringtone;->mRingtoneVibrationSupported:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Landroid/media/Ringtone;->mIsVibrating:Z

    if-eqz v0, :cond_47

    .line 597
    iget-object v0, p0, Landroid/media/Ringtone;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsVibrating:Z

    .line 600
    :cond_47
    return-void
.end method
