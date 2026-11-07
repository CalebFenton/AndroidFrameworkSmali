.class public Landroid/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/AudioRecordingMonitor;
.implements Landroid/media/AudioRecordingMonitorClient;
.implements Landroid/media/MicrophoneDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRecorder$EventHandler;,
        Landroid/media/MediaRecorder$AudioSource;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$MetricsConstants;,
        Landroid/media/MediaRecorder$VideoEncoderValues;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$AudioEncoderValues;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$OutputFormatValues;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$SystemSource;,
        Landroid/media/MediaRecorder$Source;
    }
.end annotation


# static fields
.field public static final whitelist MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final whitelist MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final whitelist MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING:I = 0x322

.field public static final whitelist MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final whitelist MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED:I = 0x323

.field public static final whitelist MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final greylist-max-o MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaRecorder"


# instance fields
.field private greylist-max-o mChannelCount:I

.field private greylist-max-p mEventHandler:Landroid/media/MediaRecorder$EventHandler;

.field private greylist-max-p mFd:Ljava/io/FileDescriptor;

.field private greylist-max-o mFile:Ljava/io/File;

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mNativeContext:J

.field private greylist mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private greylist mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private greylist-max-p mPath:Ljava/lang/String;

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field blacklist mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

.field private greylist-max-o mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mSurface:Landroid/view/Surface;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeContext(Landroid/media/MediaRecorder;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaRecorder;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnInfoListener(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutingChangeListeners(Landroid/media/MediaRecorder;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    .line 113
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;-><init>(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 1652
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1751
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1872
    new-instance v1, Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {v1, p0}, Landroid/media/AudioRecordingMonitorImpl;-><init>(Landroid/media/AudioRecordingMonitorClient;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    .line 156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_2a

    .line 159
    new-instance v0, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_3b

    .line 160
    :cond_2a
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_39

    .line 161
    new-instance v0, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_3b

    .line 163
    :cond_39
    iput-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    .line 166
    :goto_3b
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v0

    .line 172
    .local v0, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_46
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v4

    .line 172
    invoke-direct {p0, v1, v3, v4}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_5c

    .line 174
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 175
    .end local v0    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_5b
    return-void

    .line 170
    .restart local v0    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_5c
    move-exception v1

    if-eqz v0, :cond_67

    :try_start_5f
    invoke-virtual {v0}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw v1
.end method

.method private native greylist-max-p _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setNextOutputFile(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o _setOutputFile(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private greylist-max-o enableNativeRoutingCallbacksLocked(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1741
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 1742
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_enableDeviceCallback(Z)V

    .line 1744
    :cond_b
    return-void
.end method

.method public static final whitelist getAudioSourceMax()I
    .registers 1

    .line 752
    const/16 v0, 0xa

    return v0
.end method

.method private blacklist getRoutedDevicesInternal()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getRoutedDeviceIds()[I

    move-result-object v1

    .line 1694
    .local v1, "deviceIds":[I
    if-eqz v1, :cond_23

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_23

    .line 1698
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 1699
    aget v3, v1, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 1701
    .local v3, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    if-eqz v3, :cond_1f

    .line 1702
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    .end local v3    # "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1705
    .end local v2    # "i":I
    :cond_22
    return-object v0

    .line 1695
    :cond_23
    :goto_23
    return-object v0
.end method

.method public static greylist-max-o isSystemOnlyAudioSource(I)Z
    .registers 2
    .param p0, "source"    # I

    .line 471
    packed-switch p0, :pswitch_data_8

    .line 485
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 483
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist isValidAudioSource(I)Z
    .registers 2
    .param p0, "source"    # I

    .line 495
    sparse-switch p0, :sswitch_data_8

    .line 512
    const/4 v0, 0x0

    return v0

    .line 510
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0x7cd -> :sswitch_5
        0x7ce -> :sswitch_5
        0x7cf -> :sswitch_5
        0x7d0 -> :sswitch_5
    .end sparse-switch
.end method

.method private final native greylist-max-o native_enableDeviceCallback(Z)V
.end method

.method private native greylist-max-p native_finalize()V
.end method

.method private final native greylist-max-o native_getActiveMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getPortId()I
.end method

.method private native blacklist native_getRoutedDeviceIds()[I
.end method

.method private static final native greylist-max-p native_init()V
.end method

.method private native greylist-max-p native_reset()V
.end method

.method private final native greylist-max-o native_setInputDevice(I)Z
.end method

.method private final native greylist-max-o native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private native blacklist native_setPreferredMicrophoneDirection(I)I
.end method

.method private native blacklist native_setPreferredMicrophoneFieldDimension(F)I
.end method

.method private native blacklist native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private greylist-max-r native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "mediarecorderThis"    # Ljava/lang/Object;
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1970
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1971
    invoke-virtual {v0, p3}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1972
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v1

    .line 1973
    .local v1, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_c
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Parcel;)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    .line 1974
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 1975
    .end local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_18
    return-void

    .line 1972
    .restart local v1    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_19
    move-exception v2

    if-eqz v1, :cond_24

    :try_start_1c
    invoke-virtual {v1}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v2
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "mediarecorder_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1932
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRecorder;

    .line 1933
    .local v0, "mr":Landroid/media/MediaRecorder;
    if-nez v0, :cond_c

    .line 1934
    return-void

    .line 1937
    :cond_c
    iget-object v1, v0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v1, :cond_1b

    .line 1938
    iget-object v1, v0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1939
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1941
    .end local v1    # "m":Landroid/os/Message;
    :cond_1b
    return-void
.end method

.method private native greylist setParameter(Ljava/lang/String;)V
.end method

.method public static final greylist-max-o toLogFriendlyAudioSource(I)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # I

    .line 518
    sparse-switch p0, :sswitch_data_48

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 548
    :sswitch_17
    const-string v0, "ULTRASOUND"

    return-object v0

    .line 546
    :sswitch_1a
    const-string v0, "HOTWORD"

    return-object v0

    .line 544
    :sswitch_1d
    const-string v0, "RADIO_TUNER"

    return-object v0

    .line 540
    :sswitch_20
    const-string v0, "ECHO_REFERENCE"

    return-object v0

    .line 542
    :sswitch_23
    const-string v0, "VOICE_PERFORMANCE"

    return-object v0

    .line 538
    :sswitch_26
    const-string v0, "UNPROCESSED"

    return-object v0

    .line 536
    :sswitch_29
    const-string v0, "REMOTE_SUBMIX"

    return-object v0

    .line 534
    :sswitch_2c
    const-string v0, "VOICE_COMMUNICATION"

    return-object v0

    .line 532
    :sswitch_2f
    const-string v0, "VOICE_RECOGNITION"

    return-object v0

    .line 530
    :sswitch_32
    const-string v0, "CAMCORDER"

    return-object v0

    .line 528
    :sswitch_35
    const-string v0, "VOICE_CALL"

    return-object v0

    .line 526
    :sswitch_38
    const-string v0, "VOICE_DOWNLINK"

    return-object v0

    .line 524
    :sswitch_3b
    const-string v0, "VOICE_UPLINK"

    return-object v0

    .line 522
    :sswitch_3e
    const-string v0, "MIC"

    return-object v0

    .line 520
    :sswitch_41
    const-string v0, "DEFAULT"

    return-object v0

    .line 550
    :sswitch_44
    const-string v0, "AUDIO_SOURCE_INVALID"

    return-object v0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x1 -> :sswitch_44
        0x0 -> :sswitch_41
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_38
        0x4 -> :sswitch_35
        0x5 -> :sswitch_32
        0x6 -> :sswitch_2f
        0x7 -> :sswitch_2c
        0x8 -> :sswitch_29
        0x9 -> :sswitch_26
        0xa -> :sswitch_23
        0x7cd -> :sswitch_20
        0x7ce -> :sswitch_1d
        0x7cf -> :sswitch_1a
        0x7d0 -> :sswitch_17
    .end sparse-switch
.end method


# virtual methods
.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1766
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1767
    if-eqz p1, :cond_21

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1768
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1769
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1771
    if-eqz p2, :cond_19

    move-object v3, p2

    goto :goto_1b

    :cond_19
    iget-object v3, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    :goto_1b
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1769
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    :cond_21
    monitor-exit v0

    .line 1774
    return-void

    .line 1773
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 2006
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    return-void
.end method

.method public whitelist getActiveMicrophones()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MicrophoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1809
    .local v0, "activeMicrophones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->native_getActiveMicrophones(Ljava/util/ArrayList;)I

    move-result v1

    .line 1810
    .local v1, "status":I
    if-eqz v1, :cond_2b

    .line 1811
    const/4 v2, -0x3

    const-string v3, "MediaRecorder"

    if-eq v1, v2, :cond_26

    .line 1812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMicrophones failed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_26
    const-string v2, "getActiveMicrophones failed, fallback on routed device info"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_2b
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    .line 1819
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_62

    .line 1820
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 1821
    .local v2, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v2, :cond_62

    .line 1822
    invoke-static {v2}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v3

    .line 1823
    .local v3, "microphone":Landroid/media/MicrophoneInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1824
    .local v4, "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_44
    iget v6, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    if-ge v5, v6, :cond_5c

    .line 1825
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 1827
    .end local v5    # "i":I
    :cond_5c
    invoke-virtual {v3, v4}, Landroid/media/MicrophoneInfo;->setChannelMapping(Ljava/util/List;)V

    .line 1828
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    .end local v2    # "device":Landroid/media/AudioDeviceInfo;
    .end local v3    # "microphone":Landroid/media/MicrophoneInfo;
    .end local v4    # "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_62
    return-object v0
.end method

.method public whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
    .registers 2

    .line 1904
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0}, Landroid/media/AudioRecordingMonitorImpl;->getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public native whitelist getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 1999
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 2000
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public blacklist getPortId()I
    .registers 5

    .line 1914
    iget-wide v0, p0, Landroid/media/MediaRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1915
    const/4 v0, 0x0

    return v0

    .line 1917
    :cond_a
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_getPortId()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    .line 1683
    monitor-enter p0

    .line 1684
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 1685
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 3

    .line 1716
    invoke-direct {p0}, Landroid/media/MediaRecorder;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    .line 1717
    .local v0, "audioDeviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1718
    const/4 v1, 0x0

    return-object v1

    .line 1720
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    return-object v1
.end method

.method public whitelist getRoutedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1733
    invoke-direct {p0}, Landroid/media/MediaRecorder;->getRoutedDevicesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist getSurface()Landroid/view/Surface;
.end method

.method public native whitelist isPrivacySensitive()Z
.end method

.method public native whitelist pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist prepare()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    const-string v1, "rw"

    if-eqz v0, :cond_1e

    .line 1306
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    .line 1310
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1311
    nop

    .line 1312
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3f

    .line 1310
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1311
    throw v1

    .line 1312
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_1e
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_28

    .line 1313
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_3f

    .line 1314
    :cond_28
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    if-eqz v0, :cond_48

    .line 1315
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1317
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    :try_start_33
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    .line 1319
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1320
    nop

    .line 1321
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    nop

    .line 1325
    :goto_3f
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 1326
    return-void

    .line 1319
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1320
    throw v1

    .line 1322
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 1885
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecordingMonitorImpl;->registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 1886
    return-void
.end method

.method public native whitelist release()V
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 1784
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1785
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1786
    iget-object v1, p0, Landroid/media/MediaRecorder;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1789
    :cond_14
    monitor-exit v0

    .line 1790
    return-void

    .line 1789
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist reset()V
    .registers 3

    .line 1388
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    .line 1391
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1392
    return-void
.end method

.method public native whitelist resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setAudioChannels(I)V
    .registers 4
    .param p1, "numChannels"    # I

    .line 1097
    if-lez p1, :cond_1b

    .line 1100
    iput p1, p0, Landroid/media/MediaRecorder;->mChannelCount:I

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1102
    return-void

    .line 1098
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setAudioEncodingBitRate(I)V
    .registers 4
    .param p1, "bitRate"    # I

    .line 1114
    if-lez p1, :cond_19

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1118
    return-void

    .line 1115
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioProfile(Landroid/media/EncoderProfiles$AudioProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/media/EncoderProfiles$AudioProfile;

    .line 848
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 849
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getChannels()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 850
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getSampleRate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 851
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$AudioProfile;->getCodec()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 852
    return-void
.end method

.method public whitelist setAudioSamplingRate(I)V
    .registers 4
    .param p1, "samplingRate"    # I

    .line 1082
    if-lez p1, :cond_19

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1086
    return-void

    .line 1083
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public greylist-max-o setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1177
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-void
.end method

.method public greylist-max-o setAuxiliaryOutputFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 1188
    const-string v0, "MediaRecorder"

    const-string v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void
.end method

.method public native whitelist setCamera(Landroid/hardware/Camera;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setCaptureRate(D)V
    .registers 5
    .param p1, "fps"    # D

    .line 894
    const-string v0, "time-lapse-enable=1"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time-lapse-fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public whitelist setInputSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 243
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    if-eqz v0, :cond_8

    .line 246
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setInputSurface(Landroid/view/Surface;)V

    .line 247
    return-void

    .line 244
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a PersistentSurface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLocation(FF)V
    .registers 10
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .line 940
    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 941
    .local v1, "latitudex10000":I
    mul-float/2addr v0, p2

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    .line 943
    .local v0, "longitudex10000":I
    const v2, 0xdbba0

    if-gt v1, v2, :cond_6e

    const v2, -0xdbba0

    if-lt v1, v2, :cond_6e

    .line 947
    const v2, 0x1b7740

    if-gt v0, v2, :cond_4f

    const v2, -0x1b7740

    if-lt v0, v2, :cond_4f

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param-geotag-latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param-geotag-longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 954
    return-void

    .line 948
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 944
    .end local v2    # "msg":Ljava/lang/String;
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 945
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 4
    .param p1, "id"    # Landroid/media/metrics/LogSessionId;

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iput-object p1, p0, Landroid/media/MediaRecorder;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log-session-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public native whitelist setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native whitelist setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public whitelist setNextOutputFile(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1279
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1281
    .local v0, "f":Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->_setNextOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 1283
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1284
    nop

    .line 1285
    return-void

    .line 1283
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1284
    throw v1
.end method

.method public whitelist setNextOutputFile(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->_setNextOutputFile(Ljava/io/FileDescriptor;)V

    .line 1243
    return-void
.end method

.method public whitelist setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaRecorder$OnErrorListener;

    .line 1449
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 1450
    return-void
.end method

.method public whitelist setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/MediaRecorder$OnInfoListener;

    .line 1583
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 1584
    return-void
.end method

.method public whitelist setOrientationHint(I)V
    .registers 5
    .param p1, "degrees"    # I

    .line 914
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 918
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public whitelist setOutputFile(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1217
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1218
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1219
    return-void
.end method

.method public whitelist setOutputFile(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1202
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1203
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1204
    return-void
.end method

.method public whitelist setOutputFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 1256
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFile:Ljava/io/File;

    .line 1257
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 1258
    return-void
.end method

.method public native whitelist setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 1664
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1665
    return v0

    .line 1667
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1668
    .local v0, "preferredDeviceId":I
    :cond_10
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->native_setInputDevice(I)Z

    move-result v1

    .line 1669
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 1670
    monitor-enter p0

    .line 1671
    :try_start_18
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1672
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw v2

    .line 1674
    :cond_1f
    :goto_1f
    return v1
.end method

.method public whitelist setPreferredMicrophoneDirection(I)Z
    .registers 3
    .param p1, "direction"    # I

    .line 1847
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setPreferredMicrophoneDirection(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist setPreferredMicrophoneFieldDimension(F)Z
    .registers 6
    .param p1, "zoom"    # F

    .line 1860
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    const-string v3, "Argument must fall between -1 & 1 (inclusive)"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1862
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setPreferredMicrophoneFieldDimension(F)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method public whitelist setPreviewDisplay(Landroid/view/Surface;)V
    .registers 2
    .param p1, "sv"    # Landroid/view/Surface;

    .line 265
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    .line 266
    return-void
.end method

.method public native whitelist setPrivacySensitive(Z)V
.end method

.method public whitelist setProfile(Landroid/media/CamcorderProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/media/CamcorderProfile;

    .line 818
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 819
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 820
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 821
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 822
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 823
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_28

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3ef

    if-gt v0, v1, :cond_28

    goto :goto_3c

    .line 828
    :cond_28
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 829
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 830
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 831
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 833
    :goto_3c
    return-void
.end method

.method public native whitelist setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setVideoEncodingBitRate(I)V
    .registers 4
    .param p1, "bitRate"    # I

    .line 1137
    if-lez p1, :cond_19

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1141
    return-void

    .line 1138
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVideoEncodingProfileLevel(II)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "level"    # I

    .line 1159
    if-ltz p1, :cond_39

    .line 1162
    if-ltz p2, :cond_31

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoder-profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video-param-encoder-level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1167
    return-void

    .line 1163
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding level is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding profile is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native whitelist setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist setVideoProfile(Landroid/media/EncoderProfiles$VideoProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/media/EncoderProfiles$VideoProfile;

    .line 867
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getFrameRate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 868
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 869
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 870
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getCodec()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 871
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getProfile()I

    move-result v0

    if-ltz v0, :cond_2e

    .line 872
    invoke-virtual {p1}, Landroid/media/EncoderProfiles$VideoProfile;->getProfile()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 874
    :cond_2e
    return-void
.end method

.method public native whitelist setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native whitelist stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 1894
    iget-object v0, p0, Landroid/media/MediaRecorder;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingMonitorImpl;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 1895
    return-void
.end method
