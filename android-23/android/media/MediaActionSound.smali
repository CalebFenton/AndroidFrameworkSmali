.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaActionSound$1;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_FILES:[Ljava/lang/String;

.field private static final SOUND_NOT_LOADED:I = -0x1

.field public static final START_VIDEO_RECORDING:I = 0x2

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static synthetic -get0(Landroid/media/MediaActionSound;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/media/MediaActionSound;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 51
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 52
    const-string/jumbo v1, "/system/media/audio/ui/camera_click.ogg"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 53
    const-string/jumbo v1, "/system/media/audio/ui/camera_focus.ogg"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 54
    const-string/jumbo v1, "/system/media/audio/ui/VideoRecord.ogg"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 55
    const-string/jumbo v1, "/system/media/audio/ui/VideoRecord.ogg"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 51
    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@1d
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 176
    new-instance v1, Landroid/media/MediaActionSound$1;

    #@6
    invoke-direct {v1, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    #@9
    .line 175
    iput-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    #@b
    .line 99
    new-instance v1, Landroid/media/SoundPool;

    #@d
    const/4 v2, 0x1

    #@e
    .line 100
    const/4 v3, 0x7

    #@f
    const/4 v4, 0x0

    #@10
    .line 99
    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    #@13
    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@15
    .line 101
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@17
    iget-object v2, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    #@19
    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    #@1c
    .line 102
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@1e
    array-length v1, v1

    #@1f
    new-array v1, v1, [I

    #@21
    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@23
    .line 103
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@26
    array-length v1, v1

    #@27
    if-ge v0, v1, :cond_0

    #@29
    .line 104
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@2b
    aput v5, v1, v0

    #@2d
    .line 103
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 106
    :cond_0
    iput v5, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    #@32
    .line 98
    return-void
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .locals 4
    .param p1, "soundName"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    if-ltz p1, :cond_0

    #@3
    :try_start_0
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@5
    array-length v0, v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 123
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Unknown sound requested: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0

    #@25
    .line 125
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@27
    aget v0, v0, p1

    #@29
    const/4 v1, -0x1

    #@2a
    if-ne v0, v1, :cond_2

    #@2c
    .line 126
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@2e
    .line 127
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@30
    sget-object v2, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@32
    aget-object v2, v2, p1

    #@34
    const/4 v3, 0x1

    #@35
    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    #@38
    move-result v1

    #@39
    .line 126
    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    :cond_2
    monitor-exit p0

    #@3c
    .line 121
    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 7
    .param p1, "soundName"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 163
    if-ltz p1, :cond_0

    #@3
    :try_start_0
    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@5
    array-length v0, v0

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 164
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Unknown sound requested: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
    throw v0

    #@25
    .line 166
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@27
    aget v0, v0, p1

    #@29
    const/4 v1, -0x1

    #@2a
    if-ne v0, v1, :cond_2

    #@2c
    .line 168
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@2e
    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    #@30
    aget-object v1, v1, p1

    #@32
    const/4 v2, 0x1

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    #@36
    move-result v0

    #@37
    .line 167
    iput v0, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    #@39
    .line 169
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@3b
    iget v1, p0, Landroid/media/MediaActionSound;->mSoundIdToPlay:I

    #@3d
    aput v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    :goto_0
    monitor-exit p0

    #@40
    .line 162
    return-void

    #@41
    .line 171
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@43
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundIds:[I

    #@45
    aget v1, v1, p1

    #@47
    const/high16 v2, 0x3f800000    # 1.0f

    #@49
    const/high16 v3, 0x3f800000    # 1.0f

    #@4b
    const/4 v4, 0x0

    #@4c
    const/4 v5, 0x0

    #@4d
    const/high16 v6, 0x3f800000    # 1.0f

    #@4f
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 197
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 198
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@7
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    #@a
    .line 199
    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    #@c
    .line 196
    :cond_0
    return-void
.end method
