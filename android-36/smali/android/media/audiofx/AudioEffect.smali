.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$Descriptor;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final whitelist ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final whitelist ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final whitelist ALREADY_EXISTS:I = -0x2

.field public static final whitelist CONTENT_TYPE_GAME:I = 0x2

.field public static final whitelist CONTENT_TYPE_MOVIE:I = 0x1

.field public static final whitelist CONTENT_TYPE_MUSIC:I = 0x0

.field public static final whitelist CONTENT_TYPE_VOICE:I = 0x3

.field public static final whitelist EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final whitelist EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final whitelist EFFECT_POST_PROCESSING:Ljava/lang/String; = "Post Processing"

.field public static final whitelist EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final whitelist EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final blacklist EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final blacklist EFFECT_TYPE_SPATIALIZER:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x4

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x7

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x5

.field public static final whitelist ERROR_NO_INIT:I = -0x3

.field public static final whitelist ERROR_NO_MEMORY:I = -0x6

.field public static final whitelist EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final whitelist EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final greylist-max-o NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final greylist-max-o NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final greylist-max-o NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final greylist-max-o STATE_INITIALIZED:I = 0x1

.field public static final greylist-max-o STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private greylist-max-o mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private greylist-max-o mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private greylist-max-o mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private greylist-max-o mId:I

.field private greylist-max-o mJniData:J

.field public final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private greylist-max-o mNativeAudioEffect:J

.field public greylist-max-o mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private greylist-max-o mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private greylist-max-o mState:I

