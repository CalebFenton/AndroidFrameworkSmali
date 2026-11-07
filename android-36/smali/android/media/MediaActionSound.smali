.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaActionSound$SoundState;
    }
.end annotation


# static fields
.field public static final whitelist FOCUS_COMPLETE:I = 0x1

.field private static final greylist-max-o NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final whitelist SHUTTER_CLICK:I = 0x0

.field private static final greylist-max-o SOUND_DIRS:[Ljava/lang/String;

.field private static final greylist-max-o SOUND_FILES:[Ljava/lang/String;

.field public static final whitelist START_VIDEO_RECORDING:I = 0x2

.field private static final greylist-max-o STATE_LOADED:I = 0x3

.field private static final greylist-max-o STATE_LOADING:I = 0x1

.field private static final greylist-max-o STATE_LOADING_PLAY_REQUESTED:I = 0x2

.field private static final greylist-max-o STATE_NOT_LOADED:I = 0x0

.field public static final whitelist STOP_VIDEO_RECORDING:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private greylist-max-o mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private greylist-max-o mSoundPool:Landroid/media/SoundPool;

.field private greylist-max-o mSounds:[Landroid/media/MediaActionSound$SoundState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSounds(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 54
    const-string v0, "/product/media/audio/ui/"

    const-string v1, "/system/media/audio/ui/"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_DIRS:[Ljava/lang/String;

    .line 59
    const-string v0, "VideoRecord.ogg"

    const-string v1, "VideoStop.ogg"

    const-string v2, "camera_click.ogg"

    const-string v3, "camera_focus.ogg"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Landroid/media/MediaActionSound$1;

    invoke-direct {v0, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    iput-object v0, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 148
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 151
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 153
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 156
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 157
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/MediaActionSound$SoundState;

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v1, v1

    if-ge v0, v1, :cond_56

    .line 159
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    new-instance v2, Landroid/media/MediaActionSound$SoundState;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaActionSound$SoundState;-><init>(Landroid/media/MediaActionSound;I)V

    aput-object v2, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 161
    .end local v0    # "i":I
    :cond_56
    return-void
.end method

.method private greylist-max-o loadSound(Landroid/media/MediaActionSound$SoundState;)I
    .registers 11
    .param p1, "sound"    # Landroid/media/MediaActionSound$SoundState;

    .line 164
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    iget v1, p1, Landroid/media/MediaActionSound$SoundState;->name:I

    aget-object v0, v0, v1

    .line 165
    .local v0, "soundFileName":Ljava/lang/String;
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_DIRS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    .line 166
    .local v5, "soundDir":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 167
    .local v6, "id":I
    if-lez v6, :cond_2e

    .line 168
    iput v8, p1, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 169
    iput v6, p1, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 170
    return v6

    .line 165
    .end local v5    # "soundDir":Ljava/lang/String;
    .end local v6    # "id":I
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 173
    :cond_31
    return v3
.end method

.method public static whitelist mustPlayShutterSound()Z
    .registers 6

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Z
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 122
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 124
    .local v2, "audioService":Landroid/media/IAudioService;
    :try_start_b
    invoke-interface {v2}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_11

    move v0, v3

    .line 127
    goto :goto_19

    .line 125
    :catch_11
    move-exception v3

    .line 126
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MediaActionSound"

    const-string v5, "audio service is unavailable for queries, defaulting to false"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_19
    return v0
.end method


# virtual methods
.method public whitelist load(I)V
    .registers 6
    .param p1, "soundName"    # I

    .line 189
    if-ltz p1, :cond_58

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_58

    .line 192
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v0, v0, p1

    .line 193
    .local v0, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v0

    .line 194
    :try_start_c
    iget v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v1, :pswitch_data_72

    .line 201
    const-string v1, "MediaActionSound"

    goto :goto_33

    .line 196
    :pswitch_14
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v1

    if-gtz v1, :cond_53

    .line 197
    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load() error loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 201
    :goto_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_53
    :goto_53
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_c .. :try_end_57} :catchall_55

    throw v1

    .line 190
    .end local v0    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_58
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist play(I)V
    .registers 11
    .param p1, "soundName"    # I

    .line 239
    if-ltz p1, :cond_71

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_71

    .line 242
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v1, v0, p1

    .line 243
    .local v1, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v1

    .line 244
    :try_start_c
    iget v0, v1, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v0, :pswitch_data_8a

    .line 260
    :pswitch_11
    const-string v0, "MediaActionSound"

    goto :goto_4a

    .line 257
    :pswitch_14
    iget-object v2, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget v3, v1, Landroid/media/MediaActionSound$SoundState;->id:I

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 258
    goto :goto_6c

    .line 246
    :pswitch_24
    invoke-direct {p0, v1}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    .line 247
    invoke-direct {p0, v1}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v0

    if-gtz v0, :cond_46

    .line 248
    const-string v0, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() error loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    goto :goto_6c

    .line 254
    :cond_46
    :pswitch_46
    const/4 v0, 0x2

    iput v0, v1, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 255
    goto :goto_6c

    .line 260
    :goto_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_6c
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_6e
    move-exception v0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_c .. :try_end_70} :catchall_6e

    throw v0

    .line 240
    .end local v1    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_71
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_46
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist release()V
    .registers 6

    .line 311
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_21

    .line 312
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 313
    .local v4, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v4

    .line 314
    :try_start_e
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 315
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 316
    monitor-exit v4

    .line 312
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 316
    .restart local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    :catchall_16
    move-exception v0

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0

    .line 318
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_19
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    .line 321
    :cond_21
    return-void
.end method
