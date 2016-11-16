.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaActionSound$1;,
        Landroid/media/MediaActionSound$SoundState;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_FILES:[Ljava/lang/String;

.field public static final START_VIDEO_RECORDING:I = 0x2

.field private static final STATE_LOADED:I = 0x3

.field private static final STATE_LOADING:I = 0x1

.field private static final STATE_LOADING_PLAY_REQUESTED:I = 0x2

.field private static final STATE_NOT_LOADED:I = 0x0

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSounds:[Landroid/media/MediaActionSound$SoundState;


# direct methods
.method static synthetic -get0(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 50
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 51
    const-string/jumbo v1, "/system/media/audio/ui/camera_click.ogg"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 52
    const-string/jumbo v1, "/system/media/audio/ui/camera_focus.ogg"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 53
    const-string/jumbo v1, "/system/media/audio/ui/VideoRecord.ogg"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 54
    const-string/jumbo v1, "/system/media/audio/ui/VideoStop.ogg"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 50
    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@1d
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 234
    new-instance v1, Landroid/media/MediaActionSound$1;

    #@6
    invoke-direct {v1, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    #@9
    .line 233
    iput-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    #@b
    .line 119
    new-instance v1, Landroid/media/SoundPool$Builder;

    #@d
    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    #@10
    invoke-virtual {v1, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    #@13
    move-result-object v1

    #@14
    .line 121
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    #@16
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@19
    .line 122
    const/16 v3, 0xd

    #@1b
    .line 121
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    #@22
    move-result-object v2

    #@23
    .line 124
    const/4 v3, 0x4

    #@24
    .line 121
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@2b
    move-result-object v2

    #@2c
    .line 119
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@36
    .line 127
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@38
    iget-object v2, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    #@3a
    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    #@3d
    .line 128
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@3f
    array-length v1, v1

    #@40
    new-array v1, v1, [Landroid/media/MediaActionSound$SoundState;

    #@42
    iput-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    #@44
    .line 129
    const/4 v0, 0x0

    #@45
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    #@47
    array-length v1, v1

    #@48
    if-ge v0, v1, :cond_0

    #@4a
    .line 130
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    #@4c
    new-instance v2, Landroid/media/MediaActionSound$SoundState;

    #@4e
    invoke-direct {v2, p0, v0}, Landroid/media/MediaActionSound$SoundState;-><init>(Landroid/media/MediaActionSound;I)V

    #@51
    aput-object v2, v1, v0

    #@53
    .line 129
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 118
    :cond_0
    return-void
.end method

.method private loadSound(Landroid/media/MediaActionSound$SoundState;)I
    .locals 5
    .param p1, "sound"    # Landroid/media/MediaActionSound$SoundState;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 135
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@3
    sget-object v2, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@5
    iget v3, p1, Landroid/media/MediaActionSound$SoundState;->name:I

    #@7
    aget-object v2, v2, v3

    #@9
    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    .line 136
    .local v0, "id":I
    if-lez v0, :cond_0

    #@f
    .line 137
    iput v4, p1, Landroid/media/MediaActionSound$SoundState;->state:I

    #@11
    .line 138
    iput v0, p1, Landroid/media/MediaActionSound$SoundState;->id:I

    #@13
    .line 140
    :cond_0
    return v0
.end method


# virtual methods
.method public load(I)V
    .locals 4
    .param p1, "soundName"    # I

    #@0
    .prologue
    .line 156
    if-ltz p1, :cond_0

    #@2
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    if-lt p1, v1, :cond_1

    #@7
    .line 157
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Unknown sound requested: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 159
    :cond_1
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    #@23
    aget-object v0, v1, p1

    #@25
    .line 160
    .local v0, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v0

    #@26
    .line 161
    :try_start_0
    iget v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    #@28
    packed-switch v1, :pswitch_data_0

    #@2b
    .line 168
    const-string/jumbo v1, "MediaActionSound"

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "load() called in wrong state: "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, " for sound: "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    :cond_2
    :goto_0
    monitor-exit v0

    #@51
    .line 155
    return-void

    #@52
    .line 163
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    #@55
    move-result v1

    #@56
    if-gtz v1, :cond_2

    #@58
    .line 164
    const-string/jumbo v1, "MediaActionSound"

    #@5b
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v3, "load() error loading sound: "

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@72
    goto :goto_0

    #@73
    .line 160
    :catchall_0
    move-exception v1

    #@74
    monitor-exit v0

    #@75
    throw v1

    #@76
    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public play(I)V
    .locals 8
    .param p1, "soundName"    # I

    #@0
    .prologue
    .line 206
    if-ltz p1, :cond_0

    #@2
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 207
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Unknown sound requested: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 209
    :cond_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    #@23
    aget-object v7, v0, p1

    #@25
    .line 210
    .local v7, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v7

    #@26
    .line 211
    :try_start_0
    iget v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    #@28
    packed-switch v0, :pswitch_data_0

    #@2b
    .line 227
    :pswitch_0
    const-string/jumbo v0, "MediaActionSound"

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "play() called in wrong state: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget v2, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, " for sound: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    :goto_0
    monitor-exit v7

    #@53
    .line 205
    return-void

    #@54
    .line 213
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v7}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    #@57
    .line 214
    invoke-direct {p0, v7}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    #@5a
    move-result v0

    #@5b
    if-gtz v0, :cond_2

    #@5d
    .line 215
    const-string/jumbo v0, "MediaActionSound"

    #@60
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v2, "play() error loading sound: "

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    goto :goto_0

    #@78
    .line 210
    :catchall_0
    move-exception v0

    #@79
    monitor-exit v7

    #@7a
    throw v0

    #@7b
    .line 221
    :cond_2
    :pswitch_2
    const/4 v0, 0x2

    #@7c
    :try_start_2
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    #@7e
    goto :goto_0

    #@7f
    .line 224
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@81
    iget v1, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    #@83
    const/high16 v2, 0x3f800000    # 1.0f

    #@85
    const/high16 v3, 0x3f800000    # 1.0f

    #@87
    const/4 v4, 0x0

    #@88
    const/4 v5, 0x0

    #@89
    const/high16 v6, 0x3f800000    # 1.0f

    #@8b
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    goto :goto_0

    #@8f
    .line 211
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 278
    iget-object v2, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 279
    iget-object v2, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    #@8
    array-length v3, v2

    #@9
    :goto_0
    if-ge v1, v3, :cond_0

    #@b
    aget-object v0, v2, v1

    #@d
    .line 280
    .local v0, "sound":Landroid/media/MediaActionSound$SoundState;
    monitor-enter v0

    #@e
    .line 281
    const/4 v4, 0x0

    #@f
    :try_start_0
    iput v4, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    #@11
    .line 282
    const/4 v4, 0x0

    #@12
    iput v4, v0, Landroid/media/MediaActionSound$SoundState;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v0

    #@15
    .line 279
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 280
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v0

    #@1a
    throw v1

    #@1b
    .line 285
    .end local v0    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_0
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@1d
    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    #@20
    .line 286
    iput-object v5, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@22
    .line 277
    :cond_1
    return-void
.end method