.field private final greylist-max-o mStateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControlChangeStatusListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableStatusChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParameterChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    .line 96
    nop

    .line 97
    const-string v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    .line 101
    nop

    .line 102
    const-string v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    .line 106
    nop

    .line 107
    const-string v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    .line 111
    nop

    .line 112
    const-string v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    .line 116
    nop

    .line 117
    const-string v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    .line 125
    nop

    .line 126
    const-string v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    .line 131
    nop

    .line 132
    const-string v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    .line 137
    nop

    .line 138
    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    .line 143
    nop

    .line 144
    const-string v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    .line 149
    nop

    .line 150
    const-string v0, "7261676f-6d75-7369-6364-28e2fd3ac39e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

    .line 159
    nop

    .line 160
    const-string v0, "ccd4cf09-a79d-46c2-9aae-06a1698d6c8f"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_SPATIALIZER:Ljava/util/UUID;

    .line 167
    nop

    .line 168
    const-string v0, "1411e6d6-aecd-4021-a1cf-a6aceb0d71e5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

    .line 175
    nop

    .line 176
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;Landroid/media/AudioDeviceAttributes;)V
    .registers 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 505
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/UUID;

    .line 506
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    .line 505
    const/4 v3, 0x0

    const/4 v4, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V

    .line 507
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .registers 11
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

    .line 487
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "type":Ljava/util/UUID;
    .end local p2    # "uuid":Ljava/util/UUID;
    .end local p3    # "priority":I
    .end local p4    # "audioSession":I
    .local v1, "type":Ljava/util/UUID;
    .local v2, "uuid":Ljava/util/UUID;
    .local v3, "priority":I
    .local v4, "audioSession":I
    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V

    .line 488
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V
    .registers 13
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .param p5, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 513
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "type":Ljava/util/UUID;
    .end local p2    # "uuid":Ljava/util/UUID;
    .end local p3    # "priority":I
    .end local p4    # "audioSession":I
    .end local p5    # "device":Landroid/media/AudioDeviceAttributes;
    .local v1, "type":Ljava/util/UUID;
    .local v2, "uuid":Ljava/util/UUID;
    .local v3, "priority":I
    .local v4, "audioSession":I
    .local v5, "device":Landroid/media/AudioDeviceAttributes;
    invoke-direct/range {v0 .. v6}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V

    .line 514
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V
    .registers 23
    .param p1, "type"    # Ljava/util/UUID;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "priority"    # I
    .param p4, "audioSession"    # I
    .param p5, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p6, "probe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 519
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x0

    iput v0, v1, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 403
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    .line 423
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 429
    iput-object v2, v1, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 435
    iput-object v2, v1, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 440
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 445
    iput-object v2, v1, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 520
    const/4 v14, 0x1

    new-array v9, v14, [I

    .line 521
    .local v9, "id":[I
    new-array v10, v14, [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 523
    .local v10, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    const/4 v2, 0x0

    .line 524
    .local v2, "deviceType":I
    const-string v3, ""

    .line 525
    .local v3, "deviceAddress":Ljava/lang/String;
    if-eqz p5, :cond_4f

    .line 526
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    .line 527
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v2

    goto :goto_48

    .line 529
    :cond_3b
    nop

    .line 530
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-static {v4, v5}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v2

    .line 532
    :goto_48
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    move v7, v2

    move-object v8, v3

    goto :goto_51

    .line 525
    :cond_4f
    move v7, v2

    move-object v8, v3

    .line 538
    .end local v2    # "deviceType":I
    .end local v3    # "deviceAddress":Ljava/lang/String;
    .local v7, "deviceType":I
    .local v8, "deviceAddress":Ljava/lang/String;
    :goto_51
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 539
    invoke-virtual {v2}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v15

    .line 540
    .local v15, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_59
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-virtual {v15}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v11

    .line 540
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v12, p6

    invoke-direct/range {v1 .. v12}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[I[Ljava/lang/Object;Landroid/os/Parcel;Z)I

    move-result v2
    :try_end_74
    .catchall {:try_start_59 .. :try_end_74} :catchall_fe

    .line 543
    .local v2, "initResult":I
    if-eqz v15, :cond_79

    invoke-virtual {v15}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 544
    .end local v15    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_79
    if-eqz v2, :cond_e9

    const/4 v3, -0x2

    if-eq v2, v3, :cond_e9

    .line 545
    const-string v0, "AudioEffect-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when initializing AudioEffect."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    packed-switch v2, :pswitch_data_10c

    .line 555
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot initialize effect engine for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :pswitch_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Effect type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_e1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Effect library not loaded"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_e9
    aget v3, v9, v0

    iput v3, v1, Landroid/media/audiofx/AudioEffect;->mId:I

    .line 561
    aget-object v0, v10, v0

    iput-object v0, v1, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 562
    if-nez p6, :cond_fd

    .line 563
    iget-object v3, v1, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 564
    :try_start_f6
    iput v14, v1, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 565
    monitor-exit v3

    goto :goto_fd

    :catchall_fa
    move-exception v0

    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_f6 .. :try_end_fc} :catchall_fa

    throw v0

    .line 567
    :cond_fd
    :goto_fd
    return-void

    .line 538
    .end local v2    # "initResult":I
    .restart local v15    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_fe
    move-exception v0

    move-object v2, v0

    if-eqz v15, :cond_10a

    :try_start_102
    invoke-virtual {v15}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_10a

    :catchall_106
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10a
    :goto_10a
    throw v2

    nop

    :pswitch_data_10c
    .packed-switch -0x5
        :pswitch_e1
        :pswitch_c2
    .end packed-switch
.end method

.method public static greylist-max-o byteArrayToFloat([B)F
    .registers 2
    .param p0, "valueBuf"    # [B

    .line 1542
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToFloat([BI)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToFloat([BI)F
    .registers 4
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1550
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1551
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1552
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public static blacklist byteArrayToInt([B)I
    .registers 2
    .param p0, "valueBuf"    # [B

    .line 1483
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToInt([BI)I
    .registers 4
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1491
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1492
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1493
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static blacklist byteArrayToShort([B)S
    .registers 2
    .param p0, "valueBuf"    # [B

    .line 1513
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToShort([BI)S
    .registers 4
    .param p0, "valueBuf"    # [B
    .param p1, "offset"    # I

    .line 1520
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1521
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1522
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public static varargs blacklist concatArrays([[B)[B
    .registers 9
    .param p0, "arrays"    # [[B

    .line 1570
    const/4 v0, 0x0

    .line 1571
    .local v0, "len":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_d

    aget-object v4, p0, v3

    .line 1572
    .local v4, "a":[B
    array-length v5, v4

    add-int/2addr v0, v5

    .line 1571
    .end local v4    # "a":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1574
    :cond_d
    new-array v1, v0, [B

    .line 1576
    .local v1, "b":[B
    const/4 v3, 0x0

    .line 1577
    .local v3, "offs":I
    array-length v4, p0

    move v5, v2

    :goto_12
    if-ge v5, v4, :cond_1f

    aget-object v6, p0, v5

    .line 1578
    .local v6, "a":[B
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1579
    array-length v7, v6

    add-int/2addr v3, v7

    .line 1577
    .end local v6    # "a":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1581
    :cond_1f
    return-object v1
.end method

.method private greylist-max-o createNativeEventHandler()V
    .registers 3

    .line 1132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_f

    .line 1133
    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_21

    .line 1134
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1e

    .line 1135
    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_21

    .line 1137
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    .line 1139
    :goto_21
    return-void
.end method

.method public static greylist-max-o floatToByteArray(F)[B
    .registers 3
    .param p0, "value"    # F

    .line 1560
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1561
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1562
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 1563
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist intToByteArray(I)[B
    .registers 3
    .param p0, "value"    # I

    .line 1502
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1503
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1504
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1505
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist isEffectSupportedForDevice(Ljava/util/UUID;Landroid/media/AudioDeviceAttributes;)Z
    .registers 9
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 582
    :try_start_0
    new-instance v0, Landroid/media/audiofx/AudioEffect;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 583
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct/range {v0 .. v6}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V

    .line 585
    .local v0, "fx":Landroid/media/audiofx/AudioEffect;
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    .line 586
    const/4 v1, 0x1

    return v1

    .line 587
    .end local v0    # "fx":Landroid/media/audiofx/AudioEffect;
    :catch_1c
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isEffectTypeAvailable(Ljava/util/UUID;)Z
    .registers 5
    .param p0, "type"    # Ljava/util/UUID;

    .line 656
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 657
    .local v0, "desc":[Landroid/media/audiofx/AudioEffect$Descriptor;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 658
    return v1

    .line 661
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_1b

    .line 662
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 663
    const/4 v1, 0x1

    return v1

    .line 661
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 666
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method public static blacklist isError(I)Z
    .registers 2
    .param p0, "status"    # I

    .line 1475
    if-gez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private final native greylist-max-o native_command(II[BI[B)I
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getEnabled()Z
.end method

.method private final native greylist-max-o native_getParameter(I[BI[B)I
.end method

.method private final native greylist-max-o native_hasControl()Z
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private static native greylist-max-o native_query_effects()[Ljava/lang/Object;
.end method

.method private static native greylist-max-o native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setEnabled(Z)I
.end method

.method private final native greylist-max-o native_setParameter(I[BI[B)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[I[Ljava/lang/Object;Landroid/os/Parcel;Z)I
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1389
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    .line 1390
    .local v0, "effect":Landroid/media/audiofx/AudioEffect;
    if-nez v0, :cond_c

    .line 1391
    return-void

    .line 1393
    :cond_c
    iget-object v1, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v1, :cond_1b

    .line 1394
    iget-object v1, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1396
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1399
    .end local v1    # "m":Landroid/os/Message;
    :cond_1b
    return-void
.end method

.method public static whitelist queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 1

    .line 632
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static greylist-max-o queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 2
    .param p0, "audioSession"    # I

    .line 645
    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static blacklist shortToByteArray(S)[B
    .registers 4
    .param p0, "value"    # S

    .line 1531
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1532
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1533
    move v1, p0

    .line 1534
    .local v1, "sValue":S
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1535
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist checkState(Ljava/lang/String;)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1445
    :try_start_3
    iget v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1449
    monitor-exit v0

    .line 1450
    return-void

    .line 1446
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called on uninitialized AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiofx/AudioEffect;
    .end local p1    # "methodName":Ljava/lang/String;
    throw v1

    .line 1449
    .restart local p0    # "this":Landroid/media/audiofx/AudioEffect;
    .restart local p1    # "methodName":Ljava/lang/String;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public greylist-max-o checkStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .line 1456
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1457
    packed-switch p1, :pswitch_data_22

    .line 1465
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffect: set/get parameter error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioEffect: bad parameter value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1462
    :pswitch_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AudioEffect: invalid parameter operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1468
    :cond_21
    return-void

    :pswitch_data_22
    .packed-switch -0x5
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public greylist-max-p command(I[B[B)I
    .registers 11
    .param p1, "cmdCode"    # I
    .param p2, "command"    # [B
    .param p3, "reply"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1033
    const-string v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1034
    array-length v3, p2

    array-length v5, p3

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    .end local p1    # "cmdCode":I
    .end local p2    # "command":[B
    .end local p3    # "reply":[B
    .local v2, "cmdCode":I
    .local v4, "command":[B
    .local v6, "reply":[B
    invoke-direct/range {v1 .. v6}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    move-result p1

    return p1
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 606
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    .line 607
    return-void
.end method

.method public whitelist getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 616
    const-string v0, "getDescriptor()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public whitelist getEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1061
    const-string v0, "getEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist getId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1050
    const-string v0, "getId()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1051
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public blacklist getParameter(I[B)I
    .registers 5
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 862
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 864
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist getParameter(I[I)I
    .registers 10
    .param p1, "param"    # I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 878
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 879
    const/4 v0, -0x4

    return v0

    .line 881
    :cond_6
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 883
    .local v0, "p":[B
    array-length v1, p2

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    .line 885
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    .line 887
    .local v3, "status":I
    const/16 v4, 0x8

    if-eq v3, v2, :cond_1c

    if-ne v3, v4, :cond_1a

    goto :goto_1c

    .line 894
    :cond_1a
    const/4 v2, -0x1

    .end local v3    # "status":I
    .local v2, "status":I
    goto :goto_2e

    .line 888
    .end local v2    # "status":I
    .restart local v3    # "status":I
    :cond_1c
    :goto_1c
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v6

    aput v6, p2, v5

    .line 889
    if-ne v3, v4, :cond_2c

    .line 890
    const/4 v4, 0x1

    invoke-static {v1, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    aput v5, p2, v4

    .line 892
    :cond_2c
    div-int/lit8 v2, v3, 0x4

    .line 896
    .end local v3    # "status":I
    .restart local v2    # "status":I
    :goto_2e
    return v2
.end method

.method public blacklist getParameter(I[S)I
    .registers 10
    .param p1, "param"    # I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 910
    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 911
    const/4 v0, -0x4

    return v0

    .line 913
    :cond_6
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 915
    .local v0, "p":[B
    array-length v2, p2

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    .line 917
    .local v2, "v":[B
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    .line 919
    .local v3, "status":I
    const/4 v4, 0x4

    if-eq v3, v1, :cond_1a

    if-ne v3, v4, :cond_18

    goto :goto_1a

    .line 926
    :cond_18
    const/4 v1, -0x1

    .end local v3    # "status":I
    .local v1, "status":I
    goto :goto_2c

    .line 920
    .end local v1    # "status":I
    .restart local v3    # "status":I
    :cond_1a
    :goto_1a
    const/4 v5, 0x0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v6

    aput-short v6, p2, v5

    .line 921
    if-ne v3, v4, :cond_2a

    .line 922
    const/4 v4, 0x1

    invoke-static {v2, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v5

    aput-short v5, p2, v4

    .line 924
    :cond_2a
    div-int/lit8 v1, v3, 0x2

    .line 928
    .end local v3    # "status":I
    .restart local v1    # "status":I
    :goto_2c
    return v1
.end method

.method public blacklist getParameter([B[B)I
    .registers 5
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 848
    const-string v0, "getParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 849
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getParameter([I[B)I
    .registers 6
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1011
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 1012
    const/4 v0, -0x4

    return v0

    .line 1014
    :cond_6
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 1015
    .local v0, "p":[B
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    .line 1016
    aget v1, p1, v2

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 1017
    .local v1, "p2":[B
    filled-new-array {v0, v1}, [[B

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 1020
    .end local v1    # "p2":[B
    :cond_1f
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public greylist-max-r getParameter([I[I)I
    .registers 11
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 942
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_44

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_44

    .line 945
    :cond_8
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 946
    .local v1, "p":[B
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_21

    .line 947
    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 948
    .local v2, "p2":[B
    filled-new-array {v1, v2}, [[B

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    .line 950
    .end local v2    # "p2":[B
    :cond_21
    array-length v2, p2

    const/4 v4, 0x4

    mul-int/2addr v2, v4

    new-array v2, v2, [B

    .line 952
    .local v2, "v":[B
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    .line 954
    .local v5, "status":I
    const/16 v6, 0x8

    if-eq v5, v4, :cond_33

    if-ne v5, v6, :cond_31

    goto :goto_33

    .line 961
    :cond_31
    const/4 v0, -0x1

    .end local v5    # "status":I
    .local v0, "status":I
    goto :goto_43

    .line 955
    .end local v0    # "status":I
    .restart local v5    # "status":I
    :cond_33
    :goto_33
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v7

    aput v7, p2, v0

    .line 956
    if-ne v5, v6, :cond_41

    .line 957
    invoke-static {v2, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    aput v0, p2, v3

    .line 959
    :cond_41
    div-int/lit8 v0, v5, 0x4

    .line 963
    .end local v5    # "status":I
    .restart local v0    # "status":I
    :goto_43
    return v0

    .line 943
    .end local v0    # "status":I
    .end local v1    # "p":[B
    .end local v2    # "v":[B
    :cond_44
    :goto_44
    const/4 v0, -0x4

    return v0
.end method

.method public blacklist getParameter([I[S)I
    .registers 11
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 977
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_42

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_42

    .line 980
    :cond_8
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 981
    .local v2, "p":[B
    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_21

    .line 982
    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    .line 983
    .local v3, "p2":[B
    filled-new-array {v2, v3}, [[B

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    .line 985
    .end local v3    # "p2":[B
    :cond_21
    array-length v3, p2

    mul-int/2addr v3, v1

    new-array v3, v3, [B

    .line 987
    .local v3, "v":[B
    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    .line 989
    .local v5, "status":I
    const/4 v6, 0x4

    if-eq v5, v1, :cond_31

    if-ne v5, v6, :cond_2f

    goto :goto_31

    .line 996
    :cond_2f
    const/4 v0, -0x1

    .end local v5    # "status":I
    .local v0, "status":I
    goto :goto_41

    .line 990
    .end local v0    # "status":I
    .restart local v5    # "status":I
    :cond_31
    :goto_31
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v7

    aput-short v7, p2, v0

    .line 991
    if-ne v5, v6, :cond_3f

    .line 992
    invoke-static {v3, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    aput-short v0, p2, v4

    .line 994
    :cond_3f
    div-int/lit8 v0, v5, 0x2

    .line 998
    .end local v5    # "status":I
    .restart local v0    # "status":I
    :goto_41
    return v0

    .line 978
    .end local v0    # "status":I
    .end local v2    # "p":[B
    .end local v3    # "v":[B
    :cond_42
    :goto_42
    const/4 v0, -0x4

    return v0
.end method

.method public whitelist hasControl()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1073
    const-string v0, "hasControl()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 1074
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public whitelist release()V
    .registers 3

    .line 598
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    .line 600
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    .line 601
    monitor-exit v0

    .line 602
    return-void

    .line 601
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 1102
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1103
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 1104
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 1105
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    .line 1106
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 1108
    :cond_f
    return-void

    .line 1104
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 1087
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 1089
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 1090
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    .line 1091
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 1093
    :cond_f
    return-void

    .line 1089
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist setEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 686
    const-string v0, "setEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public blacklist setParameter(II)I
    .registers 6
    .param p1, "param"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 722
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 723
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 724
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public blacklist setParameter(IS)I
    .registers 6
    .param p1, "param"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 737
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 738
    .local v0, "p":[B
    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    .line 739
    .local v1, "v":[B
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public blacklist setParameter(I[B)I
    .registers 5
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 752
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 753
    .local v0, "p":[B
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist setParameter([B[B)I
    .registers 5
    .param p1, "param"    # [B
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 710
    const-string v0, "setParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    .line 711
    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public blacklist setParameter([I[B)I
    .registers 6
    .param p1, "param"    # [I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 819
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 820
    const/4 v0, -0x4

    return v0

    .line 822
    :cond_6
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 823
    .local v0, "p":[B
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    .line 824
    aget v1, p1, v2

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 825
    .local v1, "p2":[B
    filled-new-array {v0, v1}, [[B

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 827
    .end local v1    # "p2":[B
    :cond_1f
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist setParameter([I[I)I
    .registers 8
    .param p1, "param"    # [I
    .param p2, "value"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 766
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3d

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_3d

    .line 769
    :cond_8
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 770
    .local v1, "p":[B
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_21

    .line 771
    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 772
    .local v2, "p2":[B
    filled-new-array {v1, v2}, [[B

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    .line 774
    .end local v2    # "p2":[B
    :cond_21
    aget v0, p2, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 775
    .local v0, "v":[B
    array-length v2, p2

    if-le v2, v3, :cond_38

    .line 776
    aget v2, p2, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 777
    .local v2, "v2":[B
    filled-new-array {v0, v2}, [[B

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 779
    .end local v2    # "v2":[B
    :cond_38
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2

    .line 767
    .end local v0    # "v":[B
    .end local v1    # "p":[B
    :cond_3d
    :goto_3d
    const/4 v0, -0x4

    return v0
.end method

.method public greylist setParameter([I[S)I
    .registers 8
    .param p1, "param"    # [I
    .param p2, "value"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 792
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3d

    array-length v0, p2

    if-le v0, v1, :cond_8

    goto :goto_3d

    .line 795
    :cond_8
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 796
    .local v1, "p":[B
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_21

    .line 797
    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 798
    .local v2, "p2":[B
    filled-new-array {v1, v2}, [[B

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    .line 801
    .end local v2    # "p2":[B
    :cond_21
    aget-short v0, p2, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v0

    .line 802
    .local v0, "v":[B
    array-length v2, p2

    if-le v2, v3, :cond_38

    .line 803
    aget-short v2, p2, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    .line 804
    .local v2, "v2":[B
    filled-new-array {v0, v2}, [[B

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    .line 806
    .end local v2    # "v2":[B
    :cond_38
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2

    .line 793
    .end local v0    # "v":[B
    .end local v1    # "p":[B
    :cond_3d
    :goto_3d
    const/4 v0, -0x4

    return v0
.end method

.method public blacklist setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 1118
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1119
    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 1120
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 1121
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    .line 1122
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    .line 1124
    :cond_f
    return-void

    .line 1120
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method
