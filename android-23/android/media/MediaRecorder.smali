.class public Landroid/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRecorder$AudioSource;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$EventHandler;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "MediaRecorder"


# instance fields
.field private mEventHandler:Landroid/media/MediaRecorder$EventHandler;

.field private mFd:Ljava/io/FileDescriptor;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mPath:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static synthetic -get0(Landroid/media/MediaRecorder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/media/MediaRecorder;->mNativeContext:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 80
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    #@9
    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 103
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    #@a
    .line 104
    new-instance v2, Landroid/media/MediaRecorder$EventHandler;

    #@c
    invoke-direct {v2, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    #@f
    iput-object v2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    #@11
    .line 111
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 115
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@17
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1a
    .line 116
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 115
    invoke-direct {p0, v2, v1, v3}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 100
    return-void

    #@22
    .line 105
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@25
    move-result-object v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 106
    new-instance v2, Landroid/media/MediaRecorder$EventHandler;

    #@2a
    invoke-direct {v2, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    #@2d
    iput-object v2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    #@2f
    goto :goto_0

    #@30
    .line 108
    :cond_1
    iput-object v2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    #@32
    goto :goto_0
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static final getAudioSourceMax()I
    .locals 1

    #@0
    .prologue
    .line 408
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private native native_reset()V
.end method

.method private final native native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediarecorder_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1057
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "mediarecorder_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/media/MediaRecorder;

    #@8
    .line 1058
    .local v1, "mr":Landroid/media/MediaRecorder;
    if-nez v1, :cond_0

    #@a
    .line 1059
    return-void

    #@b
    .line 1062
    :cond_0
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1063
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    #@11
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaRecorder$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 1064
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    #@17
    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 1055
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private native setParameter(Ljava/lang/String;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 1098
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    #@3
    return-void
.end method

.method public native getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getSurface()Landroid/view/Surface;
.end method

.method public prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 764
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 765
    new-instance v6, Ljava/io/RandomAccessFile;

    #@8
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "rws"

    #@d
    invoke-direct {v6, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 767
    .local v6, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    #@13
    move-result-object v1

    #@14
    const-wide/16 v2, 0x0

    #@16
    const-wide/16 v4, 0x0

    #@18
    move-object v0, p0

    #@19
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 769
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    #@1f
    .line 777
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    :goto_0
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    #@22
    .line 762
    return-void

    #@23
    .line 768
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v0

    #@24
    .line 769
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    #@27
    .line 768
    throw v0

    #@28
    .line 771
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 772
    iget-object v1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    #@2e
    move-object v0, p0

    #@2f
    move-wide v4, v2

    #@30
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    #@33
    goto :goto_0

    #@34
    .line 774
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@36
    const-string/jumbo v1, "No valid output file"

    #@39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method

.method public native release()V
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 815
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    #@3
    .line 818
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@9
    .line 814
    return-void
.end method

.method public setAudioChannels(I)V
    .locals 2
    .param p1, "numChannels"    # I

    #@0
    .prologue
    .line 660
    if-gtz p1, :cond_0

    #@2
    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Number of channels is not positive"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 663
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "audio-param-number-of-channels="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@22
    .line 659
    return-void
.end method

.method public native setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    #@0
    .prologue
    .line 676
    if-gtz p1, :cond_0

    #@2
    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Audio encoding bit rate is not positive"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "audio-param-encoding-bitrate="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@22
    .line 675
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .param p1, "samplingRate"    # I

    #@0
    .prologue
    .line 645
    if-gtz p1, :cond_0

    #@2
    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Audio sampling rate is not positive"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 648
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "audio-param-sampling-rate="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@22
    .line 644
    return-void
.end method

.method public native setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 706
    const-string/jumbo v0, "MediaRecorder"

    #@3
    const-string/jumbo v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 704
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 717
    const-string/jumbo v0, "MediaRecorder"

    #@3
    const-string/jumbo v1, "setAuxiliaryOutputFile(String) is no longer supported."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 715
    return-void
.end method

.method public native setCamera(Landroid/hardware/Camera;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setCaptureRate(D)V
    .locals 3
    .param p1, "fps"    # D

    #@0
    .prologue
    .line 469
    const-string/jumbo v0, "time-lapse-enable=1"

    #@3
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@6
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "time-lapse-fps="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@1d
    .line 467
    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 160
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "not a PersistentSurface"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 163
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->native_setInputSurface(Landroid/view/Surface;)V

    #@10
    .line 159
    return-void
.end method

.method public setLocation(FF)V
    .locals 9
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    #@0
    .prologue
    const v8, 0x461c4000    # 10000.0f

    #@3
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    #@5
    .line 515
    mul-float v3, p1, v8

    #@7
    float-to-double v4, v3

    #@8
    add-double/2addr v4, v6

    #@9
    double-to-int v0, v4

    #@a
    .line 516
    .local v0, "latitudex10000":I
    mul-float v3, p2, v8

    #@c
    float-to-double v4, v3

    #@d
    add-double/2addr v4, v6

    #@e
    double-to-int v1, v4

    #@f
    .line 518
    .local v1, "longitudex10000":I
    const v3, 0xdbba0

    #@12
    if-gt v0, v3, :cond_0

    #@14
    const v3, -0xdbba0

    #@17
    if-ge v0, v3, :cond_1

    #@19
    .line 519
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Latitude: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, " out of range."

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 520
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@36
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 522
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    #@3d
    if-gt v1, v3, :cond_2

    #@3f
    const v3, -0x1b7740

    #@42
    if-ge v1, v3, :cond_3

    #@44
    .line 523
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "Longitude: "

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    const-string/jumbo v4, " out of range"

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 524
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@61
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v3

    #@65
    .line 527
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "param-geotag-latitude="

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@7c
    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v4, "param-geotag-longitude="

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@93
    .line 514
    return-void
.end method

.method public native setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaRecorder$OnErrorListener;

    #@0
    .prologue
    .line 875
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    #@2
    .line 873
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaRecorder$OnInfoListener;

    #@0
    .prologue
    .line 992
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    #@2
    .line 990
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    #@0
    .prologue
    .line 489
    if-eqz p1, :cond_0

    #@2
    .line 490
    const/16 v0, 0x5a

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 491
    const/16 v0, 0xb4

    #@8
    if-eq p1, v0, :cond_0

    #@a
    .line 492
    const/16 v0, 0x10e

    #@c
    if-eq p1, v0, :cond_0

    #@e
    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Unsupported angle: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 495
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v1, "video-param-rotation-angle-degrees="

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@3f
    .line 488
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 730
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    #@3
    .line 731
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    #@5
    .line 728
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 744
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    #@3
    .line 745
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    #@5
    .line 742
    return-void
.end method

.method public native setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .param p1, "sv"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    #@2
    .line 181
    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/media/CamcorderProfile;

    #@0
    .prologue
    .line 434
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    #@2
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    #@5
    .line 435
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    #@7
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    #@a
    .line 436
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    #@c
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    #@11
    .line 437
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    #@13
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    #@16
    .line 438
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    #@18
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    #@1b
    .line 439
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    #@1d
    const/16 v1, 0x3e8

    #@1f
    if-lt v0, v1, :cond_0

    #@21
    .line 440
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    #@23
    const/16 v1, 0x3ef

    #@25
    if-gt v0, v1, :cond_0

    #@27
    .line 433
    :goto_0
    return-void

    #@28
    .line 444
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    #@2a
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    #@2d
    .line 445
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    #@2f
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    #@32
    .line 446
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    #@34
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    #@37
    .line 447
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    #@39
    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    #@3c
    goto :goto_0
.end method

.method public native setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 2
    .param p1, "bitRate"    # I

    #@0
    .prologue
    .line 692
    if-gtz p1, :cond_0

    #@2
    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Video encoding bit rate is not positive"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 695
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "video-param-encoding-bitrate="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    #@22
    .line 691
    return-void
.end method

.method public native setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
