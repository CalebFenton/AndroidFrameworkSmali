.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$Descriptor;,
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ALREADY_EXISTS:I = -0x2

.field public static final CONTENT_TYPE_GAME:I = 0x2

.field public static final CONTENT_TYPE_MOVIE:I = 0x1

.field public static final CONTENT_TYPE_MUSIC:I = 0x0

.field public static final CONTENT_TYPE_VOICE:I = 0x3

.field public static final EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private mId:I

.field private mJniData:J

.field public final mListenerLock:Ljava/lang/Object;

.field private mNativeAudioEffect:J

.field public mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "audioeffect_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 62
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    #@9
    .line 79
    const-string/jumbo v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    #@c
    .line 78
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    #@12
    .line 84
    const-string/jumbo v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    #@15
    .line 83
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    #@1b
    .line 89
    const-string/jumbo v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    #@1e
    .line 88
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    #@24
    .line 94
    const-string/jumbo v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    #@27
    .line 93
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    #@2d
    .line 99
    const-string/jumbo v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    #@30
    .line 98
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    #@36
    .line 108
    const-string/jumbo v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    #@39
    .line 107
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    #@3f
    .line 114
    const-string/jumbo v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    #@42
    .line 113
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@45
    move-result-object v0

    #@46
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    #@48
    .line 120
    const-string/jumbo v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    #@4b
    .line 119
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@4e
    move-result-object v0

    #@4f
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    #@51
    .line 126
    const-string/jumbo v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    #@54
    .line 125
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@57
    move-result-object v0

    #@58
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    #@5a
    .line 133
    const-string/jumbo v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    #@5d
    .line 132
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@60
    move-result-object v0

    #@61
    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@63
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 11
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 307
    iput v10, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    #@8
    .line 311
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    #@f
    .line 331
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    #@11
    .line 337
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    #@13
    .line 343
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    #@15
    .line 348
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    #@1c
    .line 353
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@1e
    .line 394
    new-array v6, v2, [I

    #@20
    .line 395
    .local v6, "id":[I
    new-array v7, v2, [Landroid/media/audiofx/AudioEffect$Descriptor;

    #@22
    .line 397
    .local v7, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@24
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@27
    .line 398
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 399
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    move-object v0, p0

    #@34
    move v4, p3

    #@35
    move v5, p4

    #@36
    .line 397
    invoke-direct/range {v0 .. v8}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;Ljava/lang/String;)I

    #@39
    move-result v9

    #@3a
    .line 400
    .local v9, "initResult":I
    if-eqz v9, :cond_0

    #@3c
    const/4 v0, -0x2

    #@3d
    if-eq v9, v0, :cond_0

    #@3f
    .line 401
    const-string/jumbo v0, "AudioEffect-JAVA"

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "Error code "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 402
    const-string/jumbo v2, " when initializing AudioEffect."

    #@55
    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 403
    packed-switch v9, :pswitch_data_0

    #@63
    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    #@65
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v2, "Cannot initialize effect engine for type: "

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 413
    const-string/jumbo v2, " Error: "

    #@78
    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    .line 411
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0

    #@88
    .line 405
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8a
    new-instance v1, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v2, "Effect type: "

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    .line 406
    const-string/jumbo v2, " not supported."

    #@9d
    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a8
    throw v0

    #@a9
    .line 408
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@ab
    .line 409
    const-string/jumbo v1, "Effect library not loaded"

    #@ae
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@b1
    throw v0

    #@b2
    .line 416
    :cond_0
    aget v0, v6, v10

    #@b4
    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    #@b6
    .line 417
    aget-object v0, v7, v10

    #@b8
    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    #@ba
    .line 418
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    #@bc
    monitor-enter v0

    #@bd
    .line 419
    const/4 v1, 0x1

    #@be
    :try_start_0
    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c0
    monitor-exit v0

    #@c1
    .line 393
    return-void

    #@c2
    .line 418
    :catchall_0
    move-exception v1

    #@c3
    monitor-exit v0

    #@c4
    throw v1

    #@c5
    .line 403
    nop

    #@c6
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static byteArrayToInt([B)I
    .locals 1
    .param p0, "valueBuf"    # [B

    #@0
    .prologue
    .line 1292
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static byteArrayToInt([BI)I
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 1300
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 1301
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    .line 1302
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public static byteArrayToShort([B)S
    .locals 1
    .param p0, "valueBuf"    # [B

    #@0
    .prologue
    .line 1320
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static byteArrayToShort([BI)S
    .locals 2
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 1327
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 1328
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    .line 1329
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public static varargs concatArrays([[B)[B
    .locals 8
    .param p0, "arrays"    # [[B

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1348
    const/4 v2, 0x0

    #@2
    .line 1349
    .local v2, "len":I
    array-length v6, p0

    #@3
    move v4, v5

    #@4
    :goto_0
    if-ge v4, v6, :cond_0

    #@6
    aget-object v0, p0, v4

    #@8
    .line 1350
    .local v0, "a":[B
    array-length v7, v0

    #@9
    add-int/2addr v2, v7

    #@a
    .line 1349
    add-int/lit8 v4, v4, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1352
    .end local v0    # "a":[B
    :cond_0
    new-array v1, v2, [B

    #@f
    .line 1354
    .local v1, "b":[B
    const/4 v3, 0x0

    #@10
    .line 1355
    .local v3, "offs":I
    array-length v6, p0

    #@11
    move v4, v5

    #@12
    :goto_1
    if-ge v4, v6, :cond_1

    #@14
    aget-object v0, p0, v4

    #@16
    .line 1356
    .restart local v0    # "a":[B
    array-length v7, v0

    #@17
    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 1357
    array-length v7, v0

    #@1b
    add-int/2addr v3, v7

    #@1c
    .line 1355
    add-int/lit8 v4, v4, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 1359
    .end local v0    # "a":[B
    :cond_1
    return-object v1
.end method

.method private createNativeEventHandler()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 946
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@4
    move-result-object v0

    #@5
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@7
    .line 947
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@9
    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    #@c
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@e
    .line 944
    :goto_0
    return-void

    #@f
    .line 948
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 949
    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@17
    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    #@1a
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@1c
    goto :goto_0

    #@1d
    .line 951
    :cond_1
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@1f
    goto :goto_0
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 1310
    const/4 v1, 0x4

    #@1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 1311
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    .line 1312
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@f
    .line 1313
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public static isEffectTypeAvailable(Ljava/util/UUID;)Z
    .locals 4
    .param p0, "type"    # Ljava/util/UUID;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 486
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    #@4
    move-result-object v0

    #@5
    .line 487
    .local v0, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    if-nez v0, :cond_0

    #@7
    .line 488
    return v3

    #@8
    .line 491
    :cond_0
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@a
    if-ge v1, v2, :cond_2

    #@c
    .line 492
    aget-object v2, v0, v1

    #@e
    iget-object v2, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    #@10
    invoke-virtual {v2, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 493
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 491
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 496
    :cond_2
    return v3
.end method

.method public static isError(I)Z
    .locals 1
    .param p0, "status"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1285
    if-gez p0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method

.method private final native native_command(II[BI[B)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getParameter(I[BI[B)I
.end method

.method private final native native_hasControl()Z
.end method

.method private static final native native_init()V
.end method

.method private static native native_query_effects()[Ljava/lang/Object;
.end method

.method private static native native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native native_release()V
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setParameter(I[BI[B)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1202
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "effect_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/audiofx/AudioEffect;

    #@8
    .line 1203
    .local v0, "effect":Landroid/media/audiofx/AudioEffect;
    if-nez v0, :cond_0

    #@a
    .line 1204
    return-void

    #@b
    .line 1206
    :cond_0
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1207
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@11
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    .line 1209
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@17
    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 1201
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public static queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    #@0
    .prologue
    .line 463
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    #@6
    return-object v0
.end method

.method public static queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .param p0, "audioSession"    # I

    #@0
    .prologue
    .line 476
    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    #@6
    return-object v0
.end method

.method public static shortToByteArray(S)[B
    .locals 3
    .param p0, "value"    # S

    #@0
    .prologue
    .line 1337
    const/4 v2, 0x2

    #@1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v0

    #@5
    .line 1338
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    .line 1339
    move v1, p0

    #@d
    .line 1340
    .local v1, "sValue":S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@10
    .line 1341
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method


# virtual methods
.method public checkState(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1255
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1256
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 1257
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 1258
    const-string/jumbo v3, " called on uninitialized AudioEffect."

    #@16
    .line 1257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 1255
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0

    #@25
    :cond_0
    monitor-exit v1

    #@26
    .line 1254
    return-void
.end method

.method public checkStatus(I)V
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 1267
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1268
    packed-switch p1, :pswitch_data_0

    #@9
    .line 1276
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v1, "AudioEffect: set/get parameter error"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1270
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    .line 1271
    const-string/jumbo v1, "AudioEffect: bad parameter value"

    #@17
    .line 1270
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 1273
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1d
    .line 1274
    const-string/jumbo v1, "AudioEffect: invalid parameter operation"

    #@20
    .line 1273
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 1266
    :cond_0
    return-void

    #@25
    .line 1268
    nop

    #@26
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public command(I[B[B)I
    .locals 6
    .param p1, "cmdCode"    # I
    .param p2, "command"    # [B
    .param p3, "reply"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 848
    const-string/jumbo v0, "command()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 849
    array-length v2, p2

    #@7
    array-length v4, p3

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move-object v3, p2

    #@b
    move-object v5, p3

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 437
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    #@3
    .line 436
    return-void
.end method

.method public getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 447
    const-string/jumbo v0, "getDescriptor()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 448
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    #@8
    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 876
    const-string/jumbo v0, "getEnabled()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 877
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 865
    const-string/jumbo v0, "getId()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 866
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    #@8
    return v0
.end method

.method public getParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 683
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    .line 685
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public getParameter(I[I)I
    .locals 7
    .param p1, "param"    # I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x4

    #@3
    .line 698
    array-length v3, p2

    #@4
    const/4 v4, 0x2

    #@5
    if-le v3, v4, :cond_0

    #@7
    .line 699
    const/4 v3, -0x4

    #@8
    return v3

    #@9
    .line 701
    :cond_0
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@c
    move-result-object v0

    #@d
    .line 703
    .local v0, "p":[B
    array-length v3, p2

    #@e
    mul-int/lit8 v3, v3, 0x4

    #@10
    new-array v2, v3, [B

    #@12
    .line 705
    .local v2, "v":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    #@15
    move-result v1

    #@16
    .line 707
    .local v1, "status":I
    if-eq v1, v5, :cond_1

    #@18
    if-ne v1, v6, :cond_3

    #@1a
    .line 708
    :cond_1
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    #@1d
    move-result v3

    #@1e
    const/4 v4, 0x0

    #@1f
    aput v3, p2, v4

    #@21
    .line 709
    if-ne v1, v6, :cond_2

    #@23
    .line 710
    invoke-static {v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    #@26
    move-result v3

    #@27
    const/4 v4, 0x1

    #@28
    aput v3, p2, v4

    #@2a
    .line 712
    :cond_2
    div-int/lit8 v1, v1, 0x4

    #@2c
    .line 716
    :goto_0
    return v1

    #@2d
    .line 714
    :cond_3
    const/4 v1, -0x1

    #@2e
    goto :goto_0
.end method

.method public getParameter(I[S)I
    .locals 7
    .param p1, "param"    # I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x2

    #@2
    .line 729
    array-length v3, p2

    #@3
    if-le v3, v5, :cond_0

    #@5
    .line 730
    const/4 v3, -0x4

    #@6
    return v3

    #@7
    .line 732
    :cond_0
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@a
    move-result-object v0

    #@b
    .line 734
    .local v0, "p":[B
    array-length v3, p2

    #@c
    mul-int/lit8 v3, v3, 0x2

    #@e
    new-array v2, v3, [B

    #@10
    .line 736
    .local v2, "v":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    #@13
    move-result v1

    #@14
    .line 738
    .local v1, "status":I
    if-eq v1, v5, :cond_1

    #@16
    if-ne v1, v6, :cond_3

    #@18
    .line 739
    :cond_1
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    #@1b
    move-result v3

    #@1c
    const/4 v4, 0x0

    #@1d
    aput-short v3, p2, v4

    #@1f
    .line 740
    if-ne v1, v6, :cond_2

    #@21
    .line 741
    invoke-static {v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    #@24
    move-result v3

    #@25
    const/4 v4, 0x1

    #@26
    aput-short v3, p2, v4

    #@28
    .line 743
    :cond_2
    div-int/lit8 v1, v1, 0x2

    #@2a
    .line 747
    :goto_0
    return v1

    #@2b
    .line 745
    :cond_3
    const/4 v1, -0x1

    #@2c
    goto :goto_0
.end method

.method public getParameter([B[B)I
    .locals 2
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 670
    const-string/jumbo v0, "getParameter()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 671
    array-length v0, p1

    #@7
    array-length v1, p2

    #@8
    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getParameter([I[B)I
    .locals 6
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 827
    array-length v2, p1

    #@4
    if-le v2, v5, :cond_0

    #@6
    .line 828
    const/4 v2, -0x4

    #@7
    return v2

    #@8
    .line 830
    :cond_0
    aget v2, p1, v4

    #@a
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@d
    move-result-object v0

    #@e
    .line 831
    .local v0, "p":[B
    array-length v2, p1

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 832
    aget v2, p1, v3

    #@13
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@16
    move-result-object v1

    #@17
    .line 833
    .local v1, "p2":[B
    new-array v2, v5, [[B

    #@19
    aput-object v0, v2, v4

    #@1b
    aput-object v1, v2, v3

    #@1d
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@20
    move-result-object v0

    #@21
    .line 836
    .end local v1    # "p2":[B
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    #@24
    move-result v2

    #@25
    return v2
.end method

.method public getParameter([I[I)I
    .locals 10
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x8

    #@2
    const/4 v8, 0x4

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    .line 760
    array-length v4, p1

    #@7
    if-gt v4, v7, :cond_0

    #@9
    array-length v4, p2

    #@a
    if-le v4, v7, :cond_1

    #@c
    .line 761
    :cond_0
    const/4 v4, -0x4

    #@d
    return v4

    #@e
    .line 763
    :cond_1
    aget v4, p1, v6

    #@10
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@13
    move-result-object v0

    #@14
    .line 764
    .local v0, "p":[B
    array-length v4, p1

    #@15
    if-le v4, v5, :cond_2

    #@17
    .line 765
    aget v4, p1, v5

    #@19
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@1c
    move-result-object v1

    #@1d
    .line 766
    .local v1, "p2":[B
    new-array v4, v7, [[B

    #@1f
    aput-object v0, v4, v6

    #@21
    aput-object v1, v4, v5

    #@23
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@26
    move-result-object v0

    #@27
    .line 768
    .end local v1    # "p2":[B
    :cond_2
    array-length v4, p2

    #@28
    mul-int/lit8 v4, v4, 0x4

    #@2a
    new-array v3, v4, [B

    #@2c
    .line 770
    .local v3, "v":[B
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    #@2f
    move-result v2

    #@30
    .line 772
    .local v2, "status":I
    if-eq v2, v8, :cond_3

    #@32
    if-ne v2, v9, :cond_5

    #@34
    .line 773
    :cond_3
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    #@37
    move-result v4

    #@38
    aput v4, p2, v6

    #@3a
    .line 774
    if-ne v2, v9, :cond_4

    #@3c
    .line 775
    invoke-static {v3, v8}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    #@3f
    move-result v4

    #@40
    aput v4, p2, v5

    #@42
    .line 777
    :cond_4
    div-int/lit8 v2, v2, 0x4

    #@44
    .line 781
    :goto_0
    return v2

    #@45
    .line 779
    :cond_5
    const/4 v2, -0x1

    #@46
    goto :goto_0
.end method

.method public getParameter([I[S)I
    .locals 9
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x2

    #@4
    .line 794
    array-length v4, p1

    #@5
    if-gt v4, v5, :cond_0

    #@7
    array-length v4, p2

    #@8
    if-le v4, v5, :cond_1

    #@a
    .line 795
    :cond_0
    const/4 v4, -0x4

    #@b
    return v4

    #@c
    .line 797
    :cond_1
    aget v4, p1, v7

    #@e
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@11
    move-result-object v0

    #@12
    .line 798
    .local v0, "p":[B
    array-length v4, p1

    #@13
    if-le v4, v6, :cond_2

    #@15
    .line 799
    aget v4, p1, v6

    #@17
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@1a
    move-result-object v1

    #@1b
    .line 800
    .local v1, "p2":[B
    new-array v4, v5, [[B

    #@1d
    aput-object v0, v4, v7

    #@1f
    aput-object v1, v4, v6

    #@21
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@24
    move-result-object v0

    #@25
    .line 802
    .end local v1    # "p2":[B
    :cond_2
    array-length v4, p2

    #@26
    mul-int/lit8 v4, v4, 0x2

    #@28
    new-array v3, v4, [B

    #@2a
    .line 804
    .local v3, "v":[B
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    #@2d
    move-result v2

    #@2e
    .line 806
    .local v2, "status":I
    if-eq v2, v5, :cond_3

    #@30
    if-ne v2, v8, :cond_5

    #@32
    .line 807
    :cond_3
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    #@35
    move-result v4

    #@36
    aput-short v4, p2, v7

    #@38
    .line 808
    if-ne v2, v8, :cond_4

    #@3a
    .line 809
    invoke-static {v3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    #@3d
    move-result v4

    #@3e
    aput-short v4, p2, v6

    #@40
    .line 811
    :cond_4
    div-int/lit8 v2, v2, 0x2

    #@42
    .line 815
    :goto_0
    return v2

    #@43
    .line 813
    :cond_5
    const/4 v2, -0x1

    #@44
    goto :goto_0
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 888
    const-string/jumbo v0, "hasControl()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 889
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 429
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 430
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    #@6
    .line 431
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 428
    return-void

    #@b
    .line 429
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 918
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 920
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 921
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    #@f
    .line 916
    :cond_0
    return-void

    #@10
    .line 917
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v0

    #@12
    throw v1
.end method

.method public setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    #@0
    .prologue
    .line 902
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 903
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 905
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 906
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    #@f
    .line 901
    :cond_0
    return-void

    #@10
    .line 902
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v0

    #@12
    throw v1
.end method

.method public setEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    const-string/jumbo v0, "setEnabled()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 517
    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setParameter(II)I
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 550
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    .line 551
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@7
    move-result-object v1

    #@8
    .line 552
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method public setParameter(IS)I
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 564
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    .line 565
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    #@7
    move-result-object v1

    #@8
    .line 566
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method public setParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@3
    move-result-object v0

    #@4
    .line 579
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public setParameter([B[B)I
    .locals 2
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 539
    const-string/jumbo v0, "setParameter()"

    #@3
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    #@6
    .line 540
    array-length v0, p1

    #@7
    array-length v1, p2

    #@8
    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public setParameter([I[B)I
    .locals 6
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 642
    array-length v2, p1

    #@4
    if-le v2, v5, :cond_0

    #@6
    .line 643
    const/4 v2, -0x4

    #@7
    return v2

    #@8
    .line 645
    :cond_0
    aget v2, p1, v4

    #@a
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@d
    move-result-object v0

    #@e
    .line 646
    .local v0, "p":[B
    array-length v2, p1

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 647
    aget v2, p1, v3

    #@13
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@16
    move-result-object v1

    #@17
    .line 648
    .local v1, "p2":[B
    new-array v2, v5, [[B

    #@19
    aput-object v0, v2, v4

    #@1b
    aput-object v1, v2, v3

    #@1d
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@20
    move-result-object v0

    #@21
    .line 650
    .end local v1    # "p2":[B
    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    #@24
    move-result v2

    #@25
    return v2
.end method

.method public setParameter([I[I)I
    .locals 8
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    .line 591
    array-length v4, p1

    #@4
    if-gt v4, v7, :cond_0

    #@6
    array-length v4, p2

    #@7
    if-le v4, v7, :cond_1

    #@9
    .line 592
    :cond_0
    const/4 v4, -0x4

    #@a
    return v4

    #@b
    .line 594
    :cond_1
    aget v4, p1, v6

    #@d
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@10
    move-result-object v0

    #@11
    .line 595
    .local v0, "p":[B
    array-length v4, p1

    #@12
    if-le v4, v5, :cond_2

    #@14
    .line 596
    aget v4, p1, v5

    #@16
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@19
    move-result-object v1

    #@1a
    .line 597
    .local v1, "p2":[B
    new-array v4, v7, [[B

    #@1c
    aput-object v0, v4, v6

    #@1e
    aput-object v1, v4, v5

    #@20
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@23
    move-result-object v0

    #@24
    .line 599
    .end local v1    # "p2":[B
    :cond_2
    aget v4, p2, v6

    #@26
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@29
    move-result-object v2

    #@2a
    .line 600
    .local v2, "v":[B
    array-length v4, p2

    #@2b
    if-le v4, v5, :cond_3

    #@2d
    .line 601
    aget v4, p2, v5

    #@2f
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@32
    move-result-object v3

    #@33
    .line 602
    .local v3, "v2":[B
    new-array v4, v7, [[B

    #@35
    aput-object v2, v4, v6

    #@37
    aput-object v3, v4, v5

    #@39
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@3c
    move-result-object v2

    #@3d
    .line 604
    .end local v3    # "v2":[B
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    #@40
    move-result v4

    #@41
    return v4
.end method

.method public setParameter([I[S)I
    .locals 8
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, 0x1

    #@3
    .line 616
    array-length v4, p1

    #@4
    if-gt v4, v7, :cond_0

    #@6
    array-length v4, p2

    #@7
    if-le v4, v7, :cond_1

    #@9
    .line 617
    :cond_0
    const/4 v4, -0x4

    #@a
    return v4

    #@b
    .line 619
    :cond_1
    aget v4, p1, v6

    #@d
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@10
    move-result-object v0

    #@11
    .line 620
    .local v0, "p":[B
    array-length v4, p1

    #@12
    if-le v4, v5, :cond_2

    #@14
    .line 621
    aget v4, p1, v5

    #@16
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    #@19
    move-result-object v1

    #@1a
    .line 622
    .local v1, "p2":[B
    new-array v4, v7, [[B

    #@1c
    aput-object v0, v4, v6

    #@1e
    aput-object v1, v4, v5

    #@20
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@23
    move-result-object v0

    #@24
    .line 625
    .end local v1    # "p2":[B
    :cond_2
    aget-short v4, p2, v6

    #@26
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    #@29
    move-result-object v2

    #@2a
    .line 626
    .local v2, "v":[B
    array-length v4, p2

    #@2b
    if-le v4, v5, :cond_3

    #@2d
    .line 627
    aget-short v4, p2, v5

    #@2f
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    #@32
    move-result-object v3

    #@33
    .line 628
    .local v3, "v2":[B
    new-array v4, v7, [[B

    #@35
    aput-object v2, v4, v6

    #@37
    aput-object v3, v4, v5

    #@39
    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    #@3c
    move-result-object v2

    #@3d
    .line 630
    .end local v3    # "v2":[B
    :cond_3
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    #@40
    move-result v4

    #@41
    return v4
.end method

.method public setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    #@0
    .prologue
    .line 932
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 933
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 935
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 936
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    #@f
    .line 931
    :cond_0
    return-void

    #@10
    .line 932
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v0

    #@12
    throw v1
.end method
